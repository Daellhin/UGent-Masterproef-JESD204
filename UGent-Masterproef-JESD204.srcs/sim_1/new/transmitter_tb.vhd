library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity transmitter_tb is
end entity;

architecture Behavioral of transmitter_tb is
    -- Testbench signals
    constant clk_period: time := 10ns;
    
    -- Common signals
    signal character_clk: std_logic;
    signal rst: std_logic;
    signal ILA_last: std_logic;
    
    -- Transmitter_state signals
    -- Inputs
    -- signal character_clk: std_logic;
    signal sync: std_logic;
    -- signal ILA_last: std_logic;
    -- signal rst: std_logic;
    -- Outputs
    signal enlable_CGS: STD_LOGIC;
    signal enable_ILAS: STD_LOGIC;
    
    -- ILAS_generator signals
    -- Inputs
    -- signal character_clk: std_logic;
    signal enable: std_logic;
    -- signal rst: std_logic;
    -- Outpus
    signal octet_out: std_logic_vector(7 downto 0);
    signal control: std_logic;
    -- signal ILA_last: std_logic;
    
begin
    DUT_ILAS_generator: entity work.ILAS_generator port map(
        character_clk, enable, rst, octet_out, control, ILA_last
    );
    
    DUT_transmitter_state: entity work.transmitter_state port map(
        character_clk, sync, ILA_last, rst, enlable_CGS, enable_ILAS
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    rst <= '0';

end Behavioral;
