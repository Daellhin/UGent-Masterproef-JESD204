-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_sync_decoder_0_0/transmitter_sync_decoder_0_0_stub.vhdl
-- Design      : transmitter_sync_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_sync_decoder_0_0 is
  Port ( 
    frame_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sync : in STD_LOGIC;
    sync_request : out STD_LOGIC
  );

end transmitter_sync_decoder_0_0;

architecture stub of transmitter_sync_decoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "frame_clk,rst,sync,sync_request";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sync_decoder,Vivado 2024.1";
begin
end;
