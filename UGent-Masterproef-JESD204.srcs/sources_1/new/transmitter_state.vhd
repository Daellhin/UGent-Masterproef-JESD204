library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity transmitter_state is
    Port(
        character_clk: in std_logic;
        sync_request: in std_logic;
        ILA_last: in std_logic;
        CGS_complete: in std_logic;
        multiframe_last: in std_logic;
        rst: in std_logic;
        enlable_CGS: out STD_LOGIC;
        enable_ILAS : out STD_LOGIC;
        state_out: out STD_LOGIC_VECTOR(1 downto 0)
    );
end transmitter_state;

architecture Behavioral of transmitter_state is
    type state_t is (WAIT_FOR_SYNC, CGS, ILA, DATA);
    signal state, next_state: state_t := WAIT_FOR_SYNC;
begin

    synchronisation: process(character_clk)
    begin
        if rising_edge(character_clk) then
            if rst = '1' then
                state <= WAIT_FOR_SYNC;
            else
                state <= next_state;
            end if;
        end if;
    end process;
    
    transitions: process(state, sync_request, CGS_complete, multiframe_last, ILA_last)
    begin
        case state is
            -- Transmitter continues waiting until: sync request is received from receiver
            when WAIT_FOR_SYNC =>
                if(sync_request = '1') then
                    next_state <= CGS;
                else
                    next_state <= WAIT_FOR_SYNC;
                end if;
            -- Transmitter continues CGS until: 
            -- - SYNC goes high
            -- - 1 frame + 9 octets K symbols have been sent
            -- - The end of a local multiframe period is reached(ILA should start at a LMFC rising edge)
            when CGS =>
                if(sync_request = '1') then
                    next_state <= CGS;
                elsif(sync_request = '0' and CGS_complete = '1' and multiframe_last = '1') then
                    next_state <= ILA;
                else
                    next_state <= CGS;
                end if;
             -- Transmitter conitnues ILA until: 4 multiframes have been sent(notified by ILAS_generator)
             when ILA =>
               if(sync_request = '1') then
                    next_state <= CGS;
                elsif(ILA_last = '1') then
                    next_state <= DATA;
                else
                    next_state <= ILA;
                end if;
             when DATA =>
                 if(sync_request = '1') then
                    next_state <= CGS;
                 else 
                    next_state <= DATA;
                end if;
         end case;
    end process;
    
    state_output: process(state)
    begin
        case state is
            when WAIT_FOR_SYNC =>
                state_out <= "00";
            when CGS =>
                state_out <= "01";
            when ILA =>
                state_out <= "10";
            when DATA =>
                state_out <= "11";
        end case;
    end process;

end Behavioral;
