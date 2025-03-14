library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity alignment_substitution is
    Port (
        character_clk : in STD_LOGIC;                  -- Character clock
        octet_in : in STD_LOGIC_VECTOR (7 downto 0);   -- Input octet
        scramble_enable : in STD_LOGIC;                -- Scramble enable
        frame_end: STD_LOGIC;                          -- High at end of frame (one character clock period before frame_clk rising edge)
        multiframe_end: STD_LOGIC;                     -- High at end of multiframe (one character clock period before LMF_clk rising edge)
        octet_out : out STD_LOGIC_VECTOR (7 downto 0); -- Output octet
        control : out STD_LOGIC                        -- Control, high when octet_out is a control symbol
    );
end entity;

architecture Behavioral of alignment_substitution is
    signal last_octet: STD_LOGIC_VECTOR(7 downto 0); -- Buffer to compare current with last octet
begin
    
    process(character_clk)
    begin
        if rising_edge(character_clk) then
            if frame_end = '1' then
                if multiframe_end = '1' then
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
