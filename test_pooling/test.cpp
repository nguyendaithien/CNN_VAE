#include "conv.h"
#include <iostream>
#include <fstream>
#include"weights.h"

using namespace std;

typedef double data_t;



int main(void) {
    hls::stream<double> image;
    hls::stream<double> output;
    hls::stream<double> output_pooling_1;

    for (int i = 0; i < 28*28 ; i++) {
        image.write(img[i]);
    }

    layer_1(1, 28, 28, image, output, output_pooling_1);


        for (int i = 0; i < 196 ; i++) {
            for (int j = 0; j < 16; j++) {
                double dut_val = output_pooling_1.read();
                cout << " " << dut_val;
            }
	    cout << "\n";
        }

    return 0;
}

