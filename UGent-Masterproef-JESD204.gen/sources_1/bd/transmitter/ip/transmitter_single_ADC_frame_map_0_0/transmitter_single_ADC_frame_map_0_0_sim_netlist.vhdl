-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:44 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_single_ADC_frame_map_0_0/transmitter_single_ADC_frame_map_0_0_sim_netlist.vhdl
-- Design      : transmitter_single_ADC_frame_map_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_single_ADC_frame_map_0_0_single_ADC_frame_mapper is
  port (
    octet : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_clk : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_single_ADC_frame_map_0_0_single_ADC_frame_mapper : entity is "single_ADC_frame_mapper";
end transmitter_single_ADC_frame_map_0_0_single_ADC_frame_mapper;

architecture STRUCTURE of transmitter_single_ADC_frame_map_0_0_single_ADC_frame_mapper is
  signal B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RSTB : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \octet[0]_i_2_n_0\ : STD_LOGIC;
  signal \octet[0]_i_3_n_0\ : STD_LOGIC;
  signal \octet[1]_i_2_n_0\ : STD_LOGIC;
  signal \octet[1]_i_3_n_0\ : STD_LOGIC;
  signal \octet[2]_i_2_n_0\ : STD_LOGIC;
  signal \octet[2]_i_3_n_0\ : STD_LOGIC;
  signal \octet[3]_i_2_n_0\ : STD_LOGIC;
  signal \octet[3]_i_3_n_0\ : STD_LOGIC;
  signal \octet[4]_i_2_n_0\ : STD_LOGIC;
  signal \octet[4]_i_3_n_0\ : STD_LOGIC;
  signal \octet[5]_i_2_n_0\ : STD_LOGIC;
  signal \octet[5]_i_3_n_0\ : STD_LOGIC;
  signal \octet[6]_i_2_n_0\ : STD_LOGIC;
  signal \octet[6]_i_3_n_0\ : STD_LOGIC;
  signal \octet[7]_i_2_n_0\ : STD_LOGIC;
  signal \octet[7]_i_3_n_0\ : STD_LOGIC;
  signal \octet_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal \octet_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \octet_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \octet_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \octet_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \octet_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sample_buffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[35]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[39]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[40]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[41]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[42]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[43]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[44]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[45]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[46]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[47]_i_1_n_0\ : STD_LOGIC;
  signal \sample_buffer[47]_i_2_n_0\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \sample_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal sample_buffered : STD_LOGIC;
  signal sample_buffered_i_1_n_0 : STD_LOGIC;
  signal sample_pointer : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \octet_pointer[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \octet_pointer[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_buffer[40]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_buffer[41]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_buffer[42]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_buffer[43]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_buffer[44]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_buffer[45]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_buffer[46]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_buffer[47]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_pointer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_pointer[1]_i_2\ : label is "soft_lutpair5";
begin
\octet[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(0),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[0]\,
      O => \octet[0]_i_2_n_0\
    );
\octet[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(0),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(0),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[0]_i_3_n_0\
    );
\octet[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(1),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[1]\,
      O => \octet[1]_i_2_n_0\
    );
\octet[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(1),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(1),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[1]_i_3_n_0\
    );
\octet[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(2),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[2]\,
      O => \octet[2]_i_2_n_0\
    );
\octet[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(2),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(2),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[2]_i_3_n_0\
    );
\octet[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(3),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[3]\,
      O => \octet[3]_i_2_n_0\
    );
\octet[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(3),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(3),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[3]_i_3_n_0\
    );
\octet[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(4),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[4]\,
      O => \octet[4]_i_2_n_0\
    );
\octet[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(4),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(4),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[4]_i_3_n_0\
    );
\octet[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(5),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[5]\,
      O => \octet[5]_i_2_n_0\
    );
\octet[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(5),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(5),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[5]_i_3_n_0\
    );
\octet[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(6),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[6]\,
      O => \octet[6]_i_2_n_0\
    );
\octet[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(6),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(6),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[6]_i_3_n_0\
    );
\octet[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(7),
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => data1(7),
      I4 => \octet_pointer_reg_n_0_[0]\,
      I5 => \sample_buffer_reg_n_0_[7]\,
      O => \octet[7]_i_2_n_0\
    );
\octet[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => data4(7),
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => data5(7),
      I3 => \octet_pointer_reg_n_0_[1]\,
      O => \octet[7]_i_3_n_0\
    );
\octet_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \octet_pointer_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\octet_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \octet_pointer_reg_n_0_[0]\,
      I1 => \octet_pointer_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\octet_pointer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAAAA"
    )
        port map (
      I0 => rst,
      I1 => \octet_pointer_reg_n_0_[0]\,
      I2 => \octet_pointer_reg_n_0_[1]\,
      I3 => \octet_pointer_reg_n_0_[2]\,
      I4 => sample_buffered,
      O => \octet_pointer[2]_i_1_n_0\
    );
\octet_pointer[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \octet_pointer_reg_n_0_[0]\,
      I1 => \octet_pointer_reg_n_0_[1]\,
      I2 => \octet_pointer_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\octet_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => sample_buffered,
      D => p_1_in(0),
      Q => \octet_pointer_reg_n_0_[0]\,
      R => \octet_pointer[2]_i_1_n_0\
    );
\octet_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => sample_buffered,
      D => p_1_in(1),
      Q => \octet_pointer_reg_n_0_[1]\,
      R => \octet_pointer[2]_i_1_n_0\
    );
\octet_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => sample_buffered,
      D => p_1_in(2),
      Q => \octet_pointer_reg_n_0_[2]\,
      R => \octet_pointer[2]_i_1_n_0\
    );
