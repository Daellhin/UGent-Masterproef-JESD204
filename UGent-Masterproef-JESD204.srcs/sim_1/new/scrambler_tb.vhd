library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scrambler_tb is
end entity;

architecture Behavioral of scrambler_tb is
    -- Testbench signals
    constant clk_period: time := 10ns;
    
    -- Scrambler signals
    -- Inputs
    signal scramble_enable: std_logic;
    signal octet_in: std_logic_vector(7 downto 0);
    -- Outputs
    signal octet_out: std_logic_vector(7 downto 0);
begin
    DUT: entity work.scrambler port map(
        scramble_enable, octet_in, octet_out
    );
    
     -- Setup signals
    scramble_enable <= '1';
    
    process begin
        octet_in <= "00000000";
        wait for clk_period;
        octet_in <= "00000001";
        wait for clk_period;
        octet_in <= "00000010";
        wait for clk_period;
    end process;

end Behavioral;
