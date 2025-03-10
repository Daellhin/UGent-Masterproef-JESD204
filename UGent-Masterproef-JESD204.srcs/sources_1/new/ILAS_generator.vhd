library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity ILAS_generator is
    Port (
        character_clk: in std_logic;
        enable: in std_logic;
        rst: in std_logic;
        octet_out: out std_logic_vector(7 downto 0);
        control: out std_logic;
        ILA_last: out std_logic
    );
end ILAS_generator;

architecture Behavioral of ILAS_generator is
begin
    process(character_clk, rst)
        variable octetcounter: integer := 0;
        variable multiframecounter: integer := 0;
        variable octetvalue: integer := 0;
        constant octetsInMultiframe: integer := F*K;
constant CHKSUM: integer := to_integer(unsigned(b_ADJCNT)) + to_integer(unsigned(b_ADJDIR)) + to_integer(unsigned(b_BID)) + to_integer(unsigned(b_CF)) + to_integer(unsigned(b_CS)) + to_integer(unsigned(b_DID)) + to_integer(unsigned(b_F)) + to_integer(unsigned(b_HD)) + to_integer(unsigned(b_JESDV)) + to_integer(unsigned(b_K)) + to_integer(unsigned(b_L)) + to_integer(unsigned(b_LID)) + to_integer(unsigned(b_M)) + to_integer(unsigned(b_N)) + to_integer(unsigned(b_Na)) + to_integer(unsigned(b_PHADJ)) + to_integer(unsigned(b_S)) + to_integer(unsigned(b_SCR)) + to_integer(unsigned(b_SUBCLASSV));    begin
        if rst = '1' then
            octetcounter := 0;
            multiframecounter := 0;
            octetvalue := 0;
            ILA_last <= '0';
        end if;
    
        if enable = '1' and rising_edge(character_clk) then
            if multiframeCounter = 4 then
                octet_out <= "00000000";
            elsif octetcounter = 0 then
                octet_out <= ctrlR;
                control <= '1';
            elsif octetCounter = 1 and multiframeCounter = 1 then
                octet_out <= ctrlQ;
                control <= '1';
            elsif octetCounter = octetsInMultiframe-1 then
                octet_out <= ctrlA;
                control <= '1';
                multiframecounter := multiframecounter+1;
                -- Notify transmitter state machine when last octet of ILA is sent
                if multiframecounter = 3 then
                     ILA_last <= '1';
                end if;
            elsif multiframeCounter = 1 then
                case octetcounter is
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
                    when others => octet_out <= std_logic_vector(to_unsigned(octetvalue, 8)); -- Default case
                end case;
                control <= '0';
            else
                octet_out <= std_logic_vector(to_unsigned(octetvalue, 8));
                control <= '0';
            end if;
            
            octetcounter := (octetcounter+1) mod octetsInMultiframe;
            octetvalue := (octetvalue+1) mod 256;
        end if;
    end process;

end Behavioral;
