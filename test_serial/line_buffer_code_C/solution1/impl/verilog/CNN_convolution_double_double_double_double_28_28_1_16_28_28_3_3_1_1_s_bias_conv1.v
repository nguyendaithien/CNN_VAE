// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "block" *) module CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 64;
parameter AWIDTH = 4;
parameter MEM_SIZE = 16;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd64;
parameter AddressRange = 32'd16;
parameter AddressWidth = 32'd4;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

