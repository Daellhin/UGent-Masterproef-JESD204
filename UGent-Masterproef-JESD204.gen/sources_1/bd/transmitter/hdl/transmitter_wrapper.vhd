--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Mar  2 12:18:47 2025
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
    SYNC : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_clk_0 : out STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    serial_data_0 : out STD_LOGIC;
    source_clk : in STD_LOGIC
  );
end transmitter_wrapper;

architecture STRUCTURE of transmitter_wrapper is
  component transmitter is
  port (
    SYNC : in STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    source_clk : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    serial_data_0 : out STD_LOGIC;
    sample_clk_0 : out STD_LOGIC
  );
  end component transmitter;
begin
transmitter_i: component transmitter
     port map (
      SYNC => SYNC,
      rst => rst,
      sample(11 downto 0) => sample(11 downto 0),
      sample_clk_0 => sample_clk_0,
      scramble_enable => scramble_enable,
      serial_data_0 => serial_data_0,
      source_clk => source_clk
    );
end STRUCTURE;
