// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_H__
#define __CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_ram : public sc_core::sc_module {

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


   SC_CTOR(CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_ram) {
        ram[0] = "0b0011111110101101000010100101110001100000100011110100100000011000";
        ram[1] = "0b0011111111011100001001001011000010100011111101110100000010010100";
        ram[2] = "0b0011111111100010111110100000001011111011010111010000001100010000";
        ram[3] = "0b0011111111000001000101011011000101000010001011001100101100111010";
        ram[4] = "0b0011111111000001111100111010000111100011001111110010101000001100";
        ram[5] = "0b1011111111010111010000011110000100100000111011001011010010011111";
        ram[6] = "0b0011111111010010010000100101100000111111001100010100001101000100";
        ram[7] = "0b1011111110100000111010000000110101011110110100100000110001000001";


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


SC_MODULE(CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5) {
meminst = new CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_ram("CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5() {
    delete meminst;
}


};//endmodule
#endif
