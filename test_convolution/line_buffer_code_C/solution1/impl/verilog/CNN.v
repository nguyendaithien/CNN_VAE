// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="CNN_CNN,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=6.660000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.503000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=0,HLS_SYN_FF=11704,HLS_SYN_LUT=11212,HLS_VERSION=2021_2}" *)

module CNN (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        padding,
        width,
        hight,
        image_r,
        output_conv1_i,
        output_conv1_o,
        output_conv1_o_ap_vld,
        output_pooling1,
        output_pooling1_ap_vld,
        output_conv2
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] padding;
input  [31:0] width;
input  [31:0] hight;
input  [63:0] image_r;
input  [63:0] output_conv1_i;
output  [63:0] output_conv1_o;
output   output_conv1_o_ap_vld;
output  [63:0] output_pooling1;
output   output_pooling1_ap_vld;
input  [63:0] output_conv2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] output_conv1_o;
reg output_conv1_o_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire   [0:0] empty_37_fu_180_p2;
reg   [0:0] empty_37_reg_280;
wire   [125:0] bound_fu_223_p2;
reg   [125:0] bound_reg_285;
wire   [131:0] tmp_5_fu_238_p1;
reg   [131:0] tmp_5_reg_290;
wire   [0:0] icmp_fu_253_p2;
reg   [0:0] icmp_reg_295;
wire    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start;
wire    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done;
wire    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_idle;
wire    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready;
wire   [63:0] grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1;
wire    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld;
wire    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start;
wire    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done;
wire    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_idle;
wire    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready;
wire    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start;
wire    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done;
wire    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_idle;
wire    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready;
wire   [63:0] grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1;
wire    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld;
reg    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg;
reg    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg;
wire    ap_CS_fsm_state4;
wire  signed [31:0] sext_ln118_fu_138_p0;
wire  signed [31:0] sext_ln123_fu_142_p0;
wire  signed [31:0] empty_fu_146_p0;
wire  signed [32:0] sext_ln123_fu_142_p1;
wire   [32:0] add_ln118_fu_152_p2;
wire   [31:0] tmp_1_fu_158_p4;
wire   [0:0] empty_fu_146_p2;
wire  signed [62:0] sext_ln118_1_fu_168_p1;
wire  signed [31:0] empty_37_fu_180_p0;
wire  signed [32:0] sext_ln118_fu_138_p1;
wire   [32:0] add_ln118_1_fu_187_p2;
wire   [31:0] tmp_fu_193_p4;
wire  signed [62:0] sext_ln118_2_fu_203_p1;
wire   [62:0] select_ln118_fu_172_p3;
wire   [62:0] select_ln118_1_fu_207_p3;
wire   [31:0] bound_fu_223_p0;
wire   [31:0] bound_fu_223_p1;
wire   [129:0] tmp_2_fu_230_p3;
wire  signed [31:0] tmp_3_fu_243_p1;
wire   [30:0] tmp_3_fu_243_p4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [125:0] bound_fu_223_p00;
wire   [125:0] bound_fu_223_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg = 1'b0;
#0 grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg = 1'b0;
#0 grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg = 1'b0;
end

CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start),
    .ap_done(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done),
    .ap_idle(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_idle),
    .ap_ready(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready),
    .p_read(image_r),
    .output_conv1(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1),
    .output_conv1_ap_vld(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld)
);

CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start),
    .ap_done(grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done),
    .ap_idle(grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_idle),
    .ap_ready(grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready)
);

CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start),
    .ap_done(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done),
    .ap_idle(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_idle),
    .ap_ready(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready),
    .sext_ln118_1(hight),
    .bound7(tmp_5_reg_290),
    .bound(bound_reg_285),
    .cmp17_i_mid116(icmp_reg_295),
    .sext_ln118(width),
    .empty(empty_37_reg_280),
    .output_conv1_load(output_conv1_i),
    .output_pooling1(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1),
    .output_pooling1_ap_vld(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld)
);

CNN_mul_32ns_32ns_126_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 126 ))
mul_32ns_32ns_126_1_1_U64(
    .din0(bound_fu_223_p0),
    .din1(bound_fu_223_p1),
    .dout(bound_fu_223_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= 1'b1;
        end else if ((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready == 1'b1)) begin
            grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready == 1'b1)) begin
            grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready == 1'b1)) begin
            grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bound_reg_285 <= bound_fu_223_p2;
        empty_37_reg_280 <= empty_37_fu_180_p2;
        icmp_reg_295 <= icmp_fu_253_p2;
        tmp_5_reg_290[129 : 4] <= tmp_5_fu_238_p1[129 : 4];
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        output_conv1_o = grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1;
    end else begin
        output_conv1_o = output_conv1_i;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_conv1_o_ap_vld = grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld;
    end else begin
        output_conv1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln118_1_fu_187_p2 = ($signed(sext_ln118_fu_138_p1) + $signed(33'd1));

assign add_ln118_fu_152_p2 = ($signed(sext_ln123_fu_142_p1) + $signed(33'd1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done == 1'b0) | (grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done == 1'b0));
end

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign bound_fu_223_p0 = bound_fu_223_p00;

assign bound_fu_223_p00 = select_ln118_fu_172_p3;

assign bound_fu_223_p1 = bound_fu_223_p10;

assign bound_fu_223_p10 = select_ln118_1_fu_207_p3;

assign empty_37_fu_180_p0 = width;

assign empty_37_fu_180_p2 = (($signed(empty_37_fu_180_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign empty_fu_146_p0 = hight;

assign empty_fu_146_p2 = (($signed(empty_fu_146_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start = grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg;

assign grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start = grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg;

assign grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start = grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg;

assign icmp_fu_253_p2 = (($signed(tmp_3_fu_243_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign output_pooling1 = grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1;

assign output_pooling1_ap_vld = grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld;

assign select_ln118_1_fu_207_p3 = ((empty_37_fu_180_p2[0:0] == 1'b1) ? sext_ln118_2_fu_203_p1 : 63'd0);

assign select_ln118_fu_172_p3 = ((empty_fu_146_p2[0:0] == 1'b1) ? sext_ln118_1_fu_168_p1 : 63'd0);

assign sext_ln118_1_fu_168_p1 = $signed(tmp_1_fu_158_p4);

assign sext_ln118_2_fu_203_p1 = $signed(tmp_fu_193_p4);

assign sext_ln118_fu_138_p0 = width;

assign sext_ln118_fu_138_p1 = sext_ln118_fu_138_p0;

assign sext_ln123_fu_142_p0 = hight;

assign sext_ln123_fu_142_p1 = sext_ln123_fu_142_p0;

assign tmp_1_fu_158_p4 = {{add_ln118_fu_152_p2[32:1]}};

assign tmp_2_fu_230_p3 = {{bound_fu_223_p2}, {4'd0}};

assign tmp_3_fu_243_p1 = hight;

assign tmp_3_fu_243_p4 = {{tmp_3_fu_243_p1[31:1]}};

assign tmp_5_fu_238_p1 = tmp_2_fu_230_p3;

assign tmp_fu_193_p4 = {{add_ln118_1_fu_187_p2[32:1]}};

always @ (posedge ap_clk) begin
    tmp_5_reg_290[3:0] <= 4'b0000;
    tmp_5_reg_290[131:130] <= 2'b00;
end

endmodule //CNN
