library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity sync_decoder_tb is
end entity;

architecture Behavioral of sync_decoder_tb is
    -- Testbench signals
    constant clk_period: time := 15ns;  -- Clock period of frame clock
    
    -- Sync decoder signals
    -- Inputs
    signal frame_clk: std_logic;    -- Frame clock
    signal rst: std_logic;          -- Synchronus rest (Active high)
    signal sync: std_logic;         -- Sync (Active low), synchronised with frame clock
    -- Outputs
    signal sync_request: std_logic; -- Sync request, detected when sync is low for 4 consecutive frame clock periods
begin
    DUT: entity work.sync_decoder port map(
        frame_clk, rst, sync, sync_request
    );
    
    -- Setup signals
    generate_clk(frame_clk, clk_period);
    rst <= '0';
    
    process begin
        sync <= '1';
        wait for clk_period;
        sync <= '0';
        wait for clk_period*10;
    end process;

end Behavioral;
