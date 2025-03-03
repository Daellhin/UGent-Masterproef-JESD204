library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_generator is
    Port( 
        source_clk : in STD_LOGIC;
        device_clk : out STD_LOGIC;
        sysref : out STD_LOGIC
    );
end entity;

architecture Behavioral of clock_generator is

begin


end Behavioral;
