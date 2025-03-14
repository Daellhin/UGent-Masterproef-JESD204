library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity ILAS_generator_tb is
end entity;

architecture Behavioral of ILAS_generator_tb is
    -- Testbench signals
    constant character_clk_period: time := 10ns;

    -- ILAS_generator signals
    -- Inputs
    signal character_clk: std_logic;                -- Character clock
    signal enable: std_logic;                       -- Enable, ILAS is generated when enabled, resets when not enabled
    -- Outpus
    signal octet_out: std_logic_vector(7 downto 0); -- Output octets
    signal control: std_logic;                      -- Control
    signal ILA_last: std_logic;                     -- ILA last: high when last octet of ILA is sent
    
begin
    DUT: entity work.ILAS_generator port map(
        character_clk, enable, octet_out, control, ILA_last
    );
    
     -- Setup signals
     generate_clk(character_clk, character_clk_period);
     
     -- Save output to file
    -- Created in "ProjectName.sim\sim_1\behav\xsim" folder
    process
        file out_file: text open write_mode is "ILAS_generator_test_results.txt";
        variable test: boolean;
        variable initialised: boolean := false;
    begin
        if not initialised then
            enable <= '0';
            wait for character_clk_period*2;
            enable <= '1';
            println(out_file, "-- ILAS generator test results");
            initialised := true;
        end if;
        -- ILAS generator is tested in one go, will generate 4 multiframes
        wait for character_clk_period/2; -- Wait for signal to be processed
        println(out_file, "-| "&to_string(octet_out)&", "&to_string(control));
        wait for character_clk_period/2;
    end process;

end Behavioral;
