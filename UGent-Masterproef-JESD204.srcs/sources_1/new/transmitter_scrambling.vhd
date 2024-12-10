library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_scrambling is
    Port( 
        character_clk : in STD_LOGIC;
        frame : in STD_LOGIC_VECTOR (0 downto 0);
        octet : out STD_LOGIC_VECTOR (7 downto 0)
    );
end transmitter_scrambling;

architecture Behavioral of transmitter_scrambling is

begin


end Behavioral;
