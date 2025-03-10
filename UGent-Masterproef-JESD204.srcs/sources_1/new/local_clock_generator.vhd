library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity local_clock_generator is
    Port( 
        device_clk: in STD_LOGIC;  
        sysref: in STD_LOGIC;
        sample_clk: out STD_LOGIC;
        frame_clk: out STD_LOGIC;
        character_clk: out STD_LOGIC;
        bit_clk: out STD_LOGIC;
        LMF_clk: out STD_LOGIC;
        LMF_last: out STD_LOGIC
    );
end entity;

architecture Behavioral of local_clock_generator is
    -- Constants for clock division (these should be adjusted based on your specific JESD204B configuration)
    constant SAMPLES_PER_FRAME : integer := 4;      -- F parameter in JESD204B
    constant OCTETS_PER_FRAME : integer := 2;       -- K parameter in JESD204B
    constant FRAMES_PER_MULTIFRAME : integer := 16; -- K parameter in JESD204B
    constant BITS_PER_CHARACTER : integer := 10;    -- For 8b/10b encoding
    
    -- Internal signals for counters
    signal bit_counter : unsigned(3 downto 0) := (others => '0');         -- Counts bits in a character
    signal character_counter : unsigned(1 downto 0) := (others => '0');   -- Counts characters in an octet
    signal frame_counter : unsigned(7 downto 0) := (others => '0');       -- Counts frames in a multiframe
    signal sample_counter : unsigned(3 downto 0) := (others => '0');      -- Counts samples in a frame
    
    -- Internal clock signals
    signal bit_clk_i : std_logic := '0';
    signal character_clk_i : std_logic := '0';
    signal frame_clk_i : std_logic := '0';
    signal sample_clk_i : std_logic := '0';
    signal LMF_clk_i : std_logic := '0';
    signal LMF_last_i : std_logic := '0';
    
    -- LMFC alignment signal
    signal lmfc_aligned : std_logic := '0';
    
begin
    -- Clock generation process
    process(device_clk)
    begin
        if rising_edge(device_clk) then
            -- Bit clock generation (highest frequency)
            bit_clk_i <= not bit_clk_i;
            
            -- Character clock generation
            if bit_counter = BITS_PER_CHARACTER - 1 then
                bit_counter <= (others => '0');
                character_clk_i <= '1';
            else
                bit_counter <= bit_counter + 1;
                character_clk_i <= '0';
            end if;
            
            -- Frame clock generation
            if character_clk_i = '1' then
                if character_counter = OCTETS_PER_FRAME - 1 then
                    character_counter <= (others => '0');
                    frame_clk_i <= '1';
                else
                    character_counter <= character_counter + 1;
                    frame_clk_i <= '0';
                end if;
            end if;
            
            -- Sample clock generation
            if frame_clk_i = '1' then
                if sample_counter = SAMPLES_PER_FRAME - 1 then
                    sample_counter <= (others => '0');
                    sample_clk_i <= '1';
                else
                    sample_counter <= sample_counter + 1;
                    sample_clk_i <= '0';
                end if;
            else
                sample_clk_i <= '0';
            end if;
            
            -- Local MultiFrame Clock generation
            if frame_clk_i = '1' then
                if frame_counter = FRAMES_PER_MULTIFRAME - 1 then
                    frame_counter <= (others => '0');
                    LMF_clk_i <= '1';
                    LMF_last_i <= '1';  -- Indicate last frame in multiframe
                else
                    frame_counter <= frame_counter + 1;
                    LMF_clk_i <= '0';
                    LMF_last_i <= '0';
                end if;
            else
                LMF_last_i <= '0';
            end if;
            
            -- SYSREF alignment
            if sysref = '1' and lmfc_aligned = '0' then
                -- Reset all counters to align with SYSREF
                bit_counter <= (others => '0');
                character_counter <= (others => '0');
                frame_counter <= (others => '0');
                sample_counter <= (others => '0');
                lmfc_aligned <= '1';
            elsif sysref = '0' then
                lmfc_aligned <= '0';
            end if;
        end if;
    end process;
    
    -- Output assignments
    bit_clk <= bit_clk_i;
    character_clk <= character_clk_i;
    frame_clk <= frame_clk_i;
    sample_clk <= sample_clk_i;
    LMF_clk <= LMF_clk_i;
    LMF_last <= LMF_last_i;
    
end Behavioral;