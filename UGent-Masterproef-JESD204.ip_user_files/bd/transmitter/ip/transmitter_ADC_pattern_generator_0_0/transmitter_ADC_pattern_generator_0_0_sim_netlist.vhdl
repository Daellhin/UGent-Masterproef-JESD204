-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 21 10:01:43 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_ADC_pattern_generator_0_0/transmitter_ADC_pattern_generator_0_0_sim_netlist.vhdl
-- Design      : transmitter_ADC_pattern_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_ADC_pattern_generator_0_0_ADC_pattern_generator is
  port (
    sample : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_ADC_pattern_generator_0_0_ADC_pattern_generator : entity is "ADC_pattern_generator";
end transmitter_ADC_pattern_generator_0_0_ADC_pattern_generator;

architecture STRUCTURE of transmitter_ADC_pattern_generator_0_0_ADC_pattern_generator is
  signal \plusOp__0_n_6\ : STD_LOGIC;
  signal \plusOp__0_n_7\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal plusOp_n_0 : STD_LOGIC;
  signal plusOp_n_1 : STD_LOGIC;
  signal plusOp_n_2 : STD_LOGIC;
  signal plusOp_n_3 : STD_LOGIC;
  signal plusOp_n_4 : STD_LOGIC;
  signal plusOp_n_5 : STD_LOGIC;
  signal plusOp_n_6 : STD_LOGIC;
  signal plusOp_n_7 : STD_LOGIC;
  signal \^sample\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_plusOp__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_plusOp__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__0\ : label is 35;
begin
  sample(11 downto 0) <= \^sample\(11 downto 0);
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sample\(0),
      O => \plusOp__1\(0)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(0),
      Q => \^sample\(0),
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(10),
      Q => \^sample\(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(11),
      Q => \^sample\(11),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(1),
      Q => \^sample\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(2),
      Q => \^sample\(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(3),
      Q => \^sample\(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(4),
      Q => \^sample\(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(5),
      Q => \^sample\(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(6),
      Q => \^sample\(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(7),
      Q => \^sample\(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(8),
      Q => \^sample\(8),
      R => '0'
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample_clk,
      CE => '1',
      D => \plusOp__1\(9),
      Q => \^sample\(9),
      R => '0'
    );
plusOp: unisim.vcomponents.CARRY8
     port map (
      CI => \^sample\(0),
      CI_TOP => '0',
      CO(7) => plusOp_n_0,
      CO(6) => plusOp_n_1,
      CO(5) => plusOp_n_2,
      CO(4) => plusOp_n_3,
      CO(3) => plusOp_n_4,
      CO(2) => plusOp_n_5,
      CO(1) => plusOp_n_6,
      CO(0) => plusOp_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \plusOp__1\(8 downto 1),
      S(7 downto 0) => \^sample\(8 downto 1)
    );
\plusOp__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_plusOp__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \plusOp__0_n_6\,
      CO(0) => \plusOp__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_plusOp__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \plusOp__1\(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => \^sample\(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_ADC_pattern_generator_0_0 is
  port (
    sample_clk : in STD_LOGIC;
    sample : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_ADC_pattern_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_ADC_pattern_generator_0_0 : entity is "transmitter_ADC_pattern_generator_0_0,ADC_pattern_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_ADC_pattern_generator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_ADC_pattern_generator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_ADC_pattern_generator_0_0 : entity is "ADC_pattern_generator,Vivado 2024.1";
end transmitter_ADC_pattern_generator_0_0;

architecture STRUCTURE of transmitter_ADC_pattern_generator_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of sample_clk : signal is "xilinx.com:signal:clock:1.0 sample_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of sample_clk : signal is "XIL_INTERFACENAME sample_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_sample_clk, INSERT_VIP 0";
begin
U0: entity work.transmitter_ADC_pattern_generator_0_0_ADC_pattern_generator
     port map (
      sample(11 downto 0) => sample(11 downto 0),
      sample_clk => sample_clk
    );
end STRUCTURE;
