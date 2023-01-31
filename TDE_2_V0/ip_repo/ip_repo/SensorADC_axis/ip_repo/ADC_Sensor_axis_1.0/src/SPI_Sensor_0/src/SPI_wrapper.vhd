--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Dec  6 12:54:45 2022
--Host        : ron running 64-bit major release  (build 9200)
--Command     : generate_target SPI_wrapper.bd
--Design      : SPI_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_wrapper is
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
end SPI_wrapper;

architecture STRUCTURE of SPI_wrapper is
  component SPI is
  port (
    CNV : out STD_LOGIC;
    SCK : out STD_LOGIC;
    SDI : out STD_LOGIC;
    SDO : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Valid : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 17 downto 0 );
    CLK_1M_0 : out STD_LOGIC;
    Ready : in STD_LOGIC
  );
  end component SPI;
begin
SPI_i: component SPI
     port map (
      CLK => CLK,
      CLK_1M_0 => CLK_1M_0,
      CNV => CNV,
      Ready => Ready,
      SCK => SCK,
      SDI => SDI,
      SDO => SDO,
      Valid => Valid,
      data(17 downto 0) => data(17 downto 0)
    );
end STRUCTURE;
