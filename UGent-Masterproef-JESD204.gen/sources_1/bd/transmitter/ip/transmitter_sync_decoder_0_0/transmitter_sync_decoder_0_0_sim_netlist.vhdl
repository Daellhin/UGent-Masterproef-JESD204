-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Mar 22 11:40:04 2025
-- Host        : G16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lorin/git/UGent-Masterproef-JESD204/UGent-Masterproef-JESD204.gen/sources_1/bd/transmitter/ip/transmitter_sync_decoder_0_0/transmitter_sync_decoder_0_0_sim_netlist.vhdl
-- Design      : transmitter_sync_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_sync_decoder_0_0_sync_decoder is
  port (
    sync_request : out STD_LOGIC;
    frame_clk : in STD_LOGIC;
    sync : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of transmitter_sync_decoder_0_0_sync_decoder : entity is "sync_decoder";
end transmitter_sync_decoder_0_0_sync_decoder;

architecture STRUCTURE of transmitter_sync_decoder_0_0_sync_decoder is
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sync_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sync_counter0 : STD_LOGIC;
  signal sync_request_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sync_counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sync_counter[1]_i_2\ : label is "soft_lutpair0";
  attribute inverted : string;
  attribute inverted of \sync_counter_reg[2]_inv\ : label is "yes";
begin
\sync_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_counter(0),
      O => p_1_in(0)
    );
\sync_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => sync,
      O => p_0_in
    );
\sync_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sync_counter(0),
      I1 => sync_counter(1),
      O => p_1_in(1)
    );
\sync_counter[2]_inv_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sync_counter(0),
      I1 => sync_counter(1),
      O => p_1_in(2)
    );
\sync_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => frame_clk,
      CE => sync_counter0,
      D => p_1_in(0),
      Q => sync_counter(0),
      R => p_0_in
    );
\sync_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => frame_clk,
      CE => sync_counter0,
      D => p_1_in(1),
      Q => sync_counter(1),
      R => p_0_in
    );
\sync_counter_reg[2]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => frame_clk,
      CE => sync_counter0,
      D => p_1_in(2),
      Q => sync_counter0,
      S => p_0_in
    );
sync_request_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sync_counter0,
      I1 => sync,
      I2 => rst,
      O => sync_request_i_1_n_0
    );
sync_request_reg: unisim.vcomponents.FDRE
     port map (
      C => frame_clk,
      CE => '1',
      D => sync_request_i_1_n_0,
      Q => sync_request,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter_sync_decoder_0_0 is
  port (
    frame_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sync : in STD_LOGIC;
    sync_request : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of transmitter_sync_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of transmitter_sync_decoder_0_0 : entity is "transmitter_sync_decoder_0_0,sync_decoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of transmitter_sync_decoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of transmitter_sync_decoder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of transmitter_sync_decoder_0_0 : entity is "sync_decoder,Vivado 2024.1";
end transmitter_sync_decoder_0_0;

architecture STRUCTURE of transmitter_sync_decoder_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of frame_clk : signal is "xilinx.com:signal:clock:1.0 frame_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of frame_clk : signal is "XIL_INTERFACENAME frame_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_frame_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.transmitter_sync_decoder_0_0_sync_decoder
     port map (
      frame_clk => frame_clk,
      rst => rst,
      sync => sync,
      sync_request => sync_request
    );
end STRUCTURE;
