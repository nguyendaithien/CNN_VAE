// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_H__
#define __CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_ram) {
        ram[0] = "0b1011111110000010110111000001011110111010110101000001111001000111";
        ram[1] = "0b0011111111100100101000010000101111111110101110111101110100111011";
        ram[2] = "0b0011111111001000001001111010110101000011000110011011000000101010";
        ram[3] = "0b0011111111011010110000000110001100110001111111100111111111001101";
        ram[4] = "0b1011111111001110011111111001110110011010000001000100110110011000";
        ram[5] = "0b1011111110101110100111011010110010111101011111001001000110010000";
        ram[6] = "0b1011111111010001111000111010000010000011100110001010011001010101";
        ram[7] = "0b0011111111001010010111000110100010100001001010010010111111111010";
        ram[8] = "0b0011111111100100000100010010110110000100100111011000100100010010";
        ram[9] = "0b1011111111010001011001101000001000010101000110001001010111111001";
        ram[10] = "0b0011111111010101100000011011110000000010010011110011101010100110";
        ram[11] = "0b0011111111010000100101001100001110111100001011001110110001110010";
        ram[12] = "0b1011111111010111111111100010110110010111111010001011111101110010";
        ram[13] = "0b1011111110111101111001100000001000100111111110000110110010001110";
        ram[14] = "0b1011111111010001100110100100101001000011100110110000101001011101";
        ram[15] = "0b1011111111000110010101001111100000111111011011000101000110001101";


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


SC_MODULE(CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6) {
meminst = new CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_ram("CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6() {
    delete meminst;
}


};//endmodule
#endif
