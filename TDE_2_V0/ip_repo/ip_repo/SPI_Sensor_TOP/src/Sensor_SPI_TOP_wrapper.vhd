--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Dec  6 16:05:13 2022
--Host        : ron running 64-bit major release  (build 9200)
--Command     : generate_target Sensor_SPI_TOP_wrapper.bd
--Design      : Sensor_SPI_TOP_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Sensor_SPI_TOP_wrapper is
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
end Sensor_SPI_TOP_wrapper;

architecture STRUCTURE of Sensor_SPI_TOP_wrapper is
  component Sensor_SPI_TOP is
  port (
    OUTPUT_128 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    Valid : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Ready : in STD_LOGIC;
    CLK_1M : out STD_LOGIC;
    ADC_X_cnv : out STD_LOGIC;
    ADC_X_sck : out STD_LOGIC;
    ADC_X_sdi : out STD_LOGIC;
    ADC_X_sdo : in STD_LOGIC;
    ADC_Y_cnv : out STD_LOGIC;
    ADC_Y_sck : out STD_LOGIC;
    ADC_Y_sdi : out STD_LOGIC;
    ADC_Y_sdo : in STD_LOGIC;
    ADC_W_cnv : out STD_LOGIC;
    ADC_W_sck : out STD_LOGIC;
    ADC_W_sdi : out STD_LOGIC;
    ADC_W_sdo : in STD_LOGIC;
    ADC_Z_cnv : out STD_LOGIC;
    ADC_Z_sck : out STD_LOGIC;
    ADC_Z_sdi : out STD_LOGIC;
    ADC_Z_sdo : in STD_LOGIC
  );
  end component Sensor_SPI_TOP;
begin
Sensor_SPI_TOP_i: component Sensor_SPI_TOP
     port map (
      ADC_W_cnv => ADC_W_cnv,
      ADC_W_sck => ADC_W_sck,
      ADC_W_sdi => ADC_W_sdi,
      ADC_W_sdo => ADC_W_sdo,
      ADC_X_cnv => ADC_X_cnv,
      ADC_X_sck => ADC_X_sck,
      ADC_X_sdi => ADC_X_sdi,
      ADC_X_sdo => ADC_X_sdo,
      ADC_Y_cnv => ADC_Y_cnv,
      ADC_Y_sck => ADC_Y_sck,
      ADC_Y_sdi => ADC_Y_sdi,
      ADC_Y_sdo => ADC_Y_sdo,
      ADC_Z_cnv => ADC_Z_cnv,
      ADC_Z_sck => ADC_Z_sck,
      ADC_Z_sdi => ADC_Z_sdi,
      ADC_Z_sdo => ADC_Z_sdo,
      CLK => CLK,
      CLK_1M => CLK_1M,
      OUTPUT_128(127 downto 0) => OUTPUT_128(127 downto 0),
      Ready => Ready,
      Valid => Valid
    );
end STRUCTURE;
