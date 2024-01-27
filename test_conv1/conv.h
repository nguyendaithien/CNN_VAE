#ifndef CONV_H
#define CONV_H

#include <stdio.h>
#include <stdint.h>
#include <hls_stream.h>
#include <assert.h>

typedef float data_t;
#define IMAGE_WIDTH 28

#define IMAGE_HIGHT 28
#define IMAGE_SIZE  28
#define KERNEL_SIZE  3

#define PADDING_SIZE 1


//void convolution(int image[IMAGE_HIGHT][IMAGE_WIDTH], int output[IMAGE_HIGHT - 2][IMAGE_WIDTH - 2]) ;
void convolution_layer_1( int padding, int width, int hight, hls::stream<float> &image, hls::stream<float> &output );
#endif
