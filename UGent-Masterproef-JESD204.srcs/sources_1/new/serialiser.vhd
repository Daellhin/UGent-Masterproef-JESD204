library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serialiser is
    generic (
		L : natural := 1 -- number of converters
	);
    Port (
        lanes : out std_logic_vector(L downto 0)
    );
end serialiser;

architecture Behavioral of serialiser is

begin


end Behavioral;
