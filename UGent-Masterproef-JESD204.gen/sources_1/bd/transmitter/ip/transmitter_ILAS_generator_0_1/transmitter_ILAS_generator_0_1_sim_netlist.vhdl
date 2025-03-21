-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_ILAS_generator_0_1/transmitter_ILAS_generator_0_1_sim_netlist.vhdl
-- Design      : transmitter_ILAS_generator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_ILAS_generator_0_1_ILAS_generator is
  port (
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    ILA_last : out STD_LOGIC;
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_ILAS_generator_0_1_ILAS_generator : entity is "ILAS_generator";
end transmitter_ILAS_generator_0_1_ILAS_generator;

architecture STRUCTURE of transmitter_ILAS_generator_0_1_ILAS_generator is
  signal ILA_last_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal control_i_1_n_0 : STD_LOGIC;
  signal \multiframe_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \multiframe_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \multiframe_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \multiframe_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal octet_counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal octet_counter1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \octet_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \octet_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \octet_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \octet_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \octet_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \octet_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \octet_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \octet_value[6]_i_2_n_0\ : STD_LOGIC;
  signal octet_value_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ILA_last_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \multiframe_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \multiframe_counter[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \octet_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \octet_counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \octet_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \octet_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \octet_counter[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \octet_out[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \octet_out[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \octet_out[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \octet_out[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \octet_out[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \octet_out[6]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \octet_out[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \octet_out[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \octet_value[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \octet_value[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \octet_value[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \octet_value[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \octet_value[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \octet_value[6]_i_2\ : label is "soft_lutpair7";
begin
ILA_last_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \octet_out[6]_i_2_n_0\,
      I1 => \multiframe_counter_reg_n_0_[1]\,
      I2 => \multiframe_counter_reg_n_0_[0]\,
      I3 => \multiframe_counter_reg_n_0_[2]\,
      O => ILA_last_i_1_n_0
    );
ILA_last_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => ILA_last_i_1_n_0,
      Q => ILA_last,
      R => '0'
    );
control_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \octet_out[4]_i_2_n_0\,
      I1 => enable,
      I2 => \multiframe_counter_reg_n_0_[0]\,
      I3 => \multiframe_counter_reg_n_0_[2]\,
      I4 => \multiframe_counter_reg_n_0_[1]\,
      O => control_i_1_n_0
    );
control_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => control_i_1_n_0,
      Q => control,
      R => '0'
    );
\multiframe_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multiframe_counter_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\multiframe_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multiframe_counter_reg_n_0_[1]\,
      I1 => \multiframe_counter_reg_n_0_[0]\,
      O => p_2_in(1)
    );
\multiframe_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \octet_out[6]_i_2_n_0\,
      I1 => \multiframe_counter_reg_n_0_[1]\,
      I2 => \multiframe_counter_reg_n_0_[2]\,
      I3 => \multiframe_counter_reg_n_0_[0]\,
      O => \multiframe_counter[2]_i_1_n_0\
    );
\multiframe_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \multiframe_counter_reg_n_0_[2]\,
      I1 => \multiframe_counter_reg_n_0_[0]\,
      I2 => \multiframe_counter_reg_n_0_[1]\,
      O => p_2_in(2)
    );
\multiframe_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \multiframe_counter[2]_i_1_n_0\,
      D => p_2_in(0),
      Q => \multiframe_counter_reg_n_0_[0]\,
      R => clear
    );
\multiframe_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \multiframe_counter[2]_i_1_n_0\,
      D => p_2_in(1),
      Q => \multiframe_counter_reg_n_0_[1]\,
      R => clear
    );
\multiframe_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \multiframe_counter[2]_i_1_n_0\,
      D => p_2_in(2),
      Q => \multiframe_counter_reg_n_0_[2]\,
      R => clear
    );
\octet_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => octet_counter(0),
      O => octet_counter1(0)
    );
\octet_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"43C23C3C"
    )
        port map (
      I0 => octet_counter(2),
      I1 => octet_counter(1),
      I2 => octet_counter(0),
      I3 => octet_counter(3),
      I4 => octet_counter(4),
      O => \octet_counter[1]_i_1_n_0\
    );
\octet_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"67E71808"
    )
        port map (
      I0 => octet_counter(0),
      I1 => octet_counter(1),
      I2 => octet_counter(4),
      I3 => octet_counter(3),
      I4 => octet_counter(2),
      O => \octet_counter[2]_i_1_n_0\
    );
\octet_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AA86AAA"
    )
        port map (
      I0 => octet_counter(3),
      I1 => octet_counter(2),
      I2 => octet_counter(1),
      I3 => octet_counter(0),
      I4 => octet_counter(4),
      O => \octet_counter[3]_i_1_n_0\
    );
\octet_counter[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable,
      O => clear
    );
\octet_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000002"
    )
        port map (
      I0 => octet_counter(4),
      I1 => octet_counter(3),
      I2 => octet_counter(0),
      I3 => octet_counter(1),
      I4 => octet_counter(2),
      O => \octet_counter[4]_i_2_n_0\
    );
