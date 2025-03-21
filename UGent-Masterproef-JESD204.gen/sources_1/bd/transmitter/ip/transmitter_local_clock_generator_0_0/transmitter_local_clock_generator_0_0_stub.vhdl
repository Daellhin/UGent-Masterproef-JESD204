-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 12:28:00 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_local_clock_generator_0_0/transmitter_local_clock_generator_0_0_stub.vhdl
-- Design      : transmitter_local_clock_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_local_clock_generator_0_0 is
  Port ( 
    device_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SYSREF : in STD_LOGIC;
    sample_clk : out STD_LOGIC;
    frame_clk : out STD_LOGIC;
    character_clk : out STD_LOGIC;
    bit_clk : out STD_LOGIC;
    LMF_clk : out STD_LOGIC;
    frame_end : out STD_LOGIC;
    multiframe_start : out STD_LOGIC;
    multiframe_end : out STD_LOGIC
  );

end transmitter_local_clock_generator_0_0;

architecture stub of transmitter_local_clock_generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "device_clk,rst,SYSREF,sample_clk,frame_clk,character_clk,bit_clk,LMF_clk,frame_end,multiframe_start,multiframe_end";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "local_clock_generator,Vivado 2024.1";
begin
end;
