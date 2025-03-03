library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

-- Generates K charachters and counts if F+9 ocetets have been sent
entity CGS_Generator is
    Port (
        character_clk: in std_logic;                 -- Charcacter clock, octets are genereated on rising edge
        enable: in std_logic;                        -- Enable, K characters are generated when enabled, resets when not enabled
        octet_out: out std_logic_vector(7 downto 0); -- Output octets, K characters
        control: out std_logic;                      -- Control, will always be high when generator is enabled
        CGS_complete: out std_logic                  -- CGS complete, high when CGS length requirement is met (F+9 octets sent)
    );
end CGS_Generator;

architecture Behavioral of CGS_Generator is
    signal CGS_counter: natural := 0;
begin

    process(character_clk) 
    begin
        if rising_edge(character_clk) then
            if enable = '1' then
                octet_out <= ctrlK;
                control <= '1';
                if CGS_counter < F+9 then
                    CGS_counter <= CGS_counter+1;
                    CGS_complete <= '0';
                else
                    CGS_counter <= CGS_counter;
                    CGS_complete <= '1';
                end if;
            else
                octet_out <= "00000000";
                control <= '0';
                CGS_counter <= 0;
                CGS_complete <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;
