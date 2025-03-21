-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:46 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_serializer_0_0/transmitter_serializer_0_0_stub.vhdl
-- Design      : transmitter_serializer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity transmitter_serializer_0_0 is
  Port ( 
    bit_clk : in STD_LOGIC;
    parallel_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    serial_data : out STD_LOGIC
  );

end transmitter_serializer_0_0;

architecture stub of transmitter_serializer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bit_clk,parallel_data[9:0],serial_data";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "serializer,Vivado 2024.1";
begin
end;
