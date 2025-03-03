library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xil_defaultlib;
use xil_defaultlib.utils_package.all;

entity encoder_integration_tb is
end entity;

architecture Behavioral of encoder_integration_tb is
    -- Testbench signals
    constant clk_period: time := 10ns; -- Period of the character clock
    signal finished: boolean;          -- Is test finished

    -- Encoder own
    -- Inputs
    signal character_clk: std_logic;             -- Character clock: encoder outputs a charcter on each rig edge
    signal rst: std_logic;                       -- Asynchronus reset (Active High) (Reset before first use)
    signal initial_RD: std_logic := '0';         -- RD value at start or after reset(0=-1) (1=+1). Used for testing
    signal control: std_logic;                   -- Are control characters being sent (Active High)
    signal octet: std_logic_vector(7 downto 0);  -- 8 bit input
    -- Outputs
    signal symbol: std_logic_vector(9 downto 0); -- 10 bit output
    signal RD: std_logic;                        -- RD output. Used for validation during testing
    signal invalid_control: std_logic;           -- High when control is active and non control octet is provided
    
    -- Encoder verilog
    -- Inputs
    signal clkena: std_logic;                      -- Enable encoder (Active High)
    signal symbol_v: std_logic_vector(9 downto 0); -- 10 bit output
    signal bit_reversing: std_logic;               -- Reverse bits (0=MSB last, 1=MSB first)
    -- Outputs
    signal invalid_k: std_logic;                   -- Invalid control(K) character
    
    -- Decoder
    -- Inputs
    signal din_valid: std_logic;                  -- Enable decoder
     -- Outputs
    signal dataOut: std_logic_vector(7 downto 0); -- Decoded data (3 clock periods delay)
    signal dout_valid: std_logic;                 -- Is output valid (Active high)
    signal ctrldetect: std_logic;                 -- Is control detected
    signal errDetect: std_logic;                  -- Invald character detected
    signal dispErrDetect: std_logic;              -- Disparity error detected
begin
    VHDL_ENCODER: entity work.encoder
    generic map(reverse_bits=>true)
    port map(
        character_clk, rst, initial_RD, octet, control, symbol, invalid_control, RD
    );
    
    VERILOG_ENCODER: entity work.encoder_8B10B port map(
        clk           => character_clk,
        reset         => rst,
        clkena        => clkena,
        din           => octet,
        kin           => control,
        dout          => symbol_v,
        invalid_k     => invalid_k,
        bit_reversing => bit_reversing
	);
    
    DECODER: entity work.decoder_8B10B port map(
      reset      => rst,
      clk        => character_clk,
      din        => symbol,
      din_valid  => din_valid,
      dout       => dataOut,
      dout_valid => dout_valid,
      ctrldetect => ctrlDetect,
      errdetect  => errDetect,
      disperr    => dispErrDetect
    );
	
    -- Setup signals
    generate_clk(character_clk, clk_period);
    din_valid <= '1';
    clkena <= '1';
    bit_reversing <= '0';
    
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
        octet <= "00000000";
        wait for clk_period;
        control <= '0';
        octet <= "00000000";
        wait for clk_period;
        control <= '0';
        octet <= "00000000";
        wait for clk_period;
        control <= '0';
        octet <= "00000000";
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
