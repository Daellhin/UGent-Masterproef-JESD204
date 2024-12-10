library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scrambler is
    Port (
        enable: in std_logic;
        octet_in: in std_logic_vector(7 downto 0);
        octet_out: out std_logic_vector(7 downto 0)
    );
end scrambler;

architecture Behavioral of scrambler is

begin
    process begin
        if enable = '1' then
            -- Passthrough when not enabled
            octet_out <= octet_in;
        else
            -- TODO add scrambler logic
            octet_out <= (others => 'X');
        end if;
    end process;


end Behavioral;
