library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Frame mapper made for for single ADC, single lane, no control bits, 12 bit samples and 2 samples per frame operation
entity single_ADC_frame_mapper is
    Port(
        sample_clk : in STD_LOGIC;                 -- Sample clock
        character_clk : in STD_LOGIC;              -- Character clock
        rst: in STD_LOGIC;                         -- Synchronus reset: active high
        sample : in STD_LOGIC_VECTOR(11 downto 0); -- Sample: 12 bit
        octet : out STD_LOGIC_VECTOR (7 downto 0)  -- Octets: synchronus with character_clk
    );
end entity;

architecture Behavioral of single_ADC_frame_mapper is
    signal sample_buffer: std_logic_vector((12*4)-1 downto 0);
    signal sample_pointer: natural range 0 to 3 := 0;
    signal octet_pointer: natural range 0 to 5 := 0;
    signal sample_buffered: boolean := false;
begin
    BUFFER_SAMPLES: process(sample_clk)
    begin
        if rising_edge(sample_clk) then
            if rst = '1' then
                sample_buffer <= (others => 'U');
                sample_pointer <= 0;
                sample_buffered <= false;
            else
                sample_buffer(((sample_pointer+1)*12)-1 downto sample_pointer*12) <= sample;
                
                if sample_pointer < 3 then
                    sample_pointer <= sample_pointer+1;
                else
                    sample_pointer <= 0;
                end if;
            
                if not sample_buffered and sample_pointer = 1 then
                    sample_buffered <= true;
                end if;
            end if;
        end if;
    end process;
    
    SEND_OCTETS: process(character_clk)
    begin
        if rising_edge(character_clk) then
            if rst = '1' then
                octet <= (others => 'U');
                octet_pointer <= 0;
            else
                if sample_buffered then
                    octet <= sample_buffer(((octet_pointer+1)*8)-1 downto octet_pointer*8);
                    if octet_pointer < 5 then
                        octet_pointer <= octet_pointer+1;
                    else
                        octet_pointer <= 0;
                    end if;
                else
                    octet <= (others => 'U');
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
