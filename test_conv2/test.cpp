#include <iostream>
#include <fstream>
#include"weights.h"
#include"CNN.h"

using namespace std;

int main(void) {
    double output_conv1[784*16];
    double output_pooling1[196*16];
    double output_conv2[196*8];
    double output_pooling2[49*8];
    double output_conv3[49*8];
    double output_pooling3[16*8];
    double output_conv4[16*8];
    double output_upsampling1[64*8];
    double output_conv5[64*8];
    double output_upsampling2[64*8];
    double output_conv6[128*16];
    double output_upsampling3[196*16];
    double output_conv7[28*28];

    CNN(1, 28, 28, img, output_conv1, output_pooling1);

        for (int i = 0; i <16; i++) {
            for (int j = 0; j < 196 ; j++) {
                double dut_val = output_pooling1[i*196+ j];
                cout << " " << dut_val;
            }
	    cout << "\n"<< "       ";
	}

    return 0;
}

