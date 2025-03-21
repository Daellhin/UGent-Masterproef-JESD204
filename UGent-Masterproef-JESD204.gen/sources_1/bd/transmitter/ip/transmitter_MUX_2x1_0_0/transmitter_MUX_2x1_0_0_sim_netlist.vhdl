-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_MUX_2x1_0_0/transmitter_MUX_2x1_0_0_sim_netlist.vhdl
-- Design      : transmitter_MUX_2x1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_MUX_2x1_0_0_MUX_2x1 is
  port (
    C : out STD_LOGIC_VECTOR ( 11 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_MUX_2x1_0_0_MUX_2x1 : entity is "MUX_2x1";
end transmitter_MUX_2x1_0_0_MUX_2x1;

architecture STRUCTURE of transmitter_MUX_2x1_0_0_MUX_2x1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \C[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \C[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \C[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \C[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \C[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \C[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \C[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \C[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \C[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \C[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \C[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \C[9]_INST_0\ : label is "soft_lutpair4";
begin
\C[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => sel,
      O => C(0)
    );
\C[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => sel,
      O => C(10)
    );
\C[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      I2 => sel,
      O => C(11)
    );
\C[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      I2 => sel,
      O => C(1)
    );
\C[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => sel,
      O => C(2)
    );
\C[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => sel,
      O => C(3)
    );
\C[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => sel,
      O => C(4)
    );
\C[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      I2 => sel,
      O => C(5)
    );
\C[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => sel,
      O => C(6)
    );
\C[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      I2 => sel,
      O => C(7)
    );
\C[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => sel,
      O => C(8)
    );
\C[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => sel,
      O => C(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_MUX_2x1_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sel : in STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_MUX_2x1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_MUX_2x1_0_0 : entity is "transmitter_MUX_2x1_0_0,MUX_2x1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_MUX_2x1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_MUX_2x1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_MUX_2x1_0_0 : entity is "MUX_2x1,Vivado 2024.1";
end transmitter_MUX_2x1_0_0;

architecture STRUCTURE of transmitter_MUX_2x1_0_0 is
begin
U0: entity work.transmitter_MUX_2x1_0_0_MUX_2x1
     port map (
      A(11 downto 0) => A(11 downto 0),
      B(11 downto 0) => B(11 downto 0),
      C(11 downto 0) => C(11 downto 0),
      sel => sel
    );
end STRUCTURE;
