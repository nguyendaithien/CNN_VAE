// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "block" *) module CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom (
addr0, ce0, q0, addr1, ce1, q1, addr2, ce2, q2, addr3, ce3, q3, addr4, ce4, q4, addr5, ce5, q5, addr6, ce6, q6, addr7, ce7, q7, addr8, ce8, q8, clk);

parameter DWIDTH = 64;
parameter AWIDTH = 10;
parameter MEM_SIZE = 576;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input[AWIDTH-1:0] addr1;
input ce1;
output reg[DWIDTH-1:0] q1;
input[AWIDTH-1:0] addr2;
input ce2;
output reg[DWIDTH-1:0] q2;
input[AWIDTH-1:0] addr3;
input ce3;
output reg[DWIDTH-1:0] q3;
input[AWIDTH-1:0] addr4;
input ce4;
output reg[DWIDTH-1:0] q4;
input[AWIDTH-1:0] addr5;
input ce5;
output reg[DWIDTH-1:0] q5;
input[AWIDTH-1:0] addr6;
input ce6;
output reg[DWIDTH-1:0] q6;
input[AWIDTH-1:0] addr7;
input ce7;
output reg[DWIDTH-1:0] q7;
input[AWIDTH-1:0] addr8;
input ce8;
output reg[DWIDTH-1:0] q8;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram0[0:MEM_SIZE-1];
(* ram_style = "block" *)reg [DWIDTH-1:0] ram1[0:MEM_SIZE-1];
(* ram_style = "block" *)reg [DWIDTH-1:0] ram2[0:MEM_SIZE-1];
(* ram_style = "block" *)reg [DWIDTH-1:0] ram3[0:MEM_SIZE-1];
(* ram_style = "block" *)reg [DWIDTH-1:0] ram4[0:MEM_SIZE-1];

initial begin
    $readmemh("./CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom.dat", ram0);
    $readmemh("./CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom.dat", ram1);
    $readmemh("./CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom.dat", ram2);
    $readmemh("./CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom.dat", ram3);
    $readmemh("./CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom.dat", ram4);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram0[addr0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram0[addr1];
    end
end



always @(posedge clk)  
begin 
    if (ce2) 
    begin
        q2 <= ram1[addr2];
    end
end



always @(posedge clk)  
begin 
    if (ce3) 
    begin
        q3 <= ram1[addr3];
    end
end



always @(posedge clk)  
begin 
    if (ce4) 
    begin
        q4 <= ram2[addr4];
    end
end



always @(posedge clk)  
begin 
    if (ce5) 
    begin
        q5 <= ram2[addr5];
    end
end



always @(posedge clk)  
begin 
    if (ce6) 
    begin
        q6 <= ram3[addr6];
    end
end



always @(posedge clk)  
begin 
    if (ce7) 
    begin
        q7 <= ram3[addr7];
    end
end



always @(posedge clk)  
begin 
    if (ce8) 
    begin
        q8 <= ram4[addr8];
    end
end



endmodule

`timescale 1 ns / 1 ps
module CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4(
    reset,
    clk,
    address0,
    ce0,
    q0,
    address1,
    ce1,
    q1,
    address2,
    ce2,
    q2,
    address3,
    ce3,
    q3,
    address4,
    ce4,
    q4,
    address5,
    ce5,
    q5,
    address6,
    ce6,
    q6,
    address7,
    ce7,
    q7,
    address8,
    ce8,
    q8);

parameter DataWidth = 32'd64;
parameter AddressRange = 32'd576;
parameter AddressWidth = 32'd10;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
output[DataWidth - 1:0] q1;
input[AddressWidth - 1:0] address2;
input ce2;
output[DataWidth - 1:0] q2;
input[AddressWidth - 1:0] address3;
input ce3;
output[DataWidth - 1:0] q3;
input[AddressWidth - 1:0] address4;
input ce4;
output[DataWidth - 1:0] q4;
input[AddressWidth - 1:0] address5;
input ce5;
output[DataWidth - 1:0] q5;
input[AddressWidth - 1:0] address6;
input ce6;
output[DataWidth - 1:0] q6;
input[AddressWidth - 1:0] address7;
input ce7;
output[DataWidth - 1:0] q7;
input[AddressWidth - 1:0] address8;
input ce8;
output[DataWidth - 1:0] q8;



CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_kernel_conv4_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .q1( q1 ),
    .addr2( address2 ),
    .ce2( ce2 ),
    .q2( q2 ),
    .addr3( address3 ),
    .ce3( ce3 ),
    .q3( q3 ),
    .addr4( address4 ),
    .ce4( ce4 ),
    .q4( q4 ),
    .addr5( address5 ),
    .ce5( ce5 ),
    .q5( q5 ),
    .addr6( address6 ),
    .ce6( ce6 ),
    .q6( q6 ),
    .addr7( address7 ),
    .ce7( ce7 ),
    .q7( q7 ),
    .addr8( address8 ),
    .ce8( ce8 ),
    .q8( q8 ));

endmodule

