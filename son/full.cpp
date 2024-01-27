#include"full.h"
#include <iostream>
#include <hls_stream.h>
#include "defines.h"
#include "activation.h"
#include "weights.h"
int count_img =0;
int count_conv1 =0;

data_t bias_conv1[16]={0.00004605779,0.001695467,-0.12573725,0.000909663,-0.008289251,0.2288574,-0.00019263,
0.1614474,0.041096434,0.000788194,-0.000591901,0.009665563,-0.000576987,0.0089886,0.000458721,-0.001435501};

data_t bias_conv2[8]={-0.18732908,-0.11804389,-0.031255215,-0.025337804,-0.023668498,0.32009956,0.022225568,-0.13034979};

data_t bias_conv3[8]={-0.09856823,-0.2990453,-0.1896989,0.09199058,0.3960073,0.46484292,-0.51680565,-0.0686353};

data_t bias_conv4[8]={0.6474334,0.5021539,0.15455641,0.78605837,0.30350417,-0.5095227,0.54400295,0.6221989};

data_t bias_conv5[8]={0.056719672,0.43973938,0.593019,0.1334745,0.14024757,-0.36339596,0.28529936,-0.033020418};

data_t bias_conv6[16]={-0.009208856,0.64465904,0.18871084,0.4179924,-0.23826952,-0.059796713,-0.27951825,0.20594509,0.6270969,-0.2718816,0.33604336,0.25907987,-0.3748888,-0.1167909,-0.27504212,-0.17446807};

data_t bias_conv7[1]={-0.31341645};

template<typename T>
void sp_conv_pad(int fil_out, int width, int height,T *bias, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
   // int count_read = 0;
    T linebuf[K - 1][height];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[K][K];
    #pragma HLS ARRAY_PARTITION variable=win complete dim=0

    #pragma HLS INLINE // Into a DATAFLOW region

     ImgH:for (int img_row = 0; img_row < height; img_row++) {
        ImgW:for (int img_col = 0; img_col < width; img_col++) {
            #pragma HLS DEPENDENCE variable=linebuf inter false 
            #pragma HLS PIPELINE

            T in_val;
            if (img_row == 0 || img_col == 0 || img_row == (height-1) || img_col == (height-1)) {
                in_val = 0;
            } else {
                in_val = src.read();
                
            }

            if (img_row >= K - 1){

            // Shift values in the window horizontally
            
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                    #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[win_row][win_col] = (win_col < K - 1) ? win[win_row][win_col + 1] : linebuf[win_row][img_col];
                    } else if (win_row == K - 1) {
                        win[win_row][win_col] = (win_col < K - 1) ? win[win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_filters = 0; num_filters < fil_out; num_filters++) {
                Conv:if (img_col >= K - 1) {
                    T data = 0;
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                            #pragma HLS PIPELINE
                            data += win[win_row][win_col] * ker[num_filters * K * K + win_row * K + win_col];
                        }
                    }
                    data += bias[num_filters];  
                    dst << relu(data);
                    count_conv1 ++;
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
                T temp = (i < K - 2) ? linebuf[i+1][img_col] : in_val;
                linebuf[i][img_col] = temp;
            }
        }
    }

 
}

void conv1(int fil_out,int width, int height,hls::stream<data_t> &src_img, hls::stream<data_t> &dst_img) {
    #pragma HLS DATAFLOW
    sp_conv_pad<data_t>(fil_out, width, height, bias_conv1,src_img, kernel1, dst_img);
    // std::cout << "count_img:" <<count_img << "\n";
    // std::cout << "count_conv1:" <<count_conv1<<"\n";

}

template<typename T>
void sp_conv2( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[fil_in][K - 1][height];
    //#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[fil_in][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
   // #pragma HLS INLINE // Into a DATAFLOW region
    T data[fil_out];
     POOL1H:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOL1W:for (int pool_col = 0; pool_col < width; pool_col++) {
            
            for(int i=0;i<fil_out;i++){
                data[i]=0;
            }
            //data[NUM_FILTERS_2] = {0,0,0,0,0,0,0,0};
            A_Filter1:for(int num_fil1 =0;num_fil1<fil_in;num_fil1++){
          //  #pragma HLS DEPENDENCE variable=linebuf inter false 
          //  #pragma HLS PIPELINE
            T in_val;
            if (pool_row == 0 || pool_col == 0 || pool_row == (height-1) || pool_col == (height-1)) {
                in_val = 0;
            } else {
                in_val = src.read();
            }
            if (pool_row >= K - 1){

            // Shift values in the window horizontally
            
             A_ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 A_ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            A_Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                A_Conv:if (pool_col >= K - 1) {
                    A_ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        A_ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                   // data += bias_conv1[num_filters];  

                }
            }
        }

            // Shift values in line buffer vertically
            A_ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
               // #pragma HLS PIPELINE
                T temp = (i < K - 2) ? linebuf[num_fil1][i+1][pool_col] : in_val;
                linebuf[num_fil1][i][pool_col] = temp;
            }
        }
        // luu lan luot gia tri cua mang vao dst
        if ((pool_row >= K - 1) && (pool_col >= K - 1)){
            for(int i=0;i<fil_out;i++){
                    dst << relu((data[i]+bias2[i]));
                }
            }
        }
    }
}

