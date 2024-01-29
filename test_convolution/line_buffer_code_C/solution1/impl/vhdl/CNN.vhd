-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CNN is
port (
    ap_local_block : OUT STD_LOGIC;
    ap_local_deadlock : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    padding : IN STD_LOGIC_VECTOR (31 downto 0);
    width : IN STD_LOGIC_VECTOR (31 downto 0);
    hight : IN STD_LOGIC_VECTOR (31 downto 0);
    image_r : IN STD_LOGIC_VECTOR (63 downto 0);
    output_conv1_i : IN STD_LOGIC_VECTOR (63 downto 0);
    output_conv1_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    output_conv1_o_ap_vld : OUT STD_LOGIC;
    output_pooling1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    output_pooling1_ap_vld : OUT STD_LOGIC;
    output_conv2 : IN STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of CNN is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "CNN_CNN,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=6.660000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.503000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=0,HLS_SYN_FF=11704,HLS_SYN_LUT=11212,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv33_1 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal empty_37_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_37_reg_280 : STD_LOGIC_VECTOR (0 downto 0);
    signal bound_fu_223_p2 : STD_LOGIC_VECTOR (125 downto 0);
    signal bound_reg_285 : STD_LOGIC_VECTOR (125 downto 0);
    signal tmp_5_fu_238_p1 : STD_LOGIC_VECTOR (131 downto 0);
    signal tmp_5_reg_290 : STD_LOGIC_VECTOR (131 downto 0);
    signal icmp_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_reg_295 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start : STD_LOGIC;
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done : STD_LOGIC;
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_idle : STD_LOGIC;
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready : STD_LOGIC;
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld : STD_LOGIC;
    signal grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start : STD_LOGIC;
    signal grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done : STD_LOGIC;
    signal grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_idle : STD_LOGIC;
    signal grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready : STD_LOGIC;
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start : STD_LOGIC;
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done : STD_LOGIC;
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_idle : STD_LOGIC;
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready : STD_LOGIC;
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld : STD_LOGIC;
    signal grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg : STD_LOGIC := '0';
    signal grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal sext_ln118_fu_138_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln123_fu_142_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_fu_146_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln123_fu_142_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal add_ln118_fu_152_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_1_fu_158_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln118_1_fu_168_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal empty_37_fu_180_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln118_fu_138_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal add_ln118_1_fu_187_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_fu_193_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln118_2_fu_203_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal select_ln118_fu_172_p3 : STD_LOGIC_VECTOR (62 downto 0);
    signal select_ln118_1_fu_207_p3 : STD_LOGIC_VECTOR (62 downto 0);
    signal bound_fu_223_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_223_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_230_p3 : STD_LOGIC_VECTOR (129 downto 0);
    signal tmp_3_fu_243_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_243_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal bound_fu_223_p00 : STD_LOGIC_VECTOR (125 downto 0);
    signal bound_fu_223_p10 : STD_LOGIC_VECTOR (125 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (63 downto 0);
        output_conv1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        output_conv1_ap_vld : OUT STD_LOGIC );
    end component;


    component CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC );
    end component;


    component CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sext_ln118_1 : IN STD_LOGIC_VECTOR (31 downto 0);
        bound7 : IN STD_LOGIC_VECTOR (131 downto 0);
        bound : IN STD_LOGIC_VECTOR (125 downto 0);
        cmp17_i_mid116 : IN STD_LOGIC_VECTOR (0 downto 0);
        sext_ln118 : IN STD_LOGIC_VECTOR (31 downto 0);
        empty : IN STD_LOGIC_VECTOR (0 downto 0);
        output_conv1_load : IN STD_LOGIC_VECTOR (63 downto 0);
        output_pooling1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        output_pooling1_ap_vld : OUT STD_LOGIC );
    end component;


    component CNN_mul_32ns_32ns_126_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (125 downto 0) );
    end component;



