-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Mar 22 12:15:20 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_local_clock_generator_0_0/transmitter_local_clock_generator_0_0_sim_netlist.vhdl
-- Design      : transmitter_local_clock_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_local_clock_generator_0_0_local_clock_generator is
  port (
    sample_clk : out STD_LOGIC;
    frame_clk : out STD_LOGIC;
    frame_end : out STD_LOGIC;
    character_clk : out STD_LOGIC;
    multiframe_start : out STD_LOGIC;
    LMF_clk : out STD_LOGIC;
    multiframe_end : out STD_LOGIC;
    SYSREF : in STD_LOGIC;
    device_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_local_clock_generator_0_0_local_clock_generator : entity is "local_clock_generator";
end transmitter_local_clock_generator_0_0_local_clock_generator;

architecture STRUCTURE of transmitter_local_clock_generator_0_0_local_clock_generator is
  signal LMF_clk_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LMF_clk_counter1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \LMF_clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \LMF_clk_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \LMF_clk_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \LMF_clk_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \LMF_clk_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal LMF_clk_counter_0 : STD_LOGIC;
  signal SYSREF_prev : STD_LOGIC;
  signal character_clk_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \character_clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \character_clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \character_clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal frame_clk_counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal frame_clk_counter1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \frame_clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_clk_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal multiframe_start_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal sample_clk_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sample_clk_counter1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of LMF_clk_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LMF_clk_counter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \LMF_clk_counter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \LMF_clk_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LMF_clk_counter[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LMF_clk_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LMF_clk_counter[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LMF_clk_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LMF_clk_counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LMF_clk_counter[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \character_clk_counter[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \character_clk_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of frame_clk0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_clk_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame_clk_counter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame_clk_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_clk_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_end__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of multiframe_end_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of multiframe_start_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sample_clk0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sample_clk_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sample_clk_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample_clk_counter[3]_i_2\ : label is "soft_lutpair6";
begin
LMF_clk_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => LMF_clk_counter(6),
      I1 => LMF_clk_counter(5),
      I2 => LMF_clk_counter(4),
      I3 => LMF_clk_counter(3),
      I4 => LMF_clk_counter(7),
      O => LMF_clk
    );
\LMF_clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LMF_clk_counter(0),
      O => LMF_clk_counter1(0)
    );
\LMF_clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => LMF_clk_counter(0),
      I1 => LMF_clk_counter(1),
      O => LMF_clk_counter1(1)
    );
\LMF_clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => LMF_clk_counter(0),
      I1 => LMF_clk_counter(1),
      I2 => LMF_clk_counter(2),
      O => LMF_clk_counter1(2)
    );
\LMF_clk_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => LMF_clk_counter(1),
      I1 => LMF_clk_counter(0),
      I2 => LMF_clk_counter(2),
      I3 => LMF_clk_counter(3),
      O => LMF_clk_counter1(3)
    );
\LMF_clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"700F0FE0"
    )
        port map (
      I0 => LMF_clk_counter(6),
      I1 => LMF_clk_counter(5),
      I2 => LMF_clk_counter(7),
      I3 => LMF_clk_counter(4),
      I4 => \LMF_clk_counter[7]_i_2_n_0\,
      O => \LMF_clk_counter[4]_i_1_n_0\
    );
\LMF_clk_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D42BD40"
    )
        port map (
      I0 => LMF_clk_counter(7),
      I1 => LMF_clk_counter(4),
      I2 => \LMF_clk_counter[7]_i_2_n_0\,
      I3 => LMF_clk_counter(5),
      I4 => LMF_clk_counter(6),
      O => \LMF_clk_counter[5]_i_1_n_0\
    );
\LMF_clk_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFD4000"
    )
        port map (
      I0 => LMF_clk_counter(7),
      I1 => LMF_clk_counter(4),
      I2 => \LMF_clk_counter[7]_i_2_n_0\,
      I3 => LMF_clk_counter(5),
      I4 => LMF_clk_counter(6),
      O => \LMF_clk_counter[6]_i_1_n_0\
    );
\LMF_clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000002"
    )
        port map (
      I0 => LMF_clk_counter(7),
      I1 => LMF_clk_counter(4),
      I2 => \LMF_clk_counter[7]_i_2_n_0\,
      I3 => LMF_clk_counter(5),
      I4 => LMF_clk_counter(6),
      O => \LMF_clk_counter[7]_i_1_n_0\
    );
