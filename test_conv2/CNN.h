#include<stdio.h>
#include<hls_stream.h>
#include<stdint.h>

void CNN( int padding, int width, int hight,  data_t *image, data_t *output_conv1, data_t *output_pooling1);


// relu function
static data_t relu(data_t a)
{
	return a > (data_t)0 ? a : (data_t)0;
}
//convolution function
template <typename INPUT_DATA_TYPE
         ,typename OUTPUT_DATA_TYPE
	 ,typename KERNEL_TYPE
	 ,typename PADDING_TYPE
	 ,int CONV_DATA_XSIZE
	 ,int CONV_DATA_YSIZE
	 ,int CONV_NUM_CHANNEL
	 ,int CONV_NUM_KERNEL
	 ,int CONV_DATA_OUT_XSIZE
	 ,int CONV_DATA_OUT_YSIZE
	 ,int KERNEL_XSIZE
	 ,int KERNEL_YSIZE
	 ,int CONV_STRICE
	 ,int CONV_PADDING_SIZE
	 >
static void convolution( int padding, int width, int hight ,INPUT_DATA_TYPE bias[CONV_NUM_CHANNEL], data_t *image, const KERNEL_TYPE *kernel,OUTPUT_DATA_TYPE *output) {
 hight = CONV_DATA_YSIZE + 2*CONV_PADDING_SIZE;
 width = CONV_DATA_XSIZE + 2*padding;
   
 INPUT_DATA_TYPE window_buffer[KERNEL_XSIZE][KERNEL_YSIZE];
 static INPUT_DATA_TYPE line_buffer_0[CONV_DATA_XSIZE];
 static INPUT_DATA_TYPE line_buffer_1[CONV_DATA_XSIZE];
 static INPUT_DATA_TYPE line_buffer_2[CONV_DATA_XSIZE];

// push pixel to 1 line buffer
 for ( int num_channel = 0 ; num_channel < CONV_NUM_CHANNEL ; num_channel ++ ){
      for( int num_ker= 0 ; num_ker < CONV_NUM_KERNEL ; num_ker ++){
Push_pixel: for( int i = 0 ; i < hight ; i++ ) {
    for( int j = 0 ; j < width; j++ ) { 
      line_buffer_0[j] = line_buffer_1[j];
      line_buffer_1[j] = line_buffer_2[j];
      if( i == 0 || i == hight - 1 || j == 0 || j == width - 1 ){
	      line_buffer_2[j] = 0;
      }
      else {
      line_buffer_2[j] = image[num_channel*CONV_DATA_XSIZE*CONV_DATA_YSIZE +  (i-CONV_PADDING_SIZE)*CONV_DATA_XSIZE + (j-CONV_PADDING_SIZE)];
    }
    }
	if( i > 1) {
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

INPUT_DATA_TYPE sum = 0;
          for (int m = 0; m < KERNEL_XSIZE; m++) {
             for (int n = 0; n < KERNEL_YSIZE; n++) {
             sum += window_buffer[m][n] * kernel[num_ker * CONV_NUM_CHANNEL *  KERNEL_XSIZE*KERNEL_YSIZE + num_channel*KERNEL_XSIZE*KERNEL_YSIZE + m*3 + n];
            }
	  }
	  sum += bias[num_ker];
	  output[num_ker * CONV_DATA_OUT_XSIZE * CONV_DATA_OUT_YSIZE + (i - (KERNEL_XSIZE - 1)) * CONV_DATA_OUT_XSIZE + b] = relu(sum);
	}
	}
      }
    }
  }
}
 


template<typename DATA_IN_TYPE,
         typename DATA_OUT_TYPE,
         int NUM_CHANNEL,
         int DATA_IN_XSIZE,
         int DATA_IN_YSIZE,
         int DATA_OUT_XSIZE,
         int DATA_OUT_YSIZE,
         int POOLING_SIZE,
         int STRIDE_SIZE
        >
