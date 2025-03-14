library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_3x1 is
    generic(
        width: natural := 8 -- Width of input and output vectors 
    );
    Port( 
        A : in STD_LOGIC_VECTOR(width-1 downto 0); -- A input
        B : in STD_LOGIC_VECTOR(width-1 downto 0); -- B input
        C : in STD_LOGIC_VECTOR(width-1 downto 0); -- C input
        sel : in STD_LOGIC_VECTOR(1 downto 0);     -- Select (0=A, 1=B, 2=C)
        D : out STD_LOGIC_VECTOR(width-1 downto 0) -- Output
    );
end entity;

architecture Behavioral of MUX_3x1 is
begin
    process(sel)
    begin
        case sel is
            when "00" => D <= A;
            when "01" => D <= B;
            when "10" => D <= C;
            when others => D <= (others => '-');
        end case;
    end process;
end Behavioral;
