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
        constant octetsInMultiframe: integer := (to_integer(unsigned(F))+1)*(to_integer(unsigned(K))+1);
        constant CHKSUM: integer := to_integer(unsigned(ADJCNT)) + to_integer(unsigned(ADJDIR)) + to_integer(unsigned(BID)) + to_integer(unsigned(CF)) + to_integer(unsigned(CS)) + to_integer(unsigned(DID)) + to_integer(unsigned(F)) + to_integer(unsigned(HD)) + to_integer(unsigned(JESDV)) + to_integer(unsigned(K)) + to_integer(unsigned(L)) + to_integer(unsigned(LID)) + to_integer(unsigned(M)) + to_integer(unsigned(N)) + to_integer(unsigned(Na)) + to_integer(unsigned(PHADJ)) + to_integer(unsigned(S)) + to_integer(unsigned(SCR)) + to_integer(unsigned(SUBCLASSV));
    begin
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
                    when 2 => octet_out <= DID;
                    when 3 => octet_out <= ADJCNT&BID;
                    when 4 => octet_out <= "X"&ADJDIR&PHADJ&LID;
                    when 5 => octet_out <= SCR&"X"&"X"&L;
                    when 6 => octet_out <= F;
                    when 7 => octet_out <= "X"&"X"&"X"&K;
                    when 8 => octet_out <= M;
                    when 9 => octet_out <= CS&"X"&N;
                    when 10 => octet_out <= SUBCLASSV&Na;
                    when 11 => octet_out <= JESDV&S;
                    when 12 => octet_out <= HD&"X"&"X"&CF;
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
