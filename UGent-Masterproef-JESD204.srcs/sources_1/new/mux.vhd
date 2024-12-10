library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    generic(
        width: natural := 8
    );
    Port( 
        A : in STD_LOGIC_VECTOR(width-1 downto 0);
        B : in STD_LOGIC_VECTOR(width-1 downto 0);
        sel : in STD_LOGIC;
        C : out STD_LOGIC_VECTOR(width-1 downto 0)
    );
end mux;

architecture Behavioral of mux is

begin


end Behavioral;
