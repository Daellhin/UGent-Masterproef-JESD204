--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Mar  2 12:18:47 2025
--Host        : G16 running 64-bit major release  (build 9200)
--Command     : generate_target transmitter.bd
--Design      : transmitter
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmitter is
  port (
    SYNC : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_clk_0 : out STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    serial_data_0 : out STD_LOGIC;
    source_clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of transmitter : entity is "transmitter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmitter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,""""""""""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""""""""""=2,""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of transmitter : entity is "transmitter.hwdef";
end transmitter;

architecture STRUCTURE of transmitter is
  component transmitter_clock_generator_0_0 is
  port (
    source_clk : in STD_LOGIC;
    device_clk : out STD_LOGIC;
    sysref : out STD_LOGIC
  );
  end component transmitter_clock_generator_0_0;
  component transmitter_local_clock_generator_0_0 is
  port (
    device_clk : in STD_LOGIC;
    sysref : in STD_LOGIC;
    sample_clk : out STD_LOGIC;
    frame_clk : out STD_LOGIC;
    character_clk : out STD_LOGIC;
    bit_clk : out STD_LOGIC;
    LMF_clk : out STD_LOGIC;
    LMF_last : out STD_LOGIC
  );
  end component transmitter_local_clock_generator_0_0;
  component transmitter_scrambler_0_1 is
  port (
    scramble_enable : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_scrambler_0_1;
  component transmitter_gigabit_transceiver_0_0 is
  port (
    bit_clk : in STD_LOGIC;
    symbol : in STD_LOGIC_VECTOR ( 9 downto 0 );
    serial_data : out STD_LOGIC
  );
  end component transmitter_gigabit_transceiver_0_0;
  component transmitter_alignment_substititu_0_3 is
  port (
    character_clk : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrable_enable : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC
  );
  end component transmitter_alignment_substititu_0_3;
  component transmitter_transmitter_state_0_0 is
  port (
    character_clk : in STD_LOGIC;
    sync_request : in STD_LOGIC;
    ILA_last : in STD_LOGIC;
    CGS_complete : in STD_LOGIC;
    multiframe_last : in STD_LOGIC;
    rst : in STD_LOGIC;
    enlable_CGS : out STD_LOGIC;
    enable_ILAS : out STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component transmitter_transmitter_state_0_0;
  component transmitter_ILAS_generator_0_1 is
  port (
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    ILA_last : out STD_LOGIC
  );
  end component transmitter_ILAS_generator_0_1;
  component transmitter_CGS_Generator_0_0 is
  port (
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC;
    CGS_complete : out STD_LOGIC
  );
  end component transmitter_CGS_Generator_0_0;
  component transmitter_MUX_3x1_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    C : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_MUX_3x1_0_0;
  component transmitter_MUX_3x1_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_MUX_3x1_1_0;
  component transmitter_encoder_wrapper_0_0 is
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
  end component transmitter_encoder_wrapper_0_0;
  component transmitter_single_ADC_frame_map_0_0 is
  port (
    sample_clk : in STD_LOGIC;
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    octet : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_single_ADC_frame_map_0_0;
  component transmitter_sync_decoder_0_0 is
  port (
    frame_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sync : in STD_LOGIC;
    sync_request : out STD_LOGIC
  );
  end component transmitter_sync_decoder_0_0;
  signal CGS_Generator_0_control : STD_LOGIC;
  signal CGS_Generator_0_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ILAS_generator_ILA_last : STD_LOGIC;
  signal ILAS_generator_control : STD_LOGIC;
  signal ILAS_generator_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MUX_control_D : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MUX_octets_D : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SYNC_1 : STD_LOGIC;
  signal alignment_substititution_control : STD_LOGIC;
  signal alignment_substititution_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clock_generator_0_device_clk : STD_LOGIC;
  signal clock_generator_0_sysref : STD_LOGIC;
  signal encoder_wrapper_0_symbol : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gigabit_transceiver_serial_data : STD_LOGIC;
  signal local_clock_generator_LMF_last : STD_LOGIC;
  signal local_clock_generator_bit_clk : STD_LOGIC;
  signal local_clock_generator_character_clk : STD_LOGIC;
  signal local_clock_generator_frame_clk : STD_LOGIC;
  signal local_clock_generator_sample_clk : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sample_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal scramble_enable_1 : STD_LOGIC;
  signal scrambler_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal single_ADC_frame_map_0_octet : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal source_clk_1 : STD_LOGIC;
  signal sync_decoder_0_sync_request : STD_LOGIC;
  signal transmitter_state_0_enable_ILAS : STD_LOGIC;
  signal transmitter_state_enlable_CGS : STD_LOGIC;
  signal transmitter_state_state_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_CGS_Generator_0_CGS_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_encoder_wrapper_0_RD_UNCONNECTED : STD_LOGIC;
  signal NLW_encoder_wrapper_0_invalid_control_UNCONNECTED : STD_LOGIC;
  signal NLW_local_clock_generator_LMF_clk_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sample_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.SAMPLE_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sample_clk_0 : signal is "XIL_INTERFACENAME CLK.SAMPLE_CLK_0, CLK_DOMAIN transmitter_local_clock_generator_0_0_sample_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of source_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SOURCE_CLK CLK";
  attribute X_INTERFACE_PARAMETER of source_clk : signal is "XIL_INTERFACENAME CLK.SOURCE_CLK, CLK_DOMAIN transmitter_source_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  SYNC_1 <= SYNC;
  rst_1 <= rst;
  sample_1(11 downto 0) <= sample(11 downto 0);
  sample_clk_0 <= local_clock_generator_sample_clk;
  scramble_enable_1 <= scramble_enable;
  serial_data_0 <= gigabit_transceiver_serial_data;
  source_clk_1 <= source_clk;
CGS_Generator_0: component transmitter_CGS_Generator_0_0
     port map (
      CGS_complete => NLW_CGS_Generator_0_CGS_complete_UNCONNECTED,
      character_clk => local_clock_generator_frame_clk,
      control => CGS_Generator_0_control,
      enable => transmitter_state_enlable_CGS,
      octet_out(7 downto 0) => CGS_Generator_0_octet_out(7 downto 0)
    );
ILAS_generator: component transmitter_ILAS_generator_0_1
     port map (
      ILA_last => ILAS_generator_ILA_last,
      character_clk => local_clock_generator_frame_clk,
      control => ILAS_generator_control,
      enable => transmitter_state_0_enable_ILAS,
      octet_out(7 downto 0) => ILAS_generator_octet_out(7 downto 0),
      rst => rst_1
    );
MUX_control: component transmitter_MUX_3x1_0_0
     port map (
      A(0) => CGS_Generator_0_control,
      B(0) => ILAS_generator_control,
      C(0) => alignment_substititution_control,
      D(0) => MUX_control_D(0),
      sel => transmitter_state_state_out(0)
    );
MUX_octets: component transmitter_MUX_3x1_1_0
     port map (
      A(7 downto 0) => CGS_Generator_0_octet_out(7 downto 0),
      B(7 downto 0) => ILAS_generator_octet_out(7 downto 0),
      C(7 downto 0) => alignment_substititution_octet_out(7 downto 0),
      D(7 downto 0) => MUX_octets_D(7 downto 0),
      sel => transmitter_state_state_out(0)
    );
alignment_substititution: component transmitter_alignment_substititu_0_3
     port map (
      character_clk => local_clock_generator_character_clk,
      control => alignment_substititution_control,
      octet_in(7 downto 0) => scrambler_octet_out(7 downto 0),
      octet_out(7 downto 0) => alignment_substititution_octet_out(7 downto 0),
      scrable_enable => scramble_enable_1
    );
clock_generator: component transmitter_clock_generator_0_0
     port map (
      device_clk => clock_generator_0_device_clk,
      source_clk => source_clk_1,
      sysref => clock_generator_0_sysref
    );
encoder_wrapper_0: component transmitter_encoder_wrapper_0_0
     port map (
      RD => NLW_encoder_wrapper_0_RD_UNCONNECTED,
      character_clk => local_clock_generator_character_clk,
      control => MUX_control_D(0),
      initial_RD => '0',
      invalid_control => NLW_encoder_wrapper_0_invalid_control_UNCONNECTED,
      octet(7 downto 0) => MUX_octets_D(7 downto 0),
      rst => rst_1,
      symbol(9 downto 0) => encoder_wrapper_0_symbol(9 downto 0)
    );
gigabit_transceiver: component transmitter_gigabit_transceiver_0_0
     port map (
      bit_clk => local_clock_generator_bit_clk,
      serial_data => gigabit_transceiver_serial_data,
      symbol(9 downto 0) => encoder_wrapper_0_symbol(9 downto 0)
    );
local_clock_generator: component transmitter_local_clock_generator_0_0
     port map (
      LMF_clk => NLW_local_clock_generator_LMF_clk_UNCONNECTED,
      LMF_last => local_clock_generator_LMF_last,
      bit_clk => local_clock_generator_bit_clk,
      character_clk => local_clock_generator_character_clk,
      device_clk => clock_generator_0_device_clk,
      frame_clk => local_clock_generator_frame_clk,
      sample_clk => local_clock_generator_sample_clk,
      sysref => clock_generator_0_sysref
    );
scrambler: component transmitter_scrambler_0_1
     port map (
      octet_in(7 downto 0) => single_ADC_frame_map_0_octet(7 downto 0),
      octet_out(7 downto 0) => scrambler_octet_out(7 downto 0),
      scramble_enable => scramble_enable_1
    );
single_ADC_frame_map_0: component transmitter_single_ADC_frame_map_0_0
     port map (
      character_clk => local_clock_generator_character_clk,
      octet(7 downto 0) => single_ADC_frame_map_0_octet(7 downto 0),
      rst => rst_1,
      sample(11 downto 0) => sample_1(11 downto 0),
      sample_clk => local_clock_generator_sample_clk
    );
sync_decoder_0: component transmitter_sync_decoder_0_0
     port map (
      frame_clk => local_clock_generator_frame_clk,
      rst => rst_1,
      sync => SYNC_1,
      sync_request => sync_decoder_0_sync_request
    );
transmitter_state: component transmitter_transmitter_state_0_0
     port map (
      CGS_complete => '0',
      ILA_last => ILAS_generator_ILA_last,
      character_clk => local_clock_generator_character_clk,
      enable_ILAS => transmitter_state_0_enable_ILAS,
      enlable_CGS => transmitter_state_enlable_CGS,
      multiframe_last => local_clock_generator_LMF_last,
      rst => rst_1,
      state_out(1 downto 0) => transmitter_state_state_out(1 downto 0),
      sync_request => sync_decoder_0_sync_request
    );
end STRUCTURE;
