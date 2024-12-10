library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity local_clock_generator is
    Port( 
        device_clk : in STD_LOGIC;  
        sysref : in STD_LOGIC;
        sample_clk : out STD_LOGIC;
        frame_clk : out STD_LOGIC;
        character_clk : out STD_LOGIC;
        bit_clk : out STD_LOGIC;
        LMF_clk : out STD_LOGIC
    );
end local_clock_generator;

architecture Behavioral of local_clock_generator is

begin


end Behavioral;
