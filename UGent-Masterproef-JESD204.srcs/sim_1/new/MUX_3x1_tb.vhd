library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_3x1_tb is
end entity;

architecture Behavioral of MUX_3x1_tb is
    -- Testbench signals
    constant clk_period: time := 15ns;  -- Clock period of character clock
    
    -- MUX signals
    -- Inputs
    constant width: natural := 8;
    signal A: STD_LOGIC_VECTOR(width-1 downto 0);
    signal B: STD_LOGIC_VECTOR(width-1 downto 0);
    signal C: STD_LOGIC_VECTOR(width-1 downto 0);
    signal sel: STD_LOGIC_VECTOR(1 downto 0);
    -- Outputs
    signal D: STD_LOGIC_VECTOR(width-1 downto 0);
begin
    DUT: entity work.MUX_3x1
    generic map(width)
    port map(
        A, B, C, sel, D
    );
    
    A <= X"00";
    B <= X"0F";
    C <= X"FF";
    
    process begin
        sel <= "00";
        wait for clk_period;
        sel <= "01";
        wait for clk_period;
        sel <= "10";
        wait for clk_period;
        sel <= "11";
        wait for clk_period;
    end process;

end Behavioral;