\octet_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[0]_i_1_n_0\,
      Q => octet(0),
      R => '0'
    );
\octet_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[0]_i_2_n_0\,
      I1 => \octet[0]_i_3_n_0\,
      O => \octet_reg[0]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[1]_i_1_n_0\,
      Q => octet(1),
      R => '0'
    );
\octet_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[1]_i_2_n_0\,
      I1 => \octet[1]_i_3_n_0\,
      O => \octet_reg[1]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[2]_i_1_n_0\,
      Q => octet(2),
      R => '0'
    );
\octet_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[2]_i_2_n_0\,
      I1 => \octet[2]_i_3_n_0\,
      O => \octet_reg[2]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[3]_i_1_n_0\,
      Q => octet(3),
      R => '0'
    );
\octet_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[3]_i_2_n_0\,
      I1 => \octet[3]_i_3_n_0\,
      O => \octet_reg[3]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[4]_i_1_n_0\,
      Q => octet(4),
      R => '0'
    );
\octet_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[4]_i_2_n_0\,
      I1 => \octet[4]_i_3_n_0\,
      O => \octet_reg[4]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[5]_i_1_n_0\,
      Q => octet(5),
      R => '0'
    );
\octet_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[5]_i_2_n_0\,
      I1 => \octet[5]_i_3_n_0\,
      O => \octet_reg[5]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[6]_i_1_n_0\,
      Q => octet(6),
      R => '0'
    );
\octet_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[6]_i_2_n_0\,
      I1 => \octet[6]_i_3_n_0\,
      O => \octet_reg[6]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\octet_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \octet_reg[7]_i_1_n_0\,
      Q => octet(7),
      R => '0'
    );
\octet_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \octet[7]_i_2_n_0\,
      I1 => \octet[7]_i_3_n_0\,
      O => \octet_reg[7]_i_1_n_0\,
      S => \octet_pointer_reg_n_0_[2]\
    );
\sample_buffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_pointer(1),
      I1 => sample_pointer(0),
      O => \sample_buffer[11]_i_1_n_0\
    );
\sample_buffer[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => sample_pointer(1),
      I1 => sample_pointer(0),
      O => \sample_buffer[23]_i_1_n_0\
    );
\sample_buffer[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sample_pointer(1),
      I1 => sample_pointer(0),
      O => \sample_buffer[31]_i_1_n_0\
    );
\sample_buffer[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => sample_pointer(0),
      I1 => sample_pointer(1),
      O => \sample_buffer[35]_i_1_n_0\
    );
