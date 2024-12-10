--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Mon Nov  4 14:18:43 2024
--Host        : G16 running 64-bit major release  (build 9200)
--Command     : generate_target transmitter.bd
--Design      : transmitter
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Transport Layer
  -- Link Layer
  -- Physical layer
  entity transmitter is
  port (
    ADC_octet : in STD_LOGIC_VECTOR ( 0 to 0 );
    SYNC : in STD_LOGIC;
    rst : in STD_LOGIC;
    scramble_enable : in STD_LOGIC;
    serial_out : out STD_LOGIC;
    source_clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of transmitter : entity is "transmitter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmitter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,""""da_board_cnt""""=2,""""da_clkrst_cnt""""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of transmitter : entity is "transmitter.hwdef";
end transmitter;

architecture STRUCTURE of transmitter is
  component transmitter_gigabit_transceiver_0_0 is
  port (
    parallel_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    serial_data : out STD_LOGIC
  );
  end component transmitter_gigabit_transceiver_0_0;
  component transmitter_encoder_0_0 is
  port (
    charcter_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    control : in STD_LOGIC;
    octet : in STD_LOGIC_VECTOR ( 7 downto 0 );
    symbol : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component transmitter_encoder_0_0;
  component transmitter_scrambler_0_1 is
  port (
    enable : in STD_LOGIC;
    octet_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    octet_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_scrambler_0_1;
  component transmitter_synchroniser_0_0 is
  port (
    character : out STD_LOGIC_VECTOR ( 0 to 0 );
    synchronised : out STD_LOGIC;
    SYNC : in STD_LOGIC
  );
  end component transmitter_synchroniser_0_0;
  component transmitter_mux_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component transmitter_mux_0_0;
  component transmitter_frame_mapper_0_0 is
  port (
    octet_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    octet_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_frame_mapper_0_0;
  component transmitter_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component transmitter_util_vector_logic_0_0;
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
    LMF_clk : out STD_LOGIC
  );
  end component transmitter_local_clock_generator_0_0;
  signal ADC_octet_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SYNC_1 : STD_LOGIC;
  signal clock_generator_0_device_clk : STD_LOGIC;
  signal clock_generator_0_sysref : STD_LOGIC;
  signal encoder_0_encoded_8b10b : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal frame_mapper_0_octet_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gigabit_transceiver_0_serial_data : STD_LOGIC;
  signal local_clock_generator_frame_clk : STD_LOGIC;
  signal mux_0_C : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_1 : STD_LOGIC;
  signal scramble_enable_1 : STD_LOGIC;
  signal scrambler_0_octet_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal source_clk_1 : STD_LOGIC;
  signal synchroniser_0_character : STD_LOGIC_VECTOR ( 0 to 0 );
  signal synchroniser_0_synchronised : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_local_clock_generator_LMF_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_local_clock_generator_character_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_local_clock_generator_sample_clk_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of source_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SOURCE_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of source_clk : signal is "XIL_INTERFACENAME CLK.SOURCE_CLK, CLK_DOMAIN transmitter_source_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ADC_octet_1(0) <= ADC_octet(0);
  SYNC_1 <= SYNC;
  rst_1 <= rst;
  scramble_enable_1 <= scramble_enable;
  serial_out <= gigabit_transceiver_0_serial_data;
  source_clk_1 <= source_clk;
Invertor: component transmitter_util_vector_logic_0_0
     port map (
      Op1(0) => synchroniser_0_synchronised,
      Res(0) => util_vector_logic_0_Res(0)
    );
MUX: component transmitter_mux_0_0
     port map (
      A(7 downto 1) => B"0000000",
      A(0) => synchroniser_0_character(0),
      B(7 downto 0) => scrambler_0_octet_out(7 downto 0),
      C(7 downto 0) => mux_0_C(7 downto 0),
      sel => synchroniser_0_synchronised
    );
clock_generator: component transmitter_clock_generator_0_0
     port map (
      device_clk => clock_generator_0_device_clk,
      source_clk => source_clk_1,
      sysref => clock_generator_0_sysref
    );
encoder_8b10b: component transmitter_encoder_0_0
     port map (
      charcter_clk => local_clock_generator_frame_clk,
      control => util_vector_logic_0_Res(0),
      octet(7 downto 0) => mux_0_C(7 downto 0),
      rst => rst_1,
      symbol(9 downto 0) => encoder_0_encoded_8b10b(9 downto 0)
    );
frame_mapper: component transmitter_frame_mapper_0_0
     port map (
      octet_in(0) => ADC_octet_1(0),
      octet_out(0) => frame_mapper_0_octet_out(0)
    );
gigabit_transceiver: component transmitter_gigabit_transceiver_0_0
     port map (
      parallel_data(0) => encoder_0_encoded_8b10b(0),
      serial_data => gigabit_transceiver_0_serial_data
    );
local_clock_generator: component transmitter_local_clock_generator_0_0
     port map (
      LMF_clk => NLW_local_clock_generator_LMF_clk_UNCONNECTED,
      character_clk => NLW_local_clock_generator_character_clk_UNCONNECTED,
      device_clk => clock_generator_0_device_clk,
      frame_clk => local_clock_generator_frame_clk,
      sample_clk => NLW_local_clock_generator_sample_clk_UNCONNECTED,
      sysref => clock_generator_0_sysref
    );
scrambler: component transmitter_scrambler_0_1
     port map (
      enable => scramble_enable_1,
      octet_in(7 downto 1) => B"0000000",
      octet_in(0) => frame_mapper_0_octet_out(0),
      octet_out(7 downto 0) => scrambler_0_octet_out(7 downto 0)
    );
synchroniser: component transmitter_synchroniser_0_0
     port map (
      SYNC => SYNC_1,
      character(0) => synchroniser_0_character(0),
      synchronised => synchroniser_0_synchronised
    );
end STRUCTURE;
