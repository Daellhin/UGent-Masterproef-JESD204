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
    constant character_clk_period: time := 10ns; 
    
    -- Transmitter_state signals
    -- Inputs
    signal character_clk: std_logic;                -- Character clock
    signal sync_request: std_logic;                 -- Sync request
    signal ILA_last: std_logic;                     -- ILA last: high when last octet of ILA is sent
    signal CGS_complete: std_logic;                 -- CGS complete
    signal multiframe_end: std_logic;               -- High at end of multiframe (one character clock period before LMF_clk rising edge)
    signal rst: std_logic;                          -- Synchronous reset: active high
    -- Outputs
    signal enlable_CGS: STD_LOGIC;                  -- Enable CGS generator
    signal enable_ILAS: STD_LOGIC;                  -- Enable ILAS generator
    signal state_out: STD_LOGIC_VECTOR(1 downto 0); -- State output: 00=WAIT_FOR_SYNC, 01=CGS, 10=ILA, 11=DATA
begin
    DUT: entity work.transmitter_state port map(
        character_clk, sync_request, ILA_last, CGS_complete, multiframe_end, rst, enlable_CGS, enable_ILAS, state_out
    );
    
    -- Setup signals
    generate_clk(character_clk, character_clk_period);
    rst <= '0';
    
    process begin
       sync_request <= '0';
       ILA_last <= '0';
       CGS_complete <= '0';
       multiframe_end <= '0';
       wait for character_clk_period*4;
       
       -- Receiver sends sync request
       sync_request <= '1';
       -- CGS is minaly compete after F+9 octets
       wait for character_clk_period*(F+9);
       CGS_complete <= '1';
       -- Receiver wants some more before stoping sync request
       wait for character_clk_period*4;
       sync_request <= '0';
       -- Now we only start on a new multiframe
       wait for character_clk_period*4;
       multiframe_end <= '1';
       wait for character_clk_period;
       CGS_complete <= '0';
       multiframe_end <= '0';
       -- Ila completes after some time
       wait for character_clk_period*100;
       ILA_last <= '1';
       wait for character_clk_period*10;
    end process;

end Behavioral;
