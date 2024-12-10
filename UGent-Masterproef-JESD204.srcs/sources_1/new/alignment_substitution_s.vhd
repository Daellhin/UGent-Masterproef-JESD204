library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alignment_substititution_s is
    Port (
        character_clk : in STD_LOGIC;
        octet_in : in STD_LOGIC_VECTOR (7 downto 0);
        octet_out : out STD_LOGIC_VECTOR (7 downto 0);
        control : out STD_LOGIC
    );
end alignment_substititution_s;

architecture Behavioral of alignment_substititution_s is

begin


end Behavioral;
