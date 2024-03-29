// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb_ram (addr0, ce0, q0, addr1, ce1, d1, we1, q1,  clk);

parameter DWIDTH = 64;
parameter AWIDTH = 5;
parameter MEM_SIZE = 28;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input[AWIDTH-1:0] addr1;
input ce1;
input[DWIDTH-1:0] d1;
input we1;
output reg[DWIDTH-1:0] q1;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb_ram.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) begin
        q0 <= ram[addr0];
    end
end


always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[addr1] <= d1; 
        q1 <= ram[addr1];
    end
end


endmodule

`timescale 1 ns / 1 ps
module CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb(
    reset,
    clk,
    address0,
    ce0,
    q0,
    address1,
    ce1,
    we1,
    d1,
    q1);

parameter DataWidth = 32'd64;
parameter AddressRange = 32'd28;
parameter AddressWidth = 32'd5;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
input we1;
input[DataWidth - 1:0] d1;
output[DataWidth - 1:0] q1;



CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb_ram CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb_ram_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .we1( we1 ),
    .d1( d1 ),
    .q1( q1 ));

endmodule

