library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Maps samples to octets for a specific frame
entity frame_mapper is
    generic(
        CS: natural := 0;             -- Control bits per sample
        S: natural range 1 to 1 := 1; -- Samples per converter per frame TODO add oversampling
        N: natural := 12;             -- Bits per sample
        M: natural := 8;              -- Converters
        L: natural := 4               -- Lanes
    );
    Port(
        sample_clk : in STD_LOGIC;
        character_clk : in STD_LOGIC;
        samples : in STD_LOGIC_VECTOR((M/L)*N-1 downto 0);
        control_bits : in STD_LOGIC_VECTOR((M/L)*CS-1 downto 0);
        octet : out STD_LOGIC_VECTOR (7 downto 0) -- stream of octets in a frame
    );
end entity;

architecture Behavioral of frame_mapper is
    signal octets_buffer : STD_LOGIC_VECTOR(100 downto 0);
    signal octet_counter : natural;
    
    constant nr_tail_bits : natural := (4-((N+CS) mod 4)) mod 4;
    constant tail : STD_LOGIC_VECTOR(nr_tail_bits-1 downto 0) := (others => '0');
begin
    
    process(sample_clk)
         variable words : std_logic_vector(samples'length + control_bits'length downto 0);
         variable nibble_groups : std_logic_vector(100 downto 0);
         variable octets_buffer_i : std_logic_vector(100 downto 0);
    begin
        if rising_edge(sample_clk) then
            -- Map to words: pad samples with control bits
--            for i in 0 to samples'length/N loop
--                words((i+1)*(N+CS-1) downto i*(N+CS)) := samples((i+1)*(N-1) downto i*N) & control_bits((i+1)*(CS-1) downto i*CS);
--            end loop;
--            -- Map to nibble groups: padd words until they are a multiple of 4 bits
--            for i in 0 to samples'length/N loop
--                nibble_groups((i+1)*(N+CS) downto i*(N+CS)) := words((i+1)*N downto i*N) & tail;
--            end loop;
--            -- Map to multiple of 8 bits: by padding at end of all nibble groups until they are a multiple of 8 bits
            
        end if;
    end process;
    
     process(character_clk)
     begin
        if rising_edge(sample_clk) then
--            octet <= octets_buffer((octet_counter+1)*8-1 downto octet_counter*8);
            octet_counter <= octet_counter+1;
        end if;
     end process;

end Behavioral;
