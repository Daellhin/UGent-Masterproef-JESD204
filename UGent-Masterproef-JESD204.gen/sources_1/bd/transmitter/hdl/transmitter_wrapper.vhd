--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Mar 21 11:09:58 2025
--Host        : G16 running 64-bit major release  (build 9200)
--Command     : generate_target transmitter_wrapper.bd
--Design      : transmitter_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_wrapper is
  port (
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    SYNC : in STD_LOGIC;
    SYSREF : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    scramble_enable : in STD_LOGIC;
    serial_data : out STD_LOGIC;
    state_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    test_enable : in STD_LOGIC
  );
end transmitter_wrapper;

architecture STRUCTURE of transmitter_wrapper is
  component transmitter is
  port (
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    SYNC : in STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    serial_data : out STD_LOGIC;
    SYSREF : in STD_LOGIC;
    test_enable : in STD_LOGIC;
    state_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component transmitter;
begin
transmitter_i: component transmitter
     port map (
      CLK_IN1_D_clk_n => CLK_IN1_D_clk_n,
      CLK_IN1_D_clk_p => CLK_IN1_D_clk_p,
      SYNC => SYNC,
      SYSREF => SYSREF,
      rst => rst,
      sample(11 downto 0) => sample(11 downto 0),
      scramble_enable => scramble_enable,
      serial_data => serial_data,
      state_out_0(1 downto 0) => state_out_0(1 downto 0),
      test_enable => test_enable
    );
end STRUCTURE;
