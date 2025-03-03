library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity frame_mapper_tb is
end entity;

architecture Behavioral of frame_mapper_tb is
    -- Testbench signals
    constant clk_period: time := 10ns; 

    constant CS: natural := 0;             -- Control bits per sample
    constant S: natural range 1 to 1 := 1; -- Samples per converter per frame TODO add oversampling
    constant N: natural := 12;             -- Bits per sample
    constant M: natural := 8;              -- Converters
    constant L: natural := 4;              -- Lanes
    
    -- Frame mapper signals
    -- Inputs
    signal sample_clk : STD_LOGIC;
    signal character_clk : STD_LOGIC;
    signal samples : STD_LOGIC_VECTOR((M/L)*N-1 downto 0);
    signal control_bits : STD_LOGIC_VECTOR((M/L)*CS-1 downto 0);
    -- Outputs
    signal octet : STD_LOGIC_VECTOR (7 downto 0);
begin
    DUT: entity work.frame_mapper port map(
        sample_clk, character_clk, samples, control_bits, octet
    );
    
    -- Setup signals
    generate_clk(sample_clk, clk_period);
    generate_clk(character_clk, clk_period);

end Behavioral;
