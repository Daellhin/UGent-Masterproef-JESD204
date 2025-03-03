library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use std.textio.all;

package utils_package is
    type outputs_t is array (natural range <>, natural range <>) of std_logic;
    
    function reverse(input: std_logic_vector) return std_logic_vector;
    procedure generate_clk(signal clk: out std_logic; constant period : in time; constant start_delay: in time:= 0ps);
    procedure read_binary_from_file(constant file_name: in string; signal data: out std_logic_vector; signal finished: out boolean; constant delay : in time;  constant fist_delay_offset : in time := 1ps);
    procedure println(file file_handle : text; constant string_to_print: in string);
end package;

package body utils_package is
    function reverse(input: std_logic_vector) return std_logic_vector is
        variable result: std_logic_vector(input'range);
    begin
        for i in input'range loop
            result(i) := input(input'left + input'right - i);
        end loop;
        return result;
    end function;

    procedure generate_clk(
        signal clk: out std_logic;
        constant period : in time;
        constant start_delay: in time := 0ps
    ) is
    begin
        clk <= '0';
        wait for start_delay;
        loop
            clk <= '1';
            wait for period / 2;
            clk <= '0';
            wait for period / 2;
        end loop;
    end procedure;
    
    function to_std_logic(c : character) return std_logic is
    begin
        if c = '1' then return '1';
        elsif c = '0' then return '0';
        else return 'X';
        end if;
    end function;
    
    -- Reads line per line from file(txt or csv), with delay between lines
    -- Lines starting with -- are comments, and are skipped
    -- Example line: 00000000, 1, 0000000000, 1
    procedure read_binary_from_file(
        constant file_name: in string;
        signal data: out std_logic_vector;
        signal finished: out boolean;
        constant delay : in time;
        constant fist_delay_offset : in time := 1ps
    ) is
        file file_handle: text;
        variable line_handle: line;
        variable file_data : std_logic_vector(data'length-1 downto 0);
        variable vector_index : integer := 0;
        variable temp : STD_LOGIC_VECTOR(0 to data'length-1);
        variable first_run: boolean := true;
    begin
        finished <= false;
        file_open(file_handle, file_name, read_mode);

        while not endfile(file_handle) loop
            readline(file_handle, line_handle);

            -- Extract binary from csv
            vector_index := 0;
            for i in 1 to line_handle.all'length loop
                -- Stop read data when comment character is read
                exit when (line_handle.all(i to minimum(i+1, line_handle.all'length)) = "--");
                -- Only read zeros and ones, and skip commas and spaces
                if line_handle.all(i) = '0' or line_handle.all(i) = '1' then
                    temp(vector_index) := to_std_logic(line_handle.all(i));
                    vector_index := vector_index + 1;
                end if;
            end loop;
            -- Only save line data when no comment at start of line
            if vector_index > 0 then
                data <= temp;
                if first_run then
                     wait for delay - fist_delay_offset;
                     first_run := false;
                else
                    wait for delay;
                end if;
            end if;
        end loop;
        
        file_close(file_handle);
        finished <= true;
    end procedure;
    
    procedure println(
        file file_handle: text;
        constant string_to_print : in string
    ) is
         variable row: line;
    begin
        write(row, string_to_print);
        writeline(file_handle,row);
    end procedure;
    
end package body;