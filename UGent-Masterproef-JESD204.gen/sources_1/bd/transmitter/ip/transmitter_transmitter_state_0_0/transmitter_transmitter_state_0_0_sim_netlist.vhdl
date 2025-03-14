-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Mar 14 13:59:06 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_transmitter_state_0_0/transmitter_transmitter_state_0_0_sim_netlist.vhdl
-- Design      : transmitter_transmitter_state_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_transmitter_state_0_0_transmitter_state is
  port (
    enable_ILAS : out STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    enable_CGS : out STD_LOGIC;
    rst : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    CGS_complete : in STD_LOGIC;
    multiframe_end : in STD_LOGIC;
    sync_request : in STD_LOGIC;
    ILA_last : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_transmitter_state_0_0_transmitter_state : entity is "transmitter_state";
end transmitter_transmitter_state_0_0_transmitter_state;

architecture STRUCTURE of transmitter_transmitter_state_0_0_transmitter_state is
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "wait_for_sync:00,ila:10,data:11,cgs:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "wait_for_sync:00,ila:10,data:11,cgs:01";
  attribute SOFT_HLUTNM of enable_ILAS_INST_0 : label is "soft_lutpair0";
begin
  state_out(1 downto 0) <= \^state_out\(1 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8FFF8FFF8FFF8"
    )
        port map (
      I0 => ILA_last,
      I1 => \^state_out\(1),
      I2 => sync_request,
      I3 => \^state_out\(0),
      I4 => multiframe_end,
      I5 => CGS_complete,
      O => next_state(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => CGS_complete,
      I1 => multiframe_end,
      I2 => \^state_out\(0),
      I3 => \^state_out\(1),
      I4 => sync_request,
      O => next_state(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => next_state(0),
      Q => \^state_out\(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => character_clk,
      CE => '1',
      D => next_state(1),
      Q => \^state_out\(1),
      R => rst
    );
enable_CGS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_out\(0),
      I1 => \^state_out\(1),
      O => enable_CGS
    );
enable_ILAS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_out\(1),
      I1 => \^state_out\(0),
      O => enable_ILAS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_transmitter_state_0_0 is
  port (
    character_clk : in STD_LOGIC;
    sync_request : in STD_LOGIC;
    ILA_last : in STD_LOGIC;
    CGS_complete : in STD_LOGIC;
    multiframe_end : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable_CGS : out STD_LOGIC;
    enable_ILAS : out STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_transmitter_state_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_transmitter_state_0_0 : entity is "transmitter_transmitter_state_0_0,transmitter_state,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_transmitter_state_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_transmitter_state_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_transmitter_state_0_0 : entity is "transmitter_state,Vivado 2024.1";
end transmitter_transmitter_state_0_0;

architecture STRUCTURE of transmitter_transmitter_state_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of character_clk : signal is "xilinx.com:signal:clock:1.0 character_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of character_clk : signal is "XIL_INTERFACENAME character_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.transmitter_transmitter_state_0_0_transmitter_state
     port map (
      CGS_complete => CGS_complete,
      ILA_last => ILA_last,
      character_clk => character_clk,
      enable_CGS => enable_CGS,
      enable_ILAS => enable_ILAS,
      multiframe_end => multiframe_end,
      rst => rst,
      state_out(1 downto 0) => state_out(1 downto 0),
      sync_request => sync_request
    );
end STRUCTURE;
