--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Dec  6 16:05:13 2022
--Host        : ron running 64-bit major release  (build 9200)
--Command     : generate_target Sensor_SPI_TOP.bd
--Design      : Sensor_SPI_TOP
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Sensor_SPI_TOP is
  port (
    ADC_W_cnv : out STD_LOGIC;
    ADC_W_sck : out STD_LOGIC;
    ADC_W_sdi : out STD_LOGIC;
    ADC_W_sdo : in STD_LOGIC;
    ADC_X_cnv : out STD_LOGIC;
    ADC_X_sck : out STD_LOGIC;
    ADC_X_sdi : out STD_LOGIC;
    ADC_X_sdo : in STD_LOGIC;
    ADC_Y_cnv : out STD_LOGIC;
    ADC_Y_sck : out STD_LOGIC;
    ADC_Y_sdi : out STD_LOGIC;
    ADC_Y_sdo : in STD_LOGIC;
    ADC_Z_cnv : out STD_LOGIC;
    ADC_Z_sck : out STD_LOGIC;
    ADC_Z_sdi : out STD_LOGIC;
    ADC_Z_sdo : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CLK_1M : out STD_LOGIC;
    OUTPUT_128 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    Ready : in STD_LOGIC;
    Valid : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Sensor_SPI_TOP : entity is "Sensor_SPI_TOP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Sensor_SPI_TOP,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Sensor_SPI_TOP : entity is "Sensor_SPI_TOP.hwdef";
end Sensor_SPI_TOP;

architecture STRUCTURE of Sensor_SPI_TOP is
  component Sensor_SPI_TOP_Resize_IN_0_0 is
  port (
    DATA_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Sensor_SPI_TOP_Resize_IN_0_0;
  component Sensor_SPI_TOP_Resize_IN_0_1 is
  port (
    DATA_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Sensor_SPI_TOP_Resize_IN_0_1;
  component Sensor_SPI_TOP_Resize_IN_0_2 is
  port (
    DATA_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Sensor_SPI_TOP_Resize_IN_0_2;
  component Sensor_SPI_TOP_Resize_IN_0_3 is
  port (
    DATA_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DATA_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Sensor_SPI_TOP_Resize_IN_0_3;
  component Sensor_SPI_TOP_Conv_TO_128B_0_0 is
  port (
    IN_X : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_Y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_Z : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_W : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VALID_X : in STD_LOGIC;
    VALID_Y : in STD_LOGIC;
    VALID_Z : in STD_LOGIC;
    VALID_W : in STD_LOGIC;
    OUTPUT_128 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    Valid : out STD_LOGIC
  );
  end component Sensor_SPI_TOP_Conv_TO_128B_0_0;
  component Sensor_SPI_TOP_SPI_Sensor_0_0 is
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
  end component Sensor_SPI_TOP_SPI_Sensor_0_0;
  component Sensor_SPI_TOP_SPI_Sensor_0_1 is
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
  end component Sensor_SPI_TOP_SPI_Sensor_0_1;
  component Sensor_SPI_TOP_SPI_Sensor_0_2 is
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
  end component Sensor_SPI_TOP_SPI_Sensor_0_2;
  component Sensor_SPI_TOP_SPI_Sensor_0_3 is
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
  end component Sensor_SPI_TOP_SPI_Sensor_0_3;
  signal CLK_0_1 : STD_LOGIC;
  signal Conv_TO_128B_0_OUTPUT_128 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conv_TO_128B_0_Valid : STD_LOGIC;
  signal Ready_0_1 : STD_LOGIC;
  signal Resize_IN_0_DATA_OUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Resize_IN_1_DATA_OUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Resize_IN_2_DATA_OUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Resize_IN_3_DATA_OUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SPI_Sensor_0_ADC_CNV : STD_LOGIC;
  signal SPI_Sensor_0_ADC_SCK : STD_LOGIC;
  signal SPI_Sensor_0_ADC_SDI : STD_LOGIC;
  signal SPI_Sensor_0_ADC_SDO : STD_LOGIC;
  signal SPI_Sensor_0_Valid : STD_LOGIC;
  signal SPI_Sensor_0_data : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal SPI_Sensor_1_ADC_CNV : STD_LOGIC;
  signal SPI_Sensor_1_ADC_SCK : STD_LOGIC;
  signal SPI_Sensor_1_ADC_SDI : STD_LOGIC;
  signal SPI_Sensor_1_ADC_SDO : STD_LOGIC;
  signal SPI_Sensor_1_CLK_1M_0 : STD_LOGIC;
  signal SPI_Sensor_1_Valid : STD_LOGIC;
  signal SPI_Sensor_1_data : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal SPI_Sensor_2_ADC_CNV : STD_LOGIC;
  signal SPI_Sensor_2_ADC_SCK : STD_LOGIC;
  signal SPI_Sensor_2_ADC_SDI : STD_LOGIC;
  signal SPI_Sensor_2_ADC_SDO : STD_LOGIC;
  signal SPI_Sensor_2_Valid : STD_LOGIC;
  signal SPI_Sensor_2_data : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal SPI_Sensor_3_ADC_CNV : STD_LOGIC;
  signal SPI_Sensor_3_ADC_SCK : STD_LOGIC;
  signal SPI_Sensor_3_ADC_SDI : STD_LOGIC;
  signal SPI_Sensor_3_ADC_SDO : STD_LOGIC;
  signal SPI_Sensor_3_Valid : STD_LOGIC;
  signal SPI_Sensor_3_data : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_SPI_Sensor_0_CLK_1M_0_UNCONNECTED : STD_LOGIC;
  signal NLW_SPI_Sensor_2_CLK_1M_0_UNCONNECTED : STD_LOGIC;
  signal NLW_SPI_Sensor_3_CLK_1M_0_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_W_cnv : signal is "adcom.local:user:SPI:1.0 ADC_W CNV";
  attribute X_INTERFACE_INFO of ADC_W_sck : signal is "adcom.local:user:SPI:1.0 ADC_W SCK";
  attribute X_INTERFACE_INFO of ADC_W_sdi : signal is "adcom.local:user:SPI:1.0 ADC_W SDI";
  attribute X_INTERFACE_INFO of ADC_W_sdo : signal is "adcom.local:user:SPI:1.0 ADC_W SDO";
  attribute X_INTERFACE_INFO of ADC_X_cnv : signal is "adcom.local:user:SPI:1.0 ADC_X CNV";
  attribute X_INTERFACE_INFO of ADC_X_sck : signal is "adcom.local:user:SPI:1.0 ADC_X SCK";
  attribute X_INTERFACE_INFO of ADC_X_sdi : signal is "adcom.local:user:SPI:1.0 ADC_X SDI";
  attribute X_INTERFACE_INFO of ADC_X_sdo : signal is "adcom.local:user:SPI:1.0 ADC_X SDO";
  attribute X_INTERFACE_INFO of ADC_Y_cnv : signal is "adcom.local:user:SPI:1.0 ADC_Y CNV";
  attribute X_INTERFACE_INFO of ADC_Y_sck : signal is "adcom.local:user:SPI:1.0 ADC_Y SCK";
  attribute X_INTERFACE_INFO of ADC_Y_sdi : signal is "adcom.local:user:SPI:1.0 ADC_Y SDI";
  attribute X_INTERFACE_INFO of ADC_Y_sdo : signal is "adcom.local:user:SPI:1.0 ADC_Y SDO";
  attribute X_INTERFACE_INFO of ADC_Z_cnv : signal is "adcom.local:user:SPI:1.0 ADC_Z CNV";
  attribute X_INTERFACE_INFO of ADC_Z_sck : signal is "adcom.local:user:SPI:1.0 ADC_Z SCK";
  attribute X_INTERFACE_INFO of ADC_Z_sdi : signal is "adcom.local:user:SPI:1.0 ADC_Z SDI";
  attribute X_INTERFACE_INFO of ADC_Z_sdo : signal is "adcom.local:user:SPI:1.0 ADC_Z SDO";
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Sensor_SPI_TOP_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ADC_W_cnv <= SPI_Sensor_2_ADC_CNV;
  ADC_W_sck <= SPI_Sensor_2_ADC_SCK;
  ADC_W_sdi <= SPI_Sensor_2_ADC_SDI;
  ADC_X_cnv <= SPI_Sensor_0_ADC_CNV;
  ADC_X_sck <= SPI_Sensor_0_ADC_SCK;
  ADC_X_sdi <= SPI_Sensor_0_ADC_SDI;
  ADC_Y_cnv <= SPI_Sensor_3_ADC_CNV;
  ADC_Y_sck <= SPI_Sensor_3_ADC_SCK;
  ADC_Y_sdi <= SPI_Sensor_3_ADC_SDI;
  ADC_Z_cnv <= SPI_Sensor_1_ADC_CNV;
  ADC_Z_sck <= SPI_Sensor_1_ADC_SCK;
  ADC_Z_sdi <= SPI_Sensor_1_ADC_SDI;
  CLK_0_1 <= CLK;
  CLK_1M <= SPI_Sensor_1_CLK_1M_0;
  OUTPUT_128(127 downto 0) <= Conv_TO_128B_0_OUTPUT_128(127 downto 0);
  Ready_0_1 <= Ready;
  SPI_Sensor_0_ADC_SDO <= ADC_X_sdo;
  SPI_Sensor_1_ADC_SDO <= ADC_Z_sdo;
  SPI_Sensor_2_ADC_SDO <= ADC_W_sdo;
  SPI_Sensor_3_ADC_SDO <= ADC_Y_sdo;
  Valid <= Conv_TO_128B_0_Valid;
Conv_TO_128B_0: component Sensor_SPI_TOP_Conv_TO_128B_0_0
     port map (
      IN_W(31 downto 0) => Resize_IN_3_DATA_OUT(31 downto 0),
      IN_X(31 downto 0) => Resize_IN_0_DATA_OUT(31 downto 0),
      IN_Y(31 downto 0) => Resize_IN_1_DATA_OUT(31 downto 0),
      IN_Z(31 downto 0) => Resize_IN_2_DATA_OUT(31 downto 0),
      OUTPUT_128(127 downto 0) => Conv_TO_128B_0_OUTPUT_128(127 downto 0),
      VALID_W => SPI_Sensor_2_Valid,
      VALID_X => SPI_Sensor_0_Valid,
      VALID_Y => SPI_Sensor_3_Valid,
      VALID_Z => SPI_Sensor_1_Valid,
      Valid => Conv_TO_128B_0_Valid
    );
Resize_IN_0: component Sensor_SPI_TOP_Resize_IN_0_0
     port map (
      DATA_IN(17 downto 0) => SPI_Sensor_0_data(17 downto 0),
      DATA_OUT(31 downto 0) => Resize_IN_0_DATA_OUT(31 downto 0)
    );
Resize_IN_1: component Sensor_SPI_TOP_Resize_IN_0_1
     port map (
      DATA_IN(17 downto 0) => SPI_Sensor_3_data(17 downto 0),
      DATA_OUT(31 downto 0) => Resize_IN_1_DATA_OUT(31 downto 0)
    );
Resize_IN_2: component Sensor_SPI_TOP_Resize_IN_0_2
     port map (
      DATA_IN(17 downto 0) => SPI_Sensor_1_data(17 downto 0),
      DATA_OUT(31 downto 0) => Resize_IN_2_DATA_OUT(31 downto 0)
    );
Resize_IN_3: component Sensor_SPI_TOP_Resize_IN_0_3
     port map (
      DATA_IN(17 downto 0) => SPI_Sensor_2_data(17 downto 0),
      DATA_OUT(31 downto 0) => Resize_IN_3_DATA_OUT(31 downto 0)
    );
SPI_Sensor_0: component Sensor_SPI_TOP_SPI_Sensor_0_0
     port map (
      CLK => CLK_0_1,
      CLK_1M_0 => NLW_SPI_Sensor_0_CLK_1M_0_UNCONNECTED,
      CNV => SPI_Sensor_0_ADC_CNV,
      Ready => Ready_0_1,
      SCK => SPI_Sensor_0_ADC_SCK,
      SDI => SPI_Sensor_0_ADC_SDI,
      SDO => SPI_Sensor_0_ADC_SDO,
      Valid => SPI_Sensor_0_Valid,
      data(17 downto 0) => SPI_Sensor_0_data(17 downto 0)
    );
SPI_Sensor_1: component Sensor_SPI_TOP_SPI_Sensor_0_1
     port map (
      CLK => CLK_0_1,
      CLK_1M_0 => SPI_Sensor_1_CLK_1M_0,
      CNV => SPI_Sensor_1_ADC_CNV,
      Ready => Ready_0_1,
      SCK => SPI_Sensor_1_ADC_SCK,
      SDI => SPI_Sensor_1_ADC_SDI,
      SDO => SPI_Sensor_1_ADC_SDO,
      Valid => SPI_Sensor_1_Valid,
      data(17 downto 0) => SPI_Sensor_1_data(17 downto 0)
    );
SPI_Sensor_2: component Sensor_SPI_TOP_SPI_Sensor_0_2
     port map (
      CLK => CLK_0_1,
      CLK_1M_0 => NLW_SPI_Sensor_2_CLK_1M_0_UNCONNECTED,
      CNV => SPI_Sensor_2_ADC_CNV,
      Ready => Ready_0_1,
      SCK => SPI_Sensor_2_ADC_SCK,
      SDI => SPI_Sensor_2_ADC_SDI,
      SDO => SPI_Sensor_2_ADC_SDO,
      Valid => SPI_Sensor_2_Valid,
      data(17 downto 0) => SPI_Sensor_2_data(17 downto 0)
    );
SPI_Sensor_3: component Sensor_SPI_TOP_SPI_Sensor_0_3
     port map (
      CLK => CLK_0_1,
      CLK_1M_0 => NLW_SPI_Sensor_3_CLK_1M_0_UNCONNECTED,
      CNV => SPI_Sensor_3_ADC_CNV,
      Ready => Ready_0_1,
      SCK => SPI_Sensor_3_ADC_SCK,
      SDI => SPI_Sensor_3_ADC_SDI,
      SDO => SPI_Sensor_3_ADC_SDO,
      Valid => SPI_Sensor_3_Valid,
      data(17 downto 0) => SPI_Sensor_3_data(17 downto 0)
    );
end STRUCTURE;
