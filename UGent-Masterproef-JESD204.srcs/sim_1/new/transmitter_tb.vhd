library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;
use xil_defaultlib.constants_package.all;

entity transmitter_tb is
end entity;

architecture Behavioral of transmitter_tb is
    -- Testbench signals
    constant device_clk_period: time := 10ns;
    constant character_clk_period: time := device_clk_period*8;
    constant frame_clk_period: time := character_clk_period*F;
    
    -- Transmitter signals
    -- Inputs
    signal SYNC: STD_LOGIC;
    signal SYSREF: STD_LOGIC;
    signal device_clk: STD_LOGIC;
    signal rst: STD_LOGIC;
    signal sample: STD_LOGIC_VECTOR(11 downto 0);
    signal scramble_enable: STD_LOGIC;
    signal test_enable: STD_LOGIC;
    -- Outputs
    signal serial_data: STD_LOGIC;
   
begin
    DUT: entity work.transmitter_wrapper port map(
        SYNC, SYSREF, device_clk, rst, sample, scramble_enable, serial_data, test_enable
    );
    
    -- Setup signals
    generate_clk(device_clk, device_clk_period);
    rst <= '0';
    test_enable <= '1';
    scramble_enable <= '0';
    
    process begin
        SYNC <= '1';
        SYSREF <= '0';
        wait for frame_clk_period;
        SYNC <= '0';
        wait for frame_clk_period*5;
    end process;

end Behavioral;
