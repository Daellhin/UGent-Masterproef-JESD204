library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity ADC_pattern_generator is
    Port (
        sample_clk : in STD_LOGIC;                   -- Sample clock
        sample : out STD_LOGIC_VECTOR (12-1 downto 0) -- Generated sample
    );
end entity;

architecture Behavioral of ADC_pattern_generator is
    signal counter : unsigned(12-1 downto 0) := (others => '0');
begin
    process(sample_clk)
    begin
        if rising_edge(sample_clk) then
            counter <= counter + 1;
        end if;
    end process;

    sample <= std_logic_vector(counter);
end Behavioral;
