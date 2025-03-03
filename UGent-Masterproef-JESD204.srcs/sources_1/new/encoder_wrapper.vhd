library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

-- Wrapper for 8b10b encoder, because Vivado 2024 cannot handle VHDL 2008 as top level file in block design
entity encoder_wrapper is
    Port (
        character_clk: in std_logic;
        rst: in std_logic;
        initial_RD: in std_logic := '0';
        octet: in std_logic_vector(7 downto 0);
        control: in std_logic;
        symbol: out std_logic_vector(9 downto 0);
        invalid_control: out std_logic;
        RD: out std_logic
    );
end entity;

architecture Behavioral of encoder_wrapper is
begin
    LOGIC: entity work.encoder port map(
        character_clk, rst, initial_RD, octet, control, symbol, invalid_control, RD
    );
end Behavioral;
