#include<stdio.h>
#include<hls_stream.h>
#include<stdint.h>

using namespace std;
typedef double data_t;
void CNN( int padding, int width, int hight,  double *image, double *output_upsampling);

template <typename DATA_IN_TYPE,
          typename DATA_OUT_TYPE,
          int NUM_CHANNEL,
          int DATA_IN_XSIZE,
          int DATA_IN_YSIZE,
          int DATA_OUT_XSIZE,
          int DATA_OUT_YSIZE,
          int UPSAMPLING_FACTOR_X,
          int UPSAMPLING_FACTOR_Y>
void upsampling(int width, int height, DATA_IN_TYPE *in_us1, DATA_OUT_TYPE *out_us1) {
    DATA_IN_TYPE upsam_buf[UPSAMPLING_FACTOR_Y * width];

    for (int num_channel = 0; num_channel < NUM_CHANNEL; num_channel++) {
        for (int i = 0; i < UPSAMPLING_FACTOR_X * height; i++) {
            for (int j = 0; j < UPSAMPLING_FACTOR_Y * width; j++) {
		    if( i % 2 == 0) {
			    upsam_buf[j] = (j%2==0) ? (in_us1[j/2]) : (in_us1[j-1]); 
			    out_us1[i*DATA_OUT_XSIZE + j] = upsam_buf[j];
		    }
		    else if(i%2 != 0 ){
                out_us1[i * DATA_OUT_XSIZE + j] = out_us1[(i-1) * DATA_OUT_XSIZE + j];
            }
        }
    }
}
}

