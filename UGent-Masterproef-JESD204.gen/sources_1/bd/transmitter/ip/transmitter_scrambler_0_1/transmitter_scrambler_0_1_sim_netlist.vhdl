-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:42 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_scrambler_0_1/transmitter_scrambler_0_1_sim_netlist.vhdl
-- Design      : transmitter_scrambler_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_scrambler_0_1 is
  port (
    scramble_enable : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_scrambler_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_scrambler_0_1 : entity is "transmitter_scrambler_0_1,scrambler,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_scrambler_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_scrambler_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_scrambler_0_1 : entity is "scrambler,Vivado 2024.1";
end transmitter_scrambler_0_1;

architecture STRUCTURE of transmitter_scrambler_0_1 is
  signal \^octet_in\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^octet_in\(7 downto 0) <= octet_in(7 downto 0);
  octet_out(7 downto 0) <= \^octet_in\(7 downto 0);
end STRUCTURE;
