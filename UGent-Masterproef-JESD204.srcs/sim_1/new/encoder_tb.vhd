library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity encoder_tb is
end entity;

architecture Behavioral of encoder_tb is
    -- Testbench signals
    constant clk_period: time := 10ns;                        -- Period of the character clock
    signal data: STD_LOGIC_VECTOR((8+1+1+10+1+1)-1 downto 0); -- Data read line by line from input file
    signal finished: boolean;                                 -- Is test finished
    signal exp_symbol: std_logic_vector(9 downto 0);          -- Expected symbol
    signal exp_RD: std_logic;                                 -- Ecpected RD
    signal exp_invalid_control: std_logic;                    -- Ecpected Invalid control
    
    -- Encoder signals
    -- Inputs
    signal character_clk: std_logic;            -- Clock, encoder reads octet on rising edge converts it to symbol
    signal rst: std_logic;                      -- Synchronus reset (Active High)
    signal initial_RD: std_logic := '0';        -- RD value at start or after reset(0=-1) (1=+1). Used for testing
    signal control: std_logic;                  -- Are control characters being sent (Active High)
    signal octet: std_logic_vector(7 downto 0); -- 8 bit input (XXX XXXXX)
    -- Outputs
    signal symbol: std_logic_vector(9 downto 0); -- 10 bit output
    signal RD: std_logic;                        -- RD output. Used for testing
    signal invalid_control: std_logic;           -- High when control is active and non control octet is provided
begin
    DUT: entity work.encoder port map(
        character_clk, rst, initial_RD, octet, control, symbol, invalid_control, RD
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    
    -- Read data from file
    read_binary_from_file("8b10b_test_inputs.txt", data, finished, clk_period*2);
    octet <= data(21 downto 14);
    control <= data(13);
    initial_RD <= data(12);
    exp_symbol <= data(11 downto 2);
    exp_RD <= data(1);
    exp_invalid_control <= data(0);
    
    -- Save output to file
    -- Created in "ProjectName.sim\sim_1\behav\xsim" folder
    process
        file out_file: text open write_mode is "8b10b_test_outputs.txt";
        variable test: boolean;
        variable init: boolean := true;
    begin
        if init then
            println(out_file, "-- 8b10b test results");
            println(out_file, "-- Input: octet, control, RD");
            println(out_file, "-- Output: symbol, RD, Invalid control");
            init := false;
        end if;
        -- Encoder is tested in tick tock fasion,
        -- Resest in first clock cycle, set data in second clock cycle
        rst <= '1';
        wait for clk_period;
        rst <= '0';
        wait for clk_period/2; -- Wait for signal to be processed
        println(out_file, "Input    : "&to_string(octet)&", "&to_string(control)&", "&to_string(initial_RD));
        println(out_file, "|Expected: "&to_string(exp_symbol)&", "&to_string(exp_RD)&", "&to_string(exp_invalid_control));
        println(out_file, "|Actual  : "&to_string(symbol)&", "&to_string(RD)&", "&to_string(invalid_control)&": "&to_string(exp_symbol=symbol)&", "&to_string(exp_RD=RD)&", "&to_string(exp_invalid_control=invalid_control));
        wait for clk_period/2;
    end process;
    
    process(finished)
    begin
        if finished then
            std.env.stop;
        end if;
    end process;

end Behavioral;
