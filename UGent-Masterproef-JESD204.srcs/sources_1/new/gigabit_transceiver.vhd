library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gigabit_transceiver is
    Port(
        bit_clk: in STD_LOGIC;
        symbol : in STD_LOGIC_VECTOR (9 downto 0);
        serial_data : out STD_LOGIC
    );
end gigabit_transceiver;

architecture Behavioral of gigabit_transceiver is

begin


end Behavioral;