begin
    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96 : component CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start,
        ap_done => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done,
        ap_idle => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_idle,
        ap_ready => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready,
        p_read => image_r,
        output_conv1 => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1,
        output_conv1_ap_vld => grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld);

    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114 : component CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start,
        ap_done => grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done,
        ap_idle => grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_idle,
        ap_ready => grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready);

    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122 : component CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start,
        ap_done => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done,
        ap_idle => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_idle,
        ap_ready => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready,
        sext_ln118_1 => hight,
        bound7 => tmp_5_reg_290,
        bound => bound_reg_285,
        cmp17_i_mid116 => icmp_reg_295,
        sext_ln118 => width,
        empty => empty_37_reg_280,
        output_conv1_load => output_conv1_i,
        output_pooling1 => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1,
        output_pooling1_ap_vld => grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld);

    mul_32ns_32ns_126_1_1_U64 : component CNN_mul_32ns_32ns_126_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 126)
    port map (
        din0 => bound_fu_223_p0,
        din1 => bound_fu_223_p1,
        dout => bound_fu_223_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_ready = ap_const_logic_1)) then 
                    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_ready = ap_const_logic_1)) then 
                    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_ready = ap_const_logic_1)) then 
                    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                bound_reg_285 <= bound_fu_223_p2;
                empty_37_reg_280 <= empty_37_fu_180_p2;
                icmp_reg_295 <= icmp_fu_253_p2;
                    tmp_5_reg_290(129 downto 4) <= tmp_5_fu_238_p1(129 downto 4);
            end if;
        end if;
    end process;
    tmp_5_reg_290(3 downto 0) <= "0000";
    tmp_5_reg_290(131 downto 130) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln118_1_fu_187_p2 <= std_logic_vector(signed(sext_ln118_fu_138_p1) + signed(ap_const_lv33_1));
    add_ln118_fu_152_p2 <= std_logic_vector(signed(sext_ln123_fu_142_p1) + signed(ap_const_lv33_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done)
    begin
        if ((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done, grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_done = ap_const_logic_0) or (grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done, ap_CS_fsm_state4)
    begin
        if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_logic_0;

    ap_ready_assign_proc : process(grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done, ap_CS_fsm_state4)
    begin
        if (((grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_223_p0 <= bound_fu_223_p00(32 - 1 downto 0);
    bound_fu_223_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln118_fu_172_p3),126));
    bound_fu_223_p1 <= bound_fu_223_p10(32 - 1 downto 0);
    bound_fu_223_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln118_1_fu_207_p3),126));
    empty_37_fu_180_p0 <= width;
    empty_37_fu_180_p2 <= "1" when (signed(empty_37_fu_180_p0) > signed(ap_const_lv32_0)) else "0";
    empty_fu_146_p0 <= hight;
    empty_fu_146_p2 <= "1" when (signed(empty_fu_146_p0) > signed(ap_const_lv32_0)) else "0";
    grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start <= grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_ap_start_reg;
    grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start <= grp_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_fu_114_ap_start_reg;
    grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start <= grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_ap_start_reg;
    icmp_fu_253_p2 <= "1" when (signed(tmp_3_fu_243_p4) > signed(ap_const_lv31_0)) else "0";

    output_conv1_o_assign_proc : process(output_conv1_i, grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1, grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld, ap_CS_fsm_state2)
    begin
        if (((grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            output_conv1_o <= grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1;
        else 
            output_conv1_o <= output_conv1_i;
        end if; 
    end process;


    output_conv1_o_ap_vld_assign_proc : process(grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            output_conv1_o_ap_vld <= grp_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_fu_96_output_conv1_ap_vld;
        else 
            output_conv1_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    output_pooling1 <= grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1;
    output_pooling1_ap_vld <= grp_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3_fu_122_output_pooling1_ap_vld;
    select_ln118_1_fu_207_p3 <= 
        sext_ln118_2_fu_203_p1 when (empty_37_fu_180_p2(0) = '1') else 
        ap_const_lv63_0;
    select_ln118_fu_172_p3 <= 
        sext_ln118_1_fu_168_p1 when (empty_fu_146_p2(0) = '1') else 
        ap_const_lv63_0;
        sext_ln118_1_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_1_fu_158_p4),63));

        sext_ln118_2_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_fu_193_p4),63));

    sext_ln118_fu_138_p0 <= width;
        sext_ln118_fu_138_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln118_fu_138_p0),33));

    sext_ln123_fu_142_p0 <= hight;
        sext_ln123_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln123_fu_142_p0),33));

    tmp_1_fu_158_p4 <= add_ln118_fu_152_p2(32 downto 1);
    tmp_2_fu_230_p3 <= (bound_fu_223_p2 & ap_const_lv4_0);
    tmp_3_fu_243_p1 <= hight;
    tmp_3_fu_243_p4 <= tmp_3_fu_243_p1(31 downto 1);
    tmp_5_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_230_p3),132));
    tmp_fu_193_p4 <= add_ln118_1_fu_187_p2(32 downto 1);
end behav;