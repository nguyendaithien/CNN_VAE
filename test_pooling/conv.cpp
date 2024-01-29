#include<stdio.h>
#include"conv.h"
#include"activation.h"
#include"parameter.h"
#include"weight.h"

using namespace std;

template <typename DATA_IN_TYPE
         ,typename DATA_OUT_TYPE
	 ,typename KERNEL_TYPE
	 ,typename PADDING_TYPE
	 ,int CONV_DATA_IN_XSIZE
	 ,int CONV_DATA_IN_YSIZE
	 ,int CONV_NUM_CHANNEL
	 ,int DATA_OUT_XSIZE
	 ,int DATA_OUT_YSIZE
	 ,int KERNEL_XSIZE
	 ,int KERNEL_YSIZE
	 ,int CONV_STRICE
	 ,int CONV_PADDING_SIZE
	 >
void convolution_1( int padding, int width, int hight ,hls::stream<DATA_IN_TYPE> &image,KERNEL_TYPE kernel[CONV_NUM_CHANNEL*KERNEL_XSIZE*KERNEL_YSIZE],hls::stream<DATA_OUT_TYPE> &output) {
 hight = hight + 2*padding;
 width = width + 2*padding;
   
 DATA_IN_TYPE window_buffer[KERNEL_XSIZE][KERNEL_YSIZE ];
 static DATA_IN_TYPE line_buffer_0[30];
 static DATA_IN_TYPE line_buffer_1[30];
 static DATA_IN_TYPE line_buffer_2[30];

// push pixel to 1 line buffer
Push_pixel: for( int i = 0 ; i < hight ; i++ ) {
    for( int j = 0 ; j < width; j++ ) { 
      line_buffer_0[j] = line_buffer_1[j];
      line_buffer_1[j] = line_buffer_2[j];
      if( i == 0 || i == hight - 1 || j == 0 || j == width - 1 ){
	      line_buffer_2[j] = 0;
      }
      else {
      line_buffer_2[j] = image.read();
    }
    }
    if(i > 1){
	// initial window buffer
        window_buffer[0][0] = 0;
        window_buffer[1][0] = 0;
        window_buffer[2][0] = 0;
        window_buffer[0][1] = line_buffer_0[0];
        window_buffer[1][1] = line_buffer_1[0];
        window_buffer[2][1] = line_buffer_2[0];
        window_buffer[0][2] = line_buffer_0[1];
        window_buffer[1][2] = line_buffer_1[1];
        window_buffer[2][2] = line_buffer_2[1];
 // shift window to right
      //for( int num_fil1 = 0 ; num_fil1 < NUMBER_FILTERS_1 ; num_fil1 ++){
Shift_win_right:for( int b = 0 ; b < width - 2 ; b++) {
        for( int n = 0 ; n < 3; n++) {
          window_buffer[n][0] = window_buffer[n][1];
          window_buffer[n][1] = window_buffer[n][2];
          if( n == 0) {
            window_buffer[n][2] = line_buffer_0[b+2];
          }
	  if( n == 1) {
            window_buffer[n][2] = line_buffer_1[b+2];
          }
          if( n == 2) {
            window_buffer[n][2] = line_buffer_2[b+2];
          }
	  
       }
// convolution caculate    
      for( int num_fil1 = 0 ; num_fil1 < CONV_NUM_CHANNEL ; num_fil1 ++){
data_t sum = 0;
          for (int m = 0; m < 3; m++) {
             for (int n = 0; n < 3; n++) {
             sum += window_buffer[m][n] * kernel[num_fil1 * 16 +  m*3 + n];
            }
	  }
	  sum += bias_conv1[num_fil1];
          output << relu(sum);
		}
		}
    }
  }
	    }
template<typename T, int K>
void max_pooling(int width, int height, hls::stream<data_t> &in_pl1, hls::stream<data_t> &out_pl1) {
    data_t pool_buf[NUM_FILTERS_1][CONV1_WIDTH];
    data_t pool_win[NUM_FILTERS_1][K - 1][K - 1];
    int count_pool1 =0;
    for (int pool_row = 0; pool_row < height; pool_row++) {
        for (int pool_col = 0; pool_col < width; pool_col++) {
            for (int num_filters = 0; num_filters < NUM_FILTERS_1; num_filters++) {
                data_t temp = 0;
                data_t in_pool_val = in_pl1.read();

                if (pool_row >= K - 2) {
                    for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
                        for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
                            if (pool_win_row < K - 2) {
                                pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : pool_buf[num_filters][pool_col];
                            } else if (pool_win_row == K - 2) {
                                pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : in_pool_val;
                            }
                        }
                    }

                    if (pool_col % (K - 1) == 1 && pool_row % (K - 1) == 1) {
                        for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
                            for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
                                #pragma HLS PIPELINE
                                if (temp <= pool_win[num_filters][pool_win_row][pool_win_col]) {
                                    temp = pool_win[num_filters][pool_win_row][pool_win_col];
                                }
                            }
                        }
                        out_pl1 << temp;
                        count_pool1 ++;
                    }
                }
                pool_buf[num_filters][pool_col] = in_pool_val;
            }
        }
    }
    std::cout << "count_pool1:" <<count_pool1<<"\n";
}

