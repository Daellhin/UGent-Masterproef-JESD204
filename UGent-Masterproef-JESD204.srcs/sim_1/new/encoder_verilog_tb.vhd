library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity encoder_verilog_tb is
end entity;

architecture Behavioral of encoder_verilog_tb is
    -- Testbench signals
    constant clk_period: time := 10ns; -- Period of the character clock
    signal finished: boolean;          -- Is test finished

    -- Encoder
    signal character_clk: std_logic; -- Character clock: encoder outputs a charcter on each rig edge
    signal rst: std_logic; -- Asynchronus reset (Active High) (Reset before first use)
    signal clkena: std_logic; -- Enable encoder (Active High)
    signal control: std_logic; -- Are control characters being sent (Active High)
    signal octet: std_logic_vector(7 downto 0); -- 8 bit input
    signal symbol: std_logic_vector(9 downto 0); -- 10 bit output
    signal invalid_k: std_logic;
    signal bit_reversing: std_logic;
    
    -- Decoder
    signal symbol_valid: std_logic;
    signal DataOut: std_logic_vector(7 downto 0); -- Decoded data (3 clock periods delay)
    signal open_s: std_logic;
    signal CtrlDetect: std_logic;
    signal ErrDetect: std_logic;
    signal DispErrDetect: std_logic;
begin
    ENCODER: entity work.encoder_8B10B port map(
        clk           => character_clk,
        reset         => rst,
        clkena        => clkena,
        din           => octet,
        kin           => control, -- Control code enable
        dout          => symbol,
        invalid_k     => invalid_k,
        bit_reversing => bit_reversing
	);
    
    DECODER: entity work.decoder_8B10B port map(
      reset      => rst,
      clk        => character_clk,
      din        => symbol,
      din_valid  => symbol_valid, -- beetje clock enable
      dout       => DataOut,
      dout_valid => open_s, 
      ctrldetect => CtrlDetect,   -- als control karakter gestuurd word
      errdetect  => ErrDetect,    -- ogeldige karakters
      disperr    => DispErrDetect -- disparity error
    );
	
    -- Setup signals
    generate_clk(character_clk, clk_period);
    symbol_valid <= '1';
    bit_reversing <= '0';
    clkena <= '1';
    
    process begin
        finished <= false;
        rst <= '1';
        octet <= "00000000";
        wait for clk_period;
        rst <= '0';
        control <= '0';
        octet <= "00000000";
        wait for clk_period;
        control <= '0';
        octet <= "00000001";
        wait for clk_period;
        control <= '0';
        octet <= "00000001";
        wait for clk_period;
        control <= '0';
        octet <= "00000001";
        wait for clk_period;
        control <= '0';
        octet <= "00000001";
        wait for clk_period;
        finished <= true;
        wait for clk_period;
    end process;
    
    process(finished)
    begin
        if finished then
            std.env.stop;
        end if;
    end process;

end Behavioral;
