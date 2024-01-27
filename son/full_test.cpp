// full_test.cpp
#include "full.h"
#include <iostream>
#include <hls_stream.h>
#include "defines.h"
#include "weight_img.h"
//#include "weights.h"
int main() {

    hls::stream<data_t> src_img("src_img");
    hls::stream<data_t> stream_out("stream_out");

 
        for (int i = 0; i < IMG_HEIGHT; i++) {
            for (int j = 0; j < IMG_WIDTH; j++) {
                src_img << img[i*IMG_WIDTH+j];
            }
        }
    

    full(src_img,stream_out);
int count =0;

        // In ra các phần tử của stream_out
        while (!stream_out.empty()) {
        					count ++;
                            data_t value = stream_out.read();
                            std::cout <<value <<"\t";
                            if(count%8==0){
                            std::cout <<"\n";
                            }

               }

    return 0;
}