\sample_buffer[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sample_pointer(0),
      I1 => sample_pointer(1),
      O => \sample_buffer[39]_i_1_n_0\
    );
\sample_buffer[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C00A"
    )
        port map (
      I0 => sample(8),
      I1 => sample(4),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[40]_i_1_n_0\
    );
\sample_buffer[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C00A"
    )
        port map (
      I0 => sample(9),
      I1 => sample(5),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[41]_i_1_n_0\
    );
\sample_buffer[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C00A"
    )
        port map (
      I0 => sample(10),
      I1 => sample(6),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[42]_i_1_n_0\
    );
\sample_buffer[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C00A"
    )
        port map (
      I0 => sample(11),
      I1 => sample(7),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[43]_i_1_n_0\
    );
\sample_buffer[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => sample(0),
      I1 => sample(8),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[44]_i_1_n_0\
    );
\sample_buffer[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => sample(1),
      I1 => sample(9),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[45]_i_1_n_0\
    );
\sample_buffer[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => sample(2),
      I1 => sample(10),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[46]_i_1_n_0\
    );
\sample_buffer[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sample_pointer(1),
      I1 => sample_pointer(0),
      O => \sample_buffer[47]_i_1_n_0\
    );
\sample_buffer[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => sample(3),
      I1 => sample(11),
      I2 => sample_pointer(0),
      I3 => sample_pointer(1),
      O => \sample_buffer[47]_i_2_n_0\
    );
\sample_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(0),
      Q => \sample_buffer_reg_n_0_[0]\,
      R => '0'
    );
\sample_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => \sample_buffer[42]_i_1_n_0\,
      Q => data1(2),
      R => '0'
    );
\sample_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => \sample_buffer[43]_i_1_n_0\,
      Q => data1(3),
      R => '0'
    );
\sample_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => \sample_buffer[44]_i_1_n_0\,
      Q => data1(4),
      R => '0'
    );
\sample_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => \sample_buffer[45]_i_1_n_0\,
      Q => data1(5),
      R => '0'
    );
\sample_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => \sample_buffer[46]_i_1_n_0\,
      Q => data1(6),
      R => '0'
    );
\sample_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => \sample_buffer[47]_i_2_n_0\,
      Q => data1(7),
      R => '0'
    );
\sample_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(4),
      Q => data2(0),
      R => '0'
    );
\sample_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(5),
      Q => data2(1),
      R => '0'
    );
\sample_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(6),
      Q => data2(2),
      R => '0'
    );
\sample_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(7),
      Q => data2(3),
      R => '0'
    );
\sample_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(1),
      Q => \sample_buffer_reg_n_0_[1]\,
      R => '0'
    );
\sample_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(8),
      Q => data2(4),
      R => '0'
    );
\sample_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(9),
      Q => data2(5),
      R => '0'
    );
\sample_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(10),
      Q => data2(6),
      R => '0'
    );
\sample_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[23]_i_1_n_0\,
      D => sample(11),
      Q => data2(7),
      R => '0'
    );
\sample_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(0),
      Q => data3(0),
      R => '0'
    );
\sample_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(1),
      Q => data3(1),
      R => '0'
    );
\sample_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(2),
      Q => data3(2),
      R => '0'
    );
\sample_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(3),
      Q => data3(3),
      R => '0'
    );
\sample_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(4),
      Q => data3(4),
      R => '0'
    );
\sample_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(5),
      Q => data3(5),
      R => '0'
    );
\sample_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(2),
      Q => \sample_buffer_reg_n_0_[2]\,
      R => '0'
    );
\sample_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(6),
      Q => data3(6),
      R => '0'
    );
\sample_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[31]_i_1_n_0\,
      D => sample(7),
      Q => data3(7),
      R => '0'
    );
\sample_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[35]_i_1_n_0\,
      D => sample(8),
      Q => data4(0),
      R => '0'
    );
\sample_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[35]_i_1_n_0\,
      D => sample(9),
      Q => data4(1),
      R => '0'
    );
\sample_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[35]_i_1_n_0\,
      D => sample(10),
      Q => data4(2),
      R => '0'
    );
\sample_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[35]_i_1_n_0\,
      D => sample(11),
      Q => data4(3),
      R => '0'
    );
