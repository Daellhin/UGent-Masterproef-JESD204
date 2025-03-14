library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity ILAS_generator is
    Port (
        character_clk: in std_logic;                 -- Character clock
        enable: in std_logic;                        -- Enable: ILAS is generated when enabled, resets when not enabled
        octet_out: out std_logic_vector(7 downto 0); -- Output octets
        control: out std_logic;                      -- Control
        ILA_last: out std_logic                      -- ILA last: high when last octet of ILA is sent
    );
end entity;

architecture Behavioral of ILAS_generator is
    signal octet_counter:  natural range 0 to (F*K)-1  := 0;
    signal multiframe_counter: natural range 0 to 4 := 0;
    signal octet_value: natural range 0 to (F*K*4)-1 := 0;
begin
    process(character_clk)
		constant CHKSUM: integer := to_integer(unsigned(b_ADJCNT)) + to_integer(unsigned(b_ADJDIR)) + to_integer(unsigned(b_BID)) + to_integer(unsigned(b_CF)) + to_integer(unsigned(b_CS)) + to_integer(unsigned(b_DID)) + to_integer(unsigned(b_F)) + to_integer(unsigned(b_HD)) + to_integer(unsigned(b_JESDV)) + to_integer(unsigned(b_K)) + to_integer(unsigned(b_L)) + to_integer(unsigned(b_LID)) + to_integer(unsigned(b_M)) + to_integer(unsigned(b_N)) + to_integer(unsigned(b_Na)) + to_integer(unsigned(b_PHADJ)) + to_integer(unsigned(b_S)) + to_integer(unsigned(b_SCR)) + to_integer(unsigned(b_SUBCLASSV));   
	begin
        if rising_edge(character_clk) then
            if enable = '1' then
                ILA_last <= '0';
                
                -- ILA finished
                if multiframe_counter = 4 then
                    octet_out <= (others => '-');
                    control <= '-';
                -- Start of frame: send R
                elsif octet_counter = 0 then
                    octet_out <= ctrlR;
                    control <= '1';
                -- Second octetet of second multiframe(send configuration): send Q
                elsif octet_counter = 1 and multiframe_counter = 1 then
                    octet_out <= ctrlQ;
                    control <= '1';
                elsif octet_counter = (F*K)-1 then
                    octet_out <= ctrlA;
                    control <= '1';
                    multiframe_counter <= multiframe_counter+1;
                    -- Notify transmitter state machine when last octet of ILA is sent
                    if multiframe_counter = 3 then
                         ILA_last <= '1';
                    end if;
                -- Body of second multiframe: send configuration
                elsif multiframe_counter = 1 then
                    case octet_counter is
                        when 2 => octet_out <= b_DID;
                        when 3 => octet_out <= b_ADJCNT&b_BID;
                        when 4 => octet_out <= "X"&b_ADJDIR&b_PHADJ&b_LID;
                        when 5 => octet_out <= b_SCR&"X"&"X"&b_L;
                        when 6 => octet_out <= b_F;
                        when 7 => octet_out <= "X"&"X"&"X"&b_K;
                        when 8 => octet_out <= b_M;
                        when 9 => octet_out <= b_CS&"X"&b_N;
                        when 10 => octet_out <= b_SUBCLASSV&b_Na;
                        when 11 => octet_out <= b_JESDV&b_S;
                        when 12 => octet_out <= b_HD&"X"&"X"&b_CF;
                        when 13 => octet_out <= "XXXXXXXX";
                        when 14 => octet_out <= "XXXXXXXX";
                        when 15 => octet_out <= std_logic_vector(to_unsigned(CHKSUM, 8));
                        when others => octet_out <= std_logic_vector(to_unsigned(octet_value, 8)); -- Default case
                    end case;
                    control <= '0';
                else
                    octet_out <= std_logic_vector(to_unsigned(octet_value, 8));
                    control <= '0';
                end if;
                
                octet_counter <= (octet_counter+1) mod (F*K);
                octet_value <= (octet_value+1) mod 256;
            else 
                octet_counter <= 0;
                multiframe_counter <= 0;
                octet_value <= 0;
                ILA_last <= '-';
                control <= '-';
                octet_out <= (others => '-');
            end if;
        end if;
    end process;

end Behavioral;
