--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Fri Mar 21 12:27:18 2025
--Host        : G16 running 64-bit major release  (build 9200)
--Command     : generate_target transmitter.bd
--Design      : transmitter
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- TODOs
  -- delay in ilas transition
  -- rst with clock generator
  entity transmitter is
  port (
    CLK_IN1_D_clk_n : in STD_LOGIC;
    CLK_IN1_D_clk_p : in STD_LOGIC;
    SYNC : in STD_LOGIC;
    SYSREF : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 11 downto 0 );
    scramble_enable : in STD_LOGIC;
    serial_data : out STD_LOGIC;
    state_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    test_enable : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of transmitter : entity is "transmitter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmitter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=2,""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of transmitter : entity is "transmitter.hwdef";
end transmitter;

architecture STRUCTURE of transmitter is
  component transmitter_local_clock_generator_0_0 is
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
  end component transmitter_local_clock_generator_0_0;
  component transmitter_scrambler_0_1 is
  port (
    scramble_enable : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_scrambler_0_1;
  component transmitter_transmitter_state_0_0 is
  port (
    character_clk : in STD_LOGIC;
    sync_request : in STD_LOGIC;
    ILA_last : in STD_LOGIC;
    CGS_complete : in STD_LOGIC;
    multiframe_start : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable_CGS : out STD_LOGIC;
    enable_ILAS : out STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component transmitter_transmitter_state_0_0;
  component transmitter_ILAS_generator_0_1 is
  port (
    character_clk : in STD_LOGIC;
    enable : in STD_LOGIC;
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
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_MUX_3x1_0_0;
  component transmitter_MUX_3x1_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
  component transmitter_serializer_0_0 is
  port (
    bit_clk : in STD_LOGIC;
    parallel_data : in STD_LOGIC_VECTOR ( 9 downto 0 );
    serial_data : out STD_LOGIC
  );
  end component transmitter_serializer_0_0;
  component transmitter_ADC_pattern_generator_0_0 is
  port (
    sample_clk : in STD_LOGIC;
    sample : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component transmitter_ADC_pattern_generator_0_0;
  component transmitter_alignment_substituti_0_1 is
  port (
    character_clk : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scramble_enable : in STD_LOGIC;
    frame_end : in STD_LOGIC;
    multiframe_end : in STD_LOGIC;
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    control : out STD_LOGIC
  );
  end component transmitter_alignment_substituti_0_1;
  component transmitter_MUX_2x1_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sel : in STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component transmitter_MUX_2x1_0_0;
  component transmitter_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component transmitter_clk_wiz_0_0;
  component transmitter_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_util_vector_logic_0_0;
  signal ADC_pattern_generator_sample : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal CGS_Generator_0_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CGS_Generator_CGS_complete : STD_LOGIC;
  signal CGS_Generator_control : STD_LOGIC;
  signal CLK_IN1_D_0_1_CLK_N : STD_LOGIC;
  signal CLK_IN1_D_0_1_CLK_P : STD_LOGIC;
  signal ILAS_generator_ILA_last : STD_LOGIC;
  signal ILAS_generator_control : STD_LOGIC;
  signal ILAS_generator_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MUX_2x1_0_C : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal MUX_control_D : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MUX_octets_D : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SYNC_1 : STD_LOGIC;
  signal SYSREF_0_1 : STD_LOGIC;
  signal alignment_substituti_0_control : STD_LOGIC;
  signal alignment_substituti_0_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal encoder_wrapper_0_symbol : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal local_clock_generator_bit_clk : STD_LOGIC;
  signal local_clock_generator_character_clk : STD_LOGIC;
  signal local_clock_generator_frame_clk : STD_LOGIC;
  signal local_clock_generator_frame_end : STD_LOGIC;
  signal local_clock_generator_multiframe_end : STD_LOGIC;
  signal local_clock_generator_multiframe_start : STD_LOGIC;
  signal local_clock_generator_sample_clk : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sample_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal scramble_enable_1 : STD_LOGIC;
  signal scrambler_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel_0_1 : STD_LOGIC;
  signal serializer_0_serial_data : STD_LOGIC;
  signal single_ADC_frame_map_0_octet : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync_decoder_0_sync_request : STD_LOGIC;
  signal transmitter_state_0_enable_ILAS : STD_LOGIC;
  signal transmitter_state_enlable_CGS : STD_LOGIC;
  signal transmitter_state_state_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_encoder_wrapper_RD_UNCONNECTED : STD_LOGIC;
  signal NLW_encoder_wrapper_invalid_control_UNCONNECTED : STD_LOGIC;
  signal NLW_local_clock_generator_LMF_clk_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_IN1_D_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_IN1_D_clk_n : signal is "XIL_INTERFACENAME CLK_IN1_D, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of CLK_IN1_D_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D CLK_P";
begin
  CLK_IN1_D_0_1_CLK_N <= CLK_IN1_D_clk_n;
  CLK_IN1_D_0_1_CLK_P <= CLK_IN1_D_clk_p;
  SYNC_1 <= SYNC;
  SYSREF_0_1 <= SYSREF;
  rst_1 <= rst;
  sample_1(11 downto 0) <= sample(11 downto 0);
  scramble_enable_1 <= scramble_enable;
  sel_0_1 <= test_enable;
  serial_data <= serializer_0_serial_data;
  state_out_0(1 downto 0) <= transmitter_state_state_out(1 downto 0);
ADC_pattern_generator: component transmitter_ADC_pattern_generator_0_0
     port map (
      sample(11 downto 0) => ADC_pattern_generator_sample(11 downto 0),
      sample_clk => local_clock_generator_sample_clk
    );
CGS_Generator: component transmitter_CGS_Generator_0_0
     port map (
      CGS_complete => CGS_Generator_CGS_complete,
      character_clk => local_clock_generator_character_clk,
      control => CGS_Generator_control,
      enable => transmitter_state_enlable_CGS,
      octet_out(7 downto 0) => CGS_Generator_0_octet_out(7 downto 0)
    );
ILAS_generator: component transmitter_ILAS_generator_0_1
     port map (
      ILA_last => ILAS_generator_ILA_last,
      character_clk => local_clock_generator_character_clk,
      control => ILAS_generator_control,
      enable => transmitter_state_0_enable_ILAS,
      octet_out(7 downto 0) => ILAS_generator_octet_out(7 downto 0)
    );
MUX_2x1_0: component transmitter_MUX_2x1_0_0
     port map (
      A(11 downto 0) => sample_1(11 downto 0),
      B(11 downto 0) => ADC_pattern_generator_sample(11 downto 0),
      C(11 downto 0) => MUX_2x1_0_C(11 downto 0),
      sel => sel_0_1
    );
MUX_control: component transmitter_MUX_3x1_0_0
     port map (
      A(0) => CGS_Generator_control,
      B(0) => ILAS_generator_control,
      C(0) => alignment_substituti_0_control,
      D(0) => MUX_control_D(0),
      sel(1 downto 0) => transmitter_state_state_out(1 downto 0)
    );
MUX_octets: component transmitter_MUX_3x1_1_0
     port map (
      A(7 downto 0) => CGS_Generator_0_octet_out(7 downto 0),
      B(7 downto 0) => ILAS_generator_octet_out(7 downto 0),
      C(7 downto 0) => alignment_substituti_0_octet_out(7 downto 0),
      D(7 downto 0) => MUX_octets_D(7 downto 0),
      sel(1 downto 0) => transmitter_state_state_out(1 downto 0)
    );
alignment_substitutution: component transmitter_alignment_substituti_0_1
     port map (
      character_clk => local_clock_generator_character_clk,
      control => alignment_substituti_0_control,
      frame_end => local_clock_generator_frame_end,
      multiframe_end => local_clock_generator_multiframe_end,
      octet_in(7 downto 0) => scrambler_octet_out(7 downto 0),
      octet_out(7 downto 0) => alignment_substituti_0_octet_out(7 downto 0),
      scramble_enable => scramble_enable_1
    );
clk_wiz: component transmitter_clk_wiz_0_0
     port map (
      clk_in1_n => CLK_IN1_D_0_1_CLK_N,
      clk_in1_p => CLK_IN1_D_0_1_CLK_P,
      clk_out1 => clk_wiz_0_clk_out1
    );
encoder_wrapper: component transmitter_encoder_wrapper_0_0
     port map (
      RD => NLW_encoder_wrapper_RD_UNCONNECTED,
      character_clk => local_clock_generator_character_clk,
      control => MUX_control_D(0),
      initial_RD => '0',
      invalid_control => NLW_encoder_wrapper_invalid_control_UNCONNECTED,
      octet(7 downto 0) => MUX_octets_D(7 downto 0),
      rst => util_vector_logic_0_Res(0),
      symbol(9 downto 0) => encoder_wrapper_0_symbol(9 downto 0)
    );
local_clock_generator: component transmitter_local_clock_generator_0_0
     port map (
      LMF_clk => NLW_local_clock_generator_LMF_clk_UNCONNECTED,
      SYSREF => SYSREF_0_1,
      bit_clk => local_clock_generator_bit_clk,
      character_clk => local_clock_generator_character_clk,
      device_clk => clk_wiz_0_clk_out1,
      frame_clk => local_clock_generator_frame_clk,
      frame_end => local_clock_generator_frame_end,
      multiframe_end => local_clock_generator_multiframe_end,
      multiframe_start => local_clock_generator_multiframe_start,
      rst => util_vector_logic_0_Res(0),
      sample_clk => local_clock_generator_sample_clk
    );
scrambler: component transmitter_scrambler_0_1
     port map (
      octet_in(7 downto 0) => single_ADC_frame_map_0_octet(7 downto 0),
      octet_out(7 downto 0) => scrambler_octet_out(7 downto 0),
      scramble_enable => scramble_enable_1
    );
serializer: component transmitter_serializer_0_0
     port map (
      bit_clk => local_clock_generator_bit_clk,
      parallel_data(9 downto 0) => encoder_wrapper_0_symbol(9 downto 0),
      serial_data => serializer_0_serial_data
    );
single_ADC_frame_map: component transmitter_single_ADC_frame_map_0_0
     port map (
      character_clk => local_clock_generator_character_clk,
      octet(7 downto 0) => single_ADC_frame_map_0_octet(7 downto 0),
      rst => util_vector_logic_0_Res(0),
      sample(11 downto 0) => MUX_2x1_0_C(11 downto 0),
      sample_clk => local_clock_generator_sample_clk
    );
sync_decoder: component transmitter_sync_decoder_0_0
     port map (
      frame_clk => local_clock_generator_frame_clk,
      rst => util_vector_logic_0_Res(0),
      sync => SYNC_1,
      sync_request => sync_decoder_0_sync_request
    );
transmitter_state: component transmitter_transmitter_state_0_0
     port map (
      CGS_complete => CGS_Generator_CGS_complete,
      ILA_last => ILAS_generator_ILA_last,
      character_clk => local_clock_generator_character_clk,
      enable_CGS => transmitter_state_enlable_CGS,
      enable_ILAS => transmitter_state_0_enable_ILAS,
      multiframe_start => local_clock_generator_multiframe_start,
      rst => util_vector_logic_0_Res(0),
      state_out(1 downto 0) => transmitter_state_state_out(1 downto 0),
      sync_request => sync_decoder_0_sync_request
    );
util_vector_logic_0: component transmitter_util_vector_logic_0_0
     port map (
      Op1(0) => rst_1,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
