-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:42 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_alignment_substituti_0_1/transmitter_alignment_substituti_0_1_sim_netlist.vhdl
-- Design      : transmitter_alignment_substituti_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_alignment_substituti_0_1_alignment_substitution is
  port (
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    frame_end : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    character_clk : in STD_LOGIC;
    multiframe_end : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_alignment_substituti_0_1_alignment_substitution : entity is "alignment_substitution";
end transmitter_alignment_substituti_0_1_alignment_substitution;

architecture STRUCTURE of transmitter_alignment_substituti_0_1_alignment_substitution is
  signal control_i_1_n_0 : STD_LOGIC;
  signal last_octet : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \octet_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \octet_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \octet_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \octet_out[7]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
control_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => frame_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
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
\last_octet_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(0),
      Q => last_octet(0),
      R => '0'
    );
\last_octet_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(1),
      Q => last_octet(1),
      R => '0'
    );
\last_octet_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(2),
      Q => last_octet(2),
      R => '0'
    );
\last_octet_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(3),
      Q => last_octet(3),
      R => '0'
    );
\last_octet_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(4),
      Q => last_octet(4),
      R => '0'
    );
\last_octet_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(5),
      Q => last_octet(5),
      R => '0'
    );
\last_octet_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(6),
      Q => last_octet(6),
      R => '0'
    );
\last_octet_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => octet_in(7),
      Q => last_octet(7),
      R => '0'
    );
\octet_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00000000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(0),
      O => p_0_in(0)
    );
\octet_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00000000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(1),
      O => p_0_in(1)
    );
\octet_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(2),
      O => p_0_in(2)
    );
\octet_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(3),
      O => p_0_in(3)
    );
\octet_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(4),
      O => p_0_in(4)
    );
\octet_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(5),
      O => p_0_in(5)
    );
\octet_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(6),
      O => p_0_in(6)
    );
\octet_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => frame_end,
      I1 => \octet_out[7]_i_3_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_5_n_0\,
      I4 => multiframe_end,
      O => \octet_out[7]_i_1_n_0\
    );
\octet_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => multiframe_end,
      I1 => \octet_out[7]_i_5_n_0\,
      I2 => \octet_out[7]_i_4_n_0\,
      I3 => \octet_out[7]_i_3_n_0\,
      I4 => frame_end,
      I5 => octet_in(7),
      O => p_0_in(7)
    );
\octet_out[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => last_octet(6),
      I1 => octet_in(6),
      I2 => last_octet(7),
      I3 => octet_in(7),
      O => \octet_out[7]_i_3_n_0\
    );
\octet_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_octet(3),
      I1 => octet_in(3),
      I2 => octet_in(5),
      I3 => last_octet(5),
      I4 => octet_in(4),
      I5 => last_octet(4),
      O => \octet_out[7]_i_4_n_0\
    );
\octet_out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_octet(0),
      I1 => octet_in(0),
      I2 => octet_in(2),
      I3 => last_octet(2),
      I4 => octet_in(1),
      I5 => last_octet(1),
      O => \octet_out[7]_i_5_n_0\
    );
\octet_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(0),
      Q => octet_out(0),
      R => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(1),
      Q => octet_out(1),
      R => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(2),
      Q => octet_out(2),
      S => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(3),
      Q => octet_out(3),
      S => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(4),
      Q => octet_out(4),
      S => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(5),
      Q => octet_out(5),
      S => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(6),
      Q => octet_out(6),
      S => \octet_out[7]_i_1_n_0\
    );
\octet_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_0_in(7),
      Q => octet_out(7),
      R => \octet_out[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_alignment_substituti_0_1 is
  port (
    character_clk : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scramble_enable : in STD_LOGIC;
    frame_end : in STD_LOGIC;
    multiframe_end : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_alignment_substituti_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_alignment_substituti_0_1 : entity is "transmitter_alignment_substituti_0_1,alignment_substitution,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_alignment_substituti_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_alignment_substituti_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_alignment_substituti_0_1 : entity is "alignment_substitution,Vivado 2024.1";
end transmitter_alignment_substituti_0_1;

architecture STRUCTURE of transmitter_alignment_substituti_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
begin
U0: entity work.transmitter_alignment_substituti_0_1_alignment_substitution
     port map (
      character_clk => character_clk,
      control => control,
      frame_end => frame_end,
      multiframe_end => multiframe_end,
      octet_in(7 downto 0) => octet_in(7 downto 0),
      octet_out(7 downto 0) => octet_out(7 downto 0)
    );
end STRUCTURE;
