// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_H__
#define __CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_ram : public sc_core::sc_module {

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


   SC_CTOR(CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_ram) {
        ram[0] = "0b1011111110111001001110111100010001111100010001100100110010010110";
        ram[1] = "0b1011111111010011001000111000111011100101111000010111000011001001";
        ram[2] = "0b1011111111001000010010000000110110110101110010110010100010001000";
        ram[3] = "0b0011111110110111100011001011000111010100101000111101101110111101";
        ram[4] = "0b0011111111011001010110000010111100000000100111101000101101110001";
        ram[5] = "0b0011111111011101101111111111110010000100110010110101011001010101";
        ram[6] = "0b1011111111100000100010011010110000000000101001000110101010101110";
        ram[7] = "0b1011111110110001100100100001010101000000110110011110010011100011";


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


SC_MODULE(CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3) {
meminst = new CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_ram("CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_7_7_8_8_7_7_3_3_1_1_s_bias_conv3() {
    delete meminst;
}


};//endmodule
#endif
