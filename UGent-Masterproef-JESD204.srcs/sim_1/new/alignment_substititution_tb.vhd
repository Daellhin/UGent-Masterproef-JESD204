library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity alignment_substititution_tb is
end entity;

architecture Behavioral of alignment_substititution_tb is
    -- Testbench signals
    constant clk_period: time := 15ns;  -- Clock period of charachter clock
    
    -- Alignement substitution signals
    -- Inputs
    signal character_clk : STD_LOGIC;
    signal octet_in : STD_LOGIC_VECTOR (7 downto 0);
    signal scrable_enable : STD_LOGIC;
    -- Outputs
    signal octet_out : STD_LOGIC_VECTOR (7 downto 0);
    signal control : STD_LOGIC;
begin
    DUT: entity work.alignment_substititution port map(
        character_clk, octet_in, scrable_enable, octet_out, control
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    scrable_enable <= '0';
    
    process begin
        octet_in <= "00000000";
        wait for clk_period;
    end process;

end Behavioral;
