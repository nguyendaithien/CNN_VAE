#include<stdio.h>
#include"bias.h"
#include"CNN.h"
#include"kernel.h"


//void CNN( int padding, int width, int hight,hls::stream<data_t> &image,hls::stream<data_t> &output_conv1, hls::stream<data_t> &output_pooling1,hls::stream<data_t> &output_conv2,hls::stream<data_t> &output_pooling2,hls::stream<data_t> &output_conv3,hls::stream<data_t> &output_pooling3) {
void CNN( int padding, int width, int hight,data_t *image,data_t *output_conv1, data_t *output_pooling1) {
convolution<data_t,data_t,data_t,data_t,28,28,16,8,28,28,3,3,1,1>(padding, width, hight,bias_conv1,image, kernel_conv1, output_conv1);
max_pooling<data_t,data_t,16,28,28,14,14,2,2>( width, hight, output_conv1, output_pooling1);
//convolution<data_t,data_t,data_t,data_t,14,14,16,8,14,14,3,3,1,1>(padding, width, hight,bias_conv2,output_pooling1, kernel_conv2, output_conv2);
//max_pooling<data_t,data_t,16,14,14,7,7,2,2>( width, hight, output_conv2, output_pooling2);
//convolution<data_t,data_t,data_t,data_t,7,7,8,8,7,7,3,3,1,1>(padding, width, hight,bias_conv3,output_pooling2, kernel_conv3, output_conv3);
//max_pooling<data_t,data_t,8,7,7,4,4,2,2>( width, hight, output_conv3, output_pooling3);
//convolution<data_t,data_t,data_t,data_t,4,4,8,8,4,4,3,3,1,1>(padding, width, hight,bias_conv4,output_pooling3, kernel_conv4, output_conv4);
//upsampling<data_t,data_t,8,4,4,8,8,2,2>( width, hight, output_conv4, output_upsampling1);
//convolution<data_t,data_t,data_t,data_t,8,8,8,8,8,8,3,3,1,1>(padding, width, hight,bias_conv5,output_upsampling1, kernel_conv5, output_conv5);
//upsampling<data_t,data_t,8,8,8,8,8,2,2>( width, hight, output_conv5, output_upsampling2);
//convolution<data_t,data_t,data_t,data_t,8,8,8,16,14,14,3,3,1,0>(padding, width, hight,bias_conv6,output_upsampling2, kernel_conv6, output_conv6);
//upsampling<data_t,data_t,14,14,16,28,28,2,2>( width, hight, output_conv6, output_upsampling3);
//convolution<data_t,data_t,data_t,data_t,28,28,16,1,28,28,3,3,1,0>(padding, width, hight,bias_conv6,output_upsampling2, kernel_conv6, output_conv6);
}
