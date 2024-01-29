-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom is 
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


architecture rtl of CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0011111100001000001001011100010110011101001111001100000100011000", 
    1 => "0011111101011011110001110100110110111000110000111100110000001010", 
    2 => "1011111111000000000110000010100010000000010100011100100111110111", 
    3 => "0011111101001101110011101100110111100001011111010110011010010001", 
    4 => "1011111110000000111110011111010001101111101000000110111001000001", 
    5 => "0011111111001101010010110011001100000100001110010100101010100100", 
    6 => "1011111100101001001111111001100110101101011011001000100010001010", 
    7 => "0011111111000100101010100100111011110011100000110001100111111011", 
    8 => "0011111110100101000010101001011110000000000001100100001000000110", 
    9 => "0011111101001001110100111101100011000010100101001101111010100001", 
    10 => "1011111101000011011001010011101001011100111011000100000011100110", 
    11 => "0011111110000011110010111000100111100111110111000000001100000111", 
    12 => "1011111101000010111010000001110110100001110110001010110110101110", 
    13 => "0011111110000010011010001001110101111000010010110110101100111000", 
    14 => "0011111100111110000100000001000110100000001011110110110110101000", 
    15 => "1011111101010111100001001110110110101101010001011000011110011001" );

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

entity CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1 is
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

architecture arch of CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1 is
    component CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom_U :  component CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


