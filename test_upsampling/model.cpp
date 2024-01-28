#include<stdio.h>
#include"bias.h"
#include"CNN.h"
#include"kernel.h"


void CNN( int padding, int width, int hight,data_t *image,data_t *output_upsampling1) {
upsampling<data_t,data_t,8,4,4,8,8,2,2>( width, hight, image, output_upsampling1);
}
