library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity alignment_substititution is
    Port (
        character_clk : in STD_LOGIC;
        octet_in : in STD_LOGIC_VECTOR (7 downto 0);
        scrable_enable : in STD_LOGIC;
        octet_out : out STD_LOGIC_VECTOR (7 downto 0);
        control : out STD_LOGIC
    );
end entity;

architecture Behavioral of alignment_substititution is
    signal last_octet: STD_LOGIC_VECTOR(7 downto 0);
    
    -- TODO connect with logic
    signal frame_end: boolean := false;
    signal multiframe_end: boolean := false;
begin
    
    process(character_clk)
    begin
        if rising_edge(character_clk) then
            if frame_end then
                if multiframe_end then
                    -- Octet repetition -> substitute octet with alignement symbol
                    if last_octet = octet_in then
				        octet_out <= ctrlA;
				        control <= '1';
			         -- No octet repetition
			         else
                        octet_out <= octet_in;
				        control <= '0';
			         end if;
			    else
                    -- Octet repetition -> substitute octet with alignement symbol
                    if last_octet = octet_in then
                        octet_out <= ctrlF;
                        control <= '1';
                     -- No octet repetition
                     else
                        octet_out <= octet_in;
                        control <= '0';
                     end if;
                end if;
            -- Pass octet through
            else
                octet_out <= octet_in;
                control <= '0';
            end if;
            
            last_octet <= octet_in;
        end if;
    end process;

end Behavioral;
