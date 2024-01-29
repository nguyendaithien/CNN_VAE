-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_rom is 
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


architecture rtl of CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0011111110101101000010100101110001100000100011110100100000011000", 
    1 => "0011111111011100001001001011000010100011111101110100000010010100", 
    2 => "0011111111100010111110100000001011111011010111010000001100010000", 
    3 => "0011111111000001000101011011000101000010001011001100101100111010", 
    4 => "0011111111000001111100111010000111100011001111110010101000001100", 
    5 => "1011111111010111010000011110000100100000111011001011010010011111", 
    6 => "0011111111010010010000100101100000111111001100010100001101000100", 
    7 => "1011111110100000111010000000110101011110110100100000110001000001" );

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

entity CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5 is
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

architecture arch of CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5 is
    component CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_rom_U :  component CNN_convolution_double_double_double_double_8_8_8_8_8_8_3_3_1_1_s_bias_conv5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