\octet_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => octet_counter1(0),
      Q => octet_counter(0),
      R => clear
    );
\octet_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => \octet_counter[1]_i_1_n_0\,
      Q => octet_counter(1),
      R => clear
    );
\octet_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => \octet_counter[2]_i_1_n_0\,
      Q => octet_counter(2),
      R => clear
    );
\octet_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => \octet_counter[3]_i_1_n_0\,
      Q => octet_counter(3),
      R => clear
    );
\octet_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => \octet_counter[4]_i_2_n_0\,
      Q => octet_counter(4),
      R => clear
    );
\octet_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \octet_out[4]_i_2_n_0\,
      I1 => \octet_out[0]_i_2_n_0\,
      O => \octet_out[0]_i_1_n_0\
    );
\octet_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744477547447775"
    )
        port map (
      I0 => octet_value_reg(0),
      I1 => \octet_out[7]_i_2_n_0\,
      I2 => octet_counter(1),
      I3 => octet_counter(2),
      I4 => octet_counter(3),
      I5 => octet_counter(0),
      O => \octet_out[0]_i_2_n_0\
    );
\octet_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \octet_out[4]_i_2_n_0\,
      I1 => \octet_out[1]_i_2_n_0\,
      O => \octet_out[1]_i_1_n_0\
    );
\octet_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777774774477575"
    )
        port map (
      I0 => octet_value_reg(1),
      I1 => \octet_out[7]_i_2_n_0\,
      I2 => octet_counter(1),
      I3 => octet_counter(0),
      I4 => octet_counter(3),
      I5 => octet_counter(2),
      O => \octet_out[1]_i_2_n_0\
    );
\octet_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \octet_out[2]_i_2_n_0\,
      I1 => \octet_out[4]_i_2_n_0\,
      O => \octet_out[2]_i_1_n_0\
    );
\octet_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88AB88888BA"
    )
        port map (
      I0 => octet_value_reg(2),
      I1 => \octet_out[7]_i_2_n_0\,
      I2 => octet_counter(1),
      I3 => octet_counter(2),
      I4 => octet_counter(3),
      I5 => octet_counter(0),
      O => \octet_out[2]_i_2_n_0\
    );
\octet_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C5FF"
    )
        port map (
      I0 => \octet_out[3]_i_2_n_0\,
      I1 => octet_value_reg(3),
      I2 => \octet_out[7]_i_2_n_0\,
      I3 => \octet_out[4]_i_2_n_0\,
      O => \octet_out[3]_i_1_n_0\
    );
\octet_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7A7B2E2F"
    )
        port map (
      I0 => octet_counter(2),
      I1 => octet_counter(3),
      I2 => octet_counter(1),
      I3 => octet_value_reg(3),
      I4 => octet_counter(0),
      O => \octet_out[3]_i_2_n_0\
    );
\octet_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF010000FFFFFFFF"
    )
        port map (
      I0 => octet_counter(1),
      I1 => octet_counter(2),
      I2 => octet_counter(3),
      I3 => \octet_out[7]_i_2_n_0\,
      I4 => octet_value_reg(4),
      I5 => \octet_out[4]_i_2_n_0\,
      O => \octet_out[4]_i_1_n_0\
    );
\octet_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFEFFFFFFFC"
    )
        port map (
      I0 => \octet_out[7]_i_2_n_0\,
      I1 => octet_counter(1),
      I2 => octet_counter(2),
      I3 => octet_counter(3),
      I4 => octet_counter(4),
      I5 => octet_counter(0),
      O => \octet_out[4]_i_2_n_0\
    );
\octet_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EE44F0F0E040"
    )
        port map (
      I0 => octet_counter(0),
      I1 => octet_counter(4),
      I2 => \octet_out[5]_i_2_n_0\,
      I3 => \octet_out[7]_i_2_n_0\,
      I4 => \octet_out[6]_i_3_n_0\,
      I5 => octet_value_reg(5),
      O => \octet_out[5]_i_1_n_0\
    );
\octet_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FF000008"
    )
        port map (
      I0 => octet_counter(4),
      I1 => octet_counter(0),
      I2 => octet_counter(2),
      I3 => octet_counter(1),
      I4 => octet_counter(3),
      I5 => \octet_out[7]_i_2_n_0\,
      O => \octet_out[5]_i_2_n_0\
    );
\octet_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EE44F0F0E040"
    )
        port map (
      I0 => octet_counter(0),
      I1 => octet_counter(4),
      I2 => \octet_out[6]_i_2_n_0\,
      I3 => \octet_out[7]_i_2_n_0\,
      I4 => \octet_out[6]_i_3_n_0\,
      I5 => octet_value_reg(6),
      O => \octet_out[6]_i_1_n_0\
    );
