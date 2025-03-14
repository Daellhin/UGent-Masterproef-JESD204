library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity single_ADC_frame_mapper_tb is
end entity;

architecture Behavioral of single_ADC_frame_mapper_tb is
     -- Testbench signals
    constant character_clk_period: time := 10ns;
    constant sample_clk_period: time := 15ns;
    
    -- Frame mappper signals
    -- Inputs
    signal sample_clk : STD_LOGIC;                 -- Sample clock
    signal character_clk : STD_LOGIC;              -- Character clock
    signal rst: STD_LOGIC;                         -- Synchronus reset: active high
    signal sample : STD_LOGIC_VECTOR(11 downto 0); -- Sample: 12 bit
    -- Outputs
    signal octet : STD_LOGIC_VECTOR (7 downto 0);  -- Octets: synchronus with character_clk
begin
    DUT: entity work.single_ADC_frame_mapper port map(
        sample_clk, character_clk, rst, sample, octet
    );
    
    -- Setup signals
    generate_clk(character_clk, character_clk_period);
    generate_clk(sample_clk, sample_clk_period);
    
    process begin
--        rst <= '1';
--        wait for sample_clk_period*2;
        rst <= '0';
        
        sample <= "000100000000";
        wait for sample_clk_period;
        sample <= "000000100000";
        wait for sample_clk_period;
        sample <= "010000000011";
        wait for sample_clk_period;
        sample <= "000001010000";
        wait for sample_clk_period;
        
        sample <= "000100000000";
        wait for sample_clk_period;
        sample <= "000000100000";
        wait for sample_clk_period;
        sample <= "010000000011";
        wait for sample_clk_period;
        sample <= "000001010000";
        wait for sample_clk_period;
        
        wait for sample_clk_period*2;
    end process;

end Behavioral;
