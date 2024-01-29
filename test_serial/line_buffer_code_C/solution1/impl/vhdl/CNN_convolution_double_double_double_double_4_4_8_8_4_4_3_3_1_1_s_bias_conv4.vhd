-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_rom is 
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


architecture rtl of CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0011111111100100101101111100011000111111111010101101000110011011", 
    1 => "0011111111100000000100011010010100001110010000011110001000100011", 
    2 => "0011111111000011110010001000000100100011001010110010100001001101", 
    3 => "0011111111101001001001110110001111100001111111001011010011000111", 
    4 => "0011111111010011011011001001110011000001000101100110000000111111", 
    5 => "1011111111100000010011100000001010001100101000100011101001010010", 
    6 => "0011111111100001011010000111100011011111111001011010111001000101", 
    7 => "0011111111100011111010010000110110101010111000110110110111111001" );

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

entity CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4 is
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

architecture arch of CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4 is
    component CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_rom_U :  component CNN_convolution_double_double_double_double_4_4_8_8_4_4_3_3_1_1_s_bias_conv4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


