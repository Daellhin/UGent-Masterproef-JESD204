library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Generic multiplexer with 2 inputs and 1 output
entity MUX_2x1 is
    generic(
        width: natural := 8 -- Width of input and output vectors 
    );
    Port(
        A : in STD_LOGIC_VECTOR(width-1 downto 0); -- A input
        B : in STD_LOGIC_VECTOR(width-1 downto 0); -- B input
        sel : in STD_LOGIC;                        -- Select (0=A, 1=B, 2=C)
        C : out STD_LOGIC_VECTOR(width-1 downto 0) -- C output
    );
end entity;

architecture Behavioral of MUX_2x1 is
begin
    C <= B when sel = '1' else A;
end Behavioral;