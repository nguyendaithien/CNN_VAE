#include "conv.h"
#include <iostream>
#include <fstream>
#include "weights.h"

using namespace std;

int main(void) {
    hls::stream<double> image;
    hls::stream<double> output;

    for (int i = 0; i < 28*28 ; i++) {
        image.write(img[i]);
    }

    convolution_layer_1(1, 28, 28, image, output);


        for (int i = 0; i < 28*28 ; i++) {
            for (int j = 0; j < 16; j++) {
                double dut_val = output.read();
                cout << " " << dut_val;
            }
	    cout << "\n";
        }

    return 0;
}

