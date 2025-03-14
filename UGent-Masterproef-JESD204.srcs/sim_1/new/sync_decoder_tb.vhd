library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity sync_decoder_tb is
end entity;

architecture Behavioral of sync_decoder_tb is
    -- Testbench signals
    constant frame_clk_period: time := 15ns;
    
    -- Sync decoder signals
    -- Inputs
    signal frame_clk: std_logic;    -- Frame clock
    signal rst: std_logic;          -- Synchronus reset: active high
    signal sync: std_logic;         -- Sync: active low, synchronised with frame clock
    -- Outputs
    signal sync_request: std_logic; -- Sync request: detected when sync is low for 4 consecutive frame clock periods
begin
    DUT: entity work.sync_decoder port map(
        frame_clk, rst, sync, sync_request
    );
    
    -- Setup signals
    generate_clk(frame_clk, frame_clk_period);
    
    process begin
        rst <= '0';
        sync <= '1';
        wait for frame_clk_period;
        
        -- Check detection for 4 concecutive frame clock periods
        sync <= '0';
        wait for frame_clk_period*5; -- sync_request becomes haigh AFTER 4 periods (so one period to check if sync_request is high
        sync <= '1';
        wait for frame_clk_period;
        
        -- Check for no detection for 4 unconcecutive frame clock periods
        sync <= '0';
        wait for frame_clk_period*3;
        sync <= '1';
        wait for frame_clk_period;
        sync <= '0';
        wait for frame_clk_period*2;
        sync <= '1';
        wait for frame_clk_period;
        
        -- Check detection for long sync periods
        sync <= '0';
        wait for frame_clk_period*10;
        sync <= '1';
        rst <= '1';
        wait for frame_clk_period;
    end process;

end Behavioral;
