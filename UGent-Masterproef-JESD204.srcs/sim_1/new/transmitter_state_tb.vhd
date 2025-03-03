library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;
use xil_defaultlib.constants_package.all;

entity transmitter_state_tb is
end entity;

architecture Behavioral of transmitter_state_tb is
    -- Testbench signals
    constant clk_period: time := 10ns; 
    
    -- Transmitter_state signals
    -- Inputs
    signal character_clk: std_logic;
    signal sync_request: std_logic;
    signal ILA_last: std_logic;
    signal CGS_complete: std_logic;
    signal multiframe_last: std_logic;
    signal rst: std_logic;
    -- Outputs
    signal enlable_CGS: STD_LOGIC;
    signal enable_ILAS: STD_LOGIC;
    signal state_out: STD_LOGIC_VECTOR(1 downto 0);
begin
    DUT: entity work.transmitter_state port map(
        character_clk, sync_request, ILA_last, CGS_complete, multiframe_last, rst, enlable_CGS, enable_ILAS, state_out
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    rst <= '0';
    
    process begin
       sync_request <= '0';
       ILA_last <= '0';
       CGS_complete <= '0';
       multiframe_last <= '0';
       wait for 40ns;
       sync_request <= '1';
       wait for clk_period*(F+9);
       CGS_complete <= '1';
       sync_request <= '0';
       multiframe_last <= '1';
       wait for 20ns;
       CGS_complete <= '0';
       multiframe_last <= '0';
       wait for 1000ns;
       ILA_last <= '1';
       wait for 10000ns;
    end process;

end Behavioral;
