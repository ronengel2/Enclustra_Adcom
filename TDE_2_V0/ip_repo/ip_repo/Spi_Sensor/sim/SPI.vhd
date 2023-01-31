--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Wed Dec 21 15:47:45 2022
--Host        : ron running 64-bit major release  (build 9200)
--Command     : generate_target SPI.bd
--Design      : SPI
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI is
  port (
    CLK : in STD_LOGIC;
    CLK_1M_0 : out STD_LOGIC;
    CNV : out STD_LOGIC;
    Ready : in STD_LOGIC;
    SCK : out STD_LOGIC;
    SDI : out STD_LOGIC;
    SDO : in STD_LOGIC;
    Valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SPI : entity is "SPI,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SPI,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SPI : entity is "SPI.hwdef";
end SPI;

architecture STRUCTURE of SPI is
  component SPI_AD4006_Controller_0_0 is
  port (
    CLK : in STD_LOGIC;
    SCK : out STD_LOGIC;
    SDI : out STD_LOGIC;
    SDO : in STD_LOGIC;
    CNV : out STD_LOGIC;
    Ready : in STD_LOGIC;
    Valid : out STD_LOGIC;
    CLK_1M : out STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component SPI_AD4006_Controller_0_0;
  component SPI_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component SPI_xlconstant_0_1;
  component SPI_Parallel_FIR_Filter_0_1 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 17 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component SPI_Parallel_FIR_Filter_0_1;
  signal AD4006_3_wire_0_CNV : STD_LOGIC;
  signal AD4006_3_wire_0_SCK : STD_LOGIC;
  signal AD4006_3_wire_0_SDI : STD_LOGIC;
  signal AD4006_Controller_0_CLK_1M : STD_LOGIC;
  signal AD4006_Controller_0_DataOut : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal AD4006_Controller_0_Valid : STD_LOGIC;
  signal CLK_0_1 : STD_LOGIC;
  signal Parallel_FIR_Filter_0_data_o : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal Ready_0_1 : STD_LOGIC;
  signal SDO_0_1 : STD_LOGIC;
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN SPI_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  CLK_0_1 <= CLK;
  CLK_1M_0 <= AD4006_Controller_0_CLK_1M;
  CNV <= AD4006_3_wire_0_CNV;
  Ready_0_1 <= Ready;
  SCK <= AD4006_3_wire_0_SCK;
  SDI <= AD4006_3_wire_0_SDI;
  SDO_0_1 <= SDO;
  Valid <= AD4006_Controller_0_Valid;
  data(17 downto 0) <= Parallel_FIR_Filter_0_data_o(17 downto 0);
AD4006_Controller_0: component SPI_AD4006_Controller_0_0
     port map (
      CLK => CLK_0_1,
      CLK_1M => AD4006_Controller_0_CLK_1M,
      CNV => AD4006_3_wire_0_CNV,
      DataOut(17 downto 0) => AD4006_Controller_0_DataOut(17 downto 0),
      Ready => Ready_0_1,
      SCK => AD4006_3_wire_0_SCK,
      SDI => AD4006_3_wire_0_SDI,
      SDO => SDO_0_1,
      Valid => AD4006_Controller_0_Valid
    );
Parallel_FIR_Filter_0: component SPI_Parallel_FIR_Filter_0_1
     port map (
      clk => AD4006_Controller_0_CLK_1M,
      data_i(17 downto 0) => AD4006_Controller_0_DataOut(17 downto 0),
      data_o(17 downto 0) => Parallel_FIR_Filter_0_data_o(17 downto 0),
      enable => xlconstant_1_dout(0)
    );
xlconstant_1: component SPI_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
