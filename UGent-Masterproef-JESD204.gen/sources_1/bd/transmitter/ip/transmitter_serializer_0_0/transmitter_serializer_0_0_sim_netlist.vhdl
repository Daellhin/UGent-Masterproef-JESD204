-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:46 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_serializer_0_0/transmitter_serializer_0_0_sim_netlist.vhdl
-- Design      : transmitter_serializer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_serializer_0_0_serializer is
  port (
    serial_data : out STD_LOGIC;
    bit_clk : in STD_LOGIC;
    parallel_data : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_serializer_0_0_serializer : entity is "serializer";
end transmitter_serializer_0_0_serializer;

architecture STRUCTURE of transmitter_serializer_0_0_serializer is
  signal clear : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_buffer : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \data_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal serial_data_i_1_n_0 : STD_LOGIC;
  signal serial_data_i_2_n_0 : STD_LOGIC;
  signal serial_data_i_3_n_0 : STD_LOGIC;
  signal serial_data_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of serial_data_i_2 : label is "soft_lutpair1";
begin
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => clear
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => p_0_in(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clk,
      CE => '1',
      D => p_0_in(0),
      Q => count_reg(0),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clk,
      CE => '1',
      D => p_0_in(1),
      Q => count_reg(1),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clk,
      CE => '1',
      D => p_0_in(2),
      Q => count_reg(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clk,
      CE => '1',
      D => p_0_in(3),
      Q => count_reg(3),
      R => clear
    );
\data_buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => count_reg(3),
      I1 => parallel_data(1),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \data_buffer_reg_n_0_[1]\,
      I5 => count_reg(0),
      O => data_buffer(1)
    );
\data_buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[2]\,
      I4 => count_reg(0),
      I5 => parallel_data(2),
      O => data_buffer(2)
    );
\data_buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => count_reg(3),
      I1 => parallel_data(3),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \data_buffer_reg_n_0_[3]\,
      I5 => count_reg(0),
      O => data_buffer(3)
    );
\data_buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[4]\,
      I4 => count_reg(0),
      I5 => parallel_data(4),
      O => data_buffer(4)
    );
\data_buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => count_reg(3),
      I1 => parallel_data(5),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \data_buffer_reg_n_0_[5]\,
      I5 => count_reg(0),
      O => data_buffer(5)
    );
\data_buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[6]\,
      I4 => count_reg(0),
      I5 => parallel_data(6),
      O => data_buffer(6)
    );
\data_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => count_reg(3),
      I1 => parallel_data(7),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \data_buffer_reg_n_0_[7]\,
      I5 => count_reg(0),
      O => data_buffer(7)
    );
\data_buffer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[8]\,
      I4 => count_reg(0),
      I5 => parallel_data(8),
      O => data_buffer(8)
    );
\data_buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => count_reg(3),
      I1 => parallel_data(9),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \data_buffer_reg_n_0_[9]\,
      I5 => count_reg(0),
      O => data_buffer(9)
    );
\data_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(1),
      Q => \data_buffer_reg_n_0_[1]\,
      R => '0'
    );
\data_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(2),
      Q => \data_buffer_reg_n_0_[2]\,
      R => '0'
    );
\data_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(3),
      Q => \data_buffer_reg_n_0_[3]\,
      R => '0'
    );
\data_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(4),
      Q => \data_buffer_reg_n_0_[4]\,
      R => '0'
    );
\data_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(5),
      Q => \data_buffer_reg_n_0_[5]\,
      R => '0'
    );
\data_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(6),
      Q => \data_buffer_reg_n_0_[6]\,
      R => '0'
    );
\data_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(7),
      Q => \data_buffer_reg_n_0_[7]\,
      R => '0'
    );
\data_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(8),
      Q => \data_buffer_reg_n_0_[8]\,
      R => '0'
    );
\data_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => data_buffer(9),
      Q => \data_buffer_reg_n_0_[9]\,
      R => '0'
    );
serial_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => serial_data_i_2_n_0,
      I1 => count_reg(3),
      I2 => serial_data_i_3_n_0,
      I3 => count_reg(2),
      I4 => serial_data_i_4_n_0,
      O => serial_data_i_1_n_0
    );
serial_data_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_buffer_reg_n_0_[9]\,
      I1 => count_reg(0),
      I2 => \data_buffer_reg_n_0_[8]\,
      O => serial_data_i_2_n_0
    );
serial_data_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_buffer_reg_n_0_[7]\,
      I1 => \data_buffer_reg_n_0_[6]\,
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[5]\,
      I4 => count_reg(0),
      I5 => \data_buffer_reg_n_0_[4]\,
      O => serial_data_i_3_n_0
    );
serial_data_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_buffer_reg_n_0_[3]\,
      I1 => \data_buffer_reg_n_0_[2]\,
      I2 => count_reg(1),
      I3 => \data_buffer_reg_n_0_[1]\,
      I4 => count_reg(0),
      I5 => parallel_data(0),
      O => serial_data_i_4_n_0
    );
serial_data_reg: unisim.vcomponents.FDRE
     port map (
      C => bit_clk,
      CE => '1',
      D => serial_data_i_1_n_0,
      Q => serial_data,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_serializer_0_0 is
  port (
    bit_clk : in STD_LOGIC;
    parallel_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    serial_data : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_serializer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_serializer_0_0 : entity is "transmitter_serializer_0_0,serializer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_serializer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_serializer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_serializer_0_0 : entity is "serializer,Vivado 2024.1";
end transmitter_serializer_0_0;

architecture STRUCTURE of transmitter_serializer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of bit_clk : signal is "xilinx.com:signal:clock:1.0 bit_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bit_clk : signal is "XIL_INTERFACENAME bit_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_bit_clk, INSERT_VIP 0";
begin
U0: entity work.transmitter_serializer_0_0_serializer
     port map (
      bit_clk => bit_clk,
      parallel_data(9 downto 0) => parallel_data(9 downto 0),
      serial_data => serial_data
    );
end STRUCTURE;
