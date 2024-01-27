#ifndef CONV_H
#define CONV_H

#include <stdio.h>
#include <stdint.h>
#include <hls_stream.h>
#include <assert.h>

typedef double data_t;
#define IMAGE_WIDTH 28

#define IMAGE_HIGHT 28
#define IMAGE_SIZE  28
#define KERNEL_SIZE  3

#define PADDING_SIZE 1


//void convolution(int image[IMAGE_HIGHT][IMAGE_WIDTH], int output[IMAGE_HIGHT - 2][IMAGE_WIDTH - 2]) ;
void layer_1( int padding, int width, int hight, hls::stream<double> &image, hls::stream<double> &output, hls::stream<data_t> &output_pooling_1 );
#endif
