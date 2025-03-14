-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 14 09:21:40 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_encoder_wrapper_0_0/transmitter_encoder_wrapper_0_0_sim_netlist.vhdl
-- Design      : transmitter_encoder_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_encoder_wrapper_0_0_encoder is
  port (
    RD : out STD_LOGIC;
    symbol : out STD_LOGIC_VECTOR ( 9 downto 0 );
    invalid_control : out STD_LOGIC;
    octet : in STD_LOGIC_VECTOR ( 7 downto 0 );
    control : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    initial_RD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_encoder_wrapper_0_0_encoder : entity is "encoder";
end transmitter_encoder_wrapper_0_0_encoder;

architecture STRUCTURE of transmitter_encoder_wrapper_0_0_encoder is
  signal \^rd\ : STD_LOGIC;
  signal RD_i_1_n_0 : STD_LOGIC;
  signal RD_i_2_n_0 : STD_LOGIC;
  signal RD_i_3_n_0 : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal invalid_control0 : STD_LOGIC;
  signal invalid_control_i_2_n_0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \symbol[0]_i_2_n_0\ : STD_LOGIC;
  signal \symbol[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbol[3]_i_3_n_0\ : STD_LOGIC;
  signal \symbol[4]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[5]_i_1_n_0\ : STD_LOGIC;
  signal \symbol[9]_i_2_n_0\ : STD_LOGIC;
  signal \symbol[9]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RD_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of RD_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \symbol[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \symbol[3]_i_2\ : label is "soft_lutpair0";
begin
  RD <= \^rd\;
RD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBB8BBB8888B"
    )
        port map (
      I0 => initial_RD,
      I1 => rst,
      I2 => RD_i_2_n_0,
      I3 => RD_i_3_n_0,
      I4 => \symbol[9]_i_2_n_0\,
      I5 => \^rd\,
      O => RD_i_1_n_0
    );
RD_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => octet(6),
      I1 => octet(5),
      I2 => octet(7),
      O => RD_i_2_n_0
    );
RD_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => octet(5),
      I1 => octet(6),
      O => RD_i_3_n_0
    );
RD_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => RD_i_1_n_0,
      Q => \^rd\,
      R => '0'
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111118117977F"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFE"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF007E00FE17"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F171E6"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC4DCDCDDA"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAA2BBD"
    )
        port map (
      I0 => octet(0),
      I1 => octet(1),
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(4),
      I5 => control,
      O => g0_b5_n_0
    );
invalid_control_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control,
      I1 => invalid_control_i_2_n_0,
      O => invalid_control0
    );
invalid_control_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088080008000A000"
    )
        port map (
      I0 => octet(4),
      I1 => RD_i_2_n_0,
      I2 => octet(2),
      I3 => octet(3),
      I4 => octet(1),
      I5 => octet(0),
      O => invalid_control_i_2_n_0
    );
invalid_control_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => invalid_control0,
      Q => invalid_control,
      R => rst
    );
\symbol[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06FFFF06F90000F9"
    )
        port map (
      I0 => octet(5),
      I1 => octet(6),
      I2 => control,
      I3 => \^rd\,
      I4 => \symbol[9]_i_2_n_0\,
      I5 => \symbol[0]_i_2_n_0\,
      O => p_1_out(0)
    );
\symbol[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF03433F"
    )
        port map (
      I0 => \symbol[3]_i_3_n_0\,
      I1 => octet(6),
      I2 => octet(5),
      I3 => octet(7),
      I4 => control,
      O => \symbol[0]_i_2_n_0\
    );
\symbol[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A95A995A96A6A"
    )
        port map (
      I0 => octet(7),
      I1 => octet(5),
      I2 => octet(6),
      I3 => control,
      I4 => \^rd\,
      I5 => \symbol[9]_i_2_n_0\,
      O => p_1_out(1)
    );
\symbol[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3131CEF2CEF23131"
    )
        port map (
      I0 => octet(7),
      I1 => octet(5),
      I2 => octet(6),
      I3 => control,
      I4 => \^rd\,
      I5 => \symbol[9]_i_2_n_0\,
      O => p_1_out(2)
    );
\symbol[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5569AAAAAAAA5569"
    )
        port map (
      I0 => \symbol[3]_i_2_n_0\,
      I1 => octet(5),
      I2 => octet(6),
      I3 => control,
      I4 => \^rd\,
      I5 => \symbol[9]_i_2_n_0\,
      O => p_1_out(3)
    );
