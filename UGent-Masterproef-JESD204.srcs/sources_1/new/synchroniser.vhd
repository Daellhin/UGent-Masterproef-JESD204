library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity synchroniser is
    Port(
        SYNC : in STD_LOGIC;
        octet : out STD_LOGIC_VECTOR (7 downto 0);
        synchronising : out std_logic
    );
end entity;

architecture Behavioral of synchroniser is

begin


end Behavioral;
