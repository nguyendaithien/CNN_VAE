// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_H__
#define __CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_ram) {
        ram[0] = "0b1011111111000111111110100110011000111000000110000100101001001111";
        ram[1] = "0b1011111110111110001110000001111111010111000010101110100100111101";
        ram[2] = "0b1011111110100000000000001010111011111100100000100100011100011000";
        ram[3] = "0b1011111110011001111100100010011100111110001000010011110010101010";
        ram[4] = "0b1011111110011000001111001000111000000011011010111111100011010101";
        ram[5] = "0b0011111111010100011111001000001011011101011010100111111011001111";
        ram[6] = "0b0011111110010110110000100100110010011110110001111011010001101000";
        ram[7] = "0b1011111111000000101011110100110101001010100010111001010001110011";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2) {
meminst = new CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_ram("CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2() {
    delete meminst;
}


};//endmodule
#endif
