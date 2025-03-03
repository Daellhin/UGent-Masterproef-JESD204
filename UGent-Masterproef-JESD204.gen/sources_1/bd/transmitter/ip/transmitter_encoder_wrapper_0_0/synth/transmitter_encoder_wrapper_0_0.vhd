-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:encoder_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY transmitter_encoder_wrapper_0_0 IS
  PORT (
    character_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    initial_RD : IN STD_LOGIC;
    octet : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    control : IN STD_LOGIC;
    symbol : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    invalid_control : OUT STD_LOGIC;
    RD : OUT STD_LOGIC
  );
END transmitter_encoder_wrapper_0_0;

ARCHITECTURE transmitter_encoder_wrapper_0_0_arch OF transmitter_encoder_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF transmitter_encoder_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT encoder_wrapper IS
    PORT (
      character_clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      initial_RD : IN STD_LOGIC;
      octet : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      control : IN STD_LOGIC;
      symbol : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      invalid_control : OUT STD_LOGIC;
      RD : OUT STD_LOGIC
    );
  END COMPONENT encoder_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF transmitter_encoder_wrapper_0_0_arch: ARCHITECTURE IS "encoder_wrapper,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF transmitter_encoder_wrapper_0_0_arch : ARCHITECTURE IS "transmitter_encoder_wrapper_0_0,encoder_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF transmitter_encoder_wrapper_0_0_arch: ARCHITECTURE IS "transmitter_encoder_wrapper_0_0,encoder_wrapper,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=encoder_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF transmitter_encoder_wrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF character_clk: SIGNAL IS "XIL_INTERFACENAME character_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN transmitter_local_clock_generator_0_0_character_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF character_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 character_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : encoder_wrapper
    PORT MAP (
      character_clk => character_clk,
      rst => rst,
      initial_RD => initial_RD,
      octet => octet,
      control => control,
      symbol => symbol,
      invalid_control => invalid_control,
      RD => RD
    );
END transmitter_encoder_wrapper_0_0_arch;
