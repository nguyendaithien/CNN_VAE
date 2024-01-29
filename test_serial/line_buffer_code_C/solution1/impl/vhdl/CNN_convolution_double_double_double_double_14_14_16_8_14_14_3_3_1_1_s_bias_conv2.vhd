-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_rom is 
    generic(
             DWIDTH     : integer := 64; 
             AWIDTH     : integer := 3; 
             MEM_SIZE    : integer := 8
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011111111000111111110100110011000111000000110000100101001001111", 
    1 => "1011111110111110001110000001111111010111000010101110100100111101", 
    2 => "1011111110100000000000001010111011111100100000100100011100011000", 
    3 => "1011111110011001111100100010011100111110001000010011110010101010", 
    4 => "1011111110011000001111001000111000000011011010111111100011010101", 
    5 => "0011111111010100011111001000001011011101011010100111111011001111", 
    6 => "0011111110010110110000100100110010011110110001111011010001101000", 
    7 => "1011111111000000101011110100110101001010100010111001010001110011" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2 is
    generic (
        DataWidth : INTEGER := 64;
        AddressRange : INTEGER := 8;
        AddressWidth : INTEGER := 3);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2 is
    component CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_rom_U :  component CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_bias_conv2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


