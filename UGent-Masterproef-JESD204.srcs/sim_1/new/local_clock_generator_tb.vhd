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
    signal device_clk: STD_LOGIC;     -- Device clock
    signal rst: STD_LOGIC;            -- Synchronous reset (Active high)
    signal sysref: STD_LOGIC;         -- SYSREF
    -- Outputs
    signal sample_clk: STD_LOGIC;     -- Sample clock
    signal frame_clk: STD_LOGIC;      -- Frame clock
    signal character_clk: STD_LOGIC;  -- Character clock
    signal bit_clk: STD_LOGIC;        -- Bit clock
    signal LMF_clk: STD_LOGIC;        -- Local multiframe clock
    signal frame_end: STD_LOGIC;      -- High at end of frame (one character clock period before frame_clk rising edge)
    signal multiframe_end: STD_LOGIC; -- High at end of multiframe (one character clock period before LMF_clk rising edge)
begin
    DUT: entity work.local_clock_generator port map(
        device_clk, rst, sysref, sample_clk, frame_clk, character_clk, bit_clk, LMF_clk, frame_end, multiframe_end
    );
   
    -- Setup signals
    generate_clk(device_clk, clk_period);
    rst <= '0';
    
    process begin
        sysref <= '0';
        wait for clk_period*150;
        sysref <= '1';
        wait for clk_period*3;
    end process;
    
end Behavioral;
