library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_wrapper_artix_ultrascale is
  port (
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    SYNC : in STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    rst : in STD_LOGIC; -- Synchronus reset: active low (mapped to button, pressed=reset), inverted in logic
    sample : in STD_LOGIC_VECTOR(11 downto 0);
    serial_data : out STD_LOGIC;
    SYSREF : in STD_LOGIC;
    test_enable : in STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR(11 downto 0)
  );
end entity;

architecture Behavioral of transmitter_wrapper_artix_ultrascale is
    component clk_wiz_0 port(
      clk_in1_p: in std_logic;
      clk_in1_n: in std_logic;
      device_clk: out std_logic
     );
    end component;

    signal device_clk: std_logic;
    signal rst_i: std_logic;
begin
    DEVICE: entity work.transmitter_wrapper port map(
        device_clk, SYNC, SYSREF, rst_i, sample, scramble_enable, serial_data, state_out, test_enable
    );
    
    CLK_COMP: component clk_wiz_0 port map(
      CLK_IN1_D_clk_p, CLK_IN1_D_clk_n, device_clk
    );
    
    rst_i <= not rst;
end Behavioral;
