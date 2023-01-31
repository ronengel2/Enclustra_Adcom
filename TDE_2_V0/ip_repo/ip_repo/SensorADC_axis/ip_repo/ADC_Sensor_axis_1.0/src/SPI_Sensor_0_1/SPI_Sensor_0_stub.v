// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 20 11:01:38 2022
// Host        : ron running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/ip_repo/SensorADC_axis/ip_repo/ADC_Sensor_axis_1.0/src/SPI_Sensor_0_1/SPI_Sensor_0_stub.v
// Design      : SPI_Sensor_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI_wrapper,Vivado 2020.2" *)
module SPI_Sensor_0(CLK, CLK_1M_0, CNV, Ready, SCK, SDI, SDO, Valid, data)
/* synthesis syn_black_box black_box_pad_pin="CLK,CLK_1M_0,CNV,Ready,SCK,SDI,SDO,Valid,data[17:0]" */;
  input CLK;
  output CLK_1M_0;
  output CNV;
  input Ready;
  output SCK;
  output SDI;
  input SDO;
  output Valid;
  output [17:0]data;
endmodule