\LMF_clk_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => LMF_clk_counter(3),
      I1 => LMF_clk_counter(1),
      I2 => LMF_clk_counter(0),
      I3 => LMF_clk_counter(2),
      O => \LMF_clk_counter[7]_i_2_n_0\
    );
\LMF_clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => LMF_clk_counter1(0),
      Q => LMF_clk_counter(0),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => LMF_clk_counter1(1),
      Q => LMF_clk_counter(1),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => LMF_clk_counter1(2),
      Q => LMF_clk_counter(2),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => LMF_clk_counter1(3),
      Q => LMF_clk_counter(3),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \LMF_clk_counter[4]_i_1_n_0\,
      Q => LMF_clk_counter(4),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \LMF_clk_counter[5]_i_1_n_0\,
      Q => LMF_clk_counter(5),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \LMF_clk_counter[6]_i_1_n_0\,
      Q => LMF_clk_counter(6),
      R => LMF_clk_counter_0
    );
\LMF_clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \LMF_clk_counter[7]_i_1_n_0\,
      Q => LMF_clk_counter(7),
      R => LMF_clk_counter_0
    );
SYSREF_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => device_clk,
      CE => '1',
      D => SYSREF,
      Q => SYSREF_prev,
      R => '0'
    );
character_clk_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => character_clk_counter(2),
      O => character_clk
    );
\character_clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => character_clk_counter(0),
      O => \character_clk_counter[0]_i_1_n_0\
    );
\character_clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => character_clk_counter(0),
      I1 => character_clk_counter(1),
      O => \character_clk_counter[1]_i_1_n_0\
    );
\character_clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => character_clk_counter(0),
      I1 => character_clk_counter(1),
      I2 => character_clk_counter(2),
      O => \character_clk_counter[2]_i_1_n_0\
    );
\character_clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \character_clk_counter[0]_i_1_n_0\,
      Q => character_clk_counter(0),
      R => LMF_clk_counter_0
    );
\character_clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \character_clk_counter[1]_i_1_n_0\,
      Q => character_clk_counter(1),
      R => LMF_clk_counter_0
    );
\character_clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \character_clk_counter[2]_i_1_n_0\,
      Q => character_clk_counter(2),
      R => LMF_clk_counter_0
    );
frame_clk0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => frame_clk_counter(4),
      I1 => frame_clk_counter(3),
      I2 => frame_clk_counter(2),
      O => frame_clk
    );
\frame_clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_clk_counter(0),
      O => frame_clk_counter1(0)
    );
\frame_clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => frame_clk_counter(0),
      I1 => frame_clk_counter(1),
      O => frame_clk_counter1(1)
    );
\frame_clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => frame_clk_counter(1),
      I1 => frame_clk_counter(0),
      I2 => frame_clk_counter(2),
      O => \frame_clk_counter[2]_i_1_n_0\
    );
\frame_clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14444444"
    )
        port map (
      I0 => frame_clk_counter(4),
      I1 => frame_clk_counter(3),
      I2 => frame_clk_counter(2),
      I3 => frame_clk_counter(0),
      I4 => frame_clk_counter(1),
      O => \frame_clk_counter[3]_i_1_n_0\
    );
\frame_clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42222222"
    )
        port map (
      I0 => frame_clk_counter(4),
      I1 => frame_clk_counter(3),
      I2 => frame_clk_counter(2),
      I3 => frame_clk_counter(0),
      I4 => frame_clk_counter(1),
      O => \frame_clk_counter[4]_i_1_n_0\
    );
\frame_clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => frame_clk_counter1(0),
      Q => frame_clk_counter(0),
      R => LMF_clk_counter_0
    );
\frame_clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => frame_clk_counter1(1),
      Q => frame_clk_counter(1),
      R => LMF_clk_counter_0
    );
\frame_clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \frame_clk_counter[2]_i_1_n_0\,
      Q => frame_clk_counter(2),
      R => LMF_clk_counter_0
    );
\frame_clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \frame_clk_counter[3]_i_1_n_0\,
      Q => frame_clk_counter(3),
      R => LMF_clk_counter_0
    );
\frame_clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => \frame_clk_counter[4]_i_1_n_0\,
      Q => frame_clk_counter(4),
      R => LMF_clk_counter_0
    );
\frame_end__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => frame_clk_counter(3),
      I1 => frame_clk_counter(4),
      I2 => frame_clk_counter(2),
      I3 => frame_clk_counter(0),
      I4 => frame_clk_counter(1),
      O => frame_end
    );
