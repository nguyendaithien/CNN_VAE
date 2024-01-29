// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_H__
#define __CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 144;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in <sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in <sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in <sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in <sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in <sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in <sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_ram) {
        ram[0] = "0b1011111111011000100010110100001111100000101010100111101000111101";
        ram[1] = "0b1011111111100010000000000011011010000110101001001100101001001111";
        ram[2] = "0b1011111111011000100000101001001110000011001010100001011001111111";
        ram[3] = "0b1011111111100001101110111011100110110100110000100001010000001100";
        ram[4] = "0b1011111111000010111101001100111100001001111010001110001000000001";
        ram[5] = "0b1011111111010011010101001101010110101111110010100101110110000111";
        ram[6] = "0b1011111111000011001001000110100111010111001101000010111011011100";
        ram[7] = "0b1011111111000000001001110110100000111001010011110101011100000000";
        ram[8] = "0b1011111111011101110101000111000001000100101101101001001101001111";
        ram[9] = "0b1011111110101000000010010011001011011001100111000001001100011100";
        ram[10] = "0b0011111110111110010000111000111101110110110101011111010101000000";
        ram[11] = "0b1011111110101101000100110110111110011110011100110111001100010100";
        ram[12] = "0b1011111110110111000000010101010010010011110101100000101100111010";
        ram[13] = "0b1011111111000101011110000001101101011010001000111000110011111000";
        ram[14] = "0b1011111111011011010000101010011011011001000111010011110100101000";
        ram[15] = "0b1011111111001000111011001001001001111010011010111000000100000010";
        ram[16] = "0b1011111111100000110001001011010101110001011001100111010010101001";
        ram[17] = "0b1011111111010010100010110010111110111110101101001000011000101111";
        ram[18] = "0b1011111110100000001101110010001100000001111000101010111000110110";
        ram[19] = "0b0011111110110110001000010100111010101111001110101001010110101000";
        ram[20] = "0b1011111110110101110001101001100100000001000110000101100011100111";
        ram[21] = "0b0011111111001111100001010011100110010000010001001000011001000010";
        ram[22] = "0b1011111111010000011101110001010001011110100001101100100100000111";
        ram[23] = "0b1011111111001001001111101100110001000011100011111111011110101111";
        ram[24] = "0b0011111111000000010011000101100011001001000110011110010011011001";
        ram[25] = "0b1011111111001011000011100111001101100000010010011110110010110011";
        ram[26] = "0b1011111111011010011001010001011101011011111001110011000101111101";
        ram[27] = "0b1011111111001110111010111111110100111110101011111001001100101011";
        ram[28] = "0b1011111111010110100011011010011001111100000000000010101110011111";
        ram[29] = "0b1011111110111100001000001100000000010100000000011011111110011110";
        ram[30] = "0b1011111111001110001000000011101000000111001101111101011110110011";
        ram[31] = "0b1011111111010111100100101101110001011011011000000010001100000000";
        ram[32] = "0b1011111110111111100110000001001010110000110111001010110000111110";
        ram[33] = "0b0011111110111110000001100110011010100001011101001010111101010100";
        ram[34] = "0b0011111110110100110100001101000001100111100011000000000001010100";
        ram[35] = "0b0011111111001010110100001000001010111001110110010010101000101000";
        ram[36] = "0b1011111111000000111101110010111011100000100100110010100000111011";
        ram[37] = "0b1011111111010101000110111101001000000011000101111000110010001111";
        ram[38] = "0b1011111110101111000000111011110000100010001011111010101010111110";
        ram[39] = "0b1011111111011011100100100000010100011010111100011111001111001110";
        ram[40] = "0b1011111111011101001110101110101111111001101110001011111000100010";
        ram[41] = "0b1011111111001011001111101101011001101010000001001000000010011000";
        ram[42] = "0b1011111111001101110000010101110101010111111101001101111010001111";
        ram[43] = "0b1011111111000001100101111101000001101011101111011011111000111100";
        ram[44] = "0b1011111110110011100100110101000110101011111011110011000110100111";
        ram[45] = "0b1011111111010100001111100110011011000011000000101001111010010110";
        ram[46] = "0b1011111110110100001011001001010000110010101001110111001000011111";
        ram[47] = "0b1011111111010011100000000110011010100010011101100110001000000111";
        ram[48] = "0b1011111111001100100010010110011111001000001110110100001010100001";
        ram[49] = "0b1011111111010110011000101010100011000001101010101010111111000001";
        ram[50] = "0b1011111111010011110100110111101100111100101101110100000001110100";
        ram[51] = "0b1011111111010000011110011011011010000101000011001100010010110100";
        ram[52] = "0b1011111111010111010001010011111110111010101010110000110000110011";
        ram[53] = "0b1011111110011011111000011010000011000100010110110011100100110111";
        ram[54] = "0b0011111110101101101111011010111111001110011001000101000110001110";
        ram[55] = "0b0011111110111001100000111011100100000111100111100000010000001100";
        ram[56] = "0b0011111111000001111111010111010010110101010111101001110000011000";
        ram[57] = "0b0011111110101100101001111100001111111110110001111111000110011100";
        ram[58] = "0b0011111111001111101101100010000010111000110111010010101111000000";
        ram[59] = "0b0011111111001011000000101100111110111110000110001101010011100011";
        ram[60] = "0b0011111111010100000100011101100111111100111000010001000110101000";
        ram[61] = "0b0011111111001010100110100101000101111010011100010000101001011001";
        ram[62] = "0b0011111111000001111111000100011000110111000110111111011000000000";
        ram[63] = "0b0011111110111000000111110111000110001010010110111110010000000001";
        ram[64] = "0b1011111110110101001001111000001111111101011110110001010101110101";
        ram[65] = "0b1011111111000011010011001010011001110110110011001011101100000100";
        ram[66] = "0b1011111111011100100000000101101010000011010110010011101101011011";
        ram[67] = "0b1011111111100000010111010011011110011110010100011110010100100101";
        ram[68] = "0b1011111111010011001000100011111011000100001101011111101001100011";
        ram[69] = "0b1011111111010111110001101101101010000100111100010100000011110101";
        ram[70] = "0b1011111111011010001010001101011001001101011111110000111011010100";
        ram[71] = "0b1011111111000001011010110111011000011010101110010110100111000100";
        ram[72] = "0b0011111111100000100111001001000100110000001111101000110000101101";
        ram[73] = "0b1011111110100100010000100010010111101010010010100110000100100010";
        ram[74] = "0b0011111110110010110101100001001101000111100001010111101010101001";
        ram[75] = "0b1011111111001001001001101000110000000101110111010011100110101100";
        ram[76] = "0b1011111111100101010100000010001010100010011011000101000100001100";
        ram[77] = "0b1011111111010001010001011000001110010111110011111001010011111110";
        ram[78] = "0b1011111111001111011010101100111000101010000110100000010011100100";
        ram[79] = "0b1011111111100000101101001110011011111100111110011011101101000010";
        ram[80] = "0b1011111110111001100111110111011111010100111110001100000001000110";
        ram[81] = "0b1011111111011001111110010111000001100100000101100010101000001110";
        ram[82] = "0b1011111111010000100111001100100101000100001011000010100111010101";
        ram[83] = "0b1011111110110000001110111101101111111001001110101001001111111011";
        ram[84] = "0b1011111111011100111010010101111111000000000001000001000110001000";
        ram[85] = "0b1011111110111001111100010111010110100011100110110010010100110101";
        ram[86] = "0b0011111101011110001000101010101011001111110011001101110001100111";
        ram[87] = "0b1011111111011011100110100000010100100100010101110010001001010001";
        ram[88] = "0b1011111110010100100100011010100100001010010011111110010100011011";
        ram[89] = "0b1011111101110100110101000101001011010011000010111010101100101111";
        ram[90] = "0b0011111111001010111111010111111111110010111111110110011001111101";
        ram[91] = "0b1011111111001000001110001111110111100010111011110100111000000001";
        ram[92] = "0b1011111111010010000000100000000000011111111000000111000000011000";
        ram[93] = "0b1011111111000001110010101001100001111111100100110011001100100011";
        ram[94] = "0b1011111111011101111110011101111010111110001110111110010101011110";
        ram[95] = "0b1011111111010000100110101010100100100011101001010100101110101001";
        ram[96] = "0b1011111110101101111101100011000000011101011111110001011011100001";
        ram[97] = "0b1011111111000000110000001100101100100001010100010000100010000110";
        ram[98] = "0b0011111111010101100001101110000000100011110000011010011000101000";
        ram[99] = "0b0011111110011111011111001110000011010001001110111001110001100011";
        ram[100] = "0b1011111110111000011111010011110100010111100011011001000001001100";
        ram[101] = "0b1011111111010110000111111111010111111111001000000011000100100011";
        ram[102] = "0b1011111111001101110111011101001111000101101110100101111011100001";
        ram[103] = "0b1011111111100100111101011100100000011110000100010110001011111111";
        ram[104] = "0b1011111111010101111010111110000111111011010111010010111000000011";
        ram[105] = "0b1011111111010000010010001010001111111101111101101001000001101011";
        ram[106] = "0b1011111111001100011001110011100110001010100100000011110001001110";
        ram[107] = "0b0011111111001001101110111101110000100100001011011011000110111111";
        ram[108] = "0b0011111111000000110011010111110010001010100101010001100111011000";
        ram[109] = "0b0011111111010101001100111111011000011011111110111000100100100011";
        ram[110] = "0b0011111110111111000000011010111011010110110000101001100111101110";
        ram[111] = "0b0011111111010000100000111001000100000100000111101100100010011000";
        ram[112] = "0b0011111111000010100101111011010110010011110010110010001101111111";
        ram[113] = "0b1011111111000011110111010001000010111100101110111011001010011110";
        ram[114] = "0b0011111110110010100101000100000110010101111101110111100010011101";
        ram[115] = "0b1011111111000011000000110111000101111001100101001110110001100001";
        ram[116] = "0b1011111111010100100111000010100100000000011111110101011011001101";
        ram[117] = "0b1011111111000110110111111000110010000010100001001101010100010001";
        ram[118] = "0b0011111110111010111000000010000010010001100110101111001010001010";
        ram[119] = "0b0011111111001111100010010000011100100101001110000100100011000111";
        ram[120] = "0b0011111110111101010101110010101011011111001001101100000110001011";
        ram[121] = "0b0011111111011011110000011000001110100011001110000010100011100110";
        ram[122] = "0b0011111111010011100001101101001101011000110110000000100001101010";
        ram[123] = "0b0011111111011011111100000001101001100100100001010011101010111101";
        ram[124] = "0b0011111111010011101111001101000010100000100101101110001111011101";
        ram[125] = "0b0011111111000100101110001110011111111110000000001010000101100110";
        ram[126] = "0b0011111110111110111001110101001110110110101101100101111111111001";
        ram[127] = "0b0011111111010110110010011110101101011011100000110011001101111100";
        ram[128] = "0b0011111111011110111111111111100110110101011000110010001110111100";
        ram[129] = "0b0011111110110101101000110101001000101010000110010101100100010111";
        ram[130] = "0b0011111111000111101000011110010001000000110111001011111100001000";
        ram[131] = "0b0011111111001000010010100010010001100110011001101011110001001101";
        ram[132] = "0b0011111111010010101111001111011010010101111100111111001010101100";
        ram[133] = "0b0011111111001000001010110000111101111000010000110000011110111101";
        ram[134] = "0b0011111111000110111111000011001101000001110010111101001001010001";
        ram[135] = "0b0011111111000110100111110100110010110110111001111101111000100000";
        ram[136] = "0b0011111111000001111100001100100001010100100110000000011111001001";
        ram[137] = "0b0011111111001111111100010100101101011100010010011101011111100101";
        ram[138] = "0b0011111111011100100000010011100111111100010100000001110100100100";
        ram[139] = "0b0011111111001010100101110011101001011001010000100011101110001111";
        ram[140] = "0b0011111111100000001101001101011100100010001110110011111001000101";
        ram[141] = "0b0011111111001100111110001110010011000011001110001010010001100001";
        ram[142] = "0b0011111111010010000110101101110101111011111100011001001100000000";
        ram[143] = "0b0011111111001010111001000011111100011001110001100100111110110000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
  sensitive<<clk.pos();


