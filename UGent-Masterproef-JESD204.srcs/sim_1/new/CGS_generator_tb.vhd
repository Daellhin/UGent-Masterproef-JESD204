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
    signal character_clk: std_logic;                -- Charcacter clock, octets are genereated on rising edge
    signal enable: std_logic;                       -- Enable, K characters are generated when enabled, resets when not enabled
    -- Outputs
    signal octet_out: std_logic_vector(7 downto 0); -- Output octets, K characters
    signal control: std_logic;                      -- Control, will always be high when generator is enabled
    signal CGS_complete: std_logic;                 -- CGS complete, high when CGS length requirement is met (F+9 octets sent)
begin
    DUT: entity work.CGS_generator port map(
        character_clk, enable, octet_out, control, CGS_complete
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    
    process begin
        enable <= '0';
        wait for clk_period*3;
        enable <= '1';
        wait for clk_period*100;
        enable <= '0';
        wait for clk_period*10;
    end process;

end Behavioral;
