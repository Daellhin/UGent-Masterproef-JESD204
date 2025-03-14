library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity ADC_pattern_generator_tb is
end entity;

architecture Behavioral of ADC_pattern_generator_tb is
    -- Testbench signals
    constant sample_clk_period: time := 15ns;
    
    -- ADC_pattern_generator_tb signals
    -- Inputs
    signal sample_clk : STD_LOGIC;                   -- Sample clock
    -- Outputs
    signal sample : STD_LOGIC_VECTOR (12-1 downto 0); -- Generated sample
begin
    DUT: entity work.ADC_pattern_generator port map(
        sample_clk, sample
    );
    
    -- Setup signals
    generate_clk(sample_clk, sample_clk_period);

end Behavioral;
