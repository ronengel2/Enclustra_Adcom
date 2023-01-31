-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 20 10:43:32 2022
-- Host        : ron running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/ip_repo/SensorADC_axis/ip_repo/ADC_Sensor_axis_1.0/src/SPI_Sensor_0/SPI_Sensor_0_stub.vhdl
-- Design      : SPI_Sensor_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SPI_Sensor_0 is
  Port ( 
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

end SPI_Sensor_0;

architecture stub of SPI_Sensor_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CLK_1M_0,CNV,Ready,SCK,SDI,SDO,Valid,data[17:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SPI_wrapper,Vivado 2020.2";
begin
end;
