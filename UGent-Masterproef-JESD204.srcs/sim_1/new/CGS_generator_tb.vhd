library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity CGS_generator_tb is
end entity;

architecture Behavioral of CGS_generator_tb is
    -- Testbench signals
    constant clk_period: time := 10ns;
    
    -- CGS_generator signals
    -- Inputs
    signal character_clk: std_logic;
    signal enable: std_logic;
    -- Outputs
    signal octet_out: std_logic_vector(7 downto 0);
    signal control: std_logic;
    signal CGS_complete: std_logic;
begin
    DUT: entity work.CGS_generator port map(
        character_clk, enable, octet_out, control, CGS_complete
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    enable <= '1';

end Behavioral;
