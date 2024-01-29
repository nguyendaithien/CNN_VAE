-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_rom is 
    generic(
             DWIDTH     : integer := 64; 
             AWIDTH     : integer := 4; 
             MEM_SIZE    : integer := 16
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011111110000010110111000001011110111010110101000001111001000111", 
    1 => "0011111111100100101000010000101111111110101110111101110100111011", 
    2 => "0011111111001000001001111010110101000011000110011011000000101010", 
    3 => "0011111111011010110000000110001100110001111111100111111111001101", 
    4 => "1011111111001110011111111001110110011010000001000100110110011000", 
    5 => "1011111110101110100111011010110010111101011111001001000110010000", 
    6 => "1011111111010001111000111010000010000011100110001010011001010101", 
    7 => "0011111111001010010111000110100010100001001010010010111111111010", 
    8 => "0011111111100100000100010010110110000100100111011000100100010010", 
    9 => "1011111111010001011001101000001000010101000110001001010111111001", 
    10 => "0011111111010101100000011011110000000010010011110011101010100110", 
    11 => "0011111111010000100101001100001110111100001011001110110001110010", 
    12 => "1011111111010111111111100010110110010111111010001011111101110010", 
    13 => "1011111110111101111001100000001000100111111110000110110010001110", 
    14 => "1011111111010001100110100100101001000011100110110000101001011101", 
    15 => "1011111111000110010101001111100000111111011011000101000110001101" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6 is
    generic (
        DataWidth : INTEGER := 64;
        AddressRange : INTEGER := 16;
        AddressWidth : INTEGER := 4);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6 is
    component CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_rom_U :  component CNN_convolution_double_double_double_double_16_16_8_16_14_14_3_3_1_0_s_bias_conv6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


