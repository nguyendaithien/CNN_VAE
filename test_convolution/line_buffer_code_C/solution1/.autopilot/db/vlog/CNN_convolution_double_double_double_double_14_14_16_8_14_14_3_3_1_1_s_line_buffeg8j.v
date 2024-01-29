// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffeg8j (address0, ce0, d0, we0, q0,  reset,clk);

parameter DataWidth = 64;
parameter AddressWidth = 4;
parameter AddressRange = 14;

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffeg8j.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
        q0 <= ram[address0];
    end
end


endmodule

