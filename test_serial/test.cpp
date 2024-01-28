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
    //double output_pooling7("output_decoder");

   // for (int i = 0; i < 28*28 ; i++) {
   //     image.write(img[i]);
   // }

    //CNN(1, 28, 28, image, output_conv1, output_pooling1, output_conv2,output_pooling2,output_conv3, output_pooling3,output_conv4, output_pooling4,output_conv5, output_pooling5,output_conv6, output_pooling6,output_conv7, output_pooling7);
    //CNN(1, 28, 28, image, output_conv1, output_pooling1, output_conv2,output_pooling2,output_conv3, output_pooling3);
    CNN(1, 28, 28, img, output_conv1, output_pooling1, output_conv2, output_pooling2,output_conv3, output_pooling3, output_conv4, output_upsampling1, output_conv5, output_upsampling2,output_conv6, output_upsampling3, output_conv7);


        for (int i = 0; i <196; i++) {
            for (int j = 0; j <16 ; j++) {
                double val = output_upsampling3[i*8 + j];
                cout << " " << val;
            }
	    cout << "\n"<< "       ";
	}
	cout << " /////////////////////////////////////////////////////// \n";
        for (int i = 0; i <28; i++) {
            for (int j = 0; j <28 ; j++) {
                double dut_val = output_conv7[i*28 + j];
                cout << " " << dut_val;
            }
	    cout << "\n"<< "       ";
	}

    return 0;
}

