-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:AD4006_Controller:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY SPI_AD4006_Controller_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    SCK : OUT STD_LOGIC;
    SDI : OUT STD_LOGIC;
    SDO : IN STD_LOGIC;
    CNV : OUT STD_LOGIC;
    Ready : IN STD_LOGIC;
    Valid : OUT STD_LOGIC;
    CLK_1M : OUT STD_LOGIC;
    DataOut : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END SPI_AD4006_Controller_0_0;

ARCHITECTURE SPI_AD4006_Controller_0_0_arch OF SPI_AD4006_Controller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF SPI_AD4006_Controller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AD4006_Controller IS
    PORT (
      CLK : IN STD_LOGIC;
      SCK : OUT STD_LOGIC;
      SDI : OUT STD_LOGIC;
      SDO : IN STD_LOGIC;
      CNV : OUT STD_LOGIC;
      Ready : IN STD_LOGIC;
      Valid : OUT STD_LOGIC;
      CLK_1M : OUT STD_LOGIC;
      DataOut : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
    );
  END COMPONENT AD4006_Controller;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF SPI_AD4006_Controller_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF CNV: SIGNAL IS "adcom.local:user:SPI:1.0 user_SPI CNV";
  ATTRIBUTE X_INTERFACE_INFO OF SDO: SIGNAL IS "adcom.local:user:SPI:1.0 user_SPI SDO";
  ATTRIBUTE X_INTERFACE_INFO OF SDI: SIGNAL IS "adcom.local:user:SPI:1.0 user_SPI SDI";
  ATTRIBUTE X_INTERFACE_INFO OF SCK: SIGNAL IS "adcom.local:user:SPI:1.0 user_SPI SCK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SPI_CLK_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : AD4006_Controller
    PORT MAP (
      CLK => CLK,
      SCK => SCK,
      SDI => SDI,
      SDO => SDO,
      CNV => CNV,
      Ready => Ready,
      Valid => Valid,
      CLK_1M => CLK_1M,
      DataOut => DataOut
    );
END SPI_AD4006_Controller_0_0_arch;
