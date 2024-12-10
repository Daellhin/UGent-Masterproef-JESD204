--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Tue Dec 10 20:20:26 2024
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
    sample_clk_0 : out STD_LOGIC;
    samples_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    scramble_enable : in STD_LOGIC;
    serial_data_0 : out STD_LOGIC;
    source_clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of transmitter : entity is "transmitter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmitter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,""""""""""""da_board_cnt""""""""""""=2,""""""""""""da_clkrst_cnt""""""""""""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of transmitter : entity is "transmitter.hwdef";
end transmitter;

architecture STRUCTURE of transmitter is
  component transmitter_synchroniser_0_0 is
  port (
    SYNC : in STD_LOGIC;
    octet : out STD_LOGIC_VECTOR ( 7 downto 0 );
    synchronising : out STD_LOGIC
  );
  end component transmitter_synchroniser_0_0;
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
    LMF_clk : out STD_LOGIC
  );
  end component transmitter_local_clock_generator_0_0;
  component transmitter_frame_mapper_0_0 is
  port (
    samples : in STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_clk : in STD_LOGIC;
    octet_stream : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_frame_mapper_0_0;
  component transmitter_scrambler_0_1 is
  port (
    enable : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_scrambler_0_1;
  component transmitter_mux_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_mux_0_0;
  component transmitter_encoder_0_0 is
  port (
    character_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    control : in STD_LOGIC;
    octet : in STD_LOGIC_VECTOR ( 7 downto 0 );
    symbol : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component transmitter_encoder_0_0;
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
  component transmitter_mux_0_2 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_mux_0_2;
  signal MUX_C : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SYNC_1 : STD_LOGIC;
  signal alignment_substititution_control : STD_LOGIC;
  signal alignment_substititution_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clock_generator_0_device_clk : STD_LOGIC;
  signal clock_generator_0_sysref : STD_LOGIC;
  signal encoder_0_encoded_8b10b : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal frame_mapper_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gigabit_transceiver_serial_data : STD_LOGIC;
  signal local_clock_generator_bit_clk : STD_LOGIC;
  signal local_clock_generator_character_clk : STD_LOGIC;
  signal local_clock_generator_frame_clk : STD_LOGIC;
  signal local_clock_generator_sample_clk : STD_LOGIC;
  signal mux_0_C : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_1 : STD_LOGIC;
  signal samples_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal scramble_enable_1 : STD_LOGIC;
  signal scrambler_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal source_clk_1 : STD_LOGIC;
  signal synchroniser_0_character : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal synchroniser_0_synchronised : STD_LOGIC;
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
  sample_clk_0 <= local_clock_generator_sample_clk;
  samples_0_1(31 downto 0) <= samples_0(31 downto 0);
  scramble_enable_1 <= scramble_enable;
  serial_data_0 <= gigabit_transceiver_serial_data;
  source_clk_1 <= source_clk;
MUX_control: component transmitter_mux_0_2
     port map (
      A(0) => synchroniser_0_synchronised,
      B(0) => alignment_substititution_control,
      C(0) => mux_0_C(0),
      sel => synchroniser_0_synchronised
    );
MUX_octets: component transmitter_mux_0_0
     port map (
      A(7 downto 0) => synchroniser_0_character(7 downto 0),
      B(7 downto 0) => alignment_substititution_octet_out(7 downto 0),
      C(7 downto 0) => MUX_C(7 downto 0),
      sel => synchroniser_0_synchronised
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
encoder_8b10b: component transmitter_encoder_0_0
     port map (
      character_clk => local_clock_generator_frame_clk,
      control => mux_0_C(0),
      octet(7 downto 0) => MUX_C(7 downto 0),
      rst => rst_1,
      symbol(9 downto 0) => encoder_0_encoded_8b10b(9 downto 0)
    );
frame_mapper: component transmitter_frame_mapper_0_0
     port map (
      frame_clk => local_clock_generator_frame_clk,
      octet_stream(7 downto 0) => frame_mapper_octet_out(7 downto 0),
      samples(31 downto 0) => samples_0_1(31 downto 0)
    );
gigabit_transceiver: component transmitter_gigabit_transceiver_0_0
     port map (
      bit_clk => local_clock_generator_bit_clk,
      serial_data => gigabit_transceiver_serial_data,
      symbol(9 downto 0) => encoder_0_encoded_8b10b(9 downto 0)
    );
local_clock_generator: component transmitter_local_clock_generator_0_0
     port map (
      LMF_clk => NLW_local_clock_generator_LMF_clk_UNCONNECTED,
      bit_clk => local_clock_generator_bit_clk,
      character_clk => local_clock_generator_character_clk,
      device_clk => clock_generator_0_device_clk,
      frame_clk => local_clock_generator_frame_clk,
      sample_clk => local_clock_generator_sample_clk,
      sysref => clock_generator_0_sysref
    );
scrambler: component transmitter_scrambler_0_1
     port map (
      enable => scramble_enable_1,
      octet_in(7 downto 0) => frame_mapper_octet_out(7 downto 0),
      octet_out(7 downto 0) => scrambler_octet_out(7 downto 0)
    );
synchroniser: component transmitter_synchroniser_0_0
     port map (
      SYNC => SYNC_1,
      octet(7 downto 0) => synchroniser_0_character(7 downto 0),
      synchronising => synchroniser_0_synchronised
    );
end STRUCTURE;
