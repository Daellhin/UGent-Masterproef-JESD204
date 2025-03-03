library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity serializer_tb is
end entity;

architecture Behavioral of serializer_tb is
    -- Testbench signals
    constant bit_clk_period: time := 1ns;       -- Clock period of bit clock
    constant character_clk_period: time := 10ns; -- Clock period of character clock
    
    -- Serializer signals
    -- Inputs
    constant LSB_first: boolean := true;           -- LSB first, true=LSB of symbol is sent first false=MSB of symbol is sent first
    signal bit_clk: STD_LOGIC;                     -- Bit clock, serial data is sent at rising edge
    signal symbol: STD_LOGIC_VECTOR (9 downto 0);  -- Input symbols (10 bit)
    -- Outputs
    signal serial_data: STD_LOGIC;                 -- Serial data output
begin
    DUT: entity work.serializer 
    generic map(LSB_first)
    port map(
        bit_clk, symbol, serial_data
    );
    
    -- Setup signals
    generate_clk(bit_clk, bit_clk_period);
    
    process begin
        symbol <= "0100000010";
        wait for character_clk_period;
        symbol <= "XXXXXXXXXX";
        wait for character_clk_period;
    end process;

end Behavioral;
