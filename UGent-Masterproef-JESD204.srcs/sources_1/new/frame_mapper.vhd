library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity frame_mapper is
    generic(
        CS: natural := 0; -- Control bits per sample
        S: natural := 1; -- Samples per converter per frame
        N: natural := 11; -- Bits per sample
        M: natural := 8; -- Converters
        L: natural := 4 -- Lanes
    );
    Port(
        samples : in STD_LOGIC_VECTOR ((N*M/L)-1 downto 0);
        frame_clk : in STD_LOGIC;
        octet_stream : out STD_LOGIC_VECTOR (7 downto 0)
    );
end frame_mapper;

architecture Behavioral of frame_mapper is

begin


end Behavioral;
