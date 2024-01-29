// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_H__
#define __CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 14;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_ram) {
        for (unsigned i = 0; i < 14; i = i + 1) {
            ram[i] = 0;
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
           }
        }
    }
}


}; //endmodule


SC_MODULE(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 14;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi) {
meminst = new CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_ram("CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi() {
    delete meminst;
}


};//endmodule
#endif
