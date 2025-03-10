library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity local_clock_generator_tb is
end entity;

architecture Behavioral of local_clock_generator_tb is
     -- Testbench signals
    constant clk_period: time := 10ns;
    
    -- Clock generator signals
    -- Inputs
    signal device_clk: STD_LOGIC;  
    signal sysref: STD_LOGIC;
    -- Outputs
    signal sample_clk: STD_LOGIC;
    signal frame_clk: STD_LOGIC;
    signal character_clk: STD_LOGIC;
    signal bit_clk: STD_LOGIC;
    signal LMF_clk: STD_LOGIC;
    signal LMF_last: STD_LOGIC;
begin
    DUT: entity work.local_clock_generator port map(
        device_clk, sysref, sample_clk, frame_clk, character_clk, bit_clk, LMF_clk, LMF_last
    );
    
    -- Setup signals
    generate_clk(device_clk, clk_period);
    sysref <= '0';

end Behavioral;
