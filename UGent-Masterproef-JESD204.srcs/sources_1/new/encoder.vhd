library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

-- 8b10b encoder for JESD204B
-- Following IBM implementation:
-- Input 8bit octet(3bit+5bit)
--  -> XXX XXXXX
-- Output 10bit symbol(6bit+4bit) MSB first
--  -> XXXXXX XXXX
entity encoder is
    generic(
        reverse_bits: boolean := false            -- Reverse bits, when true reverse symbol to MSB last
    );
    Port(
        character_clk: in std_logic;              -- Charcacter clock, encoder samples octet on rising edge
        rst: in std_logic;                        -- Synchronous reset (Active High)
        initial_RD: in std_logic;                 -- RD value at start or after reset(0=-1) (1=+1). Used for testing
        octet: in std_logic_vector(7 downto 0);   -- 8 bit input (XXX XXXXX)
        control: in std_logic;                    -- Are control dcharacters being sent (Active High)
        symbol: out std_logic_vector(9 downto 0); -- 10 bit output (XXXXXX XXXX)
        invalid_control: out std_logic;           -- High when control is active and non control octet is provided
        RD: out std_logic                         -- RD output. Used for testing
    );
end encoder;

architecture Behavioral of encoder is
    function encode5b6b_data(constant lower5: std_logic_vector(4 downto 0)) 
        return std_logic_vector is
        variable output : std_logic_vector(5 downto 0);
    begin
        case lower5 is
            when "00000" => output := "100111"; -- D.00
            when "00001" => output := "011101"; -- D.01
            when "00010" => output := "101101"; -- D.02
            when "00011" => output := "110001"; -- D.03
            when "00100" => output := "110101"; -- D.04
            when "00101" => output := "101001"; -- D.05
            when "00110" => output := "011001"; -- D.06
            when "00111" => output := "111000"; -- D.07
            when "01000" => output := "111001"; -- D.08
            when "01001" => output := "100101"; -- D.09
            when "01010" => output := "010101"; -- D.10
            when "01011" => output := "110100"; -- D.11
            when "01100" => output := "001101"; -- D.12
            when "01101" => output := "101100"; -- D.13
            when "01110" => output := "011100"; -- D.14
            when "01111" => output := "010111"; -- D.15
            when "10000" => output := "011011"; -- D.16
            when "10001" => output := "100011"; -- D.17
            when "10010" => output := "010011"; -- D.18
            when "10011" => output := "110010"; -- D.19
            when "10100" => output := "001011"; -- D.20
            when "10101" => output := "101010"; -- D.21
            when "10110" => output := "011010"; -- D.22
            when "10111" => output := "111010"; -- D.23
            when "11000" => output := "110011"; -- D.24
            when "11001" => output := "100110"; -- D.25
            when "11010" => output := "010110"; -- D.26
            when "11011" => output := "110110"; -- D.27
            when "11100" => output := "001110"; -- D.28
            when "11101" => output := "101110"; -- D.29
            when "11110" => output := "011110"; -- D.30
            when "11111" => output := "101011"; -- D.31
        end case;
        return output;
    end function;
    
    function encode5b6b_control(constant lower5: std_logic_vector(4 downto 0)) 
        return std_logic_vector is
        variable output : std_logic_vector(5 downto 0);
    begin
        case lower5 is
            when "10111" => output := "111010"; -- K.23
            when "11011" => output := "110110"; -- K.27
            when "11100" => output := "001111"; -- K.28
            when "11101" => output := "101110"; -- K.29
            when "11110" => output := "011110"; -- K.30
            when others => output  := "------";
        end case;
        return output;
    end function;
    
    
    function encode3b4b_data(constant upper3: std_logic_vector(2 downto 0)) 
        return std_logic_vector is
        variable output : std_logic_vector(3 downto 0);
    begin
        case upper3 is
            when "000" => output := "1011"; -- D.x.0 
            when "001" => output := "1001"; -- D.x.1 
            when "010" => output := "0101"; -- D.x.2 
            when "011" => output := "1100"; -- D.x.3 
            when "100" => output := "1101"; -- D.x.4 
            when "101" => output := "1010"; -- D.x.5 
            when "110" => output := "0110"; -- D.x.6 
            when "111" => output := "1110"; -- D.x.P7
        end case;
        return output;
    end function;
    
    function encode3b4b_control(constant upper3: std_logic_vector(2 downto 0)) 
        return std_logic_vector is
        variable output : std_logic_vector(3 downto 0);
    begin
        case upper3 is
            when "000" => output := "1011"; -- K.x.0
            when "001" => output := "0110"; -- K.x.1
            when "010" => output := "1010"; -- K.x.2
            when "011" => output := "1100"; -- K.x.3
            when "100" => output := "1101"; -- K.x.4
            when "101" => output := "0101"; -- K.x.5
            when "110" => output := "1001"; -- K.x.6
            when "111" => output := "0111"; -- K.x.7
            when others => output := "----";
        end case;
        return output;
    end function;
    
    function is_valid_control_input(constant octet: std_logic_vector(7 downto 0))
        return boolean is
    begin
        case octet is
            when "00011100" | "00111100" | "01011100" | "01111100" | 
                 "10011100" | "10111100" | "11011100" | "11111100" | 
                 "11110111" | "11111011" | "11111101" | "11111110" =>
                return true;
            when others =>
                return false;
        end case;
    end function;
    
    function count_ones(s : std_logic_vector) return integer is
        variable temp : natural := 0;
    begin
      for i in s'range loop
        if s(i) = '1' then 
            temp := temp + 1; 
        end if;
      end loop;
      return temp;
    end function count_ones;
    