void conv2(int fil_in,int fil_out,int width, int height, hls::stream<data_t> &src_conv1, hls::stream<data_t> &dst_conv1) {
    #pragma HLS DATAFLOW


    sp_conv2<data_t>(fil_in,fil_out, width, height,bias_conv2, src_conv1, filter2, dst_conv1);

}



void pool1(int width, int height, hls::stream<data_t> &in_pl1, hls::stream<data_t> &out_pl1) {
    data_t pool_buf[NUM_FILTERS_1][CONV1_WIDTH];
    data_t pool_win[NUM_FILTERS_1][K - 1][K - 1];
    int count_pool1 =0;
    for (int pool_row = 0; pool_row < height; pool_row++) {
        for (int pool_col = 0; pool_col < width; pool_col++) {
            #pragma HLS PIPELINE
            for (int num_filters = 0; num_filters < NUM_FILTERS_1; num_filters++) {
                data_t temp = 0;
                data_t in_pool_val = in_pl1.read();
                
                if (pool_row >= K - 2) {
                    for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
                        for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
                            #pragma HLS PIPELINE
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

// void pool2(int width, int height, hls::stream<data_t> &in_pl2, hls::stream<data_t> &out_pl2) {
//     data_t pool_buf[NUM_FILTERS_2][CONV2_WIDTH];
//     data_t pool_win[NUM_FILTERS_2][K - 1][K - 1];
//     int count_pool2 =0;
//     for (int pool_row = 0; pool_row < height; pool_row++) {
//         for (int pool_col = 0; pool_col < width; pool_col++) {
//             #pragma HLS PIPELINE
//             for (int num_filters = 0; num_filters < NUM_FILTERS_2; num_filters++) {
//                 data_t temp = 0;
//                 data_t in_pool_val = in_pl2.read();
                
//                 if (pool_row >= K - 2) {
//                     for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
//                         for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
//                             #pragma HLS PIPELINE
//                             if (pool_win_row < K - 2) {
//                                 pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : pool_buf[num_filters][pool_col];
//                             } else if (pool_win_row == K - 2) {
//                                 pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : in_pool_val;
//                             }
//                         }
//                     }

//                     if (pool_col % (K - 1) == 1 && pool_row % (K - 1) == 1) {
//                         for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
//                             for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
//                                 #pragma HLS PIPELINE
//                                 if (temp <= pool_win[num_filters][pool_win_row][pool_win_col]) {
//                                     temp = pool_win[num_filters][pool_win_row][pool_win_col];
//                                 }
//                             }
//                         }
//                         out_pl2 << temp;
//                         count_pool2 ++;
//                     }
//                 }
//                 pool_buf[num_filters][pool_col] = in_pool_val;
//             }
//         }
//     }
//     std::cout << "count_pool2:" <<count_pool2<<"\n";
// }

// template<typename T>
// void sp_conv3( int padding,int width, int height, hls::stream<T> &src,T ker[NUM_FILTERS_3][NUM_KERNEL_3][K][K], hls::stream<T> &dst) {
//     height = height + 2;
//     width  = width + 2;
//     int count_conv3=0;
//     // int count_read =0;
//     int count_read_3 =0;

//     T linebuf[NUM_FILTERS_2][K - 1][POOL2_WIDTH+2];
//     //#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
//     T win[NUM_FILTERS_2][K][K];
//    // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
//    // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
//    // #pragma HLS INLINE // Into a DATAFLOW region
//     T data[NUM_FILTERS_3];
//      POOL1H:for (int pool2_row = 0; pool2_row < height; pool2_row++) {
//         POOL1W:for (int pool2_col = 0; pool2_col < width; pool2_col++) {
            
//             for(int i=0;i<NUM_FILTERS_3;i++){
//                 data[i]=0;
//             }
//             //data[NUM_FILTERS_2] = {0,0,0,0,0,0,0,0};
//             A_Filter1:for(int num_fil2 =0;num_fil2<NUM_FILTERS_2;num_fil2++){
//           //  #pragma HLS DEPENDENCE variable=linebuf inter false 
//           //  #pragma HLS PIPELINE
//             T in_val;
//             count_read_3++;
//             if ((pool2_row == 0) || (pool2_col == 0) || pool2_row == (POOL2_HEIGHT+1) || pool2_col == (POOL2_WIDTH+1 )) {
//                 in_val = 0;
//             } else {
//                 in_val = src.read();
//                // count_read ++;
//             }
//            // std::cout << "imgrow" <<img_row<<"\t";
//             //std::cout <<"imgcol" <<img_col<<"\t";
//            // std::cout<<"fil"<<num_fil1<<"\t";
//            // std::cout<<"in_val:"<<in_val<<"\n";
//             if (pool2_row >= K - 1){

//             // Shift values in the window horizontally
            
//              A_ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
//                  A_ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
//                   //  #pragma HLS PIPELINE
//                     if (win_row < K - 1) {
//                         win[num_fil2][win_row][win_col] = (win_col < K - 1) ? win[num_fil2][win_row][win_col + 1] : linebuf[num_fil2][win_row][pool2_col];
//                     } else if (win_row == K - 1) {
//                         win[num_fil2][win_row][win_col] = (win_col < K - 1) ? win[num_fil2][win_row][win_col + 1] : in_val;
//                     }
//                 }
//             }
            
//             // Convolution operation
//             A_Filters:for (int num_fil3 = 0; num_fil3 < NUM_FILTERS_3; num_fil3++) {
//                 A_Conv:if (pool2_col >= K - 1) {
//                     A_ConvH:for (int win_row = 0; win_row < K; win_row++) {
//                         A_ConvW:for (int win_col = 0; win_col < K; win_col++) {
//                          //   #pragma HLS PIPELINE
//                             data[num_fil3] += win[num_fil2][win_row][win_col] * ker[num_fil3][num_fil2][win_row][win_col];
//                         }
//                     }
//                    // data += bias_conv1[num_filters];  

//                 }
//             }
//         }

//             // Shift values in line buffer vertically
//             A_ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
//                // #pragma HLS PIPELINE
//                 T temp = (i < K - 2) ? linebuf[num_fil2][i+1][pool2_col] : in_val;
//                 linebuf[num_fil2][i][pool2_col] = temp;
//             }
//         }
//         // luu lan luot gia tri cua mang vao dst
//         if ((pool2_row >= K - 1) && (pool2_col >= K - 1)){
//             for(int i=0;i<NUM_FILTERS_3;i++){
//                     dst << relu((data[i]+bias_conv3[i]));
//                     count_conv3 ++;
//                 }
//             }
//         }
//     }
//    // std::cout << "count_img:" <<count_img << "\n";
//         std::cout << "count_conv3:" <<count_conv3<<"\n";
//       // std::cout << "count_read:" <<count_read<<"\n";
//        std::cout << "count_read_2:" <<count_read_3<<"\n";
// }

// void conv3(int padding,int width, int height, hls::stream<data_t> &src_conv2, hls::stream<data_t> &dst_conv2) {
//     #pragma HLS DATAFLOW
//     data_t filter3[8][8][3][3]={-0.0677966, 0.42275885, -0.00061215, -0.1133323, -0.00100782, -0.05625276, 0.04747077, -0.03548198, -0.04897275, 0.3790718, 0.52662057, -0.0709253, -0.39522573, 0.07307196, -0.12141591, 0.10139113, -0.16103052, -0.10408658, 0.17914593, 0.24753779, 0.0225854, 0.35624465, 0.00459639, 0.07903139, 0.05920572, -0.01659688, 0.0471591, 0.12082218, -0.00957776, 0.3245104, 0.12341503, 0.05968961, 0.14663844, -0.03155843, 0.06941643, -0.04612169, 0.03702698, 0.05378344, -0.28094625, 0.22010078, 0.28010777, 0.0123405, -0.00071047, 0.10759582, 0.11195423, 0.05683918, -0.10967742, 0.07606357, -0.12204684, -0.03786823, -0.1649492, -0.09420121, -0.27614325, -0.02461183, 0.01865939, 0.0978831, 0.08857124, -0.02055697, 0.0704101, 0.13377653, 0.04906088, 0.07320518, -0.1147556, -0.10858218, 0.1494091, 0.1768331, -0.0844082, 0.0712703, 0.06460029, 0.09502797, 0.16416648, 0.09091755, 0.16918992, 0.17876326, -0.07916409, 0.30154622, -0.03570981, 0.18127148, -0.02013426, -0.11815306, 0.1971848, -0.07735062, -0.08534781, -0.1864978, 0.75320154, 0.07413381, -0.06295487, -0.28659144, -0.16037732, 0.183371, 0.04153937, -0.02194928, 0.3181206, -0.03361399, -0.08788364, 0.1705988, 0.1578355, 0.20957127, 0.08781271, 0.04547012, 0.27524033, 0.1486141, -0.27386028, 0.25206578, 0.13178639, 0.20629597, 0.10477921, -0.09234705, 0.12795624, -0.16200648, -0.07882604, -0.22920266, -0.13553816, -0.10940216, -0.02122017, -0.00519841, -0.15865774, -0.4178798, 0.11639822, -0.10166198, 0.13017857, 0.06919184, -0.08306406, 0.02259063, 0.15851632, 0.07742281, 0.10985182, 0.3223371, 0.0582128, 0.30226862, 0.5115753, 0.05579323, 0.0384585, -0.14280318, 0.02186553, -0.20438744, 0.17990524, -0.00561221, -0.01760928, 0.26471156, -0.19166443, -0.10499852, 0.00684641, 0.12058353, -0.06565677, -0.16622025, 0.09412883, 0.36968112, -0.00842094, 0.10379151, 0.0034839, -0.09636971, -0.01865733, -0.38126594, -0.20398842, 0.05694417, 0.11228289, -0.16518213, 0.3093171, 0.3309194, 0.00297055, 0.30541953, 0.07646615, 0.02668036, -0.02379972, 0.00895672, 0.128948, -0.1120021, 0.25318927, 0.1475705, 0.19673137, 0.27790496, 0.01019952, 0.08250861, -0.09277241, 0.22565271, -0.03574929, 0.0634053, 0.09178557, -0.1296598, 0.06975057, 0.08987591, 0.05893818, 0.33174282, -0.17154315, 0.05141338, 0.0805874, 0.02538121, 0.16254437, 0.20626405, 0.0650351, 0.24289194, 0.01670786, -0.094249, 0.07155137, -0.07184774, -0.12067593, 0.06592602, -0.18189971, -0.16962081, -0.08546191, 0.34002978, 0.09369949, 0.18667652, 0.09345134, -0.04444402, 0.1285571, 0.11333279, -0.06102471, 0.06224343, 0.22396979, 0.11402766, 0.1806027, 0.21727136, 0.16516668, 0.2354463, 0.08537132, 0.07175072, -0.03384829, -0.24219486, 0.33716196, 0.02076802, 0.01646625, -0.01039672, -0.1877357, -0.18801315, -0.4263794, -0.00693434, -0.06330838, 0.8318788, -0.2027723, -0.13156502, 0.5306305, -0.06641921, -0.03655976, 0.00392354, 0.09233093, 0.26908156, 0.10727932, 0.09158993, 0.03045926, -0.10984534, -0.09029362, 0.01985805, 0.3287586, -0.09163616, 0.10246832, 0.06146678, 0.38659555, 0.0967576, -0.13888858, 0.13657351, 0.07277187, -0.01754263, 0.1262777, 0.03642397, 0.3004673, -0.22352971, -0.1290512, 0.082149, -0.05995406, 0.07286023, 0.23931709, 0.33546805, 0.25027663, 0.24327496, 0.36098984, 0.18491483, 0.23109165, 0.3916054, -0.02415192, -0.26902276, -0.14990681, -0.10717932, 0.05340062, 0.1493907, 0.02956052, -0.05846758, -0.0427017, 0.09817781, -0.1202765, -0.12918408, -0.17921108, 0.18458268, 0.01664486, -0.0294736, -0.10784227, -0.1882393, 0.00731233, -0.17124456, 0.15107997, -0.44957647, -0.24116741, 0.01314391, -0.36670342, -0.40968287, -0.20713465, -0.5956796, -0.07666151, 0.01735243, -0.08870319, -0.16465917, -0.00080142, 0.55953383, 0.26952362, 0.08384239, 0.01154229, -0.06952102, 0.03519329, 0.53591913, 0.06613176, -0.02053994, -0.5055812, 0.16578385, -0.18788701, -0.18359464, -0.04732921, 0.25010267, -0.20737396, -0.43951398, -0.16413997, -0.9217318, -0.4086452, -0.16051467, -0.01483061, 0.08317263, -0.15610543, 0.2852873, -0.10505164, 0.24765174, -0.5635689, 0.4473711, 0.4668875, -0.24054137, -0.06800731, -0.12317964, 0.3971442, 0.06237518, -0.17970203, -0.19693519, 0.20565659, 0.02174475, -0.00784475, 0.33510482, 0.06119049, 0.35239732, -0.12601551, 0.11772437, -0.13438591, -0.19820566, -0.10636429, -0.09736885, -0.21069573, -0.06395157, 0.18638651, 0.14420345, 0.05821975, -1.151987, -0.7092476, 0.22000888, 0.0340619, 0.03797846, -0.18414408, -0.13057873, -0.17920971, -0.1609449, -0.09095978, -0.0755333, -0.26459995, 0.2247495, 0.09339268, 0.10395035, 0.13800836, -0.25756726, 0.13516882, 0.0134402, -0.11655522, 0.19406457, -0.05379239, -0.0657303, -0.02148277, -0.29467624, 0.07381025, 0.12174089, 0.00708413, -0.22813147, -0.31558368, -0.01909142, -0.14138019, -0.21412934, 0.23153585, -0.01897597, -0.00100758, -0.08865529, -0.0623709, 0.14378856, -0.04141674, -0.03119272, -0.08332849, 0.10799326, -0.08615266, -0.09226599, 0.26601094, 0.03573238, -0.23368445, 0.1588252, -0.10669286, 0.03790901, 0.25110507, -0.05823708, 0.1216723, -0.09257592, 0.02191816, -0.00223452, -0.03650181, 0.07274602, 0.01718604, 0.23926851, -0.18155381, -0.1117788, 0.11781479, 0.05266182, -0.16152231, 0.2300876, 0.10511653, 0.1393098, 0.3819682, -0.04835102, 0.17405504, 0.13533641, -0.03955844, 0.18480317, 0.5486926, 0.29645568, 0.08574091, -0.00914312, -0.20021519, 0.20832905, 0.12308848, 0.3791024, -0.0954222, 0.5748822, 0.00488695, -0.01871396, 0.11575659, -0.02957447, 0.19916132, 0.18018514, 0.13885146, -0.05250153, 0.0340096, 0.3460008, 0.14460763, 0.07585043, 0.03588791, -0.17043746, 0.20542026, -0.07175131, -0.12056665, -0.14299068, 0.0958491, 0.04823343, -0.01630443, 0.14523247, -0.23731461, -0.1017941, -0.01665366, 0.3066175, 0.04380267, -0.1300789, -0.0051679, 0.1011139, 0.11862967, 0.03440294, 0.09878203, -0.26132202, 0.14609273, 0.19419882, 0.02439942, -0.12665974, 0.31330675, -0.2620232, -0.06805762, 0.2506985, 0.0381599, -0.08007773, 0.06662604, 0.28361142, 0.1288561, 0.14142905, -0.23767114, 0.11165302, 0.17486489, 0.15553252, 0.29669634, 0.29439527, 0.03343087, 0.01682256, 0.08822078, -0.09363737, 0.13378629, -0.01484993, 0.01501194, 0.05974591, 0.06481212, -0.08816664, -0.14404199, 0.20315437, 0.24513239, 0.12007615, -0.11281818, -0.09548863, -0.02543744, -0.02110884, -0.27825934, -0.15018111, 0.23716615, -0.06159938, -0.23089257, -0.15351771, 0.45690742, -0.11934386, -0.01948304, -0.03179589, 0.03370772, 0.29851472, 0.14309713, 0.23663189, 0.1867433, 0.10270391, 0.24143852, 0.18296057, -0.10688631, -0.05105929, -0.03842678, 0.26009077, 0.09242612, -0.07064469, 0.03256094, 0.08899746, -0.05848467, 0.09990676, 0.24867778, 0.15861216, 0.02330081, -0.31453282, -0.09991521, 0.11679115, 0.06463062, 0.24999033, 0.01904338, -0.4507681, -0.2978951, -0.10771358, 0.11749946, 0.12937121, -0.05493695, -0.06340855, 0.06074326, 0.22728474, 0.257381, 0.15185288, -0.02192581, -0.04123024, -0.21322188, 0.14603093, 0.19725291, -0.09341335, -0.07030185, -0.18817514, 0.15574697, 0.3927905, 0.17787318, 0.03056586, 0.03192165, -0.15321279};

//     sp_conv3<data_t>(padding, width, height, src_conv2, filter3, dst_conv2);

// }

// void pool3(int width, int height, hls::stream<data_t> &in_pl3, hls::stream<data_t> &out_pl3) {
//     height = height ;
//     width  = width;
//     data_t pool_buf[NUM_FILTERS_3][CONV3_WIDTH];
//     data_t pool_win[NUM_FILTERS_3][K - 1][K - 1];
//     int count_pool3 =0;
//     for (int pool3_row = 0; pool3_row < height; pool3_row++) {
//         for (int pool3_col = 0; pool3_col < width; pool3_col++) {
//             #pragma HLS PIPELINE
//             for (int num_filters = 0; num_filters < NUM_FILTERS_3; num_filters++) {
//                 data_t in_pool_val;


//                 if (pool3_row == (height-1) || pool3_col == (width-1)) {
//                     in_pool_val = 0;
//                 } else {
//                     in_pool_val = in_pl3.read();
//                     //count_read_pool3 ++;
//                 }

//                 data_t temp = 0;
//                // data_t in_pool_val = in_pl3.read();
                
//                 if (pool3_row >= K - 2) {
//                     for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
//                         for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
//                             #pragma HLS PIPELINE
//                             if (pool_win_row < K - 2) {
//                                 pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : pool_buf[num_filters][pool3_col];
//                             } else if (pool_win_row == K - 2) {
//                                 pool_win[num_filters][pool_win_row][pool_win_col] = (pool_win_col < K - 2) ? pool_win[num_filters][pool_win_row][pool_win_col + 1] : in_pool_val;
//                             }
//                         }
//                     }

//                     if (pool3_col % (K - 1) == 1 && pool3_row % (K - 1) == 1) {
//                         for (int pool_win_row = 0; pool_win_row < POOL_SIZE; pool_win_row++) {
//                             for (int pool_win_col = 0; pool_win_col < POOL_SIZE; pool_win_col++) {
//                                 #pragma HLS PIPELINE
//                                 if (temp <= pool_win[num_filters][pool_win_row][pool_win_col]) {
//                                     temp = pool_win[num_filters][pool_win_row][pool_win_col];
//                                 }
//                             }
//                         }
//                         out_pl3 << temp;
//                         count_pool3 ++;
//                     }
//                 }
//                 pool_buf[num_filters][pool3_col] = in_pool_val;
//             }
//         }
//     }
//     std::cout << "count_pool3:" <<count_pool3<<"\n";
// }
// template<typename T>
// void sp_conv4( int padding,int width, int height, hls::stream<T> &src,T ker[NUM_FILTERS_4][NUM_KERNEL_4][K][K], hls::stream<T> &dst) {
//     height = height + 2;
//     width  = width + 2;
//     int count_conv4=0;
//     // int count_read =0;
//     int count_read_4 =0;

//     T linebuf[NUM_FILTERS_3][K - 1][POOL3_WIDTH+2];
//     //#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
//     T win[NUM_FILTERS_3][K][K];
//    // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
//    // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
//    // #pragma HLS INLINE // Into a DATAFLOW region
//     T data[NUM_FILTERS_4];
//      POOL1H:for (int pool3_row = 0; pool3_row < height; pool3_row++) {
//         POOL1W:for (int pool3_col = 0; pool3_col < width; pool3_col++) {
            
//             for(int i=0;i<NUM_FILTERS_4;i++){
//                 data[i]=0;
//             }
//             //data[NUM_FILTERS_2] = {0,0,0,0,0,0,0,0};
//             A_Filter1:for(int num_fil3 =0;num_fil3<NUM_FILTERS_3;num_fil3++){
//           //  #pragma HLS DEPENDENCE variable=linebuf inter false 
//           //  #pragma HLS PIPELINE
//             T in_val;
//             count_read_4++;
//             if ((pool3_row == 0) || (pool3_col == 0) || pool3_row == (POOL3_HEIGHT+1) || pool3_col == (POOL3_WIDTH+1 )) {
//                 in_val = 0;
//             } else {
//                 in_val = src.read();
//                // count_read ++;
//             }
//            // std::cout << "imgrow" <<img_row<<"\t";
//             //std::cout <<"imgcol" <<img_col<<"\t";
//            // std::cout<<"fil"<<num_fil1<<"\t";
//            // std::cout<<"in_val:"<<in_val<<"\n";
//             if (pool3_row >= K - 1){

//             // Shift values in the window horizontally
            
//              A_ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
//                  A_ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
//                   //  #pragma HLS PIPELINE
//                     if (win_row < K - 1) {
//                         win[num_fil3][win_row][win_col] = (win_col < K - 1) ? win[num_fil3][win_row][win_col + 1] : linebuf[num_fil3][win_row][pool3_col];
//                     } else if (win_row == K - 1) {
//                         win[num_fil3][win_row][win_col] = (win_col < K - 1) ? win[num_fil3][win_row][win_col + 1] : in_val;
//                     }
//                 }
//             }
            
//             // Convolution operation
//             A_Filters:for (int num_fil4 = 0; num_fil4 < NUM_FILTERS_4; num_fil4++) {
//                 A_Conv:if (pool3_col >= K - 1) {
//                     A_ConvH:for (int win_row = 0; win_row < K; win_row++) {
//                         A_ConvW:for (int win_col = 0; win_col < K; win_col++) {
//                          //   #pragma HLS PIPELINE
//                             data[num_fil4] += win[num_fil3][win_row][win_col] * ker[num_fil4][num_fil3][win_row][win_col];
//                         }
//                     }
//                    // data += bias_conv1[num_filters];  

//                 }
//             }
//         }

//             // Shift values in line buffer vertically
//             A_ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
//                // #pragma HLS PIPELINE
//                 T temp = (i < K - 2) ? linebuf[num_fil3][i+1][pool3_col] : in_val;
//                 linebuf[num_fil3][i][pool3_col] = temp;
//             }
//         }
//         // luu lan luot gia tri cua mang vao dst
//         if ((pool3_row >= K - 1) && (pool3_col >= K - 1)){
//             for(int i=0;i<NUM_FILTERS_4;i++){
//                     dst << relu((data[i]+bias_conv4[i]));
//                     count_conv4 ++;
//                 }
//             }
//         }
//     }
//    // std::cout << "count_img:" <<count_img << "\n";
//         std::cout << "count_conv4:" <<count_conv4<<"\n";
//       // std::cout << "count_read:" <<count_read<<"\n";
//        std::cout << "count_read_4:" <<count_read_4<<"\n";
// }

// void conv4(int padding,int width, int height, hls::stream<data_t> &src_conv4, hls::stream<data_t> &dst_conv4) {
//     #pragma HLS DATAFLOW
//     data_t filter4[8][8][3][3]={-0.05353427, 0.00273042, 0.03461251, -0.11558491, -0.16561672, -0.17701644, 0.1318332, 0.05598129, -0.09287412, -0.11253025, 0.04703401, -0.06167003, -0.02542767, -0.29898307, 0.23250714, -0.11091627, 0.02589541, -0.04855473, -0.1581634, 0.01058759, -0.00619458, -0.21009843, -0.08114899, 0.10976224, 0.08899342, -0.0571292, 0.01351235, 0.27915877, 0.17958747, -0.00644577, 0.09153629, 0.20249856, -0.03451004, -0.04718816, -0.02593838, 0.14439763, -0.15233144, 0.21358956, -0.39046884, -0.14471975, 0.01116831, 0.18587619, 0.10037319, -0.04321624, -0.10460848, -0.04324847, 0.04228878, 0.01031322, 0.24450539, -0.14892522, 0.2528033, 0.02564466, -0.15091963, -0.09586192, 0.12716937, -0.1164217, 0.03774165, 0.0679022, -0.32809952, 0.12740332, 0.00757734, 0.19138867, -0.0602621, 0.11442138, 0.03617706, -0.07744278, 0.39175305, 0.26469943, 0.04573256, 0.00623977, 0.07370271, -0.0473356, 0.09586508, -0.15647876, 0.0417666, -0.1887387, 0.02081872, 0.11013738, -0.21561666, 0.1312814, 0.11480291, -0.04518899, 0.24582806, -0.00135893, 0.03461677, 0.15786755, -0.13115875, -0.05027754, 0.10416754, 0.14188185, -0.08989637, -0.01390909, 0.13863681, 0.05304958, 0.07699338, -0.3722038, 0.07008355, -0.17071356, 0.01374694, 0.28926137, 0.09160412, -0.0461775, 0.15874086, -0.22433728, 0.15612464, 0.04314532, -0.06281272, -0.2261888, -0.23371184, 0.71487665, -0.34592086, -0.06524573, 0.19553293, -0.6741654, -0.05170781, -0.01164026, 0.14897725, 0.15269017, 0.16228239, 0.10446145, -0.09032519, 0.58692086, 0.00745971, 0.02513978, 0.08319099, 0.10665272, -0.11865605, -0.16301253, -0.03843581, 0.01153917, -0.40534708, 0.12302921, -0.01832834, 0.16433139, -0.04865934, 0.03337184, 0.09323235, 0.08011923, 0.14035128, 0.13028729, 0.1594658, 0.13199703, -0.03058298, 0.01313367, -0.08003471, 0.24574801, 0.03174589, 0.43125284, -0.02843783, 0.07917425, -0.11882281, -0.04355394, -0.03952047, 0.11112806, -0.18428135, -0.09751894, -0.0739763, -0.21186507, 0.17957787, -0.0482433, 0.14175779, -0.0881279, 0.01236782, 0.01547033, 0.03825629, -0.16366905, 0.2452969, -0.03108223, 0.15524822, 0.1005932, -0.00040854, -0.16770212, 0.08793634, 0.02046845, -0.06311576, -0.21244237, -0.00491537, -0.09755995, -0.06505376, 0.02003511, 0.19064867, -0.02749211, 0.2247211, -0.0498107, 0.03282782, 0.35398003, 0.02565317, -0.01031491, 0.17956553, 0.35640058, -0.0800639, -0.11682043, 0.10124989, 0.59518874, -0.04286273, -0.02900106, -0.12733185, -0.12527585, 0.13652593, 0.04186978, 0.0339142, 0.06942142, 0.3336456, -0.1341998, -0.03977976, -0.2248108, 0.1058514, -0.0500595, -0.07839499, -0.11753508, 0.04825826, 0.37687188, -0.08619564, 0.15392454, -0.10985836, 0.02265298, -0.14856388, 0.14404179, 0.16102232, -0.36781114, 0.27037564, 0.11013584, -0.00983908, 0.08282381, 0.10037139, 0.04222262, -0.3134325, -0.03974574, 0.05831756, 0.02050728, 0.00115529, -0.06922884, -0.03071028, -0.0738952, -0.05393166, -0.40429938, 0.04091605, -0.05788187, -0.4460751, -0.10188496, 0.08586364, -0.01628904, 0.03811755, 0.02878892, 0.18398923, 0.03300226, 0.08438508, -0.13809592, 0.15823114, -0.06459807, 0.01728398, -0.09681837, -0.24830347, 0.30763754, 0.00540642, -0.10704413, 0.06475947, 0.3809346, 0.06271037, -0.06942482, 0.01945444, 0.03827592, 0.00536609, -0.10132305, -0.03372107, -0.00189643, 0.08104314, -0.02494743, 0.01034316, -0.06492291, 0.04874279, 0.17694387, -0.02777945, 0.05136408, 0.3207518, 0.01339758, 0.03120551, 0.11256348, 0.02404252, 0.11312077, 0.4371816, -0.29679856, 0.315679, 0.07826591, -0.01564001, 0.03496687, -0.0950017, 0.01485631, 0.23641367, 0.15257215, 0.04974725, -0.37846324, 0.26610407, 0.1190237, -0.04749518, -0.00182072, 0.09526147, 0.16727015, -0.2515807, -0.14067176, 0.10913983, 0.283468, -0.19681403, 0.0113054, -0.07083607, -0.0896759, 0.01737044, -0.36332533, 0.05444657, 0.06351627, -0.02866869, -0.04403675, -0.02506531, 0.09611966, -0.02071184, -0.0126227, 0.11686883, 0.15498103, 0.12032579, -0.0608928, 0.0398836, -0.07345308, 0.03845829, -0.06591355, -0.15810545, 1.0194288, 1.0413306, 0.01541356, 0.00941383, 0.07238317, -0.05002908, 0.07564124, 0.01219627, 0.25125054, -0.28932494, -0.01037828, -0.00121562, 0.10468576, 0.01700269, -0.260842, 0.01712116, -0.08937161, -0.2503098, 0.01746386, 0.05493985, -0.08912291, -0.2761167, 0.10160488, -0.01040096, -0.04390961, 0.10874167, -0.07317334, 0.23125842, -0.08461215, 0.12913856, -0.02805559, 0.1059755, 0.07942125, -0.01760564, 0.124633, -0.09941093, 0.06023943, 0.04459628, -0.04915771, 0.20099698, -0.0464721, 0.01682568, -0.09559492, 0.01085928, 0.09457045, -0.10375741, -0.02556658, -0.04971392, 0.48876882, -0.00745201, -0.11156364, -0.00054057, -0.02209502, -0.05559651, -0.14097758, -0.08598328, 0.0259256, 0.23759294, -0.00838979, 0.0374921, 0.05769567, 0.07710367, -0.07509632, -0.02658467, 0.00095768, 0.05583207, 0.43578327, 0.01057915, 0.00846511, -0.05637594, 0.05817636, -0.01815961, -0.00691916, -0.39045656, 0.01485991, -0.08129042, 0.5346524, 0.02061012, -0.00353583, -0.28847742, 0.1046, -0.08776794, 0.00231095, 0.01832624, 0.05451765, -0.02175369, 0.17053717, 0.02126556, -0.07548892, 2.4883471e-02, 6.5223560e-02, 2.2816622e-04, 1.2072450e-01, -3.6139965e-01, 1.1125546e-02, -4.3352965e-02, -8.7160468e-02, -1.2908487e-02, 0.05350754, 0.1312672, -0.11232688, 0.03443046, 0.3410024, 0.0640354, 0.07353805, 0.00826659, 0.01360546, 0.16287194, -0.10928314, 0.03231665, -0.2752143, 0.02372241, -0.06533438, -0.17132391, -0.14025807, -0.04273453, -0.06962147, 0.14760049, 0.05082432, 0.03596928, -0.44805434, -0.00091764, -0.01598709, 0.06360863, 0.07670642, -0.08003206, -0.00407225, 0.21766433, 0.00087054, 0.5472692, 0.04022307, -0.04623282, 0.01314022, -0.0234705, -0.2542243, -0.2875691, -0.06091002, 0.05908777, 0.23002194, 0.02915354, 0.01227454, 0.00402441, -0.11499906, -2.1691177, 0.69746023, 0.386236, 0.04907588, 0.193971, 0.07069113, -0.13858569, 0.12833652, -0.16643453, 0.3988541, 0.03976711, 0.19428742, -0.10711896, 0.07594509, 0.03258318, 0.21998358, 0.26085916, 0.05256809, -0.04813423, 0.1484903, -0.08809876, 0.14055257, -0.61777645, 0.14214987, -0.04905468, -0.02850463, -0.00517574, -0.13177273, -0.45367113, -0.14359692, 0.33924454, 0.20720112, -0.04795125, 0.15459532, 0.04925698, 0.05479416, -0.05279233, 0.01154036, -0.06120909, -0.3650461, 0.09308258, 0.03154963, 0.09653351, -0.01008863, 0.03213834, -0.12339159, 0.02377816, 0.03983399, -0.21981384, 0.27124715, -0.00491318, -0.01234227, -0.05002018, -0.05246517, -0.11438288, 0.04260919, -0.1578116, 0.09144173, -0.3121479, -0.00627535, 0.02687822, 0.17240517, -0.07924353, 0.06287092, -0.08128955, 0.12499448, -0.41563466, 0.2275128, 0.05151227, 0.00944976, 0.01378581, -0.04769661, 0.5574673, 0.05468595, 0.2591153, 0.48573282, 0.6952692, -0.09833732, 0.01754879, 0.11055247, 0.20650853, 0.04224464, -0.14828819, 0.03983375, 0.6964221, 0.07421114, -0.22371727, -0.13850577, -0.4137101, -0.01395418, -0.06642941, -0.06096205, 0.02974173, 0.28961316, -0.21283656, -0.09334915, 0.00417029, 0.12879744, 0.0127127, 0.44082686, 0.04931875, 0.08146446, 0.09818774, -0.00251722, 0.03114469, -0.15859404, -0.05812319, 0.03730413};

//     sp_conv4<data_t>(padding, width, height, src_conv4, filter4, dst_conv4);

// }


void full(hls::stream<data_t> &full_in,hls::stream<data_t> &full_out){
    
    hls::stream<data_t> conv1_out("conv1_out");
        hls::stream<data_t> pool1_out("pool1_out");
         hls::stream<data_t> conv2_out("conv2_out");
         hls::stream<data_t> pool2_out("pool2_out");
         hls::stream<data_t> conv3_out("conv3_out");
         hls::stream<data_t> pool3_out("pool3_out");
    conv1(NUM_FILTERS_1, IMG_WIDTH,IMG_HEIGHT,full_in, conv1_out);
    //sp_conv1<data_t>(IMG_WIDTH, IMG_HEIGHT, src_img, filters, conv1_out);
        //     while (!conv1_out.empty()) {
        //     data_t value = conv1_out.read();
        //     std::cout << value << "\t";
        // }

    // for(int n=0;n<NUM_FILTERS;n++){
    //     for (int i = 0; i < CONV1_HEIGHT; i++) {
    //         for (int j = 0; j < CONV1_WIDTH; j++) {
    //             data_t pix_val = (i * CONV1_WIDTH + j);
    //             conv1_out << pix_val;
    //         }
    //     }
    // }

    pool1(IMG_WIDTH,IMG_HEIGHT,conv1_out,pool1_out);
   // pool1(CONV1_WIDTH,CONV1_HEIGHT,full_in,full_out);
     conv2(NUM_FILTERS_1,NUM_FILTERS_2,POOL1_WIDTH,POOL1_HEIGHT,pool1_out,full_out);
    // pool2(CONV2_WIDTH,CONV2_HEIGHT,conv2_out,pool2_out);
    // conv3(1,POOL2_WIDTH,POOL2_HEIGHT,pool2_out,conv3_out);
    // pool3(CONV3_WIDTH,CONV3_HEIGHT,conv3_out,pool3_out);
    // conv4(1,POOL3_WIDTH,POOL3_HEIGHT,pool3_out,full_out);

}