multiframe_end_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => LMF_clk_counter(7),
      I1 => LMF_clk_counter(5),
      I2 => LMF_clk_counter(6),
      I3 => LMF_clk_counter(3),
      I4 => LMF_clk_counter(4),
      O => multiframe_end
    );
multiframe_start_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => LMF_clk_counter(3),
      I1 => LMF_clk_counter(2),
      I2 => LMF_clk_counter(1),
      I3 => LMF_clk_counter(0),
      I4 => multiframe_start_INST_0_i_1_n_0,
      O => multiframe_start
    );
multiframe_start_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => LMF_clk_counter(5),
      I1 => LMF_clk_counter(4),
      I2 => LMF_clk_counter(7),
      I3 => LMF_clk_counter(6),
      O => multiframe_start_INST_0_i_1_n_0
    );
sample_clk0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => sample_clk_counter(3),
      I1 => sample_clk_counter(2),
      I2 => sample_clk_counter(1),
      O => sample_clk
    );
\sample_clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sample_clk_counter(0),
      O => sample_clk_counter1(0)
    );
\sample_clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sample_clk_counter(0),
      I1 => sample_clk_counter(1),
      O => sample_clk_counter1(1)
    );
\sample_clk_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => sample_clk_counter(3),
      I1 => sample_clk_counter(2),
      I2 => sample_clk_counter(1),
      I3 => sample_clk_counter(0),
      O => p_0_in(2)
    );
\sample_clk_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => SYSREF_prev,
      I2 => SYSREF,
      O => LMF_clk_counter_0
    );
\sample_clk_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0780"
    )
        port map (
      I0 => sample_clk_counter(1),
      I1 => sample_clk_counter(0),
      I2 => sample_clk_counter(2),
      I3 => sample_clk_counter(3),
      O => p_0_in(3)
    );
\sample_clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => sample_clk_counter1(0),
      Q => sample_clk_counter(0),
      R => LMF_clk_counter_0
    );
\sample_clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => sample_clk_counter1(1),
      Q => sample_clk_counter(1),
      R => LMF_clk_counter_0
    );
\sample_clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => p_0_in(2),
      Q => sample_clk_counter(2),
      R => LMF_clk_counter_0
    );
\sample_clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => device_clk,
      CE => '1',
      D => p_0_in(3),
      Q => sample_clk_counter(3),
      R => LMF_clk_counter_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_local_clock_generator_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_local_clock_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_local_clock_generator_0_0 : entity is "transmitter_local_clock_generator_0_0,local_clock_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_local_clock_generator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_local_clock_generator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_local_clock_generator_0_0 : entity is "local_clock_generator,Vivado 2024.1";
end transmitter_local_clock_generator_0_0;

architecture STRUCTURE of transmitter_local_clock_generator_0_0 is
  signal \^device_clk\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of LMF_clk : signal is "xilinx.com:signal:clock:1.0 LMF_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of LMF_clk : signal is "XIL_INTERFACENAME LMF_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_LMF_clk, INSERT_VIP 0";
  attribute x_interface_info of bit_clk : signal is "xilinx.com:signal:clock:1.0 bit_clk CLK";
  attribute x_interface_parameter of bit_clk : signal is "XIL_INTERFACENAME bit_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_bit_clk, INSERT_VIP 0";
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
  attribute x_interface_info of device_clk : signal is "xilinx.com:signal:clock:1.0 device_clk CLK";
  attribute x_interface_parameter of device_clk : signal is "XIL_INTERFACENAME device_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_device_clk, INSERT_VIP 0";
  attribute x_interface_info of frame_clk : signal is "xilinx.com:signal:clock:1.0 frame_clk CLK";
  attribute x_interface_parameter of frame_clk : signal is "XIL_INTERFACENAME frame_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_frame_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of sample_clk : signal is "xilinx.com:signal:clock:1.0 sample_clk CLK";
  attribute x_interface_parameter of sample_clk : signal is "XIL_INTERFACENAME sample_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_sample_clk, INSERT_VIP 0";
begin
  \^device_clk\ <= device_clk;
  bit_clk <= \^device_clk\;
U0: entity work.transmitter_local_clock_generator_0_0_local_clock_generator
     port map (
      LMF_clk => LMF_clk,
      SYSREF => SYSREF,
      character_clk => character_clk,
      device_clk => \^device_clk\,
      frame_clk => frame_clk,
      frame_end => frame_end,
      multiframe_end => multiframe_end,
      multiframe_start => multiframe_start,
      rst => rst,
      sample_clk => sample_clk
    );
end STRUCTURE;