begin
   process(character_clk)
       variable lower5: std_logic_vector(4 downto 0); -- lower 5 bits of octet
       variable upper3: std_logic_vector(2 downto 0); -- upper 3 bits of octet
        
       variable sixBitCode: std_logic_vector(5 downto 0); -- lower 6 bits of symbol
       variable fourBitCode: std_logic_vector(3 downto 0); -- upper 4 bits of symbol
       variable RD_i: std_logic;
       variable ones_sixBitCode: integer;
       variable ones_fourBitCode: integer;
   begin
       if rising_edge(character_clk) then
           if rst = '1' then
               RD <= initial_RD;
               symbol <= (others => '0');
               invalid_control <= '0';
           else
               lower5 := octet(4 downto 0);
               upper3 := octet(7 downto 5);
               RD_i := RD;
                
               sixBitCode := encode5b6b_data(lower5) when control = '0' else encode5b6b_control(lower5);
               ones_sixBitCode := count_ones(sixBitCode);
               if RD_i = '1' and (ones_sixBitCode = 4 or lower5 = "00111") then
                   sixBitCode := not sixBitCode;
               end if;
               if ones_sixBitCode = 4 then
                   RD_i := not RD_i;
               end if;
                
               fourBitCode := encode3b4b_data(upper3) when control = '0' else encode3b4b_control(upper3);
               ones_fourBitCode := count_ones(fourBitCode);
               -- P7 A7 correction
               if (upper3 = "111" and (
                   (RD = '0' and (lower5 = "10001" or lower5 = "10010" or lower5 = "10100")) or
                   (RD = '1' and (lower5 = "01011" or lower5 = "01101" or lower5 = "01110"))
               )) then
                   fourBitCode := "0111";
               end if;
               if RD_i = '1' and (ones_fourBitCode = 3 or upper3 = "011" or control = '1') then
                   fourBitCode := not fourBitCode;
               end if;
               if ones_fourBitCode = 3 then
                   RD_i := not RD_i;
               end if;
                
               RD <= RD_i;
               symbol <= sixBitCode&fourBitCode when not reverse_bits else reverse(sixBitCode&fourBitCode);
               invalid_control <= '1' when control='1' and not is_valid_control_input(octet)  else '0';
           end if;
       end if;
   end process;
   
end Behavioral;
