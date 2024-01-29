// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_H__
#define __CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_ram : public sc_core::sc_module {

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


   SC_CTOR(CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_ram) {
        ram[0] = "0b0011111111100100101101111100011000111111111010101101000110011011";
        ram[1] = "0b0011111111100000000100011010010100001110010000011110001000100011";
        ram[2] = "0b0011111111000011110010001000000100100011001010110010100001001101";
        ram[3] = "0b0011111111101001001001110110001111100001111111001011010011000111";
        ram[4] = "0b0011111111010011011011001001110011000001000101100110000000111111";
        ram[5] = "0b1011111111100000010011100000001010001100101000100011101001010010";
        ram[6] = "0b0011111111100001011010000111100011011111111001011010111001000101";
        ram[7] = "0b0011111111100011111010010000110110101010111000110110110111111001";


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


SC_MODULE(CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4) {
meminst = new CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_ram("CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4() {
    delete meminst;
}


};//endmodule
#endif