\sample_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[39]_i_1_n_0\,
      D => sample(0),
      Q => data4(4),
      R => '0'
    );
\sample_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[39]_i_1_n_0\,
      D => sample(1),
      Q => data4(5),
      R => '0'
    );
\sample_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[39]_i_1_n_0\,
      D => sample(2),
      Q => data4(6),
      R => '0'
    );
\sample_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[39]_i_1_n_0\,
      D => sample(3),
      Q => data4(7),
      R => '0'
    );
\sample_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(3),
      Q => \sample_buffer_reg_n_0_[3]\,
      R => '0'
    );
\sample_buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[40]_i_1_n_0\,
      Q => data5(0),
      R => '0'
    );
\sample_buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[41]_i_1_n_0\,
      Q => data5(1),
      R => '0'
    );
\sample_buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[42]_i_1_n_0\,
      Q => data5(2),
      R => '0'
    );
\sample_buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[43]_i_1_n_0\,
      Q => data5(3),
      R => '0'
    );
\sample_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[44]_i_1_n_0\,
      Q => data5(4),
      R => '0'
    );
\sample_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[45]_i_1_n_0\,
      Q => data5(5),
      R => '0'
    );
\sample_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[46]_i_1_n_0\,
      Q => data5(6),
      R => '0'
    );
\sample_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[47]_i_1_n_0\,
      D => \sample_buffer[47]_i_2_n_0\,
      Q => data5(7),
      R => '0'
    );
\sample_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(4),
      Q => \sample_buffer_reg_n_0_[4]\,
      R => '0'
    );
\sample_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(5),
      Q => \sample_buffer_reg_n_0_[5]\,
      R => '0'
    );
\sample_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(6),
      Q => \sample_buffer_reg_n_0_[6]\,
      R => '0'
    );
\sample_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => sample(7),
      Q => \sample_buffer_reg_n_0_[7]\,
      R => '0'
    );
\sample_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => \sample_buffer[40]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\sample_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sample_clk,
      CE => \sample_buffer[11]_i_1_n_0\,
      D => \sample_buffer[41]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
sample_buffered_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BA"
    )
        port map (
      I0 => sample_buffered,
      I1 => sample_pointer(1),
      I2 => sample_pointer(0),
      I3 => rst,
      O => sample_buffered_i_1_n_0
    );
sample_buffered_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => sample_buffered_i_1_n_0,
      Q => sample_buffered,
      R => '0'
    );
\sample_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_pointer(0),
      O => B(0)
    );
\sample_pointer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => sample_pointer(0),
      I1 => sample_pointer(1),
      I2 => rst,
      O => RSTB
    );
\sample_pointer[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sample_pointer(1),
      I1 => sample_pointer(0),
      O => B(1)
    );
\sample_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => B(0),
      Q => sample_pointer(0),
      R => RSTB
    );
\sample_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => B(1),
      Q => sample_pointer(1),
      R => RSTB
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_single_ADC_frame_map_0_0 is
  port (
    sample_clk : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    octet : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_single_ADC_frame_map_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_single_ADC_frame_map_0_0 : entity is "transmitter_single_ADC_frame_map_0_0,single_ADC_frame_mapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_single_ADC_frame_map_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_single_ADC_frame_map_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_single_ADC_frame_map_0_0 : entity is "single_ADC_frame_mapper,Vivado 2024.1";
end transmitter_single_ADC_frame_map_0_0;

architecture STRUCTURE of transmitter_single_ADC_frame_map_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of sample_clk : signal is "xilinx.com:signal:clock:1.0 sample_clk CLK";
  attribute x_interface_parameter of sample_clk : signal is "XIL_INTERFACENAME sample_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_sample_clk, INSERT_VIP 0";
begin
U0: entity work.transmitter_single_ADC_frame_map_0_0_single_ADC_frame_mapper
     port map (
      character_clk => character_clk,
      octet(7 downto 0) => octet(7 downto 0),
      rst => rst,
      sample(11 downto 0) => sample(11 downto 0),
      sample_clk => sample_clk
    );
end STRUCTURE;
