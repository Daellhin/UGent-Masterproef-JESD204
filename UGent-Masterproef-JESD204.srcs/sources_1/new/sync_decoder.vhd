library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Sync decoder decodes sync_request from sync
entity sync_decoder is
    Port (
        frame_clk: in std_logic;    -- Frame clock
        rst: in std_logic;          -- Synchronus rest (Active high)
        sync: in std_logic;         -- Sync (Active low), synchronised with frame clock
        sync_request: out std_logic -- Sync request, detected when sync is low for 4 consecutive frame clock periods
    );
end entity;

architecture Behavioral of sync_decoder is
    signal sync_counter: natural;
begin

    -- Sync request is detected when sync is low for 4 consecutive frame clock periods
    process(frame_clk)
    begin
        if(rising_edge(frame_clk)) then
            if sync = '0' and not rst = '1' then
                if sync_counter < 4 then
                    sync_counter <= sync_counter+1;
                    sync_request <= '0';
                else 
                    sync_counter <= sync_counter;
                    sync_request <= '1';
                end if;
            else
                sync_counter <= 0;
                sync_request <= '0';
            end if;
        end if;
    end process;

end Behavioral;