\octet_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => octet_counter(3),
      I1 => octet_counter(2),
      I2 => octet_counter(0),
      I3 => octet_counter(1),
      I4 => octet_counter(4),
      O => \octet_out[6]_i_2_n_0\
    );
\octet_out[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => octet_counter(3),
      I1 => octet_counter(2),
      I2 => octet_counter(1),
      O => \octet_out[6]_i_3_n_0\
    );
\octet_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => octet_counter(3),
      I1 => octet_counter(2),
      I2 => octet_counter(1),
      I3 => octet_counter(0),
      I4 => \octet_out[7]_i_2_n_0\,
      O => \octet_out[7]_i_1_n_0\
    );
\octet_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \multiframe_counter_reg_n_0_[0]\,
      I1 => \multiframe_counter_reg_n_0_[1]\,
      I2 => octet_counter(4),
      I3 => \multiframe_counter_reg_n_0_[2]\,
      O => \octet_out[7]_i_2_n_0\
    );
\octet_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[0]_i_1_n_0\,
      Q => octet_out(0),
      R => '0'
    );
\octet_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[1]_i_1_n_0\,
      Q => octet_out(1),
      R => '0'
    );
\octet_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[2]_i_1_n_0\,
      Q => octet_out(2),
      R => '0'
    );
\octet_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[3]_i_1_n_0\,
      Q => octet_out(3),
      R => '0'
    );
\octet_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[4]_i_1_n_0\,
      Q => octet_out(4),
      R => '0'
    );
\octet_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[5]_i_1_n_0\,
      Q => octet_out(5),
      R => '0'
    );
\octet_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[6]_i_1_n_0\,
      Q => octet_out(6),
      R => '0'
    );
\octet_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_out[7]_i_1_n_0\,
      Q => octet_out(7),
      R => '0'
    );
\octet_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => octet_value_reg(0),
      O => p_0_in(0)
    );
\octet_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => octet_value_reg(0),
      I1 => octet_value_reg(1),
      O => p_0_in(1)
    );
\octet_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => octet_value_reg(2),
      I1 => octet_value_reg(0),
      I2 => octet_value_reg(1),
      O => p_0_in(2)
    );
\octet_value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => octet_value_reg(3),
      I1 => octet_value_reg(2),
      I2 => octet_value_reg(0),
      I3 => octet_value_reg(1),
      O => \octet_value[3]_i_1_n_0\
    );
\octet_value[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => octet_value_reg(4),
      I1 => octet_value_reg(1),
      I2 => octet_value_reg(0),
      I3 => octet_value_reg(2),
      I4 => octet_value_reg(3),
      O => p_0_in(4)
    );
\octet_value[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => octet_value_reg(5),
      I1 => octet_value_reg(3),
      I2 => octet_value_reg(2),
      I3 => octet_value_reg(0),
      I4 => octet_value_reg(1),
      I5 => octet_value_reg(4),
      O => p_0_in(5)
    );
\octet_value[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => octet_value_reg(6),
      I1 => octet_value_reg(5),
      I2 => octet_value_reg(4),
      I3 => \octet_value[6]_i_2_n_0\,
      I4 => octet_value_reg(3),
      O => p_0_in(6)
    );
\octet_value[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => octet_value_reg(1),
      I1 => octet_value_reg(0),
      I2 => octet_value_reg(2),
      O => \octet_value[6]_i_2_n_0\
    );
\octet_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(0),
      Q => octet_value_reg(0),
      R => clear
    );
\octet_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(1),
      Q => octet_value_reg(1),
      R => clear
    );
\octet_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(2),
      Q => octet_value_reg(2),
      R => clear
    );
\octet_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => \octet_value[3]_i_1_n_0\,
      Q => octet_value_reg(3),
      R => clear
    );
\octet_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(4),
      Q => octet_value_reg(4),
      R => clear
    );
\octet_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(5),
      Q => octet_value_reg(5),
      R => clear
    );
\octet_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(6),
      Q => octet_value_reg(6),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_ILAS_generator_0_1 is
  port (
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    ILA_last : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_ILAS_generator_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_ILAS_generator_0_1 : entity is "transmitter_ILAS_generator_0_1,ILAS_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_ILAS_generator_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_ILAS_generator_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_ILAS_generator_0_1 : entity is "ILAS_generator,Vivado 2024.1";
end transmitter_ILAS_generator_0_1;

architecture STRUCTURE of transmitter_ILAS_generator_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
begin
U0: entity work.transmitter_ILAS_generator_0_1_ILAS_generator
     port map (
      ILA_last => ILA_last,
      character_clk => character_clk,
      control => control,
      enable => enable,
      octet_out(7 downto 0) => octet_out(7 downto 0)
    );
end STRUCTURE;
