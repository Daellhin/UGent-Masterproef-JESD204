-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_CGS_Generator_0_0/transmitter_CGS_Generator_0_0_sim_netlist.vhdl
-- Design      : transmitter_CGS_Generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_CGS_Generator_0_0_CGS_Generator is
  port (
    control : out STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    CGS_complete : out STD_LOGIC;
    enable : in STD_LOGIC;
    character_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_CGS_Generator_0_0_CGS_Generator : entity is "CGS_Generator";
end transmitter_CGS_Generator_0_0_CGS_Generator;

architecture STRUCTURE of transmitter_CGS_Generator_0_0_CGS_Generator is
  signal CGS_complete_i_1_n_0 : STD_LOGIC;
  signal \CGS_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal CGS_counter_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \CGS_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \CGS_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CGS_counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CGS_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CGS_counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \CGS_counter[3]_i_3\ : label is "soft_lutpair0";
begin
CGS_complete_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CGS_counter_reg(2),
      I1 => CGS_counter_reg(3),
      I2 => enable,
      O => CGS_complete_i_1_n_0
    );
CGS_complete_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => CGS_complete_i_1_n_0,
      Q => CGS_complete,
      R => '0'
    );
\CGS_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CGS_counter_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\CGS_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \CGS_counter_reg_n_0_[0]\,
      I1 => \CGS_counter_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\CGS_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \CGS_counter_reg_n_0_[0]\,
      I1 => \CGS_counter_reg_n_0_[1]\,
      I2 => CGS_counter_reg(2),
      O => p_0_in(2)
    );
\CGS_counter[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable,
      O => clear
    );
\CGS_counter[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CGS_counter_reg(2),
      I1 => CGS_counter_reg(3),
      O => \CGS_counter[3]_i_2_n_0\
    );
\CGS_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \CGS_counter_reg_n_0_[1]\,
      I1 => \CGS_counter_reg_n_0_[0]\,
      I2 => CGS_counter_reg(2),
      I3 => CGS_counter_reg(3),
      O => p_0_in(3)
    );
\CGS_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \CGS_counter[3]_i_2_n_0\,
      D => p_0_in(0),
      Q => \CGS_counter_reg_n_0_[0]\,
      R => clear
    );
\CGS_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \CGS_counter[3]_i_2_n_0\,
      D => p_0_in(1),
      Q => \CGS_counter_reg_n_0_[1]\,
      R => clear
    );
\CGS_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \CGS_counter[3]_i_2_n_0\,
      D => p_0_in(2),
      Q => CGS_counter_reg(2),
      R => clear
    );
\CGS_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => \CGS_counter[3]_i_2_n_0\,
      D => p_0_in(3),
      Q => CGS_counter_reg(3),
      R => clear
    );
control_reg: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => enable,
      Q => control,
      R => '0'
    );
\octet_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => character_clk,
      CE => '1',
      D => enable,
      Q => octet_out(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_CGS_Generator_0_0 is
  port (
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    CGS_complete : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_CGS_Generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_CGS_Generator_0_0 : entity is "transmitter_CGS_Generator_0_0,CGS_Generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_CGS_Generator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_CGS_Generator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_CGS_Generator_0_0 : entity is "CGS_Generator,Vivado 2024.1";
end transmitter_CGS_Generator_0_0;

architecture STRUCTURE of transmitter_CGS_Generator_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^octet_out\ : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
begin
  octet_out(7) <= \^octet_out\(5);
  octet_out(6) <= \<const0>\;
  octet_out(5) <= \^octet_out\(5);
  octet_out(4) <= \^octet_out\(5);
  octet_out(3) <= \^octet_out\(5);
  octet_out(2) <= \^octet_out\(5);
  octet_out(1) <= \<const0>\;
  octet_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.transmitter_CGS_Generator_0_0_CGS_Generator
     port map (
      CGS_complete => CGS_complete,
      character_clk => character_clk,
      control => control,
      enable => enable,
      octet_out(0) => \^octet_out\(5)
    );
end STRUCTURE;
