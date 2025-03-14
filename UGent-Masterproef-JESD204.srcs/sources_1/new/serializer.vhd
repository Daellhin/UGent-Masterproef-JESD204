library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serializer is
    generic(
        LSB_first: boolean := true; -- true: LSB first, false: MSB first
        width: integer := 10        -- Width of parallel data
    );
	port (
        bit_clk: in STD_LOGIC;                                -- Bit clock
		parallel_data: in STD_LOGIC_VECTOR(width-1 DOWNTO 0); -- Parallel data
		serial_data: out STD_LOGIC                            -- Serial data
    );
end entity;

architecture Behavioral of serializer is
begin
	process(bit_clk)
		variable count: integer range 0 to width := 0;
        variable data_buffer: STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	begin
		if(rising_edge(bit_clk)) then
            if count = 0 then
                data_buffer := parallel_data;
            end if;

            if LSB_first then
                serial_data <= data_buffer(count);
            else
                serial_data <= data_buffer(width-count);
            end if;
		    
			count := count + 1;
			if(count = 10) then
				count := 0;
			end if;
		end if;
	end process;
end Behavioral;