library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scrambler is
    Port (
        scramble_enable: in std_logic;              -- Scrable enable (Active high), Passthrough when disabled
        octet_in: in std_logic_vector(7 downto 0);  -- Input octet
        octet_out: out std_logic_vector(7 downto 0) -- Output octet
    );
end entity;

architecture Behavioral of scrambler is

begin
    process(scramble_enable, octet_in)
    begin
        if scramble_enable = '1' then
            -- Passthrough when not enabled
            octet_out <= octet_in;
        else
            -- TODO add scrambler logic
            octet_out <= (others => 'X');
        end if;
    end process;


end Behavioral;