void layer_1( int padding, int width, int hight,hls::stream<data_t> &image,hls::stream<data_t> &output, hls::stream<data_t> &output_pooling) {

//data_t kernel[16][3][3] =
//{{{-0.028839434	,-0.24723469	,0.1399438	},{-0.1051916	,-0.5350515	,-0.010254283	},{-2.9593194	,-0.007671445	,-1.5507368	}},{{-0.72419494	,0.07309616	,-0.29345477  }, 
//{-0.18435612	,0.035485655	,-0.06625326	},{-0.0043799924,-0.08507342	,0.08490941	}},{{-0.08653519	,0.03505529	,-0.28669745	},{-0.17198661	,0.33661216	,-0.3392407   },  
//{-0.17657872	,-0.12485746	,0.13816598	}},{{-0.025652518	,-0.0038949696	,0.055868935	},{-0.39068812	,-0.00040965623	,-0.048707396	},{0.26296684	,0.4548429	,-0.22087704  }},  
//{{-0.011067222	,0.039935958	,0.25710696	},{0.031333014	,0.114189126	,-0.122401506	},{-0.24201548	,-0.005294285	,-0.489557	}},{{-0.5771057	,0.031132108	,0.10142246   },  
//{-0.111721575	,-0.008954393	,0.074929655	},{-0.02110085	,-0.048333805	,0.11541049	}},{{0.038400237	,0.6560415	,0.065979525	},{0.30877286	,-0.022965893	,0.07272292  },  
//{-0.10575563	,0.0055114822	,0.17114359	}},{{0.47275266	,-0.012340377	,0.05266403	},{0.054293726	,-0.014199112	,-0.28019705	},{0.3479383	,0.1618384	,-0.16474865  }},   
//{{-0.0035990379	,0.06954904	,0.24568608	},{0.013009749	,0.42000288	,0.35377634	},{-0.23397052	,-0.008323478	,0.06141186	}},{{-0.8054663	,0.00086594565	,0.5341559    },    
//{-0.06352387	,0.2665625	,0.100582495	},{0.0049032397	,0.08612117	,0.20499636	}},{{-0.046486214	,0.020066062	,0.47720075	},{-0.403792	,-0.09359498	,-0.085993275 }, 
//{-0.00290745	,0.16686346	,0.20397954	}},{{0.029260486	,0.01641178	,-0.09467831	},{0.4443331	,-0.004531875	,-0.22260803	},{-0.33895323	,0.110391125	,-0.25775757  }}}; 
//

data_t kernel[144]= { 
-0.16205008	,0.110458665	,0.20612967	,0.27708152	,-0.028839434	,-0.24723469	,0.1399438	,-0.1051916	,-0.5350515	,-0.010254283	,-2.9593194	,-0.007671445	,-1.5507368	,-0.72419494	,0.07309616	,-0.29345477
,-0.24402778	,-0.036959838	,0.1498351	,0.21301019	,-0.18435612	,0.035485655	,-0.06625326	,-0.0043799924	,-0.08507342	,0.08490941	,-0.08653519	,0.03505529	,-0.28669745	,-0.17198661	,0.33661216	,-0.3392407
,0.06492161	,-0.3392409	,0.20425332	,0.15985094	,-0.17657872	,-0.12485746	,0.13816598	,-0.025652518	,-0.0038949696	,0.055868935	,-0.39068812	,-0.00040965623	,-0.048707396	,0.26296684	,0.4548429	,-0.22087704
,-0.2053615	,0.32774758	,-0.1038801	,0.008137075	,-0.011067222	,0.039935958	,0.25710696	,0.031333014	,0.114189126	,-0.122401506	,-0.24201548	,-0.005294285	,-0.489557	,-0.5771057	,0.031132108	,0.10142246
,0.0035023715	,-0.09783699	,-0.10667785	,-0.083432905	,-0.111721575	,-0.008954393	,0.074929655	,-0.02110085	,-0.048333805	,0.11541049	,0.038400237	,0.6560415	,0.065979525	,0.30877286	,-0.022965893	,0.07272292
,0.24680863	,-0.13630375	,0.12124248	,-0.04368373	,-0.10575563	,0.0055114822	,0.17114359	,0.47275266	,-0.012340377	,0.05266403	,0.054293726	,-0.014199112	,-0.28019705	,0.3479383	,0.1618384	,-0.16474865
,-0.02133571	,0.1357466	,-0.39586067	,0.04466629	,-0.0035990379	,0.06954904	,0.24568608	,0.013009749	,0.42000288	,0.35377634	,-0.23397052	,-0.008323478	,0.06141186	,-0.8054663	,0.00086594565	,0.5341559
,0.22321616	,0.25881544	,-0.21383052	,0.20122579	,-0.06352387	,0.2665625	,0.100582495	,0.0049032397	,0.08612117	,0.20499636	,-0.046486214	,0.020066062	,0.47720075	,-0.403792	,-0.09359498	,-0.085993275
,0.16338369	,0.022704978	,0.26132575	,0.10647575	,-0.00290745	,0.16686346	,0.20397954	,0.029260486	,0.01641178	,-0.09467831	,0.4443331	,-0.004531875	,-0.22260803	,-0.33895323	,0.110391125	,-0.25775757};

convolution_1<data_t,data_t,data_t,data_t,28,28,16,28,28,3,3,1,1>(padding, width, hight,image, kernel, output);
max_pooling<data_t, 3>( width, hight, output, output_pooling);
}







