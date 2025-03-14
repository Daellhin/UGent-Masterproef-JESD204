library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity MUX_2x1_tb is
end entity;

architecture Behavioral of MUX_2x1_tb is
    -- Testbench signals
    constant clk_period: time := 10ns;

    -- MUX signals
    constant width: natural := 8;
    -- Inputs
    signal A : STD_LOGIC_VECTOR(width-1 downto 0); -- A input
    signal B : STD_LOGIC_VECTOR(width-1 downto 0); -- B input
    signal sel : STD_LOGIC;                        -- Select (0=A, 1=B)
    -- Outputs
    signal C : STD_LOGIC_VECTOR(width-1 downto 0); -- C output
begin
    DUT: entity work.MUX_2x1 port map(
        A, B, sel, C
    );
    
    A <= X"00";
    B <= X"01";
    
    process begin
        sel <= '0';
        wait for clk_period;
        sel <= '1';
        wait for clk_period;
    end process;

end Behavioral;
