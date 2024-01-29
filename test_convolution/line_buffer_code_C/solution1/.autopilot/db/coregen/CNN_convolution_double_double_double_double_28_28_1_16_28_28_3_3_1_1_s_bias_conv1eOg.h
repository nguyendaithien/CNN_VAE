// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_H__
#define __CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_ram : public sc_core::sc_module {

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


   SC_CTOR(CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_ram) {
        ram[0] = "0b0011111100001000001001011100010110011101001111001100000100011000";
        ram[1] = "0b0011111101011011110001110100110110111000110000111100110000001010";
        ram[2] = "0b1011111111000000000110000010100010000000010100011100100111110111";
        ram[3] = "0b0011111101001101110011101100110111100001011111010110011010010001";
        ram[4] = "0b1011111110000000111110011111010001101111101000000110111001000001";
        ram[5] = "0b0011111111001101010010110011001100000100001110010100101010100100";
        ram[6] = "0b1011111100101001001111111001100110101101011011001000100010001010";
        ram[7] = "0b0011111111000100101010100100111011110011100000110001100111111011";
        ram[8] = "0b0011111110100101000010101001011110000000000001100100001000000110";
        ram[9] = "0b0011111101001001110100111101100011000010100101001101111010100001";
        ram[10] = "0b1011111101000011011001010011101001011100111011000100000011100110";
        ram[11] = "0b0011111110000011110010111000100111100111110111000000001100000111";
        ram[12] = "0b1011111101000010111010000001110110100001110110001010110110101110";
        ram[13] = "0b0011111110000010011010001001110101111000010010110110101100111000";
        ram[14] = "0b0011111100111110000100000001000110100000001011110110110110101000";
        ram[15] = "0b1011111101010111100001001110110110101101010001011000011110011001";


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


SC_MODULE(CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg) {
meminst = new CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_ram("CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg() {
    delete meminst;
}


};//endmodule
#endif
