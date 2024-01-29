-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 is
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
end;


architecture behav of CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv132_lc_1 : STD_LOGIC_VECTOR (131 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv132_lc_2 : STD_LOGIC_VECTOR (131 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv128_lc_2 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln118_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal sext_ln118_cast_fu_125_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln118_cast_reg_381 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_cast_fu_129_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal bound_cast_reg_387 : STD_LOGIC_VECTOR (127 downto 0);
    signal sext_ln118_1_cast_fu_133_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln118_1_cast_reg_392 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_60 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln120_fu_292_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_fu_64 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln119_2_fu_264_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvar_flatten_fu_68 : STD_LOGIC_VECTOR (127 downto 0);
    signal select_ln119_3_fu_304_p3 : STD_LOGIC_VECTOR (127 downto 0);
    signal indvar_flatten20_fu_72 : STD_LOGIC_VECTOR (131 downto 0);
    signal add_ln118_fu_179_p2 : STD_LOGIC_VECTOR (131 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal and_ln126_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_36_fu_163_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln119_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp17_i_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln120_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln118_fu_196_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln118_3_fu_224_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln118_1_fu_204_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln119_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_mid1_fu_245_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln118_2_fu_212_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp17_i_mid1_fu_251_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln119_fu_237_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln126_fu_272_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln119_1_fu_256_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln126_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln119_1_fu_298_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component CNN_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component CNN_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_64 <= ap_const_lv64_0;
                elsif (((icmp_ln118_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_64 <= select_ln119_2_fu_264_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten20_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten20_fu_72 <= ap_const_lv132_lc_1;
                elsif (((icmp_ln118_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten20_fu_72 <= add_ln118_fu_179_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_68 <= ap_const_lv128_lc_1;
                elsif (((icmp_ln118_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten_fu_68 <= select_ln119_3_fu_304_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_60 <= ap_const_lv64_0;
                elsif (((icmp_ln118_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_60 <= add_ln120_fu_292_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    bound_cast_reg_387(125 downto 0) <= bound_cast_fu_129_p1(125 downto 0);
                sext_ln118_1_cast_reg_392 <= sext_ln118_1_cast_fu_133_p1;
                sext_ln118_cast_reg_381 <= sext_ln118_cast_fu_125_p1;
            end if;
        end if;
    end process;
    bound_cast_reg_387(127 downto 126) <= "00";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln118_fu_179_p2 <= std_logic_vector(unsigned(indvar_flatten20_fu_72) + unsigned(ap_const_lv132_lc_2));
    add_ln119_1_fu_298_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_68) + unsigned(ap_const_lv128_lc_2));
    add_ln119_fu_231_p2 <= std_logic_vector(unsigned(select_ln118_fu_196_p3) + unsigned(ap_const_lv64_2));
    add_ln120_fu_292_p2 <= std_logic_vector(unsigned(select_ln119_fu_237_p3) + unsigned(ap_const_lv64_2));
    and_ln126_fu_283_p2 <= (select_ln119_1_fu_256_p3 and icmp_ln126_fu_278_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln118_fu_174_p2)
    begin
        if (((icmp_ln118_fu_174_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    bound_cast_fu_129_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound),128));
    cmp17_i_fu_169_p2 <= "1" when (signed(empty_36_fu_163_p2) < signed(sext_ln118_1_cast_reg_392)) else "0";
    cmp17_i_mid1_fu_251_p2 <= "1" when (signed(p_mid1_fu_245_p2) < signed(sext_ln118_1_cast_reg_392)) else "0";
    empty_36_fu_163_p2 <= (i_fu_64 or ap_const_lv64_1);
    icmp_ln118_fu_174_p2 <= "1" when (indvar_flatten20_fu_72 = bound7) else "0";
    icmp_ln119_fu_191_p2 <= "1" when (indvar_flatten_fu_68 = bound_cast_reg_387) else "0";
    icmp_ln120_fu_219_p2 <= "1" when (signed(j_fu_60) < signed(sext_ln118_cast_reg_381)) else "0";
    icmp_ln126_fu_278_p2 <= "1" when (signed(or_ln126_fu_272_p2) < signed(sext_ln118_cast_reg_381)) else "0";
    or_ln126_fu_272_p2 <= (select_ln119_fu_237_p3 or ap_const_lv64_1);
    output_pooling1 <= output_conv1_load;

    output_pooling1_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln118_fu_174_p2, ap_block_pp0_stage0_11001, and_ln126_fu_283_p2)
    begin
        if (((ap_const_lv1_1 = and_ln126_fu_283_p2) and (icmp_ln118_fu_174_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            output_pooling1_ap_vld <= ap_const_logic_1;
        else 
            output_pooling1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_mid1_fu_245_p2 <= (ap_const_lv64_1 or add_ln119_fu_231_p2);
    select_ln118_1_fu_204_p3 <= 
        ap_const_lv64_0 when (icmp_ln119_fu_191_p2(0) = '1') else 
        j_fu_60;
    select_ln118_2_fu_212_p3 <= 
        cmp17_i_mid116 when (icmp_ln119_fu_191_p2(0) = '1') else 
        cmp17_i_fu_169_p2;
    select_ln118_3_fu_224_p3 <= 
        empty when (icmp_ln119_fu_191_p2(0) = '1') else 
        icmp_ln120_fu_219_p2;
    select_ln118_fu_196_p3 <= 
        ap_const_lv64_0 when (icmp_ln119_fu_191_p2(0) = '1') else 
        i_fu_64;
    select_ln119_1_fu_256_p3 <= 
        select_ln118_2_fu_212_p3 when (select_ln118_3_fu_224_p3(0) = '1') else 
        cmp17_i_mid1_fu_251_p2;
    select_ln119_2_fu_264_p3 <= 
        select_ln118_fu_196_p3 when (select_ln118_3_fu_224_p3(0) = '1') else 
        add_ln119_fu_231_p2;
    select_ln119_3_fu_304_p3 <= 
        ap_const_lv128_lc_2 when (icmp_ln119_fu_191_p2(0) = '1') else 
        add_ln119_1_fu_298_p2;
    select_ln119_fu_237_p3 <= 
        select_ln118_1_fu_204_p3 when (select_ln118_3_fu_224_p3(0) = '1') else 
        ap_const_lv64_0;
        sext_ln118_1_cast_fu_133_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln118_1),64));

        sext_ln118_cast_fu_125_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln118),64));

end behav;