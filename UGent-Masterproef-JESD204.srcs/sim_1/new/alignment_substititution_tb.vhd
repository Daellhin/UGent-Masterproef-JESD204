library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;
use xil_defaultlib.constants_package.all;

entity alignment_substititution_tb is
end entity;

architecture Behavioral of alignment_substititution_tb is
    -- Testbench signals
    constant clk_period: time := 15ns;  -- Clock period of charachter clock
    
    -- Alignement substitution signals
    -- Inputs
    signal character_clk : STD_LOGIC;
    signal octet_in : STD_LOGIC_VECTOR (7 downto 0);
    signal scrable_enable : STD_LOGIC;
    signal frame_end: STD_LOGIC;                     -- High at end of frame (one character clock period before frame_clk rising edge)
    signal multiframe_end: STD_LOGIC;                -- High at end of multiframe (one character clock period before LMF_clk rising edge)
    -- Outputs
    signal octet_out : STD_LOGIC_VECTOR (7 downto 0);
    signal control : STD_LOGIC;
    
    signal frame_clk: STD_LOGIC;     -- Frame clock
    signal LMF_clk: STD_LOGIC;       -- Local multiframe clock
    signal frame_clk_counter: natural := 0;
    signal LMF_clk_counter: natural := 0;
begin
    DUT: entity work.alignment_substitution port map(
        character_clk, octet_in, scrable_enable, frame_end, multiframe_end, octet_out, control
    );
    
    -- Setup signals
    generate_clk(character_clk, clk_period);
    scrable_enable <= '0';
    
    -- Frame end and multiframe end counting
    process(character_clk)
    begin
        if rising_edge(character_clk) then
            frame_clk_counter <= (frame_clk_counter+1) mod (F*8);
            LMF_clk_counter <= (LMF_clk_counter+1) mod (F*K*8);
        end if;
    end process;
    frame_clk <= '1' when frame_clk_counter < (F*8)/2 else '0';
    LMF_clk <= '1' when LMF_clk_counter < (K*F*8)/2 else '0';
    frame_end <= '1' when frame_clk_counter = (F*8)-1 else '0';
    multiframe_end <= '1' when LMF_clk_counter = (K*F*8)-1 else '0';
    
    process begin
        octet_in <= "00000000";
        wait for clk_period;
    end process;

end Behavioral;
