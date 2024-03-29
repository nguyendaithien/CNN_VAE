// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        or_ln49,
        bitcast_ln53,
        line_buffer_1_address0,
        line_buffer_1_ce0,
        line_buffer_1_we0,
        line_buffer_1_d0,
        line_buffer_1_address1,
        line_buffer_1_ce1,
        line_buffer_1_q1,
        line_buffer_0_address0,
        line_buffer_0_ce0,
        line_buffer_0_we0,
        line_buffer_0_d0,
        line_buffer_2_address0,
        line_buffer_2_ce0,
        line_buffer_2_we0,
        line_buffer_2_d0,
        line_buffer_2_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] or_ln49;
input  [63:0] bitcast_ln53;
output  [4:0] line_buffer_1_address0;
output   line_buffer_1_ce0;
output   line_buffer_1_we0;
output  [63:0] line_buffer_1_d0;
output  [4:0] line_buffer_1_address1;
output   line_buffer_1_ce1;
input  [63:0] line_buffer_1_q1;
output  [4:0] line_buffer_0_address0;
output   line_buffer_0_ce0;
output   line_buffer_0_we0;
output  [63:0] line_buffer_0_d0;
output  [4:0] line_buffer_2_address0;
output   line_buffer_2_ce0;
output   line_buffer_2_we0;
output  [63:0] line_buffer_2_d0;
input  [63:0] line_buffer_2_q0;

reg ap_idle;
reg line_buffer_1_ce0;
reg line_buffer_1_we0;
reg line_buffer_1_ce1;
reg line_buffer_0_ce0;
reg line_buffer_0_we0;
reg line_buffer_2_ce0;
reg line_buffer_2_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln46_fu_113_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] trunc_ln46_cast_fu_125_p1;
reg   [63:0] trunc_ln46_cast_reg_179;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] line_buffer_1_addr_reg_184;
wire    ap_block_pp0_stage0;
reg   [4:0] j_fu_44;
wire   [4:0] add_ln46_fu_119_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_1;
wire   [0:0] icmp_ln49_fu_131_p2;
wire   [0:0] icmp_ln49_1_fu_137_p2;
wire   [0:0] or_ln49_2_fu_143_p2;
wire   [0:0] or_ln49_1_fu_149_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

CNN_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln46_fu_113_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_44 <= add_ln46_fu_119_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_44 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln46_fu_113_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_1_addr_reg_184 <= trunc_ln46_cast_fu_125_p1;
        trunc_ln46_cast_reg_179[4 : 0] <= trunc_ln46_cast_fu_125_p1[4 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln46_fu_113_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_0_ce0 = 1'b1;
    end else begin
        line_buffer_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_0_we0 = 1'b1;
    end else begin
        line_buffer_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_1_ce0 = 1'b1;
    end else begin
        line_buffer_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_1_ce1 = 1'b1;
    end else begin
        line_buffer_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_1_we0 = 1'b1;
    end else begin
        line_buffer_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln46_fu_113_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_2_ce0 = 1'b1;
    end else begin
        line_buffer_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln46_fu_113_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buffer_2_we0 = 1'b1;
    end else begin
        line_buffer_2_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln46_fu_119_p2 = (ap_sig_allocacmp_j_1 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln46_fu_113_p2 = ((ap_sig_allocacmp_j_1 == 5'd30) ? 1'b1 : 1'b0);

assign icmp_ln49_1_fu_137_p2 = ((ap_sig_allocacmp_j_1 == 5'd29) ? 1'b1 : 1'b0);

assign icmp_ln49_fu_131_p2 = ((ap_sig_allocacmp_j_1 == 5'd0) ? 1'b1 : 1'b0);

assign line_buffer_0_address0 = trunc_ln46_cast_reg_179;

assign line_buffer_0_d0 = line_buffer_1_q1;

assign line_buffer_1_address0 = line_buffer_1_addr_reg_184;

assign line_buffer_1_address1 = trunc_ln46_cast_fu_125_p1;

assign line_buffer_1_d0 = line_buffer_2_q0;

assign line_buffer_2_address0 = trunc_ln46_cast_fu_125_p1;

assign line_buffer_2_d0 = ((or_ln49_1_fu_149_p2[0:0] == 1'b1) ? 64'd0 : bitcast_ln53);

assign or_ln49_1_fu_149_p2 = (or_ln49_2_fu_143_p2 | or_ln49);

assign or_ln49_2_fu_143_p2 = (icmp_ln49_fu_131_p2 | icmp_ln49_1_fu_137_p2);

assign trunc_ln46_cast_fu_125_p1 = ap_sig_allocacmp_j_1;

always @ (posedge ap_clk) begin
    trunc_ln46_cast_reg_179[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3
