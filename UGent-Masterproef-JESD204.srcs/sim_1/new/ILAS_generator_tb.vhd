library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity ILAS_generator_tb is
end entity;

architecture Behavioral of ILAS_generator_tb is
    -- Testbench signals
    constant clk_period: time := 10ns; -- Period of the character clock

    -- ILAS_generator signals
    -- Inputs
    signal character_clk: std_logic;
    signal enable: std_logic;
    signal rst: std_logic;
    -- Outpus
    signal octet_out: std_logic_vector(7 downto 0);
    signal control: std_logic;
    signal ILA_last: std_logic;
    
begin
    DUT: entity work.ILAS_generator port map(
        character_clk, enable, rst, octet_out, control, ILA_last
    );
    
     -- Setup signals
     generate_clk(character_clk, clk_period);
     enable <= '1';
     rst <= '0';
     
     -- Save output to file
    -- Created in "ProjectName.sim\sim_1\behav\xsim" folder
    process
        file out_file: text open write_mode is "ILAS_generator_test_results.txt";
        variable test: boolean;
        variable init: boolean := true;
    begin
        if init then
            println(out_file, "-- ILAS generator test results");
            init := false;
        end if;
        -- ILAS generator is tested in one go, will generate 4 multiframes
        wait for clk_period/2; -- Wait for signal to be processed
        println(out_file, "-| "&to_string(octet_out)&", "&to_string(control));
        wait for clk_period/2;
    end process;

end Behavioral;