SC_METHOD(prc_write_3);
  sensitive<<clk.pos();


SC_METHOD(prc_write_4);
  sensitive<<clk.pos();


SC_METHOD(prc_write_5);
  sensitive<<clk.pos();


SC_METHOD(prc_write_6);
  sensitive<<clk.pos();


SC_METHOD(prc_write_7);
  sensitive<<clk.pos();


SC_METHOD(prc_write_8);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


void prc_write_3()
{
    if (ce3.read() == sc_dt::Log_1) 
    {
            if(address3.read().is_01() && address3.read().to_uint()<AddressRange)
              q3 = ram[address3.read().to_uint()];
            else
              q3 = sc_lv<DataWidth>();
    }
}


void prc_write_4()
{
    if (ce4.read() == sc_dt::Log_1) 
    {
            if(address4.read().is_01() && address4.read().to_uint()<AddressRange)
              q4 = ram[address4.read().to_uint()];
            else
              q4 = sc_lv<DataWidth>();
    }
}


void prc_write_5()
{
    if (ce5.read() == sc_dt::Log_1) 
    {
            if(address5.read().is_01() && address5.read().to_uint()<AddressRange)
              q5 = ram[address5.read().to_uint()];
            else
              q5 = sc_lv<DataWidth>();
    }
}