static void max_pooling(int width, int height, DATA_IN_TYPE *input, DATA_OUT_TYPE *output) {
    DATA_IN_TYPE line_buffer_0[DATA_IN_XSIZE];
    DATA_IN_TYPE line_buffer_1[DATA_IN_XSIZE];
    DATA_IN_TYPE window_buffer[POOLING_SIZE][POOLING_SIZE];

    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
        for (int i = 0; i < height; i += STRIDE_SIZE) {
            // Fill the line buffers with the current row of the input
            for (int j = 0; j < width; j++) {
                line_buffer_0[j] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + i * DATA_IN_XSIZE + j];
                line_buffer_1[j] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + (i + 1) * DATA_IN_XSIZE + j];
            }

            for (int j = 0; j < width; j += STRIDE_SIZE) {
                // Load the window buffer with the values from the line buffers
                for (int k = 0; k < POOLING_SIZE; k++) {
                    for (int l = 0; l < POOLING_SIZE; l++) {
                        window_buffer[k][l] = line_buffer_0[j + l];
                        window_buffer[k + POOLING_SIZE][l] = line_buffer_1[j + l];
                    }
                }

                // Perform max pooling on the window buffer
                DATA_IN_TYPE max_val = window_buffer[0][0];
                for (int a = 0; a < POOLING_SIZE * 2; a++) {
                    for (int b = 0; b < POOLING_SIZE; b++) {
                        max_val = (window_buffer[a][b] > max_val) ? window_buffer[a][b] : max_val;
                    }
                }

                // Store the result in the output
                output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + (i / STRIDE_SIZE) * DATA_OUT_XSIZE + (j / STRIDE_SIZE)] = max_val;
            }
        }
    }
}


//template<typename DATA_IN_TYPE,
//         typename DATA_OUT_TYPE,
//         int NUM_CHANNEL,
//         int DATA_IN_XSIZE,
//         int DATA_IN_YSIZE,
//         int DATA_OUT_XSIZE,
//         int DATA_OUT_YSIZE,
//         int POOLING_SIZE,
//         int STRIDE_SIZE
//        >
//static void max_pooling(int width, int height, DATA_IN_TYPE *input, DATA_OUT_TYPE *output) {
//    DATA_IN_TYPE line_buffer_0[DATA_IN_XSIZE];
//    DATA_IN_TYPE line_buffer_1[DATA_IN_XSIZE];
//    DATA_IN_TYPE window_buffer[POOLING_SIZE][POOLING_SIZE];
//
//    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
//        for (int i = 0; i < height; i += STRIDE_SIZE) {
//            for (int j = 0; j < width; j += STRIDE_SIZE) {
//                for (int k = 0; k < POOLING_SIZE; k++) {
//                    line_buffer_0[k] = line_buffer_1[k];
//                    line_buffer_1[k] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + (i + POOLING_SIZE - 1) * DATA_IN_XSIZE + (j + k)];
//                }
//
//                if (i + POOLING_SIZE - 1 < height && j + POOLING_SIZE - 1 < width) {
//                    DATA_IN_TYPE max_val = line_buffer_0[0];
//                    for (int a = 0; a < POOLING_SIZE; a++) {
//                        for (int b = 0; b < POOLING_SIZE; b++) {
//                            max_val = (line_buffer_1[b] > max_val) ? line_buffer_1[b] : max_val;
//                        }
//                    }
//
//                    output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + (i / STRIDE_SIZE) * DATA_OUT_XSIZE + (j / STRIDE_SIZE)] = max_val;
//                }
//            }
//        }
//    }
//}
template <typename DATA_IN_TYPE,
          typename DATA_OUT_TYPE,
          int NUM_CHANNEL,
          int DATA_IN_XSIZE,
          int DATA_IN_YSIZE,
          int DATA_OUT_XSIZE,
          int DATA_OUT_YSIZE,
          int UPSAMPLING_FACTOR_X,
          int UPSAMPLING_FACTOR_Y>
static void upsampling(int width, int height, DATA_IN_TYPE* input, DATA_OUT_TYPE* output) {
    DATA_IN_TYPE upsam_buf[UPSAMPLING_FACTOR_Y * width];
    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
        for (int i = 0; i < UPSAMPLING_FACTOR_X * height; i++) {
            for (int j = 0; j < UPSAMPLING_FACTOR_Y * width; j++) {
                if (i % 2 == 0) {
                    if (j % 2 == 0) {
                        upsam_buf[j / 2] = input[num_channel * DATA_IN_XSIZE * DATA_IN_YSIZE + i / 2 * DATA_IN_XSIZE + j / 2];
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] = upsam_buf[j / 2];
                    } else {
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] = output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + (j - 1)];
                    }
                } else {
                    output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + i * UPSAMPLING_FACTOR_Y * width + j] =
                        output[num_channel * DATA_OUT_XSIZE * DATA_OUT_YSIZE + (i - 1) * UPSAMPLING_FACTOR_Y * width + j];
                }
            }
        }
    }
}