\symbol[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45AFF5AF"
    )
        port map (
      I0 => control,
      I1 => \symbol[3]_i_3_n_0\,
      I2 => octet(6),
      I3 => octet(5),
      I4 => octet(7),
      O => \symbol[3]_i_2_n_0\
    );
\symbol[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF97FFFFE9FFFF"
    )
        port map (
      I0 => octet(1),
      I1 => octet(0),
      I2 => octet(2),
      I3 => \^rd\,
      I4 => octet(4),
      I5 => octet(3),
      O => \symbol[3]_i_3_n_0\
    );
\symbol[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A5A9A"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => \symbol[4]_i_1_n_0\
    );
\symbol[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656565656565A565"
    )
        port map (
      I0 => g0_b1_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => \symbol[5]_i_1_n_0\
    );
\symbol[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A5A9A"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => p_1_out(6)
    );
\symbol[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A5A9A"
    )
        port map (
      I0 => g0_b3_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => p_1_out(7)
    );
\symbol[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A5A9A"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => p_1_out(8)
    );
\symbol[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A5A9A"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => \symbol[9]_i_2_n_0\,
      I2 => \^rd\,
      I3 => \symbol[9]_i_3_n_0\,
      I4 => octet(4),
      I5 => octet(3),
      O => p_1_out(9)
    );
\symbol[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E7979F779F7F7FF"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => g0_b0_n_0,
      I2 => g0_b1_n_0,
      I3 => g0_b4_n_0,
      I4 => g0_b5_n_0,
      I5 => g0_b3_n_0,
      O => \symbol[9]_i_2_n_0\
    );
\symbol[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => octet(2),
      I1 => octet(0),
      I2 => octet(1),
      O => \symbol[9]_i_3_n_0\
    );
\symbol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(0),
      Q => symbol(0),
      R => rst
    );
\symbol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(1),
      Q => symbol(1),
      R => rst
    );
\symbol_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(2),
      Q => symbol(2),
      R => rst
    );
\symbol_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(3),
      Q => symbol(3),
      R => rst
    );
\symbol_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \symbol[4]_i_1_n_0\,
      Q => symbol(4),
      R => rst
    );
\symbol_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => \symbol[5]_i_1_n_0\,
      Q => symbol(5),
      R => rst
    );
\symbol_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(6),
      Q => symbol(6),
      R => rst
    );
\symbol_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(7),
      Q => symbol(7),
      R => rst
    );
\symbol_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(8),
      Q => symbol(8),
      R => rst
    );
\symbol_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => p_1_out(9),
      Q => symbol(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_encoder_wrapper_0_0_encoder_wrapper is
  port (
    RD : out STD_LOGIC;
    symbol : out STD_LOGIC_VECTOR ( 9 downto 0 );
    invalid_control : out STD_LOGIC;
    octet : in STD_LOGIC_VECTOR ( 7 downto 0 );
    control : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    initial_RD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_encoder_wrapper_0_0_encoder_wrapper : entity is "encoder_wrapper";
end transmitter_encoder_wrapper_0_0_encoder_wrapper;

architecture STRUCTURE of transmitter_encoder_wrapper_0_0_encoder_wrapper is
begin
LOGIC: entity work.transmitter_encoder_wrapper_0_0_encoder
     port map (
      RD => RD,
      character_clk => character_clk,
      control => control,
      initial_RD => initial_RD,
      invalid_control => invalid_control,
      octet(7 downto 0) => octet(7 downto 0),
      rst => rst,
      symbol(9 downto 0) => symbol(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_encoder_wrapper_0_0 is
  port (
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    initial_RD : in STD_LOGIC;
    octet : in STD_LOGIC_VECTOR ( 7 downto 0 );
    control : in STD_LOGIC;
    symbol : out STD_LOGIC_VECTOR ( 9 downto 0 );
    invalid_control : out STD_LOGIC;
    RD : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_encoder_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_encoder_wrapper_0_0 : entity is "transmitter_encoder_wrapper_0_0,encoder_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_encoder_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_encoder_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_encoder_wrapper_0_0 : entity is "encoder_wrapper,Vivado 2024.1";
end transmitter_encoder_wrapper_0_0;

architecture STRUCTURE of transmitter_encoder_wrapper_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.transmitter_encoder_wrapper_0_0_encoder_wrapper
     port map (
      RD => RD,
      character_clk => character_clk,
      control => control,
      initial_RD => initial_RD,
      invalid_control => invalid_control,
      octet(7 downto 0) => octet(7 downto 0),
      rst => rst,
      symbol(9 downto 0) => symbol(9 downto 0)
    );
end STRUCTURE;
