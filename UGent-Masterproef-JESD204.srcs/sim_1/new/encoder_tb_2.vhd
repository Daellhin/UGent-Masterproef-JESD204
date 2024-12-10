library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity encoder_tb_2 is
end encoder_tb_2;

architecture Behavioral of encoder_tb_2 is
    -- Testbench signals
    signal data: STD_LOGIC_VECTOR((8+1+1)-1 downto 0);
    signal finished: boolean;
    
    -- Encoder
    signal character_clk: std_logic; -- Character clock: encoder outputs a charcter on each rig edge
    signal rst: std_logic; -- Synchronus reset (Active High)
    signal control: std_logic; -- Are control characters being sent (Active High)
    signal octet: std_logic_vector(7 downto 0); -- 8 bit input
    signal symbol: std_logic_vector(9 downto 0); -- 10 bit output
    signal invalid_k: std_logic;
    signal bit_reversing: std_logic;
    
    -- Decoder
    signal symbol_valid: std_logic;
    signal DataOut: std_logic_vector(7 downto 0);
    signal open_s: std_logic;
    signal CtrlDetect: std_logic;
    signal ErrDetect: std_logic;
    signal DispErrDetect: std_logic;
begin
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
    
    ENCODER: entity work.encoder_8B10B port map(
        clk           => character_clk,
        reset         => rst,
        clkena        => symbol_valid,
        din           => octet,
        kin           => control, -- Control code enable
        dout          => symbol,
        invalid_k     => invalid_k,
        bit_reversing => bit_reversing
	);
	
    -- Setup signals
    generate_clk(character_clk, 10ns);
    rst <= '0';
    symbol_valid <= '1';
    bit_reversing <= '0';
    
    -- Read data from file
    read_binary_from_file("8b10b_test_inputs.txt", data, finished, 10ns);
    octet <= data(9 downto 2);
    control <= data(1);

end Behavioral;
