-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_MUX_3x1_1_0/transmitter_MUX_3x1_1_0_sim_netlist.vhdl
-- Design      : transmitter_MUX_3x1_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_MUX_3x1_1_0_MUX_3x1 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_MUX_3x1_1_0_MUX_3x1 : entity is "MUX_3x1";
end transmitter_MUX_3x1_1_0_MUX_3x1;

architecture STRUCTURE of transmitter_MUX_3x1_1_0_MUX_3x1 is
begin
\D[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(0),
      I1 => sel(0),
      I2 => B(0),
      I3 => A(0),
      I4 => sel(1),
      O => D(0)
    );
\D[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(1),
      I1 => sel(0),
      I2 => B(1),
      I3 => A(1),
      I4 => sel(1),
      O => D(1)
    );
\D[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(2),
      I1 => sel(0),
      I2 => B(2),
      I3 => A(2),
      I4 => sel(1),
      O => D(2)
    );
\D[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(3),
      I1 => sel(0),
      I2 => B(3),
      I3 => A(3),
      I4 => sel(1),
      O => D(3)
    );
\D[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(4),
      I1 => sel(0),
      I2 => B(4),
      I3 => A(4),
      I4 => sel(1),
      O => D(4)
    );
\D[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(5),
      I1 => sel(0),
      I2 => B(5),
      I3 => A(5),
      I4 => sel(1),
      O => D(5)
    );
\D[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(6),
      I1 => sel(0),
      I2 => B(6),
      I3 => A(6),
      I4 => sel(1),
      O => D(6)
    );
\D[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => C(7),
      I1 => sel(0),
      I2 => B(7),
      I3 => A(7),
      I4 => sel(1),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_MUX_3x1_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_MUX_3x1_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_MUX_3x1_1_0 : entity is "transmitter_MUX_3x1_1_0,MUX_3x1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_MUX_3x1_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_MUX_3x1_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_MUX_3x1_1_0 : entity is "MUX_3x1,Vivado 2024.1";
end transmitter_MUX_3x1_1_0;

architecture STRUCTURE of transmitter_MUX_3x1_1_0 is
begin
U0: entity work.transmitter_MUX_3x1_1_0_MUX_3x1
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(7 downto 0) => B(7 downto 0),
      C(7 downto 0) => C(7 downto 0),
      D(7 downto 0) => D(7 downto 0),
      sel(1 downto 0) => sel(1 downto 0)
    );
end STRUCTURE;
