-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_CGS_Generator_0_0/transmitter_CGS_Generator_0_0_stub.vhdl
-- Design      : transmitter_CGS_Generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_CGS_Generator_0_0 is
  Port ( 
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    CGS_complete : out STD_LOGIC
  );

end transmitter_CGS_Generator_0_0;

architecture stub of transmitter_CGS_Generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "character_clk,enable,octet_out[7:0],control,CGS_complete";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CGS_Generator,Vivado 2024.1";
begin
end;