void prc_write_6()
{
    if (ce6.read() == sc_dt::Log_1) 
    {
            if(address6.read().is_01() && address6.read().to_uint()<AddressRange)
              q6 = ram[address6.read().to_uint()];
            else
              q6 = sc_lv<DataWidth>();
    }
}


void prc_write_7()
{
    if (ce7.read() == sc_dt::Log_1) 
    {
            if(address7.read().is_01() && address7.read().to_uint()<AddressRange)
              q7 = ram[address7.read().to_uint()];
            else
              q7 = sc_lv<DataWidth>();
    }
}


void prc_write_8()
{
    if (ce8.read() == sc_dt::Log_1) 
    {
            if(address8.read().is_01() && address8.read().to_uint()<AddressRange)
              q8 = ram[address8.read().to_uint()];
            else
              q8 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 144;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in<sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in<sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in<sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in<sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in<sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in<sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_ram* meminst;


SC_CTOR(CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7) {
meminst = new CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_ram("CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->address3(address3);
meminst->ce3(ce3);
meminst->q3(q3);

meminst->address4(address4);
meminst->ce4(ce4);
meminst->q4(q4);

meminst->address5(address5);
meminst->ce5(ce5);
meminst->q5(q5);

meminst->address6(address6);
meminst->ce6(ce6);
meminst->q6(q6);

meminst->address7(address7);
meminst->ce7(ce7);
meminst->q7(q7);

meminst->address8(address8);
meminst->ce8(ce8);
meminst->q8(q8);

meminst->reset(reset);
meminst->clk(clk);
}
~CNN_convolution_double_double_double_double_28_28_16_1_28_28_3_3_1_0_s_kernel_conv7() {
    delete meminst;
}


};//endmodule
#endif
