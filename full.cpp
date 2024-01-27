#include"full.h"
#include <iostream>
#include <hls_stream.h>
#include "defines.h"
#include "weights.h"
#include "activation.h"

template<typename T>
void sp_conv_pad1(int fil_out, int width, int height,T *bias, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[K - 1][IMG_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[K][K];
  //  #pragma HLS ARRAY_PARTITION variable=win complete dim=0
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

template<typename T>
void sp_conv2( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[NUM_FILTERS_1][K-1][POOL1_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[NUM_FILTERS_1][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_2];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
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
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
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
template<typename T>
void sp_conv3( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[NUM_FILTERS_2][K-1][POOL2_WIDTH];
    //#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[NUM_FILTERS_2][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_3];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
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
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
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
template<typename T>
void sp_conv4( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[NUM_FILTERS_3][K-1][POOL3_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[fil_in][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_4];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
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
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
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
template<typename T>
void sp_conv5( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[NUM_FILTERS_4][K-1][UPSAM4_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[NUM_FILTERS_4][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_5];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
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
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
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
template<typename T>
void conv_np6( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    T linebuf[NUM_FILTERS_5][K - 1][UPSAM5_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[NUM_FILTERS_5][K][K];
   // #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_6];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
            for(int i=0;i<fil_out;i++){
                data[i]=0;
            }
            A_Filter1:for(int num_fil1 =0;num_fil1<fil_in;num_fil1++){
          //  #pragma HLS DEPENDENCE variable=linebuf inter false 
          //  #pragma HLS PIPELINE
            T in_val;
                in_val = src.read();
            if (pool_row >= K - 1){
            // Shift values in the window horizontally
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
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


template<typename T>
void sp_conv7( int fil_in,int fil_out,int width, int height,T *bias2, hls::stream<T> &src,T *ker, hls::stream<T> &dst) {
    height = height + 2;
    width  = width + 2;
    T linebuf[NUM_FILTERS_6][2][UPSAM6_WIDTH];
   // #pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1
    T win[NUM_FILTERS_6][K][K];
  //  #pragma HLS ARRAY_PARTITION variable=win complete dim=0
   // #pragma HLS ARRAY_PARTITION variable=ker complete dim=0
    #pragma HLS INLINE // Into a DATAFLOW region
    T data[NUM_FILTERS_7];
     POOLH:for (int pool_row = 0; pool_row < height; pool_row++) {
        POOLW:for (int pool_col = 0; pool_col < width; pool_col++) {
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
             ShiftWindowH:for (int win_row = 0; win_row < K; win_row++) {
                 ShiftWindowW:for (int win_col = 0; win_col < K; win_col++) {
                  //  #pragma HLS PIPELINE
                    if (win_row < K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : linebuf[num_fil1][win_row][pool_col];
                    } else if (win_row == K - 1) {
                        win[num_fil1][win_row][win_col] = (win_col < K - 1) ? win[num_fil1][win_row][win_col + 1] : in_val;
                    }
                }
            }
            
            // Convolution operation
            Filters:for (int num_fil2 = 0; num_fil2 < fil_out; num_fil2++) {
                Conv:if (pool_col >= K - 1) {
                    ConvH:for (int win_row = 0; win_row < K; win_row++) {
                        ConvW:for (int win_col = 0; win_col < K; win_col++) {
                         //   #pragma HLS PIPELINE
                            data[num_fil2] += win[num_fil1][win_row][win_col] * ker[num_fil2*fil_in*K*K+num_fil1*K*K+win_row*K+win_col];
                        }
                    }
                }
            }
        }

            // Shift values in line buffer vertically
            ShiftLineBuffer:for (int i = 0; i < K-1 ; i++) {
                #pragma HLS PIPELINE
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




void pool_np1(int fil,int width, int height, hls::stream<data_t> &in_pl, hls::stream<data_t> &out_pl) {
    data_t pool_buf[NUM_FILTERS_1][CONV1_WIDTH];
    data_t pool_win[NUM_FILTERS_1][K-1][K-1];
    for (int pool_row = 0; pool_row < height; pool_row++) {
        for (int pool_col = 0; pool_col < width; pool_col++) {
            #pragma HLS PIPELINE
            for (int num_filters = 0; num_filters < fil; num_filters++) {
                data_t temp = 0;
                data_t in_pool_val = in_pl.read();
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
                        out_pl << temp;
                    }
                }
                pool_buf[num_filters][pool_col] = in_pool_val;
            }
        }
    }
}

void pool_np2(int fil,int width, int height, hls::stream<data_t> &in_pl, hls::stream<data_t> &out_pl) {
    data_t pool_buf[NUM_FILTERS_2][CONV2_WIDTH];
    data_t pool_win[NUM_FILTERS_2][K-1][K-1];
    for (int pool_row = 0; pool_row < height; pool_row++) {
        for (int pool_col = 0; pool_col < width; pool_col++) {
            #pragma HLS PIPELINE
            for (int num_filters = 0; num_filters < fil; num_filters++) {
                data_t temp = 0;
                data_t in_pool_val = in_pl.read();
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
                        out_pl << temp;
                    }
                }
                pool_buf[num_filters][pool_col] = in_pool_val;
            }
        }
    }
}
void pool_p3(int fil,int width, int height, hls::stream<data_t> &in_pl, hls::stream<data_t> &out_pl) {
    height = height +1;
    width = width +1;
    data_t pool_buf[NUM_FILTERS_3][CONV3_WIDTH];
    data_t pool_win[NUM_FILTERS_3][K-1][K-1];
    for (int pool_row = 0; pool_row < height; pool_row++) {
        for (int pool_col = 0; pool_col < width; pool_col++) {
            #pragma HLS PIPELINE
            for (int num_filters = 0; num_filters < fil; num_filters++) {
                data_t temp = 0;
                data_t in_pool_val;
                if (pool_row == (height-1) || pool_col == (width-1)) {
                    in_pool_val = 0;
                } else {
                    in_pool_val = in_pl.read();
                }
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
                        out_pl << temp;
                    }
                }
                pool_buf[num_filters][pool_col] = in_pool_val;
            }
        }
    }
}

void upsampling4(int fil,int width, int height, hls::stream<data_t> &in_us1, hls::stream<data_t> &out_us1) {
    data_t upsam_buf[NUM_FILTERS_4][CONV4_WIDTH];
    for (int cona_row = 0; cona_row < 2 * height; cona_row++) {
        for (int cona_col = 0; cona_col < 2 * width; cona_col++) {
            #pragma HLS PIPELINE
            for (int cona_depth = 0; cona_depth < fil; cona_depth++) {
                if(((cona_row % 2) == 0) && ((cona_col % 2) == 0)){
                    upsam_buf[cona_depth][cona_col / 2] =in_us1.read();;
                }
                out_us1 << upsam_buf[cona_depth][cona_col / 2];
            }
        }
    }
}

void upsampling5(int fil,int width, int height, hls::stream<data_t> &in_us1, hls::stream<data_t> &out_us1) {
    data_t upsam_buf[NUM_FILTERS_5][CONV5_WIDTH];
    for (int cona_row = 0; cona_row < 2 * height; cona_row++) {
        for (int cona_col = 0; cona_col < 2 * width; cona_col++) {
            #pragma HLS PIPELINE
            for (int cona_depth = 0; cona_depth < fil; cona_depth++) {
                if(((cona_row % 2) == 0) && ((cona_col % 2) == 0)){
                    upsam_buf[cona_depth][cona_col / 2] =in_us1.read();;
                }
                out_us1 << upsam_buf[cona_depth][cona_col / 2];
            }
        }
    }
}

void upsampling6(int fil,int width, int height, hls::stream<data_t> &in_us1, hls::stream<data_t> &out_us1) {
    data_t upsam_buf[NUM_FILTERS_6][CONV6_WIDTH];
    for (int cona_row = 0; cona_row < 2 * height; cona_row++) {
        for (int cona_col = 0; cona_col < 2 * width; cona_col++) {
            #pragma HLS PIPELINE
            for (int cona_depth = 0; cona_depth < fil; cona_depth++) {
                if(((cona_row % 2) == 0) && ((cona_col % 2) == 0)){
                    upsam_buf[cona_depth][cona_col / 2] =in_us1.read();;
                }
                out_us1 << upsam_buf[cona_depth][cona_col / 2];
            }
        }
    }
}



void conv1(hls::stream<data_t> &src_img, hls::stream<data_t> &dst_img) {
    #pragma HLS DATAFLOW
    #pragma HLS stream depth=2 variable=dst_img
    sp_conv_pad1<data_t>(NUM_FILTERS_1, IMG_WIDTH,IMG_HEIGHT, bias_conv1,src_img, kernel1, dst_img);
    
}
void conv2( hls::stream<data_t> &src_conv2, hls::stream<data_t> &dst_conv2) {
    #pragma HLS DATAFLOW
    sp_conv2<data_t>(NUM_FILTERS_1,NUM_FILTERS_2,POOL1_WIDTH,POOL1_HEIGHT,bias_conv2, src_conv2, filter2, dst_conv2);
}
void conv3( hls::stream<data_t> &src_conv3, hls::stream<data_t> &dst_conv3) {
    #pragma HLS DATAFLOW
    sp_conv3<data_t>(NUM_FILTERS_2,NUM_FILTERS_3, POOL2_WIDTH, POOL2_HEIGHT,bias_conv3, src_conv3, filter3, dst_conv3);
}
void conv4( hls::stream<data_t> &src_conv4, hls::stream<data_t> &dst_conv4) {
    #pragma HLS DATAFLOW
    sp_conv4<data_t>(NUM_FILTERS_3,NUM_FILTERS_4, POOL3_WIDTH, POOL3_HEIGHT,bias_conv4, src_conv4, filter4, dst_conv4);
}
void conv5( hls::stream<data_t> &src_conv5, hls::stream<data_t> &dst_conv5) {
    #pragma HLS DATAFLOW
    sp_conv5<data_t>(NUM_FILTERS_4,NUM_FILTERS_5, UPSAM4_WIDTH, UPSAM4_HEIGHT,bias_conv5, src_conv5, filter5, dst_conv5);
}
void conv6( hls::stream<data_t> &src_conv6, hls::stream<data_t> &dst_conv6) {
    #pragma HLS DATAFLOW
    conv_np6<data_t>(NUM_FILTERS_5,NUM_FILTERS_6, UPSAM5_WIDTH, UPSAM5_HEIGHT,bias_conv6, src_conv6, filter6, dst_conv6);
}
void conv7( hls::stream<data_t> &src_conv7, hls::stream<data_t> &dst_conv7) {
    #pragma HLS DATAFLOW
    sp_conv7<data_t>(NUM_FILTERS_6,NUM_FILTERS_7, UPSAM6_WIDTH, UPSAM6_HEIGHT,bias_conv7, src_conv7, filter7, dst_conv7);
}


void pool1(hls::stream<data_t> &in_pl1, hls::stream<data_t> &out_pl1){
    pool_np1(NUM_FILTERS_1,CONV1_WIDTH,CONV1_HEIGHT,in_pl1,out_pl1);
}
void pool2(hls::stream<data_t> &in_pl2, hls::stream<data_t> &out_pl2){
    pool_np2(NUM_FILTERS_2,CONV2_WIDTH,CONV2_HEIGHT,in_pl2,out_pl2);
}
void pool3(hls::stream<data_t> &in_pl3, hls::stream<data_t> &out_pl3){
    pool_p3(NUM_FILTERS_3,CONV3_WIDTH,CONV3_HEIGHT,in_pl3,out_pl3);
}


void upsamp4(hls::stream<data_t> &in_us4, hls::stream<data_t> &out_us4){
    upsampling4(NUM_FILTERS_4,CONV4_WIDTH,CONV4_HEIGHT,in_us4,out_us4);
}
void upsamp5(hls::stream<data_t> &in_us5, hls::stream<data_t> &out_us5){
    upsampling5(NUM_FILTERS_5,CONV5_WIDTH,CONV5_HEIGHT,in_us5,out_us5);
}
void upsamp6(hls::stream<data_t> &in_us6, hls::stream<data_t> &out_us6){
    upsampling6(NUM_FILTERS_6,CONV6_WIDTH,CONV6_HEIGHT,in_us6,out_us6);
}
// void upsamp7(hls::stream<data_t> &in_us7, hls::stream<data_t> &out_us7){
//     upsampling7(NUM_FILTERS_7,CONV7_WIDTH,CONV7_HEIGHT,in_us7,out_us7);
// }




void full(hls::stream<data_t> &full_in,hls::stream<data_t> &full_out){
    
    hls::stream<data_t> conv1_out("conv1_out");
    hls::stream<data_t> pool1_out("pool1_out");
    hls::stream<data_t> conv2_out("conv2_out");
    hls::stream<data_t> pool2_out("pool2_out");
    hls::stream<data_t> conv3_out("conv3_out");
    hls::stream<data_t> pool3_out("pool3_out");
    hls::stream<data_t> conv4_out("conv4_out");
    hls::stream<data_t> upsamp4_out("upsamp4_out");
    hls::stream<data_t> conv5_out("conv5_out");
    hls::stream<data_t> upsamp5_out("upsamp5_out");
    hls::stream<data_t> conv6_out("conv6_out");
    hls::stream<data_t> upsamp6_out("upsamp6_out");
    conv1(full_in, conv1_out);
    pool1(conv1_out,pool1_out);
    conv2(pool1_out,conv2_out);
    pool2(conv2_out,pool2_out);
    conv3(pool2_out,conv3_out);
    pool3(conv3_out,pool3_out);
    conv4(pool3_out,conv4_out);
    upsamp4(conv4_out,upsamp4_out);
    conv5(upsamp4_out,conv5_out);
    upsamp5(conv5_out,upsamp5_out);
    conv6(upsamp5_out,conv6_out);
    upsamp6(conv6_out,upsamp6_out);
    conv7(upsamp6_out,full_out);



   // pool2(conv2_out,full_out);
}
