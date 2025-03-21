library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.constants_package.all;

entity local_clock_generator is
    generic(
        phase_adjust: natural := 0 -- Amount of device_clk periods to wait after SYSREF before LMF_clk goes high
    );
    Port( 
        device_clk: in STD_LOGIC;     -- Device clock
        rst: in STD_LOGIC;            -- Synchronous reset (Active high)
        SYSREF: in STD_LOGIC;         -- SYSREF
        sample_clk: out STD_LOGIC;    -- Sample clock
        frame_clk: out STD_LOGIC;     -- Frame clock
        character_clk: out STD_LOGIC; -- Character clock
        bit_clk: out STD_LOGIC;       -- Bit clock
        LMF_clk: out STD_LOGIC;       -- Local multiframe clock
        frame_end: out STD_LOGIC;     -- High at end of frame (one character clock period before frame_clk rising edge)
        multiframe_start: out STD_LOGIC;
        multiframe_end: out STD_LOGIC -- High at end of multiframe (one character clock period before LMF_clk rising edge)
    );
end entity;

architecture Behavioral of local_clock_generator is 
    -- SYSREF
    signal SYSREF_prev: std_logic;
   
   -- Counters
    signal character_clk_counter: natural range 0 to 8-1 := 8-1;
    signal sample_clk_counter: natural range 0 to N-1 := N-1;
    signal frame_clk_counter: natural range 0 to F*8-1 := F*8-1;
    signal LMF_clk_counter : natural range 0 to K*F*8-1 := K*F*8-1;
begin
    counters: process(device_clk)
    begin
        if rising_edge(device_clk) then
            SYSREF_prev <= SYSREF;
        
            if rst = '1' then
                character_clk_counter <= 0;
                sample_clk_counter <= 0;
                frame_clk_counter <= 0;
                LMF_clk_counter <= 0;
            elsif (SYSREF = '1' and SYSREF_prev = '0') then
                character_clk_counter <= (-phase_adjust) mod 8;
                sample_clk_counter <= (-phase_adjust) mod N;
                frame_clk_counter <= (-phase_adjust) mod (F*8);
                LMF_clk_counter <= (-phase_adjust) mod (F*K*8);
            else
                character_clk_counter <= (character_clk_counter+1) mod 8;
                sample_clk_counter <= (sample_clk_counter+1) mod N;
                frame_clk_counter <= (frame_clk_counter+1) mod (F*8);
                LMF_clk_counter <= (LMF_clk_counter+1) mod (F*K*8);
            end if;
        end if;
    end process;
     
    -- Output assignments
    bit_clk <= device_clk;
    character_clk <= '1' when character_clk_counter < (8)/2 else '0';
    sample_clk <= '1' when sample_clk_counter < (N)/2 else '0';
    frame_clk <= '1' when frame_clk_counter < (F*8)/2 else '0';
    LMF_clk <= '1' when LMF_clk_counter < (K*F*8)/2 else '0';
    frame_end <= '1' when frame_clk_counter = (F*8)-1 else '0';
    multiframe_start <= '1' when LMF_clk_counter = 0 else '0';
    multiframe_end <= '1' when LMF_clk_counter > (K*F*8)-9 else '0';
end Behavioral;