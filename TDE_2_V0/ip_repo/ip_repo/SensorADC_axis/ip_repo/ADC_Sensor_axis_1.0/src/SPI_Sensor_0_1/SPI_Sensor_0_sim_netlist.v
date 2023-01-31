// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 20 11:01:38 2022
// Host        : ron running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ip_repo/SensorADC_axis/ip_repo/ADC_Sensor_axis_1.0/src/SPI_Sensor_0_1/SPI_Sensor_0_sim_netlist.v
// Design      : SPI_Sensor_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPI_Sensor_0,SPI_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SPI_wrapper,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SPI_Sensor_0
   (CLK,
    CLK_1M_0,
    CNV,
    Ready,
    SCK,
    SDI,
    SDO,
    Valid,
    data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  output CLK_1M_0;
  (* x_interface_info = "adcom.local:user:SPI:1.0 ADC CNV" *) output CNV;
  input Ready;
  (* x_interface_info = "adcom.local:user:SPI:1.0 ADC SCK" *) output SCK;
  (* x_interface_info = "adcom.local:user:SPI:1.0 ADC SDI" *) output SDI;
  (* x_interface_info = "adcom.local:user:SPI:1.0 ADC SDO" *) input SDO;
  output Valid;
  output [17:0]data;

  wire \<const1> ;
  wire CLK;
  wire CLK_1M_0;
  wire CNV;
  wire SCK;
  wire SDO;
  wire Valid;
  wire [17:0]data;

  assign SDI = \<const1> ;
  SPI_Sensor_0_SPI_wrapper U0
       (.CLK(CLK),
        .CNV(CNV),
        .SCK(SCK),
        .SDO(SDO),
        .Valid(Valid),
        .clk(CLK_1M_0),
        .data(data));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "AD4006_Controller" *) 
module SPI_Sensor_0_AD4006_Controller
   (clk,
    Q,
    A,
    \DataOut_reg[17]_rep__0_0 ,
    \DataOut_reg[17]_rep__1_0 ,
    \DataOut_reg[17]_rep__4_0 ,
    \DataOut_reg[17]_rep__5_0 ,
    Valid,
    SCK,
    CNV,
    SDO,
    CNV_temp_reg_0);
  output clk;
  output [17:0]Q;
  output [17:0]A;
  output [17:0]\DataOut_reg[17]_rep__0_0 ;
  output [1:0]\DataOut_reg[17]_rep__1_0 ;
  output [1:0]\DataOut_reg[17]_rep__4_0 ;
  output [1:0]\DataOut_reg[17]_rep__5_0 ;
  output Valid;
  output SCK;
  output CNV;
  input SDO;
  input CNV_temp_reg_0;

  wire [17:0]A;
  wire CNV;
  wire \CNV_count[7]_i_3_n_0 ;
  wire [7:0]CNV_count_reg;
  wire CNV_delay_0;
  wire CNV_delay_1;
  wire CNV_delay_2;
  wire CNV_delay_count;
  wire \CNV_delay_count[0]_i_1_n_0 ;
  wire \CNV_delay_count[1]_i_1_n_0 ;
  wire \CNV_delay_count[2]_i_1_n_0 ;
  wire \CNV_delay_count[3]_i_1_n_0 ;
  wire \CNV_delay_count[4]_i_1_n_0 ;
  wire \CNV_delay_count_reg_n_0_[0] ;
  wire \CNV_delay_count_reg_n_0_[1] ;
  wire \CNV_delay_count_reg_n_0_[2] ;
  wire \CNV_delay_count_reg_n_0_[3] ;
  wire \CNV_delay_count_reg_n_0_[4] ;
  wire CNV_i_1_n_0;
  wire CNV_i_2_n_0;
  wire CNV_temp_i_1_n_0;
  wire CNV_temp_i_2_n_0;
  wire CNV_temp_reg_0;
  wire [17:0]\DataOut_reg[17]_rep__0_0 ;
  wire [1:0]\DataOut_reg[17]_rep__1_0 ;
  wire [1:0]\DataOut_reg[17]_rep__4_0 ;
  wire [1:0]\DataOut_reg[17]_rep__5_0 ;
  wire [17:0]Dshiftreg;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire [17:0]Q;
  wire SCK;
  wire SDO;
  wire Valid;
  wire Validd;
  wire Validd0;
  wire Validd_i_1_n_0;
  wire clear;
  wire clk;
  wire clk_en_out;
  wire clk_en_out_i_1_n_0;
  wire clk_en_out_i_2_n_0;
  wire clk_out_count;
  wire \clk_out_count[0]_i_1_n_0 ;
  wire \clk_out_count[1]_i_1_n_0 ;
  wire \clk_out_count[2]_i_1_n_0 ;
  wire \clk_out_count[3]_i_1_n_0 ;
  wire \clk_out_count[4]_i_1_n_0 ;
  wire \clk_out_count_reg_n_0_[0] ;
  wire \clk_out_count_reg_n_0_[1] ;
  wire \clk_out_count_reg_n_0_[2] ;
  wire \clk_out_count_reg_n_0_[3] ;
  wire \clk_out_count_reg_n_0_[4] ;
  wire [0:0]count_reg;
  wire [0:0]plusOp;
  wire [7:0]plusOp__0;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CNV_count[0]_i_1 
       (.I0(CNV_count_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CNV_count[1]_i_1 
       (.I0(CNV_count_reg[0]),
        .I1(CNV_count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CNV_count[2]_i_1 
       (.I0(CNV_count_reg[0]),
        .I1(CNV_count_reg[1]),
        .I2(CNV_count_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CNV_count[3]_i_1 
       (.I0(CNV_count_reg[1]),
        .I1(CNV_count_reg[0]),
        .I2(CNV_count_reg[2]),
        .I3(CNV_count_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CNV_count[4]_i_1 
       (.I0(CNV_count_reg[2]),
        .I1(CNV_count_reg[0]),
        .I2(CNV_count_reg[1]),
        .I3(CNV_count_reg[3]),
        .I4(CNV_count_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CNV_count[5]_i_1 
       (.I0(CNV_count_reg[3]),
        .I1(CNV_count_reg[1]),
        .I2(CNV_count_reg[0]),
        .I3(CNV_count_reg[2]),
        .I4(CNV_count_reg[4]),
        .I5(CNV_count_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CNV_count[6]_i_1 
       (.I0(\CNV_count[7]_i_3_n_0 ),
        .I1(CNV_count_reg[6]),
        .O(plusOp__0[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \CNV_count[7]_i_1 
       (.I0(CNV_count_reg[2]),
        .I1(CNV_count_reg[3]),
        .I2(CNV_count_reg[7]),
        .I3(CNV_count_reg[6]),
        .I4(CNV_temp_i_2_n_0),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CNV_count[7]_i_2 
       (.I0(\CNV_count[7]_i_3_n_0 ),
        .I1(CNV_count_reg[6]),
        .I2(CNV_count_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \CNV_count[7]_i_3 
       (.I0(CNV_count_reg[5]),
        .I1(CNV_count_reg[3]),
        .I2(CNV_count_reg[1]),
        .I3(CNV_count_reg[0]),
        .I4(CNV_count_reg[2]),
        .I5(CNV_count_reg[4]),
        .O(\CNV_count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[0] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(CNV_count_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[1] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(CNV_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[2] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(CNV_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[3] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(CNV_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[4] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(CNV_count_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[5] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(CNV_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[6] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(CNV_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_count_reg[7] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(CNV_count_reg[7]),
        .R(clear));
  FDRE CNV_delay_0_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(clk),
        .Q(CNV_delay_0),
        .R(1'b0));
  FDRE CNV_delay_1_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(CNV_delay_0),
        .Q(CNV_delay_1),
        .R(1'b0));
  FDRE CNV_delay_2_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(CNV_delay_1),
        .Q(CNV_delay_2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \CNV_delay_count[0]_i_1 
       (.I0(\CNV_delay_count_reg_n_0_[0] ),
        .O(\CNV_delay_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CNV_delay_count[1]_i_1 
       (.I0(\CNV_delay_count_reg_n_0_[1] ),
        .I1(\CNV_delay_count_reg_n_0_[0] ),
        .O(\CNV_delay_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3F3FC040)) 
    \CNV_delay_count[2]_i_1 
       (.I0(\CNV_delay_count_reg_n_0_[4] ),
        .I1(\CNV_delay_count_reg_n_0_[1] ),
        .I2(\CNV_delay_count_reg_n_0_[0] ),
        .I3(\CNV_delay_count_reg_n_0_[3] ),
        .I4(\CNV_delay_count_reg_n_0_[2] ),
        .O(\CNV_delay_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \CNV_delay_count[3]_i_1 
       (.I0(\CNV_delay_count_reg_n_0_[1] ),
        .I1(\CNV_delay_count_reg_n_0_[0] ),
        .I2(\CNV_delay_count_reg_n_0_[3] ),
        .I3(\CNV_delay_count_reg_n_0_[2] ),
        .O(\CNV_delay_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAA2A)) 
    \CNV_delay_count[4]_i_1 
       (.I0(\CNV_delay_count_reg_n_0_[4] ),
        .I1(\CNV_delay_count_reg_n_0_[1] ),
        .I2(\CNV_delay_count_reg_n_0_[0] ),
        .I3(\CNV_delay_count_reg_n_0_[3] ),
        .I4(\CNV_delay_count_reg_n_0_[2] ),
        .O(\CNV_delay_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_delay_count_reg[0] 
       (.C(count_reg),
        .CE(CNV_delay_count),
        .D(\CNV_delay_count[0]_i_1_n_0 ),
        .Q(\CNV_delay_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_delay_count_reg[1] 
       (.C(count_reg),
        .CE(CNV_delay_count),
        .D(\CNV_delay_count[1]_i_1_n_0 ),
        .Q(\CNV_delay_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_delay_count_reg[2] 
       (.C(count_reg),
        .CE(CNV_delay_count),
        .D(\CNV_delay_count[2]_i_1_n_0 ),
        .Q(\CNV_delay_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_delay_count_reg[3] 
       (.C(count_reg),
        .CE(CNV_delay_count),
        .D(\CNV_delay_count[3]_i_1_n_0 ),
        .Q(\CNV_delay_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CNV_delay_count_reg[4] 
       (.C(count_reg),
        .CE(CNV_delay_count),
        .D(\CNV_delay_count[4]_i_1_n_0 ),
        .Q(\CNV_delay_count_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFB0000)) 
    CNV_i_1
       (.I0(CNV_i_2_n_0),
        .I1(\CNV_delay_count_reg_n_0_[4] ),
        .I2(\CNV_delay_count_reg_n_0_[3] ),
        .I3(\CNV_delay_count_reg_n_0_[2] ),
        .I4(CNV_delay_count),
        .I5(CNV),
        .O(CNV_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    CNV_i_2
       (.I0(\CNV_delay_count_reg_n_0_[0] ),
        .I1(\CNV_delay_count_reg_n_0_[1] ),
        .O(CNV_i_2_n_0));
  FDRE CNV_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(CNV_i_1_n_0),
        .Q(CNV),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    CNV_temp_i_1
       (.I0(CNV_temp_i_2_n_0),
        .I1(CNV_count_reg[6]),
        .I2(CNV_count_reg[7]),
        .I3(CNV_count_reg[3]),
        .I4(CNV_count_reg[2]),
        .I5(clk),
        .O(CNV_temp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    CNV_temp_i_2
       (.I0(CNV_count_reg[4]),
        .I1(CNV_count_reg[0]),
        .I2(CNV_count_reg[1]),
        .I3(CNV_count_reg[5]),
        .O(CNV_temp_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CNV_temp_reg
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(CNV_temp_i_1_n_0),
        .Q(clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \DataOut[17]_i_1 
       (.I0(clk_out_count),
        .I1(\clk_out_count_reg_n_0_[0] ),
        .I2(\clk_out_count_reg_n_0_[1] ),
        .I3(\clk_out_count_reg_n_0_[4] ),
        .I4(\clk_out_count_reg_n_0_[3] ),
        .I5(\clk_out_count_reg_n_0_[2] ),
        .O(Validd));
  (* ORIG_CELL_NAME = "DataOut_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[0] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[0]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[0]),
        .Q(\DataOut_reg[17]_rep__0_0 [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[0]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[0]),
        .Q(A[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[10]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[10] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[10]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[10]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[10]),
        .Q(\DataOut_reg[17]_rep__0_0 [10]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[10]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[10]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[10]),
        .Q(A[10]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[11] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[11]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[11]),
        .Q(\DataOut_reg[17]_rep__0_0 [11]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[11]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[11]),
        .Q(A[11]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[12] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[12]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[12]),
        .Q(\DataOut_reg[17]_rep__0_0 [12]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[12]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[12]),
        .Q(A[12]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[13] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[13]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[13]),
        .Q(\DataOut_reg[17]_rep__0_0 [13]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[13]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[13]),
        .Q(A[13]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[14] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[14]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[14]),
        .Q(\DataOut_reg[17]_rep__0_0 [14]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[14]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[14]),
        .Q(A[14]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[15] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[15]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[15]),
        .Q(\DataOut_reg[17]_rep__0_0 [15]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[15]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[15]),
        .Q(A[15]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[16] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[16]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[16]),
        .Q(\DataOut_reg[17]_rep__0_0 [16]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[16]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[16]),
        .Q(A[16]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(A[17]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__0_0 [17]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__1 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__1_0 [1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__2 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__1_0 [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__3 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__4_0 [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__4 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__4_0 [1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__5 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__5_0 [1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[17]_rep__6 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[17]),
        .Q(\DataOut_reg[17]_rep__5_0 [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[1] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[1]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[1]),
        .Q(\DataOut_reg[17]_rep__0_0 [1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[1]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[1]),
        .Q(A[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[2] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[2]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[2]),
        .Q(\DataOut_reg[17]_rep__0_0 [2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[2]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[2]),
        .Q(A[2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[3] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[3]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[3]),
        .Q(\DataOut_reg[17]_rep__0_0 [3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[3]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[3]),
        .Q(A[3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[4] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[4]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[4]),
        .Q(\DataOut_reg[17]_rep__0_0 [4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[4]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[4]),
        .Q(A[4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[5] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[5]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[5]),
        .Q(\DataOut_reg[17]_rep__0_0 [5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[5]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[5]),
        .Q(A[5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[6] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[6]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[6]),
        .Q(\DataOut_reg[17]_rep__0_0 [6]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[6]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[6]),
        .Q(A[6]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[7] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[7]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[7]),
        .Q(\DataOut_reg[17]_rep__0_0 [7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[7]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[7]),
        .Q(A[7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[8] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[8]),
        .Q(Q[8]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[8]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[8]),
        .Q(\DataOut_reg[17]_rep__0_0 [8]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[8]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[8]),
        .Q(A[8]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[9] 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[9]_rep 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[9]),
        .Q(\DataOut_reg[17]_rep__0_0 [9]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "DataOut_reg[9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DataOut_reg[9]_rep__0 
       (.C(count_reg),
        .CE(Validd),
        .D(Dshiftreg[9]),
        .Q(A[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[0] 
       (.C(count_reg),
        .CE(1'b1),
        .D(SDO),
        .Q(Dshiftreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[10] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[9]),
        .Q(Dshiftreg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[11] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[10]),
        .Q(Dshiftreg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[12] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[11]),
        .Q(Dshiftreg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[13] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[12]),
        .Q(Dshiftreg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[14] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[13]),
        .Q(Dshiftreg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[15] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[14]),
        .Q(Dshiftreg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[16] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[15]),
        .Q(Dshiftreg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[17] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[16]),
        .Q(Dshiftreg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[1] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[0]),
        .Q(Dshiftreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[2] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[1]),
        .Q(Dshiftreg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[3] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[2]),
        .Q(Dshiftreg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[4] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[3]),
        .Q(Dshiftreg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[5] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[4]),
        .Q(Dshiftreg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[6] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[5]),
        .Q(Dshiftreg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[7] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[6]),
        .Q(Dshiftreg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[8] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[7]),
        .Q(Dshiftreg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Dshiftreg_reg[9] 
       (.C(count_reg),
        .CE(1'b1),
        .D(Dshiftreg[8]),
        .Q(Dshiftreg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF08FFFFFF08FF08)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Validd0),
        .I1(CNV_delay_1),
        .I2(CNV_delay_2),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(CNV_delay_count),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\clk_out_count_reg_n_0_[0] ),
        .I1(\clk_out_count_reg_n_0_[1] ),
        .I2(\clk_out_count_reg_n_0_[4] ),
        .I3(\clk_out_count_reg_n_0_[3] ),
        .I4(\clk_out_count_reg_n_0_[2] ),
        .I5(clk_out_count),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\CNV_delay_count_reg_n_0_[0] ),
        .I1(\CNV_delay_count_reg_n_0_[1] ),
        .I2(\CNV_delay_count_reg_n_0_[4] ),
        .I3(\CNV_delay_count_reg_n_0_[3] ),
        .I4(\CNV_delay_count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_ready:00,wait_for_conv_st:001,cnv_count_s:010,write_read_from_adc_st:100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(count_reg),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(clk_out_count),
        .Q(Validd0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_for_ready:00,wait_for_conv_st:001,cnv_count_s:010,write_read_from_adc_st:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(count_reg),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(Validd0),
        .Q(CNV_delay_count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_for_ready:00,wait_for_conv_st:001,cnv_count_s:010,write_read_from_adc_st:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(count_reg),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(CNV_delay_count),
        .Q(clk_out_count),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    SCK_INST_0
       (.I0(count_reg),
        .I1(clk_en_out),
        .O(SCK));
  LUT3 #(
    .INIT(8'h0E)) 
    Validd_i_1
       (.I0(Valid),
        .I1(Validd),
        .I2(Validd0),
        .O(Validd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Validd_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(Validd_i_1_n_0),
        .Q(Valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    clk_en_out_i_1
       (.I0(clk_en_out_i_2_n_0),
        .I1(clk_out_count),
        .I2(clk_en_out),
        .O(clk_en_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    clk_en_out_i_2
       (.I0(\clk_out_count_reg_n_0_[0] ),
        .I1(\clk_out_count_reg_n_0_[1] ),
        .I2(\clk_out_count_reg_n_0_[4] ),
        .I3(\clk_out_count_reg_n_0_[3] ),
        .I4(\clk_out_count_reg_n_0_[2] ),
        .O(clk_en_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_out_reg
       (.C(count_reg),
        .CE(1'b1),
        .D(clk_en_out_i_1_n_0),
        .Q(clk_en_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F0D0F0F)) 
    \clk_out_count[0]_i_1 
       (.I0(\clk_out_count_reg_n_0_[4] ),
        .I1(\clk_out_count_reg_n_0_[3] ),
        .I2(\clk_out_count_reg_n_0_[0] ),
        .I3(\clk_out_count_reg_n_0_[2] ),
        .I4(\clk_out_count_reg_n_0_[1] ),
        .O(\clk_out_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F0DF0F0)) 
    \clk_out_count[1]_i_1 
       (.I0(\clk_out_count_reg_n_0_[4] ),
        .I1(\clk_out_count_reg_n_0_[3] ),
        .I2(\clk_out_count_reg_n_0_[0] ),
        .I3(\clk_out_count_reg_n_0_[2] ),
        .I4(\clk_out_count_reg_n_0_[1] ),
        .O(\clk_out_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \clk_out_count[2]_i_1 
       (.I0(\clk_out_count_reg_n_0_[0] ),
        .I1(\clk_out_count_reg_n_0_[2] ),
        .I2(\clk_out_count_reg_n_0_[1] ),
        .O(\clk_out_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clk_out_count[3]_i_1 
       (.I0(\clk_out_count_reg_n_0_[3] ),
        .I1(\clk_out_count_reg_n_0_[0] ),
        .I2(\clk_out_count_reg_n_0_[2] ),
        .I3(\clk_out_count_reg_n_0_[1] ),
        .O(\clk_out_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AA8AAAA)) 
    \clk_out_count[4]_i_1 
       (.I0(\clk_out_count_reg_n_0_[4] ),
        .I1(\clk_out_count_reg_n_0_[3] ),
        .I2(\clk_out_count_reg_n_0_[0] ),
        .I3(\clk_out_count_reg_n_0_[2] ),
        .I4(\clk_out_count_reg_n_0_[1] ),
        .O(\clk_out_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_out_count_reg[0] 
       (.C(count_reg),
        .CE(clk_out_count),
        .D(\clk_out_count[0]_i_1_n_0 ),
        .Q(\clk_out_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_out_count_reg[1] 
       (.C(count_reg),
        .CE(clk_out_count),
        .D(\clk_out_count[1]_i_1_n_0 ),
        .Q(\clk_out_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_out_count_reg[2] 
       (.C(count_reg),
        .CE(clk_out_count),
        .D(\clk_out_count[2]_i_1_n_0 ),
        .Q(\clk_out_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_out_count_reg[3] 
       (.C(count_reg),
        .CE(clk_out_count),
        .D(\clk_out_count[3]_i_1_n_0 ),
        .Q(\clk_out_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_out_count_reg[4] 
       (.C(count_reg),
        .CE(clk_out_count),
        .D(\clk_out_count[4]_i_1_n_0 ),
        .Q(\clk_out_count_reg_n_0_[4] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg),
        .O(plusOp));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CNV_temp_reg_0),
        .CE(1'b1),
        .D(plusOp),
        .Q(count_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Parallel_FIR_Filter" *) 
module SPI_Sensor_0_Parallel_FIR_Filter
   (data,
    clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    A,
    Q,
    DSP_ALU_INST_1,
    DSP_ALU_INST_2);
  output [17:0]data;
  input clk;
  input [17:0]DSP_ALU_INST;
  input [1:0]DSP_ALU_INST_0;
  input [18:0]A;
  input [17:0]Q;
  input [1:0]DSP_ALU_INST_1;
  input [0:0]DSP_ALU_INST_2;

  wire [18:0]A;
  wire [17:0]DSP_ALU_INST;
  wire [1:0]DSP_ALU_INST_0;
  wire [1:0]DSP_ALU_INST_1;
  wire [0:0]DSP_ALU_INST_2;
  wire [17:0]Q;
  wire [17:17]\areg_s_reg[0]_0 ;
  wire clk;
  wire [17:0]data;
  wire \preg_s_reg_n_100_[0] ;
  wire \preg_s_reg_n_101_[0] ;
  wire \preg_s_reg_n_102_[0] ;
  wire \preg_s_reg_n_103_[0] ;
  wire \preg_s_reg_n_104_[0] ;
  wire \preg_s_reg_n_105_[0] ;
  wire \preg_s_reg_n_106_[10] ;
  wire \preg_s_reg_n_106_[11] ;
  wire \preg_s_reg_n_106_[12] ;
  wire \preg_s_reg_n_106_[13] ;
  wire \preg_s_reg_n_106_[14] ;
  wire \preg_s_reg_n_106_[15] ;
  wire \preg_s_reg_n_106_[16] ;
  wire \preg_s_reg_n_106_[17] ;
  wire \preg_s_reg_n_106_[18] ;
  wire \preg_s_reg_n_106_[19] ;
  wire \preg_s_reg_n_106_[1] ;
  wire \preg_s_reg_n_106_[20] ;
  wire \preg_s_reg_n_106_[21] ;
  wire \preg_s_reg_n_106_[22] ;
  wire \preg_s_reg_n_106_[23] ;
  wire \preg_s_reg_n_106_[24] ;
  wire \preg_s_reg_n_106_[25] ;
  wire \preg_s_reg_n_106_[26] ;
  wire \preg_s_reg_n_106_[27] ;
  wire \preg_s_reg_n_106_[28] ;
  wire \preg_s_reg_n_106_[29] ;
  wire \preg_s_reg_n_106_[2] ;
  wire \preg_s_reg_n_106_[30] ;
  wire \preg_s_reg_n_106_[31] ;
  wire \preg_s_reg_n_106_[32] ;
  wire \preg_s_reg_n_106_[33] ;
  wire \preg_s_reg_n_106_[34] ;
  wire \preg_s_reg_n_106_[35] ;
  wire \preg_s_reg_n_106_[36] ;
  wire \preg_s_reg_n_106_[37] ;
  wire \preg_s_reg_n_106_[38] ;
  wire \preg_s_reg_n_106_[39] ;
  wire \preg_s_reg_n_106_[3] ;
  wire \preg_s_reg_n_106_[40] ;
  wire \preg_s_reg_n_106_[41] ;
  wire \preg_s_reg_n_106_[42] ;
  wire \preg_s_reg_n_106_[43] ;
  wire \preg_s_reg_n_106_[44] ;
  wire \preg_s_reg_n_106_[45] ;
  wire \preg_s_reg_n_106_[46] ;
  wire \preg_s_reg_n_106_[47] ;
  wire \preg_s_reg_n_106_[48] ;
  wire \preg_s_reg_n_106_[49] ;
  wire \preg_s_reg_n_106_[4] ;
  wire \preg_s_reg_n_106_[50] ;
  wire \preg_s_reg_n_106_[51] ;
  wire \preg_s_reg_n_106_[52] ;
  wire \preg_s_reg_n_106_[53] ;
  wire \preg_s_reg_n_106_[54] ;
  wire \preg_s_reg_n_106_[55] ;
  wire \preg_s_reg_n_106_[56] ;
  wire \preg_s_reg_n_106_[57] ;
  wire \preg_s_reg_n_106_[58] ;
  wire \preg_s_reg_n_106_[59] ;
  wire \preg_s_reg_n_106_[5] ;
  wire \preg_s_reg_n_106_[6] ;
  wire \preg_s_reg_n_106_[7] ;
  wire \preg_s_reg_n_106_[8] ;
  wire \preg_s_reg_n_106_[9] ;
  wire \preg_s_reg_n_107_[10] ;
  wire \preg_s_reg_n_107_[11] ;
  wire \preg_s_reg_n_107_[12] ;
  wire \preg_s_reg_n_107_[13] ;
  wire \preg_s_reg_n_107_[14] ;
  wire \preg_s_reg_n_107_[15] ;
  wire \preg_s_reg_n_107_[16] ;
  wire \preg_s_reg_n_107_[17] ;
  wire \preg_s_reg_n_107_[18] ;
  wire \preg_s_reg_n_107_[19] ;
  wire \preg_s_reg_n_107_[1] ;
  wire \preg_s_reg_n_107_[20] ;
  wire \preg_s_reg_n_107_[21] ;
  wire \preg_s_reg_n_107_[22] ;
  wire \preg_s_reg_n_107_[23] ;
  wire \preg_s_reg_n_107_[24] ;
  wire \preg_s_reg_n_107_[25] ;
  wire \preg_s_reg_n_107_[26] ;
  wire \preg_s_reg_n_107_[27] ;
  wire \preg_s_reg_n_107_[28] ;
  wire \preg_s_reg_n_107_[29] ;
  wire \preg_s_reg_n_107_[2] ;
  wire \preg_s_reg_n_107_[30] ;
  wire \preg_s_reg_n_107_[31] ;
  wire \preg_s_reg_n_107_[32] ;
  wire \preg_s_reg_n_107_[33] ;
  wire \preg_s_reg_n_107_[34] ;
  wire \preg_s_reg_n_107_[35] ;
  wire \preg_s_reg_n_107_[36] ;
  wire \preg_s_reg_n_107_[37] ;
  wire \preg_s_reg_n_107_[38] ;
  wire \preg_s_reg_n_107_[39] ;
  wire \preg_s_reg_n_107_[3] ;
  wire \preg_s_reg_n_107_[40] ;
  wire \preg_s_reg_n_107_[41] ;
  wire \preg_s_reg_n_107_[42] ;
  wire \preg_s_reg_n_107_[43] ;
  wire \preg_s_reg_n_107_[44] ;
  wire \preg_s_reg_n_107_[45] ;
  wire \preg_s_reg_n_107_[46] ;
  wire \preg_s_reg_n_107_[47] ;
  wire \preg_s_reg_n_107_[48] ;
  wire \preg_s_reg_n_107_[49] ;
  wire \preg_s_reg_n_107_[4] ;
  wire \preg_s_reg_n_107_[50] ;
  wire \preg_s_reg_n_107_[51] ;
  wire \preg_s_reg_n_107_[52] ;
  wire \preg_s_reg_n_107_[53] ;
  wire \preg_s_reg_n_107_[54] ;
  wire \preg_s_reg_n_107_[55] ;
  wire \preg_s_reg_n_107_[56] ;
  wire \preg_s_reg_n_107_[57] ;
  wire \preg_s_reg_n_107_[58] ;
  wire \preg_s_reg_n_107_[59] ;
  wire \preg_s_reg_n_107_[5] ;
  wire \preg_s_reg_n_107_[6] ;
  wire \preg_s_reg_n_107_[7] ;
  wire \preg_s_reg_n_107_[8] ;
  wire \preg_s_reg_n_107_[9] ;
  wire \preg_s_reg_n_108_[10] ;
  wire \preg_s_reg_n_108_[11] ;
  wire \preg_s_reg_n_108_[12] ;
  wire \preg_s_reg_n_108_[13] ;
  wire \preg_s_reg_n_108_[14] ;
  wire \preg_s_reg_n_108_[15] ;
  wire \preg_s_reg_n_108_[16] ;
  wire \preg_s_reg_n_108_[17] ;
  wire \preg_s_reg_n_108_[18] ;
  wire \preg_s_reg_n_108_[19] ;
  wire \preg_s_reg_n_108_[1] ;
  wire \preg_s_reg_n_108_[20] ;
  wire \preg_s_reg_n_108_[21] ;
  wire \preg_s_reg_n_108_[22] ;
  wire \preg_s_reg_n_108_[23] ;
  wire \preg_s_reg_n_108_[24] ;
  wire \preg_s_reg_n_108_[25] ;
  wire \preg_s_reg_n_108_[26] ;
  wire \preg_s_reg_n_108_[27] ;
  wire \preg_s_reg_n_108_[28] ;
  wire \preg_s_reg_n_108_[29] ;
  wire \preg_s_reg_n_108_[2] ;
  wire \preg_s_reg_n_108_[30] ;
  wire \preg_s_reg_n_108_[31] ;
  wire \preg_s_reg_n_108_[32] ;
  wire \preg_s_reg_n_108_[33] ;
  wire \preg_s_reg_n_108_[34] ;
  wire \preg_s_reg_n_108_[35] ;
  wire \preg_s_reg_n_108_[36] ;
  wire \preg_s_reg_n_108_[37] ;
  wire \preg_s_reg_n_108_[38] ;
  wire \preg_s_reg_n_108_[39] ;
  wire \preg_s_reg_n_108_[3] ;
  wire \preg_s_reg_n_108_[40] ;
  wire \preg_s_reg_n_108_[41] ;
  wire \preg_s_reg_n_108_[42] ;
  wire \preg_s_reg_n_108_[43] ;
  wire \preg_s_reg_n_108_[44] ;
  wire \preg_s_reg_n_108_[45] ;
  wire \preg_s_reg_n_108_[46] ;
  wire \preg_s_reg_n_108_[47] ;
  wire \preg_s_reg_n_108_[48] ;
  wire \preg_s_reg_n_108_[49] ;
  wire \preg_s_reg_n_108_[4] ;
  wire \preg_s_reg_n_108_[50] ;
  wire \preg_s_reg_n_108_[51] ;
  wire \preg_s_reg_n_108_[52] ;
  wire \preg_s_reg_n_108_[53] ;
  wire \preg_s_reg_n_108_[54] ;
  wire \preg_s_reg_n_108_[55] ;
  wire \preg_s_reg_n_108_[56] ;
  wire \preg_s_reg_n_108_[57] ;
  wire \preg_s_reg_n_108_[58] ;
  wire \preg_s_reg_n_108_[59] ;
  wire \preg_s_reg_n_108_[5] ;
  wire \preg_s_reg_n_108_[6] ;
  wire \preg_s_reg_n_108_[7] ;
  wire \preg_s_reg_n_108_[8] ;
  wire \preg_s_reg_n_108_[9] ;
  wire \preg_s_reg_n_109_[10] ;
  wire \preg_s_reg_n_109_[11] ;
  wire \preg_s_reg_n_109_[12] ;
  wire \preg_s_reg_n_109_[13] ;
  wire \preg_s_reg_n_109_[14] ;
  wire \preg_s_reg_n_109_[15] ;
  wire \preg_s_reg_n_109_[16] ;
  wire \preg_s_reg_n_109_[17] ;
  wire \preg_s_reg_n_109_[18] ;
  wire \preg_s_reg_n_109_[19] ;
  wire \preg_s_reg_n_109_[1] ;
  wire \preg_s_reg_n_109_[20] ;
  wire \preg_s_reg_n_109_[21] ;
  wire \preg_s_reg_n_109_[22] ;
  wire \preg_s_reg_n_109_[23] ;
  wire \preg_s_reg_n_109_[24] ;
  wire \preg_s_reg_n_109_[25] ;
  wire \preg_s_reg_n_109_[26] ;
  wire \preg_s_reg_n_109_[27] ;
  wire \preg_s_reg_n_109_[28] ;
  wire \preg_s_reg_n_109_[29] ;
  wire \preg_s_reg_n_109_[2] ;
  wire \preg_s_reg_n_109_[30] ;
  wire \preg_s_reg_n_109_[31] ;
  wire \preg_s_reg_n_109_[32] ;
  wire \preg_s_reg_n_109_[33] ;
  wire \preg_s_reg_n_109_[34] ;
  wire \preg_s_reg_n_109_[35] ;
  wire \preg_s_reg_n_109_[36] ;
  wire \preg_s_reg_n_109_[37] ;
  wire \preg_s_reg_n_109_[38] ;
  wire \preg_s_reg_n_109_[39] ;
  wire \preg_s_reg_n_109_[3] ;
  wire \preg_s_reg_n_109_[40] ;
  wire \preg_s_reg_n_109_[41] ;
  wire \preg_s_reg_n_109_[42] ;
  wire \preg_s_reg_n_109_[43] ;
  wire \preg_s_reg_n_109_[44] ;
  wire \preg_s_reg_n_109_[45] ;
  wire \preg_s_reg_n_109_[46] ;
  wire \preg_s_reg_n_109_[47] ;
  wire \preg_s_reg_n_109_[48] ;
  wire \preg_s_reg_n_109_[49] ;
  wire \preg_s_reg_n_109_[4] ;
  wire \preg_s_reg_n_109_[50] ;
  wire \preg_s_reg_n_109_[51] ;
  wire \preg_s_reg_n_109_[52] ;
  wire \preg_s_reg_n_109_[53] ;
  wire \preg_s_reg_n_109_[54] ;
  wire \preg_s_reg_n_109_[55] ;
  wire \preg_s_reg_n_109_[56] ;
  wire \preg_s_reg_n_109_[57] ;
  wire \preg_s_reg_n_109_[58] ;
  wire \preg_s_reg_n_109_[59] ;
  wire \preg_s_reg_n_109_[5] ;
  wire \preg_s_reg_n_109_[6] ;
  wire \preg_s_reg_n_109_[7] ;
  wire \preg_s_reg_n_109_[8] ;
  wire \preg_s_reg_n_109_[9] ;
  wire \preg_s_reg_n_10_[1] ;
  wire \preg_s_reg_n_10_[2] ;
  wire \preg_s_reg_n_10_[30] ;
  wire \preg_s_reg_n_10_[3] ;
  wire \preg_s_reg_n_10_[4] ;
  wire \preg_s_reg_n_10_[54] ;
  wire \preg_s_reg_n_10_[56] ;
  wire \preg_s_reg_n_10_[57] ;
  wire \preg_s_reg_n_10_[58] ;
  wire \preg_s_reg_n_10_[59] ;
  wire \preg_s_reg_n_10_[6] ;
  wire \preg_s_reg_n_110_[10] ;
  wire \preg_s_reg_n_110_[11] ;
  wire \preg_s_reg_n_110_[12] ;
  wire \preg_s_reg_n_110_[13] ;
  wire \preg_s_reg_n_110_[14] ;
  wire \preg_s_reg_n_110_[15] ;
  wire \preg_s_reg_n_110_[16] ;
  wire \preg_s_reg_n_110_[17] ;
  wire \preg_s_reg_n_110_[18] ;
  wire \preg_s_reg_n_110_[19] ;
  wire \preg_s_reg_n_110_[1] ;
  wire \preg_s_reg_n_110_[20] ;
  wire \preg_s_reg_n_110_[21] ;
  wire \preg_s_reg_n_110_[22] ;
  wire \preg_s_reg_n_110_[23] ;
  wire \preg_s_reg_n_110_[24] ;
  wire \preg_s_reg_n_110_[25] ;
  wire \preg_s_reg_n_110_[26] ;
  wire \preg_s_reg_n_110_[27] ;
  wire \preg_s_reg_n_110_[28] ;
  wire \preg_s_reg_n_110_[29] ;
  wire \preg_s_reg_n_110_[2] ;
  wire \preg_s_reg_n_110_[30] ;
  wire \preg_s_reg_n_110_[31] ;
  wire \preg_s_reg_n_110_[32] ;
  wire \preg_s_reg_n_110_[33] ;
  wire \preg_s_reg_n_110_[34] ;
  wire \preg_s_reg_n_110_[35] ;
  wire \preg_s_reg_n_110_[36] ;
  wire \preg_s_reg_n_110_[37] ;
  wire \preg_s_reg_n_110_[38] ;
  wire \preg_s_reg_n_110_[39] ;
  wire \preg_s_reg_n_110_[3] ;
  wire \preg_s_reg_n_110_[40] ;
  wire \preg_s_reg_n_110_[41] ;
  wire \preg_s_reg_n_110_[42] ;
  wire \preg_s_reg_n_110_[43] ;
  wire \preg_s_reg_n_110_[44] ;
  wire \preg_s_reg_n_110_[45] ;
  wire \preg_s_reg_n_110_[46] ;
  wire \preg_s_reg_n_110_[47] ;
  wire \preg_s_reg_n_110_[48] ;
  wire \preg_s_reg_n_110_[49] ;
  wire \preg_s_reg_n_110_[4] ;
  wire \preg_s_reg_n_110_[50] ;
  wire \preg_s_reg_n_110_[51] ;
  wire \preg_s_reg_n_110_[52] ;
  wire \preg_s_reg_n_110_[53] ;
  wire \preg_s_reg_n_110_[54] ;
  wire \preg_s_reg_n_110_[55] ;
  wire \preg_s_reg_n_110_[56] ;
  wire \preg_s_reg_n_110_[57] ;
  wire \preg_s_reg_n_110_[58] ;
  wire \preg_s_reg_n_110_[59] ;
  wire \preg_s_reg_n_110_[5] ;
  wire \preg_s_reg_n_110_[6] ;
  wire \preg_s_reg_n_110_[7] ;
  wire \preg_s_reg_n_110_[8] ;
  wire \preg_s_reg_n_110_[9] ;
  wire \preg_s_reg_n_111_[10] ;
  wire \preg_s_reg_n_111_[11] ;
  wire \preg_s_reg_n_111_[12] ;
  wire \preg_s_reg_n_111_[13] ;
  wire \preg_s_reg_n_111_[14] ;
  wire \preg_s_reg_n_111_[15] ;
  wire \preg_s_reg_n_111_[16] ;
  wire \preg_s_reg_n_111_[17] ;
  wire \preg_s_reg_n_111_[18] ;
  wire \preg_s_reg_n_111_[19] ;
  wire \preg_s_reg_n_111_[1] ;
  wire \preg_s_reg_n_111_[20] ;
  wire \preg_s_reg_n_111_[21] ;
  wire \preg_s_reg_n_111_[22] ;
  wire \preg_s_reg_n_111_[23] ;
  wire \preg_s_reg_n_111_[24] ;
  wire \preg_s_reg_n_111_[25] ;
  wire \preg_s_reg_n_111_[26] ;
  wire \preg_s_reg_n_111_[27] ;
  wire \preg_s_reg_n_111_[28] ;
  wire \preg_s_reg_n_111_[29] ;
  wire \preg_s_reg_n_111_[2] ;
  wire \preg_s_reg_n_111_[30] ;
  wire \preg_s_reg_n_111_[31] ;
  wire \preg_s_reg_n_111_[32] ;
  wire \preg_s_reg_n_111_[33] ;
  wire \preg_s_reg_n_111_[34] ;
  wire \preg_s_reg_n_111_[35] ;
  wire \preg_s_reg_n_111_[36] ;
  wire \preg_s_reg_n_111_[37] ;
  wire \preg_s_reg_n_111_[38] ;
  wire \preg_s_reg_n_111_[39] ;
  wire \preg_s_reg_n_111_[3] ;
  wire \preg_s_reg_n_111_[40] ;
  wire \preg_s_reg_n_111_[41] ;
  wire \preg_s_reg_n_111_[42] ;
  wire \preg_s_reg_n_111_[43] ;
  wire \preg_s_reg_n_111_[44] ;
  wire \preg_s_reg_n_111_[45] ;
  wire \preg_s_reg_n_111_[46] ;
  wire \preg_s_reg_n_111_[47] ;
  wire \preg_s_reg_n_111_[48] ;
  wire \preg_s_reg_n_111_[49] ;
  wire \preg_s_reg_n_111_[4] ;
  wire \preg_s_reg_n_111_[50] ;
  wire \preg_s_reg_n_111_[51] ;
  wire \preg_s_reg_n_111_[52] ;
  wire \preg_s_reg_n_111_[53] ;
  wire \preg_s_reg_n_111_[54] ;
  wire \preg_s_reg_n_111_[55] ;
  wire \preg_s_reg_n_111_[56] ;
  wire \preg_s_reg_n_111_[57] ;
  wire \preg_s_reg_n_111_[58] ;
  wire \preg_s_reg_n_111_[59] ;
  wire \preg_s_reg_n_111_[5] ;
  wire \preg_s_reg_n_111_[6] ;
  wire \preg_s_reg_n_111_[7] ;
  wire \preg_s_reg_n_111_[8] ;
  wire \preg_s_reg_n_111_[9] ;
  wire \preg_s_reg_n_112_[10] ;
  wire \preg_s_reg_n_112_[11] ;
  wire \preg_s_reg_n_112_[12] ;
  wire \preg_s_reg_n_112_[13] ;
  wire \preg_s_reg_n_112_[14] ;
  wire \preg_s_reg_n_112_[15] ;
  wire \preg_s_reg_n_112_[16] ;
  wire \preg_s_reg_n_112_[17] ;
  wire \preg_s_reg_n_112_[18] ;
  wire \preg_s_reg_n_112_[19] ;
  wire \preg_s_reg_n_112_[1] ;
  wire \preg_s_reg_n_112_[20] ;
  wire \preg_s_reg_n_112_[21] ;
  wire \preg_s_reg_n_112_[22] ;
  wire \preg_s_reg_n_112_[23] ;
  wire \preg_s_reg_n_112_[24] ;
  wire \preg_s_reg_n_112_[25] ;
  wire \preg_s_reg_n_112_[26] ;
  wire \preg_s_reg_n_112_[27] ;
  wire \preg_s_reg_n_112_[28] ;
  wire \preg_s_reg_n_112_[29] ;
  wire \preg_s_reg_n_112_[2] ;
  wire \preg_s_reg_n_112_[30] ;
  wire \preg_s_reg_n_112_[31] ;
  wire \preg_s_reg_n_112_[32] ;
  wire \preg_s_reg_n_112_[33] ;
  wire \preg_s_reg_n_112_[34] ;
  wire \preg_s_reg_n_112_[35] ;
  wire \preg_s_reg_n_112_[36] ;
  wire \preg_s_reg_n_112_[37] ;
  wire \preg_s_reg_n_112_[38] ;
  wire \preg_s_reg_n_112_[39] ;
  wire \preg_s_reg_n_112_[3] ;
  wire \preg_s_reg_n_112_[40] ;
  wire \preg_s_reg_n_112_[41] ;
  wire \preg_s_reg_n_112_[42] ;
  wire \preg_s_reg_n_112_[43] ;
  wire \preg_s_reg_n_112_[44] ;
  wire \preg_s_reg_n_112_[45] ;
  wire \preg_s_reg_n_112_[46] ;
  wire \preg_s_reg_n_112_[47] ;
  wire \preg_s_reg_n_112_[48] ;
  wire \preg_s_reg_n_112_[49] ;
  wire \preg_s_reg_n_112_[4] ;
  wire \preg_s_reg_n_112_[50] ;
  wire \preg_s_reg_n_112_[51] ;
  wire \preg_s_reg_n_112_[52] ;
  wire \preg_s_reg_n_112_[53] ;
  wire \preg_s_reg_n_112_[54] ;
  wire \preg_s_reg_n_112_[55] ;
  wire \preg_s_reg_n_112_[56] ;
  wire \preg_s_reg_n_112_[57] ;
  wire \preg_s_reg_n_112_[58] ;
  wire \preg_s_reg_n_112_[59] ;
  wire \preg_s_reg_n_112_[5] ;
  wire \preg_s_reg_n_112_[6] ;
  wire \preg_s_reg_n_112_[7] ;
  wire \preg_s_reg_n_112_[8] ;
  wire \preg_s_reg_n_112_[9] ;
  wire \preg_s_reg_n_113_[10] ;
  wire \preg_s_reg_n_113_[11] ;
  wire \preg_s_reg_n_113_[12] ;
  wire \preg_s_reg_n_113_[13] ;
  wire \preg_s_reg_n_113_[14] ;
  wire \preg_s_reg_n_113_[15] ;
  wire \preg_s_reg_n_113_[16] ;
  wire \preg_s_reg_n_113_[17] ;
  wire \preg_s_reg_n_113_[18] ;
  wire \preg_s_reg_n_113_[19] ;
  wire \preg_s_reg_n_113_[1] ;
  wire \preg_s_reg_n_113_[20] ;
  wire \preg_s_reg_n_113_[21] ;
  wire \preg_s_reg_n_113_[22] ;
  wire \preg_s_reg_n_113_[23] ;
  wire \preg_s_reg_n_113_[24] ;
  wire \preg_s_reg_n_113_[25] ;
  wire \preg_s_reg_n_113_[26] ;
  wire \preg_s_reg_n_113_[27] ;
  wire \preg_s_reg_n_113_[28] ;
  wire \preg_s_reg_n_113_[29] ;
  wire \preg_s_reg_n_113_[2] ;
  wire \preg_s_reg_n_113_[30] ;
  wire \preg_s_reg_n_113_[31] ;
  wire \preg_s_reg_n_113_[32] ;
  wire \preg_s_reg_n_113_[33] ;
  wire \preg_s_reg_n_113_[34] ;
  wire \preg_s_reg_n_113_[35] ;
  wire \preg_s_reg_n_113_[36] ;
  wire \preg_s_reg_n_113_[37] ;
  wire \preg_s_reg_n_113_[38] ;
  wire \preg_s_reg_n_113_[39] ;
  wire \preg_s_reg_n_113_[3] ;
  wire \preg_s_reg_n_113_[40] ;
  wire \preg_s_reg_n_113_[41] ;
  wire \preg_s_reg_n_113_[42] ;
  wire \preg_s_reg_n_113_[43] ;
  wire \preg_s_reg_n_113_[44] ;
  wire \preg_s_reg_n_113_[45] ;
  wire \preg_s_reg_n_113_[46] ;
  wire \preg_s_reg_n_113_[47] ;
  wire \preg_s_reg_n_113_[48] ;
  wire \preg_s_reg_n_113_[49] ;
  wire \preg_s_reg_n_113_[4] ;
  wire \preg_s_reg_n_113_[50] ;
  wire \preg_s_reg_n_113_[51] ;
  wire \preg_s_reg_n_113_[52] ;
  wire \preg_s_reg_n_113_[53] ;
  wire \preg_s_reg_n_113_[54] ;
  wire \preg_s_reg_n_113_[55] ;
  wire \preg_s_reg_n_113_[56] ;
  wire \preg_s_reg_n_113_[57] ;
  wire \preg_s_reg_n_113_[58] ;
  wire \preg_s_reg_n_113_[59] ;
  wire \preg_s_reg_n_113_[5] ;
  wire \preg_s_reg_n_113_[6] ;
  wire \preg_s_reg_n_113_[7] ;
  wire \preg_s_reg_n_113_[8] ;
  wire \preg_s_reg_n_113_[9] ;
  wire \preg_s_reg_n_114_[10] ;
  wire \preg_s_reg_n_114_[11] ;
  wire \preg_s_reg_n_114_[12] ;
  wire \preg_s_reg_n_114_[13] ;
  wire \preg_s_reg_n_114_[14] ;
  wire \preg_s_reg_n_114_[15] ;
  wire \preg_s_reg_n_114_[16] ;
  wire \preg_s_reg_n_114_[17] ;
  wire \preg_s_reg_n_114_[18] ;
  wire \preg_s_reg_n_114_[19] ;
  wire \preg_s_reg_n_114_[1] ;
  wire \preg_s_reg_n_114_[20] ;
  wire \preg_s_reg_n_114_[21] ;
  wire \preg_s_reg_n_114_[22] ;
  wire \preg_s_reg_n_114_[23] ;
  wire \preg_s_reg_n_114_[24] ;
  wire \preg_s_reg_n_114_[25] ;
  wire \preg_s_reg_n_114_[26] ;
  wire \preg_s_reg_n_114_[27] ;
  wire \preg_s_reg_n_114_[28] ;
  wire \preg_s_reg_n_114_[29] ;
  wire \preg_s_reg_n_114_[2] ;
  wire \preg_s_reg_n_114_[30] ;
  wire \preg_s_reg_n_114_[31] ;
  wire \preg_s_reg_n_114_[32] ;
  wire \preg_s_reg_n_114_[33] ;
  wire \preg_s_reg_n_114_[34] ;
  wire \preg_s_reg_n_114_[35] ;
  wire \preg_s_reg_n_114_[36] ;
  wire \preg_s_reg_n_114_[37] ;
  wire \preg_s_reg_n_114_[38] ;
  wire \preg_s_reg_n_114_[39] ;
  wire \preg_s_reg_n_114_[3] ;
  wire \preg_s_reg_n_114_[40] ;
  wire \preg_s_reg_n_114_[41] ;
  wire \preg_s_reg_n_114_[42] ;
  wire \preg_s_reg_n_114_[43] ;
  wire \preg_s_reg_n_114_[44] ;
  wire \preg_s_reg_n_114_[45] ;
  wire \preg_s_reg_n_114_[46] ;
  wire \preg_s_reg_n_114_[47] ;
  wire \preg_s_reg_n_114_[48] ;
  wire \preg_s_reg_n_114_[49] ;
  wire \preg_s_reg_n_114_[4] ;
  wire \preg_s_reg_n_114_[50] ;
  wire \preg_s_reg_n_114_[51] ;
  wire \preg_s_reg_n_114_[52] ;
  wire \preg_s_reg_n_114_[53] ;
  wire \preg_s_reg_n_114_[54] ;
  wire \preg_s_reg_n_114_[55] ;
  wire \preg_s_reg_n_114_[56] ;
  wire \preg_s_reg_n_114_[57] ;
  wire \preg_s_reg_n_114_[58] ;
  wire \preg_s_reg_n_114_[59] ;
  wire \preg_s_reg_n_114_[5] ;
  wire \preg_s_reg_n_114_[6] ;
  wire \preg_s_reg_n_114_[7] ;
  wire \preg_s_reg_n_114_[8] ;
  wire \preg_s_reg_n_114_[9] ;
  wire \preg_s_reg_n_115_[10] ;
  wire \preg_s_reg_n_115_[11] ;
  wire \preg_s_reg_n_115_[12] ;
  wire \preg_s_reg_n_115_[13] ;
  wire \preg_s_reg_n_115_[14] ;
  wire \preg_s_reg_n_115_[15] ;
  wire \preg_s_reg_n_115_[16] ;
  wire \preg_s_reg_n_115_[17] ;
  wire \preg_s_reg_n_115_[18] ;
  wire \preg_s_reg_n_115_[19] ;
  wire \preg_s_reg_n_115_[1] ;
  wire \preg_s_reg_n_115_[20] ;
  wire \preg_s_reg_n_115_[21] ;
  wire \preg_s_reg_n_115_[22] ;
  wire \preg_s_reg_n_115_[23] ;
  wire \preg_s_reg_n_115_[24] ;
  wire \preg_s_reg_n_115_[25] ;
  wire \preg_s_reg_n_115_[26] ;
  wire \preg_s_reg_n_115_[27] ;
  wire \preg_s_reg_n_115_[28] ;
  wire \preg_s_reg_n_115_[29] ;
  wire \preg_s_reg_n_115_[2] ;
  wire \preg_s_reg_n_115_[30] ;
  wire \preg_s_reg_n_115_[31] ;
  wire \preg_s_reg_n_115_[32] ;
  wire \preg_s_reg_n_115_[33] ;
  wire \preg_s_reg_n_115_[34] ;
  wire \preg_s_reg_n_115_[35] ;
  wire \preg_s_reg_n_115_[36] ;
  wire \preg_s_reg_n_115_[37] ;
  wire \preg_s_reg_n_115_[38] ;
  wire \preg_s_reg_n_115_[39] ;
  wire \preg_s_reg_n_115_[3] ;
  wire \preg_s_reg_n_115_[40] ;
  wire \preg_s_reg_n_115_[41] ;
  wire \preg_s_reg_n_115_[42] ;
  wire \preg_s_reg_n_115_[43] ;
  wire \preg_s_reg_n_115_[44] ;
  wire \preg_s_reg_n_115_[45] ;
  wire \preg_s_reg_n_115_[46] ;
  wire \preg_s_reg_n_115_[47] ;
  wire \preg_s_reg_n_115_[48] ;
  wire \preg_s_reg_n_115_[49] ;
  wire \preg_s_reg_n_115_[4] ;
  wire \preg_s_reg_n_115_[50] ;
  wire \preg_s_reg_n_115_[51] ;
  wire \preg_s_reg_n_115_[52] ;
  wire \preg_s_reg_n_115_[53] ;
  wire \preg_s_reg_n_115_[54] ;
  wire \preg_s_reg_n_115_[55] ;
  wire \preg_s_reg_n_115_[56] ;
  wire \preg_s_reg_n_115_[57] ;
  wire \preg_s_reg_n_115_[58] ;
  wire \preg_s_reg_n_115_[59] ;
  wire \preg_s_reg_n_115_[5] ;
  wire \preg_s_reg_n_115_[6] ;
  wire \preg_s_reg_n_115_[7] ;
  wire \preg_s_reg_n_115_[8] ;
  wire \preg_s_reg_n_115_[9] ;
  wire \preg_s_reg_n_116_[10] ;
  wire \preg_s_reg_n_116_[11] ;
  wire \preg_s_reg_n_116_[12] ;
  wire \preg_s_reg_n_116_[13] ;
  wire \preg_s_reg_n_116_[14] ;
  wire \preg_s_reg_n_116_[15] ;
  wire \preg_s_reg_n_116_[16] ;
  wire \preg_s_reg_n_116_[17] ;
  wire \preg_s_reg_n_116_[18] ;
  wire \preg_s_reg_n_116_[19] ;
  wire \preg_s_reg_n_116_[1] ;
  wire \preg_s_reg_n_116_[20] ;
  wire \preg_s_reg_n_116_[21] ;
  wire \preg_s_reg_n_116_[22] ;
  wire \preg_s_reg_n_116_[23] ;
  wire \preg_s_reg_n_116_[24] ;
  wire \preg_s_reg_n_116_[25] ;
  wire \preg_s_reg_n_116_[26] ;
  wire \preg_s_reg_n_116_[27] ;
  wire \preg_s_reg_n_116_[28] ;
  wire \preg_s_reg_n_116_[29] ;
  wire \preg_s_reg_n_116_[2] ;
  wire \preg_s_reg_n_116_[30] ;
  wire \preg_s_reg_n_116_[31] ;
  wire \preg_s_reg_n_116_[32] ;
  wire \preg_s_reg_n_116_[33] ;
  wire \preg_s_reg_n_116_[34] ;
  wire \preg_s_reg_n_116_[35] ;
  wire \preg_s_reg_n_116_[36] ;
  wire \preg_s_reg_n_116_[37] ;
  wire \preg_s_reg_n_116_[38] ;
  wire \preg_s_reg_n_116_[39] ;
  wire \preg_s_reg_n_116_[3] ;
  wire \preg_s_reg_n_116_[40] ;
  wire \preg_s_reg_n_116_[41] ;
  wire \preg_s_reg_n_116_[42] ;
  wire \preg_s_reg_n_116_[43] ;
  wire \preg_s_reg_n_116_[44] ;
  wire \preg_s_reg_n_116_[45] ;
  wire \preg_s_reg_n_116_[46] ;
  wire \preg_s_reg_n_116_[47] ;
  wire \preg_s_reg_n_116_[48] ;
  wire \preg_s_reg_n_116_[49] ;
  wire \preg_s_reg_n_116_[4] ;
  wire \preg_s_reg_n_116_[50] ;
  wire \preg_s_reg_n_116_[51] ;
  wire \preg_s_reg_n_116_[52] ;
  wire \preg_s_reg_n_116_[53] ;
  wire \preg_s_reg_n_116_[54] ;
  wire \preg_s_reg_n_116_[55] ;
  wire \preg_s_reg_n_116_[56] ;
  wire \preg_s_reg_n_116_[57] ;
  wire \preg_s_reg_n_116_[58] ;
  wire \preg_s_reg_n_116_[59] ;
  wire \preg_s_reg_n_116_[5] ;
  wire \preg_s_reg_n_116_[6] ;
  wire \preg_s_reg_n_116_[7] ;
  wire \preg_s_reg_n_116_[8] ;
  wire \preg_s_reg_n_116_[9] ;
  wire \preg_s_reg_n_117_[10] ;
  wire \preg_s_reg_n_117_[11] ;
  wire \preg_s_reg_n_117_[12] ;
  wire \preg_s_reg_n_117_[13] ;
  wire \preg_s_reg_n_117_[14] ;
  wire \preg_s_reg_n_117_[15] ;
  wire \preg_s_reg_n_117_[16] ;
  wire \preg_s_reg_n_117_[17] ;
  wire \preg_s_reg_n_117_[18] ;
  wire \preg_s_reg_n_117_[19] ;
  wire \preg_s_reg_n_117_[1] ;
  wire \preg_s_reg_n_117_[20] ;
  wire \preg_s_reg_n_117_[21] ;
  wire \preg_s_reg_n_117_[22] ;
  wire \preg_s_reg_n_117_[23] ;
  wire \preg_s_reg_n_117_[24] ;
  wire \preg_s_reg_n_117_[25] ;
  wire \preg_s_reg_n_117_[26] ;
  wire \preg_s_reg_n_117_[27] ;
  wire \preg_s_reg_n_117_[28] ;
  wire \preg_s_reg_n_117_[29] ;
  wire \preg_s_reg_n_117_[2] ;
  wire \preg_s_reg_n_117_[30] ;
  wire \preg_s_reg_n_117_[31] ;
  wire \preg_s_reg_n_117_[32] ;
  wire \preg_s_reg_n_117_[33] ;
  wire \preg_s_reg_n_117_[34] ;
  wire \preg_s_reg_n_117_[35] ;
  wire \preg_s_reg_n_117_[36] ;
  wire \preg_s_reg_n_117_[37] ;
  wire \preg_s_reg_n_117_[38] ;
  wire \preg_s_reg_n_117_[39] ;
  wire \preg_s_reg_n_117_[3] ;
  wire \preg_s_reg_n_117_[40] ;
  wire \preg_s_reg_n_117_[41] ;
  wire \preg_s_reg_n_117_[42] ;
  wire \preg_s_reg_n_117_[43] ;
  wire \preg_s_reg_n_117_[44] ;
  wire \preg_s_reg_n_117_[45] ;
  wire \preg_s_reg_n_117_[46] ;
  wire \preg_s_reg_n_117_[47] ;
  wire \preg_s_reg_n_117_[48] ;
  wire \preg_s_reg_n_117_[49] ;
  wire \preg_s_reg_n_117_[4] ;
  wire \preg_s_reg_n_117_[50] ;
  wire \preg_s_reg_n_117_[51] ;
  wire \preg_s_reg_n_117_[52] ;
  wire \preg_s_reg_n_117_[53] ;
  wire \preg_s_reg_n_117_[54] ;
  wire \preg_s_reg_n_117_[55] ;
  wire \preg_s_reg_n_117_[56] ;
  wire \preg_s_reg_n_117_[57] ;
  wire \preg_s_reg_n_117_[58] ;
  wire \preg_s_reg_n_117_[59] ;
  wire \preg_s_reg_n_117_[5] ;
  wire \preg_s_reg_n_117_[6] ;
  wire \preg_s_reg_n_117_[7] ;
  wire \preg_s_reg_n_117_[8] ;
  wire \preg_s_reg_n_117_[9] ;
  wire \preg_s_reg_n_118_[10] ;
  wire \preg_s_reg_n_118_[11] ;
  wire \preg_s_reg_n_118_[12] ;
  wire \preg_s_reg_n_118_[13] ;
  wire \preg_s_reg_n_118_[14] ;
  wire \preg_s_reg_n_118_[15] ;
  wire \preg_s_reg_n_118_[16] ;
  wire \preg_s_reg_n_118_[17] ;
  wire \preg_s_reg_n_118_[18] ;
  wire \preg_s_reg_n_118_[19] ;
  wire \preg_s_reg_n_118_[1] ;
  wire \preg_s_reg_n_118_[20] ;
  wire \preg_s_reg_n_118_[21] ;
  wire \preg_s_reg_n_118_[22] ;
  wire \preg_s_reg_n_118_[23] ;
  wire \preg_s_reg_n_118_[24] ;
  wire \preg_s_reg_n_118_[25] ;
  wire \preg_s_reg_n_118_[26] ;
  wire \preg_s_reg_n_118_[27] ;
  wire \preg_s_reg_n_118_[28] ;
  wire \preg_s_reg_n_118_[29] ;
  wire \preg_s_reg_n_118_[2] ;
  wire \preg_s_reg_n_118_[30] ;
  wire \preg_s_reg_n_118_[31] ;
  wire \preg_s_reg_n_118_[32] ;
  wire \preg_s_reg_n_118_[33] ;
  wire \preg_s_reg_n_118_[34] ;
  wire \preg_s_reg_n_118_[35] ;
  wire \preg_s_reg_n_118_[36] ;
  wire \preg_s_reg_n_118_[37] ;
  wire \preg_s_reg_n_118_[38] ;
  wire \preg_s_reg_n_118_[39] ;
  wire \preg_s_reg_n_118_[3] ;
  wire \preg_s_reg_n_118_[40] ;
  wire \preg_s_reg_n_118_[41] ;
  wire \preg_s_reg_n_118_[42] ;
  wire \preg_s_reg_n_118_[43] ;
  wire \preg_s_reg_n_118_[44] ;
  wire \preg_s_reg_n_118_[45] ;
  wire \preg_s_reg_n_118_[46] ;
  wire \preg_s_reg_n_118_[47] ;
  wire \preg_s_reg_n_118_[48] ;
  wire \preg_s_reg_n_118_[49] ;
  wire \preg_s_reg_n_118_[4] ;
  wire \preg_s_reg_n_118_[50] ;
  wire \preg_s_reg_n_118_[51] ;
  wire \preg_s_reg_n_118_[52] ;
  wire \preg_s_reg_n_118_[53] ;
  wire \preg_s_reg_n_118_[54] ;
  wire \preg_s_reg_n_118_[55] ;
  wire \preg_s_reg_n_118_[56] ;
  wire \preg_s_reg_n_118_[57] ;
  wire \preg_s_reg_n_118_[58] ;
  wire \preg_s_reg_n_118_[59] ;
  wire \preg_s_reg_n_118_[5] ;
  wire \preg_s_reg_n_118_[6] ;
  wire \preg_s_reg_n_118_[7] ;
  wire \preg_s_reg_n_118_[8] ;
  wire \preg_s_reg_n_118_[9] ;
  wire \preg_s_reg_n_119_[10] ;
  wire \preg_s_reg_n_119_[11] ;
  wire \preg_s_reg_n_119_[12] ;
  wire \preg_s_reg_n_119_[13] ;
  wire \preg_s_reg_n_119_[14] ;
  wire \preg_s_reg_n_119_[15] ;
  wire \preg_s_reg_n_119_[16] ;
  wire \preg_s_reg_n_119_[17] ;
  wire \preg_s_reg_n_119_[18] ;
  wire \preg_s_reg_n_119_[19] ;
  wire \preg_s_reg_n_119_[1] ;
  wire \preg_s_reg_n_119_[20] ;
  wire \preg_s_reg_n_119_[21] ;
  wire \preg_s_reg_n_119_[22] ;
  wire \preg_s_reg_n_119_[23] ;
  wire \preg_s_reg_n_119_[24] ;
  wire \preg_s_reg_n_119_[25] ;
  wire \preg_s_reg_n_119_[26] ;
  wire \preg_s_reg_n_119_[27] ;
  wire \preg_s_reg_n_119_[28] ;
  wire \preg_s_reg_n_119_[29] ;
  wire \preg_s_reg_n_119_[2] ;
  wire \preg_s_reg_n_119_[30] ;
  wire \preg_s_reg_n_119_[31] ;
  wire \preg_s_reg_n_119_[32] ;
  wire \preg_s_reg_n_119_[33] ;
  wire \preg_s_reg_n_119_[34] ;
  wire \preg_s_reg_n_119_[35] ;
  wire \preg_s_reg_n_119_[36] ;
  wire \preg_s_reg_n_119_[37] ;
  wire \preg_s_reg_n_119_[38] ;
  wire \preg_s_reg_n_119_[39] ;
  wire \preg_s_reg_n_119_[3] ;
  wire \preg_s_reg_n_119_[40] ;
  wire \preg_s_reg_n_119_[41] ;
  wire \preg_s_reg_n_119_[42] ;
  wire \preg_s_reg_n_119_[43] ;
  wire \preg_s_reg_n_119_[44] ;
  wire \preg_s_reg_n_119_[45] ;
  wire \preg_s_reg_n_119_[46] ;
  wire \preg_s_reg_n_119_[47] ;
  wire \preg_s_reg_n_119_[48] ;
  wire \preg_s_reg_n_119_[49] ;
  wire \preg_s_reg_n_119_[4] ;
  wire \preg_s_reg_n_119_[50] ;
  wire \preg_s_reg_n_119_[51] ;
  wire \preg_s_reg_n_119_[52] ;
  wire \preg_s_reg_n_119_[53] ;
  wire \preg_s_reg_n_119_[54] ;
  wire \preg_s_reg_n_119_[55] ;
  wire \preg_s_reg_n_119_[56] ;
  wire \preg_s_reg_n_119_[57] ;
  wire \preg_s_reg_n_119_[58] ;
  wire \preg_s_reg_n_119_[59] ;
  wire \preg_s_reg_n_119_[5] ;
  wire \preg_s_reg_n_119_[6] ;
  wire \preg_s_reg_n_119_[7] ;
  wire \preg_s_reg_n_119_[8] ;
  wire \preg_s_reg_n_119_[9] ;
  wire \preg_s_reg_n_11_[1] ;
  wire \preg_s_reg_n_11_[2] ;
  wire \preg_s_reg_n_11_[30] ;
  wire \preg_s_reg_n_11_[3] ;
  wire \preg_s_reg_n_11_[4] ;
  wire \preg_s_reg_n_11_[54] ;
  wire \preg_s_reg_n_11_[56] ;
  wire \preg_s_reg_n_11_[57] ;
  wire \preg_s_reg_n_11_[58] ;
  wire \preg_s_reg_n_11_[59] ;
  wire \preg_s_reg_n_11_[6] ;
  wire \preg_s_reg_n_120_[10] ;
  wire \preg_s_reg_n_120_[11] ;
  wire \preg_s_reg_n_120_[12] ;
  wire \preg_s_reg_n_120_[13] ;
  wire \preg_s_reg_n_120_[14] ;
  wire \preg_s_reg_n_120_[15] ;
  wire \preg_s_reg_n_120_[16] ;
  wire \preg_s_reg_n_120_[17] ;
  wire \preg_s_reg_n_120_[18] ;
  wire \preg_s_reg_n_120_[19] ;
  wire \preg_s_reg_n_120_[1] ;
  wire \preg_s_reg_n_120_[20] ;
  wire \preg_s_reg_n_120_[21] ;
  wire \preg_s_reg_n_120_[22] ;
  wire \preg_s_reg_n_120_[23] ;
  wire \preg_s_reg_n_120_[24] ;
  wire \preg_s_reg_n_120_[25] ;
  wire \preg_s_reg_n_120_[26] ;
  wire \preg_s_reg_n_120_[27] ;
  wire \preg_s_reg_n_120_[28] ;
  wire \preg_s_reg_n_120_[29] ;
  wire \preg_s_reg_n_120_[2] ;
  wire \preg_s_reg_n_120_[30] ;
  wire \preg_s_reg_n_120_[31] ;
  wire \preg_s_reg_n_120_[32] ;
  wire \preg_s_reg_n_120_[33] ;
  wire \preg_s_reg_n_120_[34] ;
  wire \preg_s_reg_n_120_[35] ;
  wire \preg_s_reg_n_120_[36] ;
  wire \preg_s_reg_n_120_[37] ;
  wire \preg_s_reg_n_120_[38] ;
  wire \preg_s_reg_n_120_[39] ;
  wire \preg_s_reg_n_120_[3] ;
  wire \preg_s_reg_n_120_[40] ;
  wire \preg_s_reg_n_120_[41] ;
  wire \preg_s_reg_n_120_[42] ;
  wire \preg_s_reg_n_120_[43] ;
  wire \preg_s_reg_n_120_[44] ;
  wire \preg_s_reg_n_120_[45] ;
  wire \preg_s_reg_n_120_[46] ;
  wire \preg_s_reg_n_120_[47] ;
  wire \preg_s_reg_n_120_[48] ;
  wire \preg_s_reg_n_120_[49] ;
  wire \preg_s_reg_n_120_[4] ;
  wire \preg_s_reg_n_120_[50] ;
  wire \preg_s_reg_n_120_[51] ;
  wire \preg_s_reg_n_120_[52] ;
  wire \preg_s_reg_n_120_[53] ;
  wire \preg_s_reg_n_120_[54] ;
  wire \preg_s_reg_n_120_[55] ;
  wire \preg_s_reg_n_120_[56] ;
  wire \preg_s_reg_n_120_[57] ;
  wire \preg_s_reg_n_120_[58] ;
  wire \preg_s_reg_n_120_[59] ;
  wire \preg_s_reg_n_120_[5] ;
  wire \preg_s_reg_n_120_[6] ;
  wire \preg_s_reg_n_120_[7] ;
  wire \preg_s_reg_n_120_[8] ;
  wire \preg_s_reg_n_120_[9] ;
  wire \preg_s_reg_n_121_[10] ;
  wire \preg_s_reg_n_121_[11] ;
  wire \preg_s_reg_n_121_[12] ;
  wire \preg_s_reg_n_121_[13] ;
  wire \preg_s_reg_n_121_[14] ;
  wire \preg_s_reg_n_121_[15] ;
  wire \preg_s_reg_n_121_[16] ;
  wire \preg_s_reg_n_121_[17] ;
  wire \preg_s_reg_n_121_[18] ;
  wire \preg_s_reg_n_121_[19] ;
  wire \preg_s_reg_n_121_[1] ;
  wire \preg_s_reg_n_121_[20] ;
  wire \preg_s_reg_n_121_[21] ;
  wire \preg_s_reg_n_121_[22] ;
  wire \preg_s_reg_n_121_[23] ;
  wire \preg_s_reg_n_121_[24] ;
  wire \preg_s_reg_n_121_[25] ;
  wire \preg_s_reg_n_121_[26] ;
  wire \preg_s_reg_n_121_[27] ;
  wire \preg_s_reg_n_121_[28] ;
  wire \preg_s_reg_n_121_[29] ;
  wire \preg_s_reg_n_121_[2] ;
  wire \preg_s_reg_n_121_[30] ;
  wire \preg_s_reg_n_121_[31] ;
  wire \preg_s_reg_n_121_[32] ;
  wire \preg_s_reg_n_121_[33] ;
  wire \preg_s_reg_n_121_[34] ;
  wire \preg_s_reg_n_121_[35] ;
  wire \preg_s_reg_n_121_[36] ;
  wire \preg_s_reg_n_121_[37] ;
  wire \preg_s_reg_n_121_[38] ;
  wire \preg_s_reg_n_121_[39] ;
  wire \preg_s_reg_n_121_[3] ;
  wire \preg_s_reg_n_121_[40] ;
  wire \preg_s_reg_n_121_[41] ;
  wire \preg_s_reg_n_121_[42] ;
  wire \preg_s_reg_n_121_[43] ;
  wire \preg_s_reg_n_121_[44] ;
  wire \preg_s_reg_n_121_[45] ;
  wire \preg_s_reg_n_121_[46] ;
  wire \preg_s_reg_n_121_[47] ;
  wire \preg_s_reg_n_121_[48] ;
  wire \preg_s_reg_n_121_[49] ;
  wire \preg_s_reg_n_121_[4] ;
  wire \preg_s_reg_n_121_[50] ;
  wire \preg_s_reg_n_121_[51] ;
  wire \preg_s_reg_n_121_[52] ;
  wire \preg_s_reg_n_121_[53] ;
  wire \preg_s_reg_n_121_[54] ;
  wire \preg_s_reg_n_121_[55] ;
  wire \preg_s_reg_n_121_[56] ;
  wire \preg_s_reg_n_121_[57] ;
  wire \preg_s_reg_n_121_[58] ;
  wire \preg_s_reg_n_121_[59] ;
  wire \preg_s_reg_n_121_[5] ;
  wire \preg_s_reg_n_121_[6] ;
  wire \preg_s_reg_n_121_[7] ;
  wire \preg_s_reg_n_121_[8] ;
  wire \preg_s_reg_n_121_[9] ;
  wire \preg_s_reg_n_122_[10] ;
  wire \preg_s_reg_n_122_[11] ;
  wire \preg_s_reg_n_122_[12] ;
  wire \preg_s_reg_n_122_[13] ;
  wire \preg_s_reg_n_122_[14] ;
  wire \preg_s_reg_n_122_[15] ;
  wire \preg_s_reg_n_122_[16] ;
  wire \preg_s_reg_n_122_[17] ;
  wire \preg_s_reg_n_122_[18] ;
  wire \preg_s_reg_n_122_[19] ;
  wire \preg_s_reg_n_122_[1] ;
  wire \preg_s_reg_n_122_[20] ;
  wire \preg_s_reg_n_122_[21] ;
  wire \preg_s_reg_n_122_[22] ;
  wire \preg_s_reg_n_122_[23] ;
  wire \preg_s_reg_n_122_[24] ;
  wire \preg_s_reg_n_122_[25] ;
  wire \preg_s_reg_n_122_[26] ;
  wire \preg_s_reg_n_122_[27] ;
  wire \preg_s_reg_n_122_[28] ;
  wire \preg_s_reg_n_122_[29] ;
  wire \preg_s_reg_n_122_[2] ;
  wire \preg_s_reg_n_122_[30] ;
  wire \preg_s_reg_n_122_[31] ;
  wire \preg_s_reg_n_122_[32] ;
  wire \preg_s_reg_n_122_[33] ;
  wire \preg_s_reg_n_122_[34] ;
  wire \preg_s_reg_n_122_[35] ;
  wire \preg_s_reg_n_122_[36] ;
  wire \preg_s_reg_n_122_[37] ;
  wire \preg_s_reg_n_122_[38] ;
  wire \preg_s_reg_n_122_[39] ;
  wire \preg_s_reg_n_122_[3] ;
  wire \preg_s_reg_n_122_[40] ;
  wire \preg_s_reg_n_122_[41] ;
  wire \preg_s_reg_n_122_[42] ;
  wire \preg_s_reg_n_122_[43] ;
  wire \preg_s_reg_n_122_[44] ;
  wire \preg_s_reg_n_122_[45] ;
  wire \preg_s_reg_n_122_[46] ;
  wire \preg_s_reg_n_122_[47] ;
  wire \preg_s_reg_n_122_[48] ;
  wire \preg_s_reg_n_122_[49] ;
  wire \preg_s_reg_n_122_[4] ;
  wire \preg_s_reg_n_122_[50] ;
  wire \preg_s_reg_n_122_[51] ;
  wire \preg_s_reg_n_122_[52] ;
  wire \preg_s_reg_n_122_[53] ;
  wire \preg_s_reg_n_122_[54] ;
  wire \preg_s_reg_n_122_[55] ;
  wire \preg_s_reg_n_122_[56] ;
  wire \preg_s_reg_n_122_[57] ;
  wire \preg_s_reg_n_122_[58] ;
  wire \preg_s_reg_n_122_[59] ;
  wire \preg_s_reg_n_122_[5] ;
  wire \preg_s_reg_n_122_[6] ;
  wire \preg_s_reg_n_122_[7] ;
  wire \preg_s_reg_n_122_[8] ;
  wire \preg_s_reg_n_122_[9] ;
  wire \preg_s_reg_n_123_[10] ;
  wire \preg_s_reg_n_123_[11] ;
  wire \preg_s_reg_n_123_[12] ;
  wire \preg_s_reg_n_123_[13] ;
  wire \preg_s_reg_n_123_[14] ;
  wire \preg_s_reg_n_123_[15] ;
  wire \preg_s_reg_n_123_[16] ;
  wire \preg_s_reg_n_123_[17] ;
  wire \preg_s_reg_n_123_[18] ;
  wire \preg_s_reg_n_123_[19] ;
  wire \preg_s_reg_n_123_[1] ;
  wire \preg_s_reg_n_123_[20] ;
  wire \preg_s_reg_n_123_[21] ;
  wire \preg_s_reg_n_123_[22] ;
  wire \preg_s_reg_n_123_[23] ;
  wire \preg_s_reg_n_123_[24] ;
  wire \preg_s_reg_n_123_[25] ;
  wire \preg_s_reg_n_123_[26] ;
  wire \preg_s_reg_n_123_[27] ;
  wire \preg_s_reg_n_123_[28] ;
  wire \preg_s_reg_n_123_[29] ;
  wire \preg_s_reg_n_123_[2] ;
  wire \preg_s_reg_n_123_[30] ;
  wire \preg_s_reg_n_123_[31] ;
  wire \preg_s_reg_n_123_[32] ;
  wire \preg_s_reg_n_123_[33] ;
  wire \preg_s_reg_n_123_[34] ;
  wire \preg_s_reg_n_123_[35] ;
  wire \preg_s_reg_n_123_[36] ;
  wire \preg_s_reg_n_123_[37] ;
  wire \preg_s_reg_n_123_[38] ;
  wire \preg_s_reg_n_123_[39] ;
  wire \preg_s_reg_n_123_[3] ;
  wire \preg_s_reg_n_123_[40] ;
  wire \preg_s_reg_n_123_[41] ;
  wire \preg_s_reg_n_123_[42] ;
  wire \preg_s_reg_n_123_[43] ;
  wire \preg_s_reg_n_123_[44] ;
  wire \preg_s_reg_n_123_[45] ;
  wire \preg_s_reg_n_123_[46] ;
  wire \preg_s_reg_n_123_[47] ;
  wire \preg_s_reg_n_123_[48] ;
  wire \preg_s_reg_n_123_[49] ;
  wire \preg_s_reg_n_123_[4] ;
  wire \preg_s_reg_n_123_[50] ;
  wire \preg_s_reg_n_123_[51] ;
  wire \preg_s_reg_n_123_[52] ;
  wire \preg_s_reg_n_123_[53] ;
  wire \preg_s_reg_n_123_[54] ;
  wire \preg_s_reg_n_123_[55] ;
  wire \preg_s_reg_n_123_[56] ;
  wire \preg_s_reg_n_123_[57] ;
  wire \preg_s_reg_n_123_[58] ;
  wire \preg_s_reg_n_123_[59] ;
  wire \preg_s_reg_n_123_[5] ;
  wire \preg_s_reg_n_123_[6] ;
  wire \preg_s_reg_n_123_[7] ;
  wire \preg_s_reg_n_123_[8] ;
  wire \preg_s_reg_n_123_[9] ;
  wire \preg_s_reg_n_124_[10] ;
  wire \preg_s_reg_n_124_[11] ;
  wire \preg_s_reg_n_124_[12] ;
  wire \preg_s_reg_n_124_[13] ;
  wire \preg_s_reg_n_124_[14] ;
  wire \preg_s_reg_n_124_[15] ;
  wire \preg_s_reg_n_124_[16] ;
  wire \preg_s_reg_n_124_[17] ;
  wire \preg_s_reg_n_124_[18] ;
  wire \preg_s_reg_n_124_[19] ;
  wire \preg_s_reg_n_124_[1] ;
  wire \preg_s_reg_n_124_[20] ;
  wire \preg_s_reg_n_124_[21] ;
  wire \preg_s_reg_n_124_[22] ;
  wire \preg_s_reg_n_124_[23] ;
  wire \preg_s_reg_n_124_[24] ;
  wire \preg_s_reg_n_124_[25] ;
  wire \preg_s_reg_n_124_[26] ;
  wire \preg_s_reg_n_124_[27] ;
  wire \preg_s_reg_n_124_[28] ;
  wire \preg_s_reg_n_124_[29] ;
  wire \preg_s_reg_n_124_[2] ;
  wire \preg_s_reg_n_124_[30] ;
  wire \preg_s_reg_n_124_[31] ;
  wire \preg_s_reg_n_124_[32] ;
  wire \preg_s_reg_n_124_[33] ;
  wire \preg_s_reg_n_124_[34] ;
  wire \preg_s_reg_n_124_[35] ;
  wire \preg_s_reg_n_124_[36] ;
  wire \preg_s_reg_n_124_[37] ;
  wire \preg_s_reg_n_124_[38] ;
  wire \preg_s_reg_n_124_[39] ;
  wire \preg_s_reg_n_124_[3] ;
  wire \preg_s_reg_n_124_[40] ;
  wire \preg_s_reg_n_124_[41] ;
  wire \preg_s_reg_n_124_[42] ;
  wire \preg_s_reg_n_124_[43] ;
  wire \preg_s_reg_n_124_[44] ;
  wire \preg_s_reg_n_124_[45] ;
  wire \preg_s_reg_n_124_[46] ;
  wire \preg_s_reg_n_124_[47] ;
  wire \preg_s_reg_n_124_[48] ;
  wire \preg_s_reg_n_124_[49] ;
  wire \preg_s_reg_n_124_[4] ;
  wire \preg_s_reg_n_124_[50] ;
  wire \preg_s_reg_n_124_[51] ;
  wire \preg_s_reg_n_124_[52] ;
  wire \preg_s_reg_n_124_[53] ;
  wire \preg_s_reg_n_124_[54] ;
  wire \preg_s_reg_n_124_[55] ;
  wire \preg_s_reg_n_124_[56] ;
  wire \preg_s_reg_n_124_[57] ;
  wire \preg_s_reg_n_124_[58] ;
  wire \preg_s_reg_n_124_[59] ;
  wire \preg_s_reg_n_124_[5] ;
  wire \preg_s_reg_n_124_[6] ;
  wire \preg_s_reg_n_124_[7] ;
  wire \preg_s_reg_n_124_[8] ;
  wire \preg_s_reg_n_124_[9] ;
  wire \preg_s_reg_n_125_[10] ;
  wire \preg_s_reg_n_125_[11] ;
  wire \preg_s_reg_n_125_[12] ;
  wire \preg_s_reg_n_125_[13] ;
  wire \preg_s_reg_n_125_[14] ;
  wire \preg_s_reg_n_125_[15] ;
  wire \preg_s_reg_n_125_[16] ;
  wire \preg_s_reg_n_125_[17] ;
  wire \preg_s_reg_n_125_[18] ;
  wire \preg_s_reg_n_125_[19] ;
  wire \preg_s_reg_n_125_[1] ;
  wire \preg_s_reg_n_125_[20] ;
  wire \preg_s_reg_n_125_[21] ;
  wire \preg_s_reg_n_125_[22] ;
  wire \preg_s_reg_n_125_[23] ;
  wire \preg_s_reg_n_125_[24] ;
  wire \preg_s_reg_n_125_[25] ;
  wire \preg_s_reg_n_125_[26] ;
  wire \preg_s_reg_n_125_[27] ;
  wire \preg_s_reg_n_125_[28] ;
  wire \preg_s_reg_n_125_[29] ;
  wire \preg_s_reg_n_125_[2] ;
  wire \preg_s_reg_n_125_[30] ;
  wire \preg_s_reg_n_125_[31] ;
  wire \preg_s_reg_n_125_[32] ;
  wire \preg_s_reg_n_125_[33] ;
  wire \preg_s_reg_n_125_[34] ;
  wire \preg_s_reg_n_125_[35] ;
  wire \preg_s_reg_n_125_[36] ;
  wire \preg_s_reg_n_125_[37] ;
  wire \preg_s_reg_n_125_[38] ;
  wire \preg_s_reg_n_125_[39] ;
  wire \preg_s_reg_n_125_[3] ;
  wire \preg_s_reg_n_125_[40] ;
  wire \preg_s_reg_n_125_[41] ;
  wire \preg_s_reg_n_125_[42] ;
  wire \preg_s_reg_n_125_[43] ;
  wire \preg_s_reg_n_125_[44] ;
  wire \preg_s_reg_n_125_[45] ;
  wire \preg_s_reg_n_125_[46] ;
  wire \preg_s_reg_n_125_[47] ;
  wire \preg_s_reg_n_125_[48] ;
  wire \preg_s_reg_n_125_[49] ;
  wire \preg_s_reg_n_125_[4] ;
  wire \preg_s_reg_n_125_[50] ;
  wire \preg_s_reg_n_125_[51] ;
  wire \preg_s_reg_n_125_[52] ;
  wire \preg_s_reg_n_125_[53] ;
  wire \preg_s_reg_n_125_[54] ;
  wire \preg_s_reg_n_125_[55] ;
  wire \preg_s_reg_n_125_[56] ;
  wire \preg_s_reg_n_125_[57] ;
  wire \preg_s_reg_n_125_[58] ;
  wire \preg_s_reg_n_125_[59] ;
  wire \preg_s_reg_n_125_[5] ;
  wire \preg_s_reg_n_125_[6] ;
  wire \preg_s_reg_n_125_[7] ;
  wire \preg_s_reg_n_125_[8] ;
  wire \preg_s_reg_n_125_[9] ;
  wire \preg_s_reg_n_126_[10] ;
  wire \preg_s_reg_n_126_[11] ;
  wire \preg_s_reg_n_126_[12] ;
  wire \preg_s_reg_n_126_[13] ;
  wire \preg_s_reg_n_126_[14] ;
  wire \preg_s_reg_n_126_[15] ;
  wire \preg_s_reg_n_126_[16] ;
  wire \preg_s_reg_n_126_[17] ;
  wire \preg_s_reg_n_126_[18] ;
  wire \preg_s_reg_n_126_[19] ;
  wire \preg_s_reg_n_126_[1] ;
  wire \preg_s_reg_n_126_[20] ;
  wire \preg_s_reg_n_126_[21] ;
  wire \preg_s_reg_n_126_[22] ;
  wire \preg_s_reg_n_126_[23] ;
  wire \preg_s_reg_n_126_[24] ;
  wire \preg_s_reg_n_126_[25] ;
  wire \preg_s_reg_n_126_[26] ;
  wire \preg_s_reg_n_126_[27] ;
  wire \preg_s_reg_n_126_[28] ;
  wire \preg_s_reg_n_126_[29] ;
  wire \preg_s_reg_n_126_[2] ;
  wire \preg_s_reg_n_126_[30] ;
  wire \preg_s_reg_n_126_[31] ;
  wire \preg_s_reg_n_126_[32] ;
  wire \preg_s_reg_n_126_[33] ;
  wire \preg_s_reg_n_126_[34] ;
  wire \preg_s_reg_n_126_[35] ;
  wire \preg_s_reg_n_126_[36] ;
  wire \preg_s_reg_n_126_[37] ;
  wire \preg_s_reg_n_126_[38] ;
  wire \preg_s_reg_n_126_[39] ;
  wire \preg_s_reg_n_126_[3] ;
  wire \preg_s_reg_n_126_[40] ;
  wire \preg_s_reg_n_126_[41] ;
  wire \preg_s_reg_n_126_[42] ;
  wire \preg_s_reg_n_126_[43] ;
  wire \preg_s_reg_n_126_[44] ;
  wire \preg_s_reg_n_126_[45] ;
  wire \preg_s_reg_n_126_[46] ;
  wire \preg_s_reg_n_126_[47] ;
  wire \preg_s_reg_n_126_[48] ;
  wire \preg_s_reg_n_126_[49] ;
  wire \preg_s_reg_n_126_[4] ;
  wire \preg_s_reg_n_126_[50] ;
  wire \preg_s_reg_n_126_[51] ;
  wire \preg_s_reg_n_126_[52] ;
  wire \preg_s_reg_n_126_[53] ;
  wire \preg_s_reg_n_126_[54] ;
  wire \preg_s_reg_n_126_[55] ;
  wire \preg_s_reg_n_126_[56] ;
  wire \preg_s_reg_n_126_[57] ;
  wire \preg_s_reg_n_126_[58] ;
  wire \preg_s_reg_n_126_[59] ;
  wire \preg_s_reg_n_126_[5] ;
  wire \preg_s_reg_n_126_[6] ;
  wire \preg_s_reg_n_126_[7] ;
  wire \preg_s_reg_n_126_[8] ;
  wire \preg_s_reg_n_126_[9] ;
  wire \preg_s_reg_n_127_[10] ;
  wire \preg_s_reg_n_127_[11] ;
  wire \preg_s_reg_n_127_[12] ;
  wire \preg_s_reg_n_127_[13] ;
  wire \preg_s_reg_n_127_[14] ;
  wire \preg_s_reg_n_127_[15] ;
  wire \preg_s_reg_n_127_[16] ;
  wire \preg_s_reg_n_127_[17] ;
  wire \preg_s_reg_n_127_[18] ;
  wire \preg_s_reg_n_127_[19] ;
  wire \preg_s_reg_n_127_[1] ;
  wire \preg_s_reg_n_127_[20] ;
  wire \preg_s_reg_n_127_[21] ;
  wire \preg_s_reg_n_127_[22] ;
  wire \preg_s_reg_n_127_[23] ;
  wire \preg_s_reg_n_127_[24] ;
  wire \preg_s_reg_n_127_[25] ;
  wire \preg_s_reg_n_127_[26] ;
  wire \preg_s_reg_n_127_[27] ;
  wire \preg_s_reg_n_127_[28] ;
  wire \preg_s_reg_n_127_[29] ;
  wire \preg_s_reg_n_127_[2] ;
  wire \preg_s_reg_n_127_[30] ;
  wire \preg_s_reg_n_127_[31] ;
  wire \preg_s_reg_n_127_[32] ;
  wire \preg_s_reg_n_127_[33] ;
  wire \preg_s_reg_n_127_[34] ;
  wire \preg_s_reg_n_127_[35] ;
  wire \preg_s_reg_n_127_[36] ;
  wire \preg_s_reg_n_127_[37] ;
  wire \preg_s_reg_n_127_[38] ;
  wire \preg_s_reg_n_127_[39] ;
  wire \preg_s_reg_n_127_[3] ;
  wire \preg_s_reg_n_127_[40] ;
  wire \preg_s_reg_n_127_[41] ;
  wire \preg_s_reg_n_127_[42] ;
  wire \preg_s_reg_n_127_[43] ;
  wire \preg_s_reg_n_127_[44] ;
  wire \preg_s_reg_n_127_[45] ;
  wire \preg_s_reg_n_127_[46] ;
  wire \preg_s_reg_n_127_[47] ;
  wire \preg_s_reg_n_127_[48] ;
  wire \preg_s_reg_n_127_[49] ;
  wire \preg_s_reg_n_127_[4] ;
  wire \preg_s_reg_n_127_[50] ;
  wire \preg_s_reg_n_127_[51] ;
  wire \preg_s_reg_n_127_[52] ;
  wire \preg_s_reg_n_127_[53] ;
  wire \preg_s_reg_n_127_[54] ;
  wire \preg_s_reg_n_127_[55] ;
  wire \preg_s_reg_n_127_[56] ;
  wire \preg_s_reg_n_127_[57] ;
  wire \preg_s_reg_n_127_[58] ;
  wire \preg_s_reg_n_127_[59] ;
  wire \preg_s_reg_n_127_[5] ;
  wire \preg_s_reg_n_127_[6] ;
  wire \preg_s_reg_n_127_[7] ;
  wire \preg_s_reg_n_127_[8] ;
  wire \preg_s_reg_n_127_[9] ;
  wire \preg_s_reg_n_128_[10] ;
  wire \preg_s_reg_n_128_[11] ;
  wire \preg_s_reg_n_128_[12] ;
  wire \preg_s_reg_n_128_[13] ;
  wire \preg_s_reg_n_128_[14] ;
  wire \preg_s_reg_n_128_[15] ;
  wire \preg_s_reg_n_128_[16] ;
  wire \preg_s_reg_n_128_[17] ;
  wire \preg_s_reg_n_128_[18] ;
  wire \preg_s_reg_n_128_[19] ;
  wire \preg_s_reg_n_128_[1] ;
  wire \preg_s_reg_n_128_[20] ;
  wire \preg_s_reg_n_128_[21] ;
  wire \preg_s_reg_n_128_[22] ;
  wire \preg_s_reg_n_128_[23] ;
  wire \preg_s_reg_n_128_[24] ;
  wire \preg_s_reg_n_128_[25] ;
  wire \preg_s_reg_n_128_[26] ;
  wire \preg_s_reg_n_128_[27] ;
  wire \preg_s_reg_n_128_[28] ;
  wire \preg_s_reg_n_128_[29] ;
  wire \preg_s_reg_n_128_[2] ;
  wire \preg_s_reg_n_128_[30] ;
  wire \preg_s_reg_n_128_[31] ;
  wire \preg_s_reg_n_128_[32] ;
  wire \preg_s_reg_n_128_[33] ;
  wire \preg_s_reg_n_128_[34] ;
  wire \preg_s_reg_n_128_[35] ;
  wire \preg_s_reg_n_128_[36] ;
  wire \preg_s_reg_n_128_[37] ;
  wire \preg_s_reg_n_128_[38] ;
  wire \preg_s_reg_n_128_[39] ;
  wire \preg_s_reg_n_128_[3] ;
  wire \preg_s_reg_n_128_[40] ;
  wire \preg_s_reg_n_128_[41] ;
  wire \preg_s_reg_n_128_[42] ;
  wire \preg_s_reg_n_128_[43] ;
  wire \preg_s_reg_n_128_[44] ;
  wire \preg_s_reg_n_128_[45] ;
  wire \preg_s_reg_n_128_[46] ;
  wire \preg_s_reg_n_128_[47] ;
  wire \preg_s_reg_n_128_[48] ;
  wire \preg_s_reg_n_128_[49] ;
  wire \preg_s_reg_n_128_[4] ;
  wire \preg_s_reg_n_128_[50] ;
  wire \preg_s_reg_n_128_[51] ;
  wire \preg_s_reg_n_128_[52] ;
  wire \preg_s_reg_n_128_[53] ;
  wire \preg_s_reg_n_128_[54] ;
  wire \preg_s_reg_n_128_[55] ;
  wire \preg_s_reg_n_128_[56] ;
  wire \preg_s_reg_n_128_[57] ;
  wire \preg_s_reg_n_128_[58] ;
  wire \preg_s_reg_n_128_[59] ;
  wire \preg_s_reg_n_128_[5] ;
  wire \preg_s_reg_n_128_[6] ;
  wire \preg_s_reg_n_128_[7] ;
  wire \preg_s_reg_n_128_[8] ;
  wire \preg_s_reg_n_128_[9] ;
  wire \preg_s_reg_n_129_[10] ;
  wire \preg_s_reg_n_129_[11] ;
  wire \preg_s_reg_n_129_[12] ;
  wire \preg_s_reg_n_129_[13] ;
  wire \preg_s_reg_n_129_[14] ;
  wire \preg_s_reg_n_129_[15] ;
  wire \preg_s_reg_n_129_[16] ;
  wire \preg_s_reg_n_129_[17] ;
  wire \preg_s_reg_n_129_[18] ;
  wire \preg_s_reg_n_129_[19] ;
  wire \preg_s_reg_n_129_[1] ;
  wire \preg_s_reg_n_129_[20] ;
  wire \preg_s_reg_n_129_[21] ;
  wire \preg_s_reg_n_129_[22] ;
  wire \preg_s_reg_n_129_[23] ;
  wire \preg_s_reg_n_129_[24] ;
  wire \preg_s_reg_n_129_[25] ;
  wire \preg_s_reg_n_129_[26] ;
  wire \preg_s_reg_n_129_[27] ;
  wire \preg_s_reg_n_129_[28] ;
  wire \preg_s_reg_n_129_[29] ;
  wire \preg_s_reg_n_129_[2] ;
  wire \preg_s_reg_n_129_[30] ;
  wire \preg_s_reg_n_129_[31] ;
  wire \preg_s_reg_n_129_[32] ;
  wire \preg_s_reg_n_129_[33] ;
  wire \preg_s_reg_n_129_[34] ;
  wire \preg_s_reg_n_129_[35] ;
  wire \preg_s_reg_n_129_[36] ;
  wire \preg_s_reg_n_129_[37] ;
  wire \preg_s_reg_n_129_[38] ;
  wire \preg_s_reg_n_129_[39] ;
  wire \preg_s_reg_n_129_[3] ;
  wire \preg_s_reg_n_129_[40] ;
  wire \preg_s_reg_n_129_[41] ;
  wire \preg_s_reg_n_129_[42] ;
  wire \preg_s_reg_n_129_[43] ;
  wire \preg_s_reg_n_129_[44] ;
  wire \preg_s_reg_n_129_[45] ;
  wire \preg_s_reg_n_129_[46] ;
  wire \preg_s_reg_n_129_[47] ;
  wire \preg_s_reg_n_129_[48] ;
  wire \preg_s_reg_n_129_[49] ;
  wire \preg_s_reg_n_129_[4] ;
  wire \preg_s_reg_n_129_[50] ;
  wire \preg_s_reg_n_129_[51] ;
  wire \preg_s_reg_n_129_[52] ;
  wire \preg_s_reg_n_129_[53] ;
  wire \preg_s_reg_n_129_[54] ;
  wire \preg_s_reg_n_129_[55] ;
  wire \preg_s_reg_n_129_[56] ;
  wire \preg_s_reg_n_129_[57] ;
  wire \preg_s_reg_n_129_[58] ;
  wire \preg_s_reg_n_129_[59] ;
  wire \preg_s_reg_n_129_[5] ;
  wire \preg_s_reg_n_129_[6] ;
  wire \preg_s_reg_n_129_[7] ;
  wire \preg_s_reg_n_129_[8] ;
  wire \preg_s_reg_n_129_[9] ;
  wire \preg_s_reg_n_12_[1] ;
  wire \preg_s_reg_n_12_[2] ;
  wire \preg_s_reg_n_12_[30] ;
  wire \preg_s_reg_n_12_[3] ;
  wire \preg_s_reg_n_12_[4] ;
  wire \preg_s_reg_n_12_[54] ;
  wire \preg_s_reg_n_12_[56] ;
  wire \preg_s_reg_n_12_[57] ;
  wire \preg_s_reg_n_12_[58] ;
  wire \preg_s_reg_n_12_[59] ;
  wire \preg_s_reg_n_12_[6] ;
  wire \preg_s_reg_n_130_[10] ;
  wire \preg_s_reg_n_130_[11] ;
  wire \preg_s_reg_n_130_[12] ;
  wire \preg_s_reg_n_130_[13] ;
  wire \preg_s_reg_n_130_[14] ;
  wire \preg_s_reg_n_130_[15] ;
  wire \preg_s_reg_n_130_[16] ;
  wire \preg_s_reg_n_130_[17] ;
  wire \preg_s_reg_n_130_[18] ;
  wire \preg_s_reg_n_130_[19] ;
  wire \preg_s_reg_n_130_[1] ;
  wire \preg_s_reg_n_130_[20] ;
  wire \preg_s_reg_n_130_[21] ;
  wire \preg_s_reg_n_130_[22] ;
  wire \preg_s_reg_n_130_[23] ;
  wire \preg_s_reg_n_130_[24] ;
  wire \preg_s_reg_n_130_[25] ;
  wire \preg_s_reg_n_130_[26] ;
  wire \preg_s_reg_n_130_[27] ;
  wire \preg_s_reg_n_130_[28] ;
  wire \preg_s_reg_n_130_[29] ;
  wire \preg_s_reg_n_130_[2] ;
  wire \preg_s_reg_n_130_[30] ;
  wire \preg_s_reg_n_130_[31] ;
  wire \preg_s_reg_n_130_[32] ;
  wire \preg_s_reg_n_130_[33] ;
  wire \preg_s_reg_n_130_[34] ;
  wire \preg_s_reg_n_130_[35] ;
  wire \preg_s_reg_n_130_[36] ;
  wire \preg_s_reg_n_130_[37] ;
  wire \preg_s_reg_n_130_[38] ;
  wire \preg_s_reg_n_130_[39] ;
  wire \preg_s_reg_n_130_[3] ;
  wire \preg_s_reg_n_130_[40] ;
  wire \preg_s_reg_n_130_[41] ;
  wire \preg_s_reg_n_130_[42] ;
  wire \preg_s_reg_n_130_[43] ;
  wire \preg_s_reg_n_130_[44] ;
  wire \preg_s_reg_n_130_[45] ;
  wire \preg_s_reg_n_130_[46] ;
  wire \preg_s_reg_n_130_[47] ;
  wire \preg_s_reg_n_130_[48] ;
  wire \preg_s_reg_n_130_[49] ;
  wire \preg_s_reg_n_130_[4] ;
  wire \preg_s_reg_n_130_[50] ;
  wire \preg_s_reg_n_130_[51] ;
  wire \preg_s_reg_n_130_[52] ;
  wire \preg_s_reg_n_130_[53] ;
  wire \preg_s_reg_n_130_[54] ;
  wire \preg_s_reg_n_130_[55] ;
  wire \preg_s_reg_n_130_[56] ;
  wire \preg_s_reg_n_130_[57] ;
  wire \preg_s_reg_n_130_[58] ;
  wire \preg_s_reg_n_130_[59] ;
  wire \preg_s_reg_n_130_[5] ;
  wire \preg_s_reg_n_130_[6] ;
  wire \preg_s_reg_n_130_[7] ;
  wire \preg_s_reg_n_130_[8] ;
  wire \preg_s_reg_n_130_[9] ;
  wire \preg_s_reg_n_131_[10] ;
  wire \preg_s_reg_n_131_[11] ;
  wire \preg_s_reg_n_131_[12] ;
  wire \preg_s_reg_n_131_[13] ;
  wire \preg_s_reg_n_131_[14] ;
  wire \preg_s_reg_n_131_[15] ;
  wire \preg_s_reg_n_131_[16] ;
  wire \preg_s_reg_n_131_[17] ;
  wire \preg_s_reg_n_131_[18] ;
  wire \preg_s_reg_n_131_[19] ;
  wire \preg_s_reg_n_131_[1] ;
  wire \preg_s_reg_n_131_[20] ;
  wire \preg_s_reg_n_131_[21] ;
  wire \preg_s_reg_n_131_[22] ;
  wire \preg_s_reg_n_131_[23] ;
  wire \preg_s_reg_n_131_[24] ;
  wire \preg_s_reg_n_131_[25] ;
  wire \preg_s_reg_n_131_[26] ;
  wire \preg_s_reg_n_131_[27] ;
  wire \preg_s_reg_n_131_[28] ;
  wire \preg_s_reg_n_131_[29] ;
  wire \preg_s_reg_n_131_[2] ;
  wire \preg_s_reg_n_131_[30] ;
  wire \preg_s_reg_n_131_[31] ;
  wire \preg_s_reg_n_131_[32] ;
  wire \preg_s_reg_n_131_[33] ;
  wire \preg_s_reg_n_131_[34] ;
  wire \preg_s_reg_n_131_[35] ;
  wire \preg_s_reg_n_131_[36] ;
  wire \preg_s_reg_n_131_[37] ;
  wire \preg_s_reg_n_131_[38] ;
  wire \preg_s_reg_n_131_[39] ;
  wire \preg_s_reg_n_131_[3] ;
  wire \preg_s_reg_n_131_[40] ;
  wire \preg_s_reg_n_131_[41] ;
  wire \preg_s_reg_n_131_[42] ;
  wire \preg_s_reg_n_131_[43] ;
  wire \preg_s_reg_n_131_[44] ;
  wire \preg_s_reg_n_131_[45] ;
  wire \preg_s_reg_n_131_[46] ;
  wire \preg_s_reg_n_131_[47] ;
  wire \preg_s_reg_n_131_[48] ;
  wire \preg_s_reg_n_131_[49] ;
  wire \preg_s_reg_n_131_[4] ;
  wire \preg_s_reg_n_131_[50] ;
  wire \preg_s_reg_n_131_[51] ;
  wire \preg_s_reg_n_131_[52] ;
  wire \preg_s_reg_n_131_[53] ;
  wire \preg_s_reg_n_131_[54] ;
  wire \preg_s_reg_n_131_[55] ;
  wire \preg_s_reg_n_131_[56] ;
  wire \preg_s_reg_n_131_[57] ;
  wire \preg_s_reg_n_131_[58] ;
  wire \preg_s_reg_n_131_[59] ;
  wire \preg_s_reg_n_131_[5] ;
  wire \preg_s_reg_n_131_[6] ;
  wire \preg_s_reg_n_131_[7] ;
  wire \preg_s_reg_n_131_[8] ;
  wire \preg_s_reg_n_131_[9] ;
  wire \preg_s_reg_n_132_[10] ;
  wire \preg_s_reg_n_132_[11] ;
  wire \preg_s_reg_n_132_[12] ;
  wire \preg_s_reg_n_132_[13] ;
  wire \preg_s_reg_n_132_[14] ;
  wire \preg_s_reg_n_132_[15] ;
  wire \preg_s_reg_n_132_[16] ;
  wire \preg_s_reg_n_132_[17] ;
  wire \preg_s_reg_n_132_[18] ;
  wire \preg_s_reg_n_132_[19] ;
  wire \preg_s_reg_n_132_[1] ;
  wire \preg_s_reg_n_132_[20] ;
  wire \preg_s_reg_n_132_[21] ;
  wire \preg_s_reg_n_132_[22] ;
  wire \preg_s_reg_n_132_[23] ;
  wire \preg_s_reg_n_132_[24] ;
  wire \preg_s_reg_n_132_[25] ;
  wire \preg_s_reg_n_132_[26] ;
  wire \preg_s_reg_n_132_[27] ;
  wire \preg_s_reg_n_132_[28] ;
  wire \preg_s_reg_n_132_[29] ;
  wire \preg_s_reg_n_132_[2] ;
  wire \preg_s_reg_n_132_[30] ;
  wire \preg_s_reg_n_132_[31] ;
  wire \preg_s_reg_n_132_[32] ;
  wire \preg_s_reg_n_132_[33] ;
  wire \preg_s_reg_n_132_[34] ;
  wire \preg_s_reg_n_132_[35] ;
  wire \preg_s_reg_n_132_[36] ;
  wire \preg_s_reg_n_132_[37] ;
  wire \preg_s_reg_n_132_[38] ;
  wire \preg_s_reg_n_132_[39] ;
  wire \preg_s_reg_n_132_[3] ;
  wire \preg_s_reg_n_132_[40] ;
  wire \preg_s_reg_n_132_[41] ;
  wire \preg_s_reg_n_132_[42] ;
  wire \preg_s_reg_n_132_[43] ;
  wire \preg_s_reg_n_132_[44] ;
  wire \preg_s_reg_n_132_[45] ;
  wire \preg_s_reg_n_132_[46] ;
  wire \preg_s_reg_n_132_[47] ;
  wire \preg_s_reg_n_132_[48] ;
  wire \preg_s_reg_n_132_[49] ;
  wire \preg_s_reg_n_132_[4] ;
  wire \preg_s_reg_n_132_[50] ;
  wire \preg_s_reg_n_132_[51] ;
  wire \preg_s_reg_n_132_[52] ;
  wire \preg_s_reg_n_132_[53] ;
  wire \preg_s_reg_n_132_[54] ;
  wire \preg_s_reg_n_132_[55] ;
  wire \preg_s_reg_n_132_[56] ;
  wire \preg_s_reg_n_132_[57] ;
  wire \preg_s_reg_n_132_[58] ;
  wire \preg_s_reg_n_132_[59] ;
  wire \preg_s_reg_n_132_[5] ;
  wire \preg_s_reg_n_132_[6] ;
  wire \preg_s_reg_n_132_[7] ;
  wire \preg_s_reg_n_132_[8] ;
  wire \preg_s_reg_n_132_[9] ;
  wire \preg_s_reg_n_133_[10] ;
  wire \preg_s_reg_n_133_[11] ;
  wire \preg_s_reg_n_133_[12] ;
  wire \preg_s_reg_n_133_[13] ;
  wire \preg_s_reg_n_133_[14] ;
  wire \preg_s_reg_n_133_[15] ;
  wire \preg_s_reg_n_133_[16] ;
  wire \preg_s_reg_n_133_[17] ;
  wire \preg_s_reg_n_133_[18] ;
  wire \preg_s_reg_n_133_[19] ;
  wire \preg_s_reg_n_133_[1] ;
  wire \preg_s_reg_n_133_[20] ;
  wire \preg_s_reg_n_133_[21] ;
  wire \preg_s_reg_n_133_[22] ;
  wire \preg_s_reg_n_133_[23] ;
  wire \preg_s_reg_n_133_[24] ;
  wire \preg_s_reg_n_133_[25] ;
  wire \preg_s_reg_n_133_[26] ;
  wire \preg_s_reg_n_133_[27] ;
  wire \preg_s_reg_n_133_[28] ;
  wire \preg_s_reg_n_133_[29] ;
  wire \preg_s_reg_n_133_[2] ;
  wire \preg_s_reg_n_133_[30] ;
  wire \preg_s_reg_n_133_[31] ;
  wire \preg_s_reg_n_133_[32] ;
  wire \preg_s_reg_n_133_[33] ;
  wire \preg_s_reg_n_133_[34] ;
  wire \preg_s_reg_n_133_[35] ;
  wire \preg_s_reg_n_133_[36] ;
  wire \preg_s_reg_n_133_[37] ;
  wire \preg_s_reg_n_133_[38] ;
  wire \preg_s_reg_n_133_[39] ;
  wire \preg_s_reg_n_133_[3] ;
  wire \preg_s_reg_n_133_[40] ;
  wire \preg_s_reg_n_133_[41] ;
  wire \preg_s_reg_n_133_[42] ;
  wire \preg_s_reg_n_133_[43] ;
  wire \preg_s_reg_n_133_[44] ;
  wire \preg_s_reg_n_133_[45] ;
  wire \preg_s_reg_n_133_[46] ;
  wire \preg_s_reg_n_133_[47] ;
  wire \preg_s_reg_n_133_[48] ;
  wire \preg_s_reg_n_133_[49] ;
  wire \preg_s_reg_n_133_[4] ;
  wire \preg_s_reg_n_133_[50] ;
  wire \preg_s_reg_n_133_[51] ;
  wire \preg_s_reg_n_133_[52] ;
  wire \preg_s_reg_n_133_[53] ;
  wire \preg_s_reg_n_133_[54] ;
  wire \preg_s_reg_n_133_[55] ;
  wire \preg_s_reg_n_133_[56] ;
  wire \preg_s_reg_n_133_[57] ;
  wire \preg_s_reg_n_133_[58] ;
  wire \preg_s_reg_n_133_[59] ;
  wire \preg_s_reg_n_133_[5] ;
  wire \preg_s_reg_n_133_[6] ;
  wire \preg_s_reg_n_133_[7] ;
  wire \preg_s_reg_n_133_[8] ;
  wire \preg_s_reg_n_133_[9] ;
  wire \preg_s_reg_n_134_[10] ;
  wire \preg_s_reg_n_134_[11] ;
  wire \preg_s_reg_n_134_[12] ;
  wire \preg_s_reg_n_134_[13] ;
  wire \preg_s_reg_n_134_[14] ;
  wire \preg_s_reg_n_134_[15] ;
  wire \preg_s_reg_n_134_[16] ;
  wire \preg_s_reg_n_134_[17] ;
  wire \preg_s_reg_n_134_[18] ;
  wire \preg_s_reg_n_134_[19] ;
  wire \preg_s_reg_n_134_[1] ;
  wire \preg_s_reg_n_134_[20] ;
  wire \preg_s_reg_n_134_[21] ;
  wire \preg_s_reg_n_134_[22] ;
  wire \preg_s_reg_n_134_[23] ;
  wire \preg_s_reg_n_134_[24] ;
  wire \preg_s_reg_n_134_[25] ;
  wire \preg_s_reg_n_134_[26] ;
  wire \preg_s_reg_n_134_[27] ;
  wire \preg_s_reg_n_134_[28] ;
  wire \preg_s_reg_n_134_[29] ;
  wire \preg_s_reg_n_134_[2] ;
  wire \preg_s_reg_n_134_[30] ;
  wire \preg_s_reg_n_134_[31] ;
  wire \preg_s_reg_n_134_[32] ;
  wire \preg_s_reg_n_134_[33] ;
  wire \preg_s_reg_n_134_[34] ;
  wire \preg_s_reg_n_134_[35] ;
  wire \preg_s_reg_n_134_[36] ;
  wire \preg_s_reg_n_134_[37] ;
  wire \preg_s_reg_n_134_[38] ;
  wire \preg_s_reg_n_134_[39] ;
  wire \preg_s_reg_n_134_[3] ;
  wire \preg_s_reg_n_134_[40] ;
  wire \preg_s_reg_n_134_[41] ;
  wire \preg_s_reg_n_134_[42] ;
  wire \preg_s_reg_n_134_[43] ;
  wire \preg_s_reg_n_134_[44] ;
  wire \preg_s_reg_n_134_[45] ;
  wire \preg_s_reg_n_134_[46] ;
  wire \preg_s_reg_n_134_[47] ;
  wire \preg_s_reg_n_134_[48] ;
  wire \preg_s_reg_n_134_[49] ;
  wire \preg_s_reg_n_134_[4] ;
  wire \preg_s_reg_n_134_[50] ;
  wire \preg_s_reg_n_134_[51] ;
  wire \preg_s_reg_n_134_[52] ;
  wire \preg_s_reg_n_134_[53] ;
  wire \preg_s_reg_n_134_[54] ;
  wire \preg_s_reg_n_134_[55] ;
  wire \preg_s_reg_n_134_[56] ;
  wire \preg_s_reg_n_134_[57] ;
  wire \preg_s_reg_n_134_[58] ;
  wire \preg_s_reg_n_134_[59] ;
  wire \preg_s_reg_n_134_[5] ;
  wire \preg_s_reg_n_134_[6] ;
  wire \preg_s_reg_n_134_[7] ;
  wire \preg_s_reg_n_134_[8] ;
  wire \preg_s_reg_n_134_[9] ;
  wire \preg_s_reg_n_135_[10] ;
  wire \preg_s_reg_n_135_[11] ;
  wire \preg_s_reg_n_135_[12] ;
  wire \preg_s_reg_n_135_[13] ;
  wire \preg_s_reg_n_135_[14] ;
  wire \preg_s_reg_n_135_[15] ;
  wire \preg_s_reg_n_135_[16] ;
  wire \preg_s_reg_n_135_[17] ;
  wire \preg_s_reg_n_135_[18] ;
  wire \preg_s_reg_n_135_[19] ;
  wire \preg_s_reg_n_135_[1] ;
  wire \preg_s_reg_n_135_[20] ;
  wire \preg_s_reg_n_135_[21] ;
  wire \preg_s_reg_n_135_[22] ;
  wire \preg_s_reg_n_135_[23] ;
  wire \preg_s_reg_n_135_[24] ;
  wire \preg_s_reg_n_135_[25] ;
  wire \preg_s_reg_n_135_[26] ;
  wire \preg_s_reg_n_135_[27] ;
  wire \preg_s_reg_n_135_[28] ;
  wire \preg_s_reg_n_135_[29] ;
  wire \preg_s_reg_n_135_[2] ;
  wire \preg_s_reg_n_135_[30] ;
  wire \preg_s_reg_n_135_[31] ;
  wire \preg_s_reg_n_135_[32] ;
  wire \preg_s_reg_n_135_[33] ;
  wire \preg_s_reg_n_135_[34] ;
  wire \preg_s_reg_n_135_[35] ;
  wire \preg_s_reg_n_135_[36] ;
  wire \preg_s_reg_n_135_[37] ;
  wire \preg_s_reg_n_135_[38] ;
  wire \preg_s_reg_n_135_[39] ;
  wire \preg_s_reg_n_135_[3] ;
  wire \preg_s_reg_n_135_[40] ;
  wire \preg_s_reg_n_135_[41] ;
  wire \preg_s_reg_n_135_[42] ;
  wire \preg_s_reg_n_135_[43] ;
  wire \preg_s_reg_n_135_[44] ;
  wire \preg_s_reg_n_135_[45] ;
  wire \preg_s_reg_n_135_[46] ;
  wire \preg_s_reg_n_135_[47] ;
  wire \preg_s_reg_n_135_[48] ;
  wire \preg_s_reg_n_135_[49] ;
  wire \preg_s_reg_n_135_[4] ;
  wire \preg_s_reg_n_135_[50] ;
  wire \preg_s_reg_n_135_[51] ;
  wire \preg_s_reg_n_135_[52] ;
  wire \preg_s_reg_n_135_[53] ;
  wire \preg_s_reg_n_135_[54] ;
  wire \preg_s_reg_n_135_[55] ;
  wire \preg_s_reg_n_135_[56] ;
  wire \preg_s_reg_n_135_[57] ;
  wire \preg_s_reg_n_135_[58] ;
  wire \preg_s_reg_n_135_[59] ;
  wire \preg_s_reg_n_135_[5] ;
  wire \preg_s_reg_n_135_[6] ;
  wire \preg_s_reg_n_135_[7] ;
  wire \preg_s_reg_n_135_[8] ;
  wire \preg_s_reg_n_135_[9] ;
  wire \preg_s_reg_n_136_[10] ;
  wire \preg_s_reg_n_136_[11] ;
  wire \preg_s_reg_n_136_[12] ;
  wire \preg_s_reg_n_136_[13] ;
  wire \preg_s_reg_n_136_[14] ;
  wire \preg_s_reg_n_136_[15] ;
  wire \preg_s_reg_n_136_[16] ;
  wire \preg_s_reg_n_136_[17] ;
  wire \preg_s_reg_n_136_[18] ;
  wire \preg_s_reg_n_136_[19] ;
  wire \preg_s_reg_n_136_[1] ;
  wire \preg_s_reg_n_136_[20] ;
  wire \preg_s_reg_n_136_[21] ;
  wire \preg_s_reg_n_136_[22] ;
  wire \preg_s_reg_n_136_[23] ;
  wire \preg_s_reg_n_136_[24] ;
  wire \preg_s_reg_n_136_[25] ;
  wire \preg_s_reg_n_136_[26] ;
  wire \preg_s_reg_n_136_[27] ;
  wire \preg_s_reg_n_136_[28] ;
  wire \preg_s_reg_n_136_[29] ;
  wire \preg_s_reg_n_136_[2] ;
  wire \preg_s_reg_n_136_[30] ;
  wire \preg_s_reg_n_136_[31] ;
  wire \preg_s_reg_n_136_[32] ;
  wire \preg_s_reg_n_136_[33] ;
  wire \preg_s_reg_n_136_[34] ;
  wire \preg_s_reg_n_136_[35] ;
  wire \preg_s_reg_n_136_[36] ;
  wire \preg_s_reg_n_136_[37] ;
  wire \preg_s_reg_n_136_[38] ;
  wire \preg_s_reg_n_136_[39] ;
  wire \preg_s_reg_n_136_[3] ;
  wire \preg_s_reg_n_136_[40] ;
  wire \preg_s_reg_n_136_[41] ;
  wire \preg_s_reg_n_136_[42] ;
  wire \preg_s_reg_n_136_[43] ;
  wire \preg_s_reg_n_136_[44] ;
  wire \preg_s_reg_n_136_[45] ;
  wire \preg_s_reg_n_136_[46] ;
  wire \preg_s_reg_n_136_[47] ;
  wire \preg_s_reg_n_136_[48] ;
  wire \preg_s_reg_n_136_[49] ;
  wire \preg_s_reg_n_136_[4] ;
  wire \preg_s_reg_n_136_[50] ;
  wire \preg_s_reg_n_136_[51] ;
  wire \preg_s_reg_n_136_[52] ;
  wire \preg_s_reg_n_136_[53] ;
  wire \preg_s_reg_n_136_[54] ;
  wire \preg_s_reg_n_136_[55] ;
  wire \preg_s_reg_n_136_[56] ;
  wire \preg_s_reg_n_136_[57] ;
  wire \preg_s_reg_n_136_[58] ;
  wire \preg_s_reg_n_136_[59] ;
  wire \preg_s_reg_n_136_[5] ;
  wire \preg_s_reg_n_136_[6] ;
  wire \preg_s_reg_n_136_[7] ;
  wire \preg_s_reg_n_136_[8] ;
  wire \preg_s_reg_n_136_[9] ;
  wire \preg_s_reg_n_137_[10] ;
  wire \preg_s_reg_n_137_[11] ;
  wire \preg_s_reg_n_137_[12] ;
  wire \preg_s_reg_n_137_[13] ;
  wire \preg_s_reg_n_137_[14] ;
  wire \preg_s_reg_n_137_[15] ;
  wire \preg_s_reg_n_137_[16] ;
  wire \preg_s_reg_n_137_[17] ;
  wire \preg_s_reg_n_137_[18] ;
  wire \preg_s_reg_n_137_[19] ;
  wire \preg_s_reg_n_137_[1] ;
  wire \preg_s_reg_n_137_[20] ;
  wire \preg_s_reg_n_137_[21] ;
  wire \preg_s_reg_n_137_[22] ;
  wire \preg_s_reg_n_137_[23] ;
  wire \preg_s_reg_n_137_[24] ;
  wire \preg_s_reg_n_137_[25] ;
  wire \preg_s_reg_n_137_[26] ;
  wire \preg_s_reg_n_137_[27] ;
  wire \preg_s_reg_n_137_[28] ;
  wire \preg_s_reg_n_137_[29] ;
  wire \preg_s_reg_n_137_[2] ;
  wire \preg_s_reg_n_137_[30] ;
  wire \preg_s_reg_n_137_[31] ;
  wire \preg_s_reg_n_137_[32] ;
  wire \preg_s_reg_n_137_[33] ;
  wire \preg_s_reg_n_137_[34] ;
  wire \preg_s_reg_n_137_[35] ;
  wire \preg_s_reg_n_137_[36] ;
  wire \preg_s_reg_n_137_[37] ;
  wire \preg_s_reg_n_137_[38] ;
  wire \preg_s_reg_n_137_[39] ;
  wire \preg_s_reg_n_137_[3] ;
  wire \preg_s_reg_n_137_[40] ;
  wire \preg_s_reg_n_137_[41] ;
  wire \preg_s_reg_n_137_[42] ;
  wire \preg_s_reg_n_137_[43] ;
  wire \preg_s_reg_n_137_[44] ;
  wire \preg_s_reg_n_137_[45] ;
  wire \preg_s_reg_n_137_[46] ;
  wire \preg_s_reg_n_137_[47] ;
  wire \preg_s_reg_n_137_[48] ;
  wire \preg_s_reg_n_137_[49] ;
  wire \preg_s_reg_n_137_[4] ;
  wire \preg_s_reg_n_137_[50] ;
  wire \preg_s_reg_n_137_[51] ;
  wire \preg_s_reg_n_137_[52] ;
  wire \preg_s_reg_n_137_[53] ;
  wire \preg_s_reg_n_137_[54] ;
  wire \preg_s_reg_n_137_[55] ;
  wire \preg_s_reg_n_137_[56] ;
  wire \preg_s_reg_n_137_[57] ;
  wire \preg_s_reg_n_137_[58] ;
  wire \preg_s_reg_n_137_[59] ;
  wire \preg_s_reg_n_137_[5] ;
  wire \preg_s_reg_n_137_[6] ;
  wire \preg_s_reg_n_137_[7] ;
  wire \preg_s_reg_n_137_[8] ;
  wire \preg_s_reg_n_137_[9] ;
  wire \preg_s_reg_n_138_[10] ;
  wire \preg_s_reg_n_138_[11] ;
  wire \preg_s_reg_n_138_[12] ;
  wire \preg_s_reg_n_138_[13] ;
  wire \preg_s_reg_n_138_[14] ;
  wire \preg_s_reg_n_138_[15] ;
  wire \preg_s_reg_n_138_[16] ;
  wire \preg_s_reg_n_138_[17] ;
  wire \preg_s_reg_n_138_[18] ;
  wire \preg_s_reg_n_138_[19] ;
  wire \preg_s_reg_n_138_[1] ;
  wire \preg_s_reg_n_138_[20] ;
  wire \preg_s_reg_n_138_[21] ;
  wire \preg_s_reg_n_138_[22] ;
  wire \preg_s_reg_n_138_[23] ;
  wire \preg_s_reg_n_138_[24] ;
  wire \preg_s_reg_n_138_[25] ;
  wire \preg_s_reg_n_138_[26] ;
  wire \preg_s_reg_n_138_[27] ;
  wire \preg_s_reg_n_138_[28] ;
  wire \preg_s_reg_n_138_[29] ;
  wire \preg_s_reg_n_138_[2] ;
  wire \preg_s_reg_n_138_[30] ;
  wire \preg_s_reg_n_138_[31] ;
  wire \preg_s_reg_n_138_[32] ;
  wire \preg_s_reg_n_138_[33] ;
  wire \preg_s_reg_n_138_[34] ;
  wire \preg_s_reg_n_138_[35] ;
  wire \preg_s_reg_n_138_[36] ;
  wire \preg_s_reg_n_138_[37] ;
  wire \preg_s_reg_n_138_[38] ;
  wire \preg_s_reg_n_138_[39] ;
  wire \preg_s_reg_n_138_[3] ;
  wire \preg_s_reg_n_138_[40] ;
  wire \preg_s_reg_n_138_[41] ;
  wire \preg_s_reg_n_138_[42] ;
  wire \preg_s_reg_n_138_[43] ;
  wire \preg_s_reg_n_138_[44] ;
  wire \preg_s_reg_n_138_[45] ;
  wire \preg_s_reg_n_138_[46] ;
  wire \preg_s_reg_n_138_[47] ;
  wire \preg_s_reg_n_138_[48] ;
  wire \preg_s_reg_n_138_[49] ;
  wire \preg_s_reg_n_138_[4] ;
  wire \preg_s_reg_n_138_[50] ;
  wire \preg_s_reg_n_138_[51] ;
  wire \preg_s_reg_n_138_[52] ;
  wire \preg_s_reg_n_138_[53] ;
  wire \preg_s_reg_n_138_[54] ;
  wire \preg_s_reg_n_138_[55] ;
  wire \preg_s_reg_n_138_[56] ;
  wire \preg_s_reg_n_138_[57] ;
  wire \preg_s_reg_n_138_[58] ;
  wire \preg_s_reg_n_138_[59] ;
  wire \preg_s_reg_n_138_[5] ;
  wire \preg_s_reg_n_138_[6] ;
  wire \preg_s_reg_n_138_[7] ;
  wire \preg_s_reg_n_138_[8] ;
  wire \preg_s_reg_n_138_[9] ;
  wire \preg_s_reg_n_139_[10] ;
  wire \preg_s_reg_n_139_[11] ;
  wire \preg_s_reg_n_139_[12] ;
  wire \preg_s_reg_n_139_[13] ;
  wire \preg_s_reg_n_139_[14] ;
  wire \preg_s_reg_n_139_[15] ;
  wire \preg_s_reg_n_139_[16] ;
  wire \preg_s_reg_n_139_[17] ;
  wire \preg_s_reg_n_139_[18] ;
  wire \preg_s_reg_n_139_[19] ;
  wire \preg_s_reg_n_139_[1] ;
  wire \preg_s_reg_n_139_[20] ;
  wire \preg_s_reg_n_139_[21] ;
  wire \preg_s_reg_n_139_[22] ;
  wire \preg_s_reg_n_139_[23] ;
  wire \preg_s_reg_n_139_[24] ;
  wire \preg_s_reg_n_139_[25] ;
  wire \preg_s_reg_n_139_[26] ;
  wire \preg_s_reg_n_139_[27] ;
  wire \preg_s_reg_n_139_[28] ;
  wire \preg_s_reg_n_139_[29] ;
  wire \preg_s_reg_n_139_[2] ;
  wire \preg_s_reg_n_139_[30] ;
  wire \preg_s_reg_n_139_[31] ;
  wire \preg_s_reg_n_139_[32] ;
  wire \preg_s_reg_n_139_[33] ;
  wire \preg_s_reg_n_139_[34] ;
  wire \preg_s_reg_n_139_[35] ;
  wire \preg_s_reg_n_139_[36] ;
  wire \preg_s_reg_n_139_[37] ;
  wire \preg_s_reg_n_139_[38] ;
  wire \preg_s_reg_n_139_[39] ;
  wire \preg_s_reg_n_139_[3] ;
  wire \preg_s_reg_n_139_[40] ;
  wire \preg_s_reg_n_139_[41] ;
  wire \preg_s_reg_n_139_[42] ;
  wire \preg_s_reg_n_139_[43] ;
  wire \preg_s_reg_n_139_[44] ;
  wire \preg_s_reg_n_139_[45] ;
  wire \preg_s_reg_n_139_[46] ;
  wire \preg_s_reg_n_139_[47] ;
  wire \preg_s_reg_n_139_[48] ;
  wire \preg_s_reg_n_139_[49] ;
  wire \preg_s_reg_n_139_[4] ;
  wire \preg_s_reg_n_139_[50] ;
  wire \preg_s_reg_n_139_[51] ;
  wire \preg_s_reg_n_139_[52] ;
  wire \preg_s_reg_n_139_[53] ;
  wire \preg_s_reg_n_139_[54] ;
  wire \preg_s_reg_n_139_[55] ;
  wire \preg_s_reg_n_139_[56] ;
  wire \preg_s_reg_n_139_[57] ;
  wire \preg_s_reg_n_139_[58] ;
  wire \preg_s_reg_n_139_[59] ;
  wire \preg_s_reg_n_139_[5] ;
  wire \preg_s_reg_n_139_[6] ;
  wire \preg_s_reg_n_139_[7] ;
  wire \preg_s_reg_n_139_[8] ;
  wire \preg_s_reg_n_139_[9] ;
  wire \preg_s_reg_n_13_[1] ;
  wire \preg_s_reg_n_13_[2] ;
  wire \preg_s_reg_n_13_[30] ;
  wire \preg_s_reg_n_13_[3] ;
  wire \preg_s_reg_n_13_[4] ;
  wire \preg_s_reg_n_13_[54] ;
  wire \preg_s_reg_n_13_[56] ;
  wire \preg_s_reg_n_13_[57] ;
  wire \preg_s_reg_n_13_[58] ;
  wire \preg_s_reg_n_13_[59] ;
  wire \preg_s_reg_n_13_[6] ;
  wire \preg_s_reg_n_140_[10] ;
  wire \preg_s_reg_n_140_[11] ;
  wire \preg_s_reg_n_140_[12] ;
  wire \preg_s_reg_n_140_[13] ;
  wire \preg_s_reg_n_140_[14] ;
  wire \preg_s_reg_n_140_[15] ;
  wire \preg_s_reg_n_140_[16] ;
  wire \preg_s_reg_n_140_[17] ;
  wire \preg_s_reg_n_140_[18] ;
  wire \preg_s_reg_n_140_[19] ;
  wire \preg_s_reg_n_140_[1] ;
  wire \preg_s_reg_n_140_[20] ;
  wire \preg_s_reg_n_140_[21] ;
  wire \preg_s_reg_n_140_[22] ;
  wire \preg_s_reg_n_140_[23] ;
  wire \preg_s_reg_n_140_[24] ;
  wire \preg_s_reg_n_140_[25] ;
  wire \preg_s_reg_n_140_[26] ;
  wire \preg_s_reg_n_140_[27] ;
  wire \preg_s_reg_n_140_[28] ;
  wire \preg_s_reg_n_140_[29] ;
  wire \preg_s_reg_n_140_[2] ;
  wire \preg_s_reg_n_140_[30] ;
  wire \preg_s_reg_n_140_[31] ;
  wire \preg_s_reg_n_140_[32] ;
  wire \preg_s_reg_n_140_[33] ;
  wire \preg_s_reg_n_140_[34] ;
  wire \preg_s_reg_n_140_[35] ;
  wire \preg_s_reg_n_140_[36] ;
  wire \preg_s_reg_n_140_[37] ;
  wire \preg_s_reg_n_140_[38] ;
  wire \preg_s_reg_n_140_[39] ;
  wire \preg_s_reg_n_140_[3] ;
  wire \preg_s_reg_n_140_[40] ;
  wire \preg_s_reg_n_140_[41] ;
  wire \preg_s_reg_n_140_[42] ;
  wire \preg_s_reg_n_140_[43] ;
  wire \preg_s_reg_n_140_[44] ;
  wire \preg_s_reg_n_140_[45] ;
  wire \preg_s_reg_n_140_[46] ;
  wire \preg_s_reg_n_140_[47] ;
  wire \preg_s_reg_n_140_[48] ;
  wire \preg_s_reg_n_140_[49] ;
  wire \preg_s_reg_n_140_[4] ;
  wire \preg_s_reg_n_140_[50] ;
  wire \preg_s_reg_n_140_[51] ;
  wire \preg_s_reg_n_140_[52] ;
  wire \preg_s_reg_n_140_[53] ;
  wire \preg_s_reg_n_140_[54] ;
  wire \preg_s_reg_n_140_[55] ;
  wire \preg_s_reg_n_140_[56] ;
  wire \preg_s_reg_n_140_[57] ;
  wire \preg_s_reg_n_140_[58] ;
  wire \preg_s_reg_n_140_[59] ;
  wire \preg_s_reg_n_140_[5] ;
  wire \preg_s_reg_n_140_[6] ;
  wire \preg_s_reg_n_140_[7] ;
  wire \preg_s_reg_n_140_[8] ;
  wire \preg_s_reg_n_140_[9] ;
  wire \preg_s_reg_n_141_[10] ;
  wire \preg_s_reg_n_141_[11] ;
  wire \preg_s_reg_n_141_[12] ;
  wire \preg_s_reg_n_141_[13] ;
  wire \preg_s_reg_n_141_[14] ;
  wire \preg_s_reg_n_141_[15] ;
  wire \preg_s_reg_n_141_[16] ;
  wire \preg_s_reg_n_141_[17] ;
  wire \preg_s_reg_n_141_[18] ;
  wire \preg_s_reg_n_141_[19] ;
  wire \preg_s_reg_n_141_[1] ;
  wire \preg_s_reg_n_141_[20] ;
  wire \preg_s_reg_n_141_[21] ;
  wire \preg_s_reg_n_141_[22] ;
  wire \preg_s_reg_n_141_[23] ;
  wire \preg_s_reg_n_141_[24] ;
  wire \preg_s_reg_n_141_[25] ;
  wire \preg_s_reg_n_141_[26] ;
  wire \preg_s_reg_n_141_[27] ;
  wire \preg_s_reg_n_141_[28] ;
  wire \preg_s_reg_n_141_[29] ;
  wire \preg_s_reg_n_141_[2] ;
  wire \preg_s_reg_n_141_[30] ;
  wire \preg_s_reg_n_141_[31] ;
  wire \preg_s_reg_n_141_[32] ;
  wire \preg_s_reg_n_141_[33] ;
  wire \preg_s_reg_n_141_[34] ;
  wire \preg_s_reg_n_141_[35] ;
  wire \preg_s_reg_n_141_[36] ;
  wire \preg_s_reg_n_141_[37] ;
  wire \preg_s_reg_n_141_[38] ;
  wire \preg_s_reg_n_141_[39] ;
  wire \preg_s_reg_n_141_[3] ;
  wire \preg_s_reg_n_141_[40] ;
  wire \preg_s_reg_n_141_[41] ;
  wire \preg_s_reg_n_141_[42] ;
  wire \preg_s_reg_n_141_[43] ;
  wire \preg_s_reg_n_141_[44] ;
  wire \preg_s_reg_n_141_[45] ;
  wire \preg_s_reg_n_141_[46] ;
  wire \preg_s_reg_n_141_[47] ;
  wire \preg_s_reg_n_141_[48] ;
  wire \preg_s_reg_n_141_[49] ;
  wire \preg_s_reg_n_141_[4] ;
  wire \preg_s_reg_n_141_[50] ;
  wire \preg_s_reg_n_141_[51] ;
  wire \preg_s_reg_n_141_[52] ;
  wire \preg_s_reg_n_141_[53] ;
  wire \preg_s_reg_n_141_[54] ;
  wire \preg_s_reg_n_141_[55] ;
  wire \preg_s_reg_n_141_[56] ;
  wire \preg_s_reg_n_141_[57] ;
  wire \preg_s_reg_n_141_[58] ;
  wire \preg_s_reg_n_141_[59] ;
  wire \preg_s_reg_n_141_[5] ;
  wire \preg_s_reg_n_141_[6] ;
  wire \preg_s_reg_n_141_[7] ;
  wire \preg_s_reg_n_141_[8] ;
  wire \preg_s_reg_n_141_[9] ;
  wire \preg_s_reg_n_142_[10] ;
  wire \preg_s_reg_n_142_[11] ;
  wire \preg_s_reg_n_142_[12] ;
  wire \preg_s_reg_n_142_[13] ;
  wire \preg_s_reg_n_142_[14] ;
  wire \preg_s_reg_n_142_[15] ;
  wire \preg_s_reg_n_142_[16] ;
  wire \preg_s_reg_n_142_[17] ;
  wire \preg_s_reg_n_142_[18] ;
  wire \preg_s_reg_n_142_[19] ;
  wire \preg_s_reg_n_142_[1] ;
  wire \preg_s_reg_n_142_[20] ;
  wire \preg_s_reg_n_142_[21] ;
  wire \preg_s_reg_n_142_[22] ;
  wire \preg_s_reg_n_142_[23] ;
  wire \preg_s_reg_n_142_[24] ;
  wire \preg_s_reg_n_142_[25] ;
  wire \preg_s_reg_n_142_[26] ;
  wire \preg_s_reg_n_142_[27] ;
  wire \preg_s_reg_n_142_[28] ;
  wire \preg_s_reg_n_142_[29] ;
  wire \preg_s_reg_n_142_[2] ;
  wire \preg_s_reg_n_142_[30] ;
  wire \preg_s_reg_n_142_[31] ;
  wire \preg_s_reg_n_142_[32] ;
  wire \preg_s_reg_n_142_[33] ;
  wire \preg_s_reg_n_142_[34] ;
  wire \preg_s_reg_n_142_[35] ;
  wire \preg_s_reg_n_142_[36] ;
  wire \preg_s_reg_n_142_[37] ;
  wire \preg_s_reg_n_142_[38] ;
  wire \preg_s_reg_n_142_[39] ;
  wire \preg_s_reg_n_142_[3] ;
  wire \preg_s_reg_n_142_[40] ;
  wire \preg_s_reg_n_142_[41] ;
  wire \preg_s_reg_n_142_[42] ;
  wire \preg_s_reg_n_142_[43] ;
  wire \preg_s_reg_n_142_[44] ;
  wire \preg_s_reg_n_142_[45] ;
  wire \preg_s_reg_n_142_[46] ;
  wire \preg_s_reg_n_142_[47] ;
  wire \preg_s_reg_n_142_[48] ;
  wire \preg_s_reg_n_142_[49] ;
  wire \preg_s_reg_n_142_[4] ;
  wire \preg_s_reg_n_142_[50] ;
  wire \preg_s_reg_n_142_[51] ;
  wire \preg_s_reg_n_142_[52] ;
  wire \preg_s_reg_n_142_[53] ;
  wire \preg_s_reg_n_142_[54] ;
  wire \preg_s_reg_n_142_[55] ;
  wire \preg_s_reg_n_142_[56] ;
  wire \preg_s_reg_n_142_[57] ;
  wire \preg_s_reg_n_142_[58] ;
  wire \preg_s_reg_n_142_[59] ;
  wire \preg_s_reg_n_142_[5] ;
  wire \preg_s_reg_n_142_[6] ;
  wire \preg_s_reg_n_142_[7] ;
  wire \preg_s_reg_n_142_[8] ;
  wire \preg_s_reg_n_142_[9] ;
  wire \preg_s_reg_n_143_[10] ;
  wire \preg_s_reg_n_143_[11] ;
  wire \preg_s_reg_n_143_[12] ;
  wire \preg_s_reg_n_143_[13] ;
  wire \preg_s_reg_n_143_[14] ;
  wire \preg_s_reg_n_143_[15] ;
  wire \preg_s_reg_n_143_[16] ;
  wire \preg_s_reg_n_143_[17] ;
  wire \preg_s_reg_n_143_[18] ;
  wire \preg_s_reg_n_143_[19] ;
  wire \preg_s_reg_n_143_[1] ;
  wire \preg_s_reg_n_143_[20] ;
  wire \preg_s_reg_n_143_[21] ;
  wire \preg_s_reg_n_143_[22] ;
  wire \preg_s_reg_n_143_[23] ;
  wire \preg_s_reg_n_143_[24] ;
  wire \preg_s_reg_n_143_[25] ;
  wire \preg_s_reg_n_143_[26] ;
  wire \preg_s_reg_n_143_[27] ;
  wire \preg_s_reg_n_143_[28] ;
  wire \preg_s_reg_n_143_[29] ;
  wire \preg_s_reg_n_143_[2] ;
  wire \preg_s_reg_n_143_[30] ;
  wire \preg_s_reg_n_143_[31] ;
  wire \preg_s_reg_n_143_[32] ;
  wire \preg_s_reg_n_143_[33] ;
  wire \preg_s_reg_n_143_[34] ;
  wire \preg_s_reg_n_143_[35] ;
  wire \preg_s_reg_n_143_[36] ;
  wire \preg_s_reg_n_143_[37] ;
  wire \preg_s_reg_n_143_[38] ;
  wire \preg_s_reg_n_143_[39] ;
  wire \preg_s_reg_n_143_[3] ;
  wire \preg_s_reg_n_143_[40] ;
  wire \preg_s_reg_n_143_[41] ;
  wire \preg_s_reg_n_143_[42] ;
  wire \preg_s_reg_n_143_[43] ;
  wire \preg_s_reg_n_143_[44] ;
  wire \preg_s_reg_n_143_[45] ;
  wire \preg_s_reg_n_143_[46] ;
  wire \preg_s_reg_n_143_[47] ;
  wire \preg_s_reg_n_143_[48] ;
  wire \preg_s_reg_n_143_[49] ;
  wire \preg_s_reg_n_143_[4] ;
  wire \preg_s_reg_n_143_[50] ;
  wire \preg_s_reg_n_143_[51] ;
  wire \preg_s_reg_n_143_[52] ;
  wire \preg_s_reg_n_143_[53] ;
  wire \preg_s_reg_n_143_[54] ;
  wire \preg_s_reg_n_143_[55] ;
  wire \preg_s_reg_n_143_[56] ;
  wire \preg_s_reg_n_143_[57] ;
  wire \preg_s_reg_n_143_[58] ;
  wire \preg_s_reg_n_143_[59] ;
  wire \preg_s_reg_n_143_[5] ;
  wire \preg_s_reg_n_143_[6] ;
  wire \preg_s_reg_n_143_[7] ;
  wire \preg_s_reg_n_143_[8] ;
  wire \preg_s_reg_n_143_[9] ;
  wire \preg_s_reg_n_144_[10] ;
  wire \preg_s_reg_n_144_[11] ;
  wire \preg_s_reg_n_144_[12] ;
  wire \preg_s_reg_n_144_[13] ;
  wire \preg_s_reg_n_144_[14] ;
  wire \preg_s_reg_n_144_[15] ;
  wire \preg_s_reg_n_144_[16] ;
  wire \preg_s_reg_n_144_[17] ;
  wire \preg_s_reg_n_144_[18] ;
  wire \preg_s_reg_n_144_[19] ;
  wire \preg_s_reg_n_144_[1] ;
  wire \preg_s_reg_n_144_[20] ;
  wire \preg_s_reg_n_144_[21] ;
  wire \preg_s_reg_n_144_[22] ;
  wire \preg_s_reg_n_144_[23] ;
  wire \preg_s_reg_n_144_[24] ;
  wire \preg_s_reg_n_144_[25] ;
  wire \preg_s_reg_n_144_[26] ;
  wire \preg_s_reg_n_144_[27] ;
  wire \preg_s_reg_n_144_[28] ;
  wire \preg_s_reg_n_144_[29] ;
  wire \preg_s_reg_n_144_[2] ;
  wire \preg_s_reg_n_144_[30] ;
  wire \preg_s_reg_n_144_[31] ;
  wire \preg_s_reg_n_144_[32] ;
  wire \preg_s_reg_n_144_[33] ;
  wire \preg_s_reg_n_144_[34] ;
  wire \preg_s_reg_n_144_[35] ;
  wire \preg_s_reg_n_144_[36] ;
  wire \preg_s_reg_n_144_[37] ;
  wire \preg_s_reg_n_144_[38] ;
  wire \preg_s_reg_n_144_[39] ;
  wire \preg_s_reg_n_144_[3] ;
  wire \preg_s_reg_n_144_[40] ;
  wire \preg_s_reg_n_144_[41] ;
  wire \preg_s_reg_n_144_[42] ;
  wire \preg_s_reg_n_144_[43] ;
  wire \preg_s_reg_n_144_[44] ;
  wire \preg_s_reg_n_144_[45] ;
  wire \preg_s_reg_n_144_[46] ;
  wire \preg_s_reg_n_144_[47] ;
  wire \preg_s_reg_n_144_[48] ;
  wire \preg_s_reg_n_144_[49] ;
  wire \preg_s_reg_n_144_[4] ;
  wire \preg_s_reg_n_144_[50] ;
  wire \preg_s_reg_n_144_[51] ;
  wire \preg_s_reg_n_144_[52] ;
  wire \preg_s_reg_n_144_[53] ;
  wire \preg_s_reg_n_144_[54] ;
  wire \preg_s_reg_n_144_[55] ;
  wire \preg_s_reg_n_144_[56] ;
  wire \preg_s_reg_n_144_[57] ;
  wire \preg_s_reg_n_144_[58] ;
  wire \preg_s_reg_n_144_[59] ;
  wire \preg_s_reg_n_144_[5] ;
  wire \preg_s_reg_n_144_[6] ;
  wire \preg_s_reg_n_144_[7] ;
  wire \preg_s_reg_n_144_[8] ;
  wire \preg_s_reg_n_144_[9] ;
  wire \preg_s_reg_n_145_[10] ;
  wire \preg_s_reg_n_145_[11] ;
  wire \preg_s_reg_n_145_[12] ;
  wire \preg_s_reg_n_145_[13] ;
  wire \preg_s_reg_n_145_[14] ;
  wire \preg_s_reg_n_145_[15] ;
  wire \preg_s_reg_n_145_[16] ;
  wire \preg_s_reg_n_145_[17] ;
  wire \preg_s_reg_n_145_[18] ;
  wire \preg_s_reg_n_145_[19] ;
  wire \preg_s_reg_n_145_[1] ;
  wire \preg_s_reg_n_145_[20] ;
  wire \preg_s_reg_n_145_[21] ;
  wire \preg_s_reg_n_145_[22] ;
  wire \preg_s_reg_n_145_[23] ;
  wire \preg_s_reg_n_145_[24] ;
  wire \preg_s_reg_n_145_[25] ;
  wire \preg_s_reg_n_145_[26] ;
  wire \preg_s_reg_n_145_[27] ;
  wire \preg_s_reg_n_145_[28] ;
  wire \preg_s_reg_n_145_[29] ;
  wire \preg_s_reg_n_145_[2] ;
  wire \preg_s_reg_n_145_[30] ;
  wire \preg_s_reg_n_145_[31] ;
  wire \preg_s_reg_n_145_[32] ;
  wire \preg_s_reg_n_145_[33] ;
  wire \preg_s_reg_n_145_[34] ;
  wire \preg_s_reg_n_145_[35] ;
  wire \preg_s_reg_n_145_[36] ;
  wire \preg_s_reg_n_145_[37] ;
  wire \preg_s_reg_n_145_[38] ;
  wire \preg_s_reg_n_145_[39] ;
  wire \preg_s_reg_n_145_[3] ;
  wire \preg_s_reg_n_145_[40] ;
  wire \preg_s_reg_n_145_[41] ;
  wire \preg_s_reg_n_145_[42] ;
  wire \preg_s_reg_n_145_[43] ;
  wire \preg_s_reg_n_145_[44] ;
  wire \preg_s_reg_n_145_[45] ;
  wire \preg_s_reg_n_145_[46] ;
  wire \preg_s_reg_n_145_[47] ;
  wire \preg_s_reg_n_145_[48] ;
  wire \preg_s_reg_n_145_[49] ;
  wire \preg_s_reg_n_145_[4] ;
  wire \preg_s_reg_n_145_[50] ;
  wire \preg_s_reg_n_145_[51] ;
  wire \preg_s_reg_n_145_[52] ;
  wire \preg_s_reg_n_145_[53] ;
  wire \preg_s_reg_n_145_[54] ;
  wire \preg_s_reg_n_145_[55] ;
  wire \preg_s_reg_n_145_[56] ;
  wire \preg_s_reg_n_145_[57] ;
  wire \preg_s_reg_n_145_[58] ;
  wire \preg_s_reg_n_145_[59] ;
  wire \preg_s_reg_n_145_[5] ;
  wire \preg_s_reg_n_145_[6] ;
  wire \preg_s_reg_n_145_[7] ;
  wire \preg_s_reg_n_145_[8] ;
  wire \preg_s_reg_n_145_[9] ;
  wire \preg_s_reg_n_146_[10] ;
  wire \preg_s_reg_n_146_[11] ;
  wire \preg_s_reg_n_146_[12] ;
  wire \preg_s_reg_n_146_[13] ;
  wire \preg_s_reg_n_146_[14] ;
  wire \preg_s_reg_n_146_[15] ;
  wire \preg_s_reg_n_146_[16] ;
  wire \preg_s_reg_n_146_[17] ;
  wire \preg_s_reg_n_146_[18] ;
  wire \preg_s_reg_n_146_[19] ;
  wire \preg_s_reg_n_146_[1] ;
  wire \preg_s_reg_n_146_[20] ;
  wire \preg_s_reg_n_146_[21] ;
  wire \preg_s_reg_n_146_[22] ;
  wire \preg_s_reg_n_146_[23] ;
  wire \preg_s_reg_n_146_[24] ;
  wire \preg_s_reg_n_146_[25] ;
  wire \preg_s_reg_n_146_[26] ;
  wire \preg_s_reg_n_146_[27] ;
  wire \preg_s_reg_n_146_[28] ;
  wire \preg_s_reg_n_146_[29] ;
  wire \preg_s_reg_n_146_[2] ;
  wire \preg_s_reg_n_146_[30] ;
  wire \preg_s_reg_n_146_[31] ;
  wire \preg_s_reg_n_146_[32] ;
  wire \preg_s_reg_n_146_[33] ;
  wire \preg_s_reg_n_146_[34] ;
  wire \preg_s_reg_n_146_[35] ;
  wire \preg_s_reg_n_146_[36] ;
  wire \preg_s_reg_n_146_[37] ;
  wire \preg_s_reg_n_146_[38] ;
  wire \preg_s_reg_n_146_[39] ;
  wire \preg_s_reg_n_146_[3] ;
  wire \preg_s_reg_n_146_[40] ;
  wire \preg_s_reg_n_146_[41] ;
  wire \preg_s_reg_n_146_[42] ;
  wire \preg_s_reg_n_146_[43] ;
  wire \preg_s_reg_n_146_[44] ;
  wire \preg_s_reg_n_146_[45] ;
  wire \preg_s_reg_n_146_[46] ;
  wire \preg_s_reg_n_146_[47] ;
  wire \preg_s_reg_n_146_[48] ;
  wire \preg_s_reg_n_146_[49] ;
  wire \preg_s_reg_n_146_[4] ;
  wire \preg_s_reg_n_146_[50] ;
  wire \preg_s_reg_n_146_[51] ;
  wire \preg_s_reg_n_146_[52] ;
  wire \preg_s_reg_n_146_[53] ;
  wire \preg_s_reg_n_146_[54] ;
  wire \preg_s_reg_n_146_[55] ;
  wire \preg_s_reg_n_146_[56] ;
  wire \preg_s_reg_n_146_[57] ;
  wire \preg_s_reg_n_146_[58] ;
  wire \preg_s_reg_n_146_[59] ;
  wire \preg_s_reg_n_146_[5] ;
  wire \preg_s_reg_n_146_[6] ;
  wire \preg_s_reg_n_146_[7] ;
  wire \preg_s_reg_n_146_[8] ;
  wire \preg_s_reg_n_146_[9] ;
  wire \preg_s_reg_n_147_[10] ;
  wire \preg_s_reg_n_147_[11] ;
  wire \preg_s_reg_n_147_[12] ;
  wire \preg_s_reg_n_147_[13] ;
  wire \preg_s_reg_n_147_[14] ;
  wire \preg_s_reg_n_147_[15] ;
  wire \preg_s_reg_n_147_[16] ;
  wire \preg_s_reg_n_147_[17] ;
  wire \preg_s_reg_n_147_[18] ;
  wire \preg_s_reg_n_147_[19] ;
  wire \preg_s_reg_n_147_[1] ;
  wire \preg_s_reg_n_147_[20] ;
  wire \preg_s_reg_n_147_[21] ;
  wire \preg_s_reg_n_147_[22] ;
  wire \preg_s_reg_n_147_[23] ;
  wire \preg_s_reg_n_147_[24] ;
  wire \preg_s_reg_n_147_[25] ;
  wire \preg_s_reg_n_147_[26] ;
  wire \preg_s_reg_n_147_[27] ;
  wire \preg_s_reg_n_147_[28] ;
  wire \preg_s_reg_n_147_[29] ;
  wire \preg_s_reg_n_147_[2] ;
  wire \preg_s_reg_n_147_[30] ;
  wire \preg_s_reg_n_147_[31] ;
  wire \preg_s_reg_n_147_[32] ;
  wire \preg_s_reg_n_147_[33] ;
  wire \preg_s_reg_n_147_[34] ;
  wire \preg_s_reg_n_147_[35] ;
  wire \preg_s_reg_n_147_[36] ;
  wire \preg_s_reg_n_147_[37] ;
  wire \preg_s_reg_n_147_[38] ;
  wire \preg_s_reg_n_147_[39] ;
  wire \preg_s_reg_n_147_[3] ;
  wire \preg_s_reg_n_147_[40] ;
  wire \preg_s_reg_n_147_[41] ;
  wire \preg_s_reg_n_147_[42] ;
  wire \preg_s_reg_n_147_[43] ;
  wire \preg_s_reg_n_147_[44] ;
  wire \preg_s_reg_n_147_[45] ;
  wire \preg_s_reg_n_147_[46] ;
  wire \preg_s_reg_n_147_[47] ;
  wire \preg_s_reg_n_147_[48] ;
  wire \preg_s_reg_n_147_[49] ;
  wire \preg_s_reg_n_147_[4] ;
  wire \preg_s_reg_n_147_[50] ;
  wire \preg_s_reg_n_147_[51] ;
  wire \preg_s_reg_n_147_[52] ;
  wire \preg_s_reg_n_147_[53] ;
  wire \preg_s_reg_n_147_[54] ;
  wire \preg_s_reg_n_147_[55] ;
  wire \preg_s_reg_n_147_[56] ;
  wire \preg_s_reg_n_147_[57] ;
  wire \preg_s_reg_n_147_[58] ;
  wire \preg_s_reg_n_147_[59] ;
  wire \preg_s_reg_n_147_[5] ;
  wire \preg_s_reg_n_147_[6] ;
  wire \preg_s_reg_n_147_[7] ;
  wire \preg_s_reg_n_147_[8] ;
  wire \preg_s_reg_n_147_[9] ;
  wire \preg_s_reg_n_148_[10] ;
  wire \preg_s_reg_n_148_[11] ;
  wire \preg_s_reg_n_148_[12] ;
  wire \preg_s_reg_n_148_[13] ;
  wire \preg_s_reg_n_148_[14] ;
  wire \preg_s_reg_n_148_[15] ;
  wire \preg_s_reg_n_148_[16] ;
  wire \preg_s_reg_n_148_[17] ;
  wire \preg_s_reg_n_148_[18] ;
  wire \preg_s_reg_n_148_[19] ;
  wire \preg_s_reg_n_148_[1] ;
  wire \preg_s_reg_n_148_[20] ;
  wire \preg_s_reg_n_148_[21] ;
  wire \preg_s_reg_n_148_[22] ;
  wire \preg_s_reg_n_148_[23] ;
  wire \preg_s_reg_n_148_[24] ;
  wire \preg_s_reg_n_148_[25] ;
  wire \preg_s_reg_n_148_[26] ;
  wire \preg_s_reg_n_148_[27] ;
  wire \preg_s_reg_n_148_[28] ;
  wire \preg_s_reg_n_148_[29] ;
  wire \preg_s_reg_n_148_[2] ;
  wire \preg_s_reg_n_148_[30] ;
  wire \preg_s_reg_n_148_[31] ;
  wire \preg_s_reg_n_148_[32] ;
  wire \preg_s_reg_n_148_[33] ;
  wire \preg_s_reg_n_148_[34] ;
  wire \preg_s_reg_n_148_[35] ;
  wire \preg_s_reg_n_148_[36] ;
  wire \preg_s_reg_n_148_[37] ;
  wire \preg_s_reg_n_148_[38] ;
  wire \preg_s_reg_n_148_[39] ;
  wire \preg_s_reg_n_148_[3] ;
  wire \preg_s_reg_n_148_[40] ;
  wire \preg_s_reg_n_148_[41] ;
  wire \preg_s_reg_n_148_[42] ;
  wire \preg_s_reg_n_148_[43] ;
  wire \preg_s_reg_n_148_[44] ;
  wire \preg_s_reg_n_148_[45] ;
  wire \preg_s_reg_n_148_[46] ;
  wire \preg_s_reg_n_148_[47] ;
  wire \preg_s_reg_n_148_[48] ;
  wire \preg_s_reg_n_148_[49] ;
  wire \preg_s_reg_n_148_[4] ;
  wire \preg_s_reg_n_148_[50] ;
  wire \preg_s_reg_n_148_[51] ;
  wire \preg_s_reg_n_148_[52] ;
  wire \preg_s_reg_n_148_[53] ;
  wire \preg_s_reg_n_148_[54] ;
  wire \preg_s_reg_n_148_[55] ;
  wire \preg_s_reg_n_148_[56] ;
  wire \preg_s_reg_n_148_[57] ;
  wire \preg_s_reg_n_148_[58] ;
  wire \preg_s_reg_n_148_[59] ;
  wire \preg_s_reg_n_148_[5] ;
  wire \preg_s_reg_n_148_[6] ;
  wire \preg_s_reg_n_148_[7] ;
  wire \preg_s_reg_n_148_[8] ;
  wire \preg_s_reg_n_148_[9] ;
  wire \preg_s_reg_n_149_[10] ;
  wire \preg_s_reg_n_149_[11] ;
  wire \preg_s_reg_n_149_[12] ;
  wire \preg_s_reg_n_149_[13] ;
  wire \preg_s_reg_n_149_[14] ;
  wire \preg_s_reg_n_149_[15] ;
  wire \preg_s_reg_n_149_[16] ;
  wire \preg_s_reg_n_149_[17] ;
  wire \preg_s_reg_n_149_[18] ;
  wire \preg_s_reg_n_149_[19] ;
  wire \preg_s_reg_n_149_[1] ;
  wire \preg_s_reg_n_149_[20] ;
  wire \preg_s_reg_n_149_[21] ;
  wire \preg_s_reg_n_149_[22] ;
  wire \preg_s_reg_n_149_[23] ;
  wire \preg_s_reg_n_149_[24] ;
  wire \preg_s_reg_n_149_[25] ;
  wire \preg_s_reg_n_149_[26] ;
  wire \preg_s_reg_n_149_[27] ;
  wire \preg_s_reg_n_149_[28] ;
  wire \preg_s_reg_n_149_[29] ;
  wire \preg_s_reg_n_149_[2] ;
  wire \preg_s_reg_n_149_[30] ;
  wire \preg_s_reg_n_149_[31] ;
  wire \preg_s_reg_n_149_[32] ;
  wire \preg_s_reg_n_149_[33] ;
  wire \preg_s_reg_n_149_[34] ;
  wire \preg_s_reg_n_149_[35] ;
  wire \preg_s_reg_n_149_[36] ;
  wire \preg_s_reg_n_149_[37] ;
  wire \preg_s_reg_n_149_[38] ;
  wire \preg_s_reg_n_149_[39] ;
  wire \preg_s_reg_n_149_[3] ;
  wire \preg_s_reg_n_149_[40] ;
  wire \preg_s_reg_n_149_[41] ;
  wire \preg_s_reg_n_149_[42] ;
  wire \preg_s_reg_n_149_[43] ;
  wire \preg_s_reg_n_149_[44] ;
  wire \preg_s_reg_n_149_[45] ;
  wire \preg_s_reg_n_149_[46] ;
  wire \preg_s_reg_n_149_[47] ;
  wire \preg_s_reg_n_149_[48] ;
  wire \preg_s_reg_n_149_[49] ;
  wire \preg_s_reg_n_149_[4] ;
  wire \preg_s_reg_n_149_[50] ;
  wire \preg_s_reg_n_149_[51] ;
  wire \preg_s_reg_n_149_[52] ;
  wire \preg_s_reg_n_149_[53] ;
  wire \preg_s_reg_n_149_[54] ;
  wire \preg_s_reg_n_149_[55] ;
  wire \preg_s_reg_n_149_[56] ;
  wire \preg_s_reg_n_149_[57] ;
  wire \preg_s_reg_n_149_[58] ;
  wire \preg_s_reg_n_149_[59] ;
  wire \preg_s_reg_n_149_[5] ;
  wire \preg_s_reg_n_149_[6] ;
  wire \preg_s_reg_n_149_[7] ;
  wire \preg_s_reg_n_149_[8] ;
  wire \preg_s_reg_n_149_[9] ;
  wire \preg_s_reg_n_14_[1] ;
  wire \preg_s_reg_n_14_[2] ;
  wire \preg_s_reg_n_14_[30] ;
  wire \preg_s_reg_n_14_[3] ;
  wire \preg_s_reg_n_14_[4] ;
  wire \preg_s_reg_n_14_[54] ;
  wire \preg_s_reg_n_14_[56] ;
  wire \preg_s_reg_n_14_[57] ;
  wire \preg_s_reg_n_14_[58] ;
  wire \preg_s_reg_n_14_[59] ;
  wire \preg_s_reg_n_14_[6] ;
  wire \preg_s_reg_n_150_[10] ;
  wire \preg_s_reg_n_150_[11] ;
  wire \preg_s_reg_n_150_[12] ;
  wire \preg_s_reg_n_150_[13] ;
  wire \preg_s_reg_n_150_[14] ;
  wire \preg_s_reg_n_150_[15] ;
  wire \preg_s_reg_n_150_[16] ;
  wire \preg_s_reg_n_150_[17] ;
  wire \preg_s_reg_n_150_[18] ;
  wire \preg_s_reg_n_150_[19] ;
  wire \preg_s_reg_n_150_[1] ;
  wire \preg_s_reg_n_150_[20] ;
  wire \preg_s_reg_n_150_[21] ;
  wire \preg_s_reg_n_150_[22] ;
  wire \preg_s_reg_n_150_[23] ;
  wire \preg_s_reg_n_150_[24] ;
  wire \preg_s_reg_n_150_[25] ;
  wire \preg_s_reg_n_150_[26] ;
  wire \preg_s_reg_n_150_[27] ;
  wire \preg_s_reg_n_150_[28] ;
  wire \preg_s_reg_n_150_[29] ;
  wire \preg_s_reg_n_150_[2] ;
  wire \preg_s_reg_n_150_[30] ;
  wire \preg_s_reg_n_150_[31] ;
  wire \preg_s_reg_n_150_[32] ;
  wire \preg_s_reg_n_150_[33] ;
  wire \preg_s_reg_n_150_[34] ;
  wire \preg_s_reg_n_150_[35] ;
  wire \preg_s_reg_n_150_[36] ;
  wire \preg_s_reg_n_150_[37] ;
  wire \preg_s_reg_n_150_[38] ;
  wire \preg_s_reg_n_150_[39] ;
  wire \preg_s_reg_n_150_[3] ;
  wire \preg_s_reg_n_150_[40] ;
  wire \preg_s_reg_n_150_[41] ;
  wire \preg_s_reg_n_150_[42] ;
  wire \preg_s_reg_n_150_[43] ;
  wire \preg_s_reg_n_150_[44] ;
  wire \preg_s_reg_n_150_[45] ;
  wire \preg_s_reg_n_150_[46] ;
  wire \preg_s_reg_n_150_[47] ;
  wire \preg_s_reg_n_150_[48] ;
  wire \preg_s_reg_n_150_[49] ;
  wire \preg_s_reg_n_150_[4] ;
  wire \preg_s_reg_n_150_[50] ;
  wire \preg_s_reg_n_150_[51] ;
  wire \preg_s_reg_n_150_[52] ;
  wire \preg_s_reg_n_150_[53] ;
  wire \preg_s_reg_n_150_[54] ;
  wire \preg_s_reg_n_150_[55] ;
  wire \preg_s_reg_n_150_[56] ;
  wire \preg_s_reg_n_150_[57] ;
  wire \preg_s_reg_n_150_[58] ;
  wire \preg_s_reg_n_150_[59] ;
  wire \preg_s_reg_n_150_[5] ;
  wire \preg_s_reg_n_150_[6] ;
  wire \preg_s_reg_n_150_[7] ;
  wire \preg_s_reg_n_150_[8] ;
  wire \preg_s_reg_n_150_[9] ;
  wire \preg_s_reg_n_151_[10] ;
  wire \preg_s_reg_n_151_[11] ;
  wire \preg_s_reg_n_151_[12] ;
  wire \preg_s_reg_n_151_[13] ;
  wire \preg_s_reg_n_151_[14] ;
  wire \preg_s_reg_n_151_[15] ;
  wire \preg_s_reg_n_151_[16] ;
  wire \preg_s_reg_n_151_[17] ;
  wire \preg_s_reg_n_151_[18] ;
  wire \preg_s_reg_n_151_[19] ;
  wire \preg_s_reg_n_151_[1] ;
  wire \preg_s_reg_n_151_[20] ;
  wire \preg_s_reg_n_151_[21] ;
  wire \preg_s_reg_n_151_[22] ;
  wire \preg_s_reg_n_151_[23] ;
  wire \preg_s_reg_n_151_[24] ;
  wire \preg_s_reg_n_151_[25] ;
  wire \preg_s_reg_n_151_[26] ;
  wire \preg_s_reg_n_151_[27] ;
  wire \preg_s_reg_n_151_[28] ;
  wire \preg_s_reg_n_151_[29] ;
  wire \preg_s_reg_n_151_[2] ;
  wire \preg_s_reg_n_151_[30] ;
  wire \preg_s_reg_n_151_[31] ;
  wire \preg_s_reg_n_151_[32] ;
  wire \preg_s_reg_n_151_[33] ;
  wire \preg_s_reg_n_151_[34] ;
  wire \preg_s_reg_n_151_[35] ;
  wire \preg_s_reg_n_151_[36] ;
  wire \preg_s_reg_n_151_[37] ;
  wire \preg_s_reg_n_151_[38] ;
  wire \preg_s_reg_n_151_[39] ;
  wire \preg_s_reg_n_151_[3] ;
  wire \preg_s_reg_n_151_[40] ;
  wire \preg_s_reg_n_151_[41] ;
  wire \preg_s_reg_n_151_[42] ;
  wire \preg_s_reg_n_151_[43] ;
  wire \preg_s_reg_n_151_[44] ;
  wire \preg_s_reg_n_151_[45] ;
  wire \preg_s_reg_n_151_[46] ;
  wire \preg_s_reg_n_151_[47] ;
  wire \preg_s_reg_n_151_[48] ;
  wire \preg_s_reg_n_151_[49] ;
  wire \preg_s_reg_n_151_[4] ;
  wire \preg_s_reg_n_151_[50] ;
  wire \preg_s_reg_n_151_[51] ;
  wire \preg_s_reg_n_151_[52] ;
  wire \preg_s_reg_n_151_[53] ;
  wire \preg_s_reg_n_151_[54] ;
  wire \preg_s_reg_n_151_[55] ;
  wire \preg_s_reg_n_151_[56] ;
  wire \preg_s_reg_n_151_[57] ;
  wire \preg_s_reg_n_151_[58] ;
  wire \preg_s_reg_n_151_[59] ;
  wire \preg_s_reg_n_151_[5] ;
  wire \preg_s_reg_n_151_[6] ;
  wire \preg_s_reg_n_151_[7] ;
  wire \preg_s_reg_n_151_[8] ;
  wire \preg_s_reg_n_151_[9] ;
  wire \preg_s_reg_n_152_[10] ;
  wire \preg_s_reg_n_152_[11] ;
  wire \preg_s_reg_n_152_[12] ;
  wire \preg_s_reg_n_152_[13] ;
  wire \preg_s_reg_n_152_[14] ;
  wire \preg_s_reg_n_152_[15] ;
  wire \preg_s_reg_n_152_[16] ;
  wire \preg_s_reg_n_152_[17] ;
  wire \preg_s_reg_n_152_[18] ;
  wire \preg_s_reg_n_152_[19] ;
  wire \preg_s_reg_n_152_[1] ;
  wire \preg_s_reg_n_152_[20] ;
  wire \preg_s_reg_n_152_[21] ;
  wire \preg_s_reg_n_152_[22] ;
  wire \preg_s_reg_n_152_[23] ;
  wire \preg_s_reg_n_152_[24] ;
  wire \preg_s_reg_n_152_[25] ;
  wire \preg_s_reg_n_152_[26] ;
  wire \preg_s_reg_n_152_[27] ;
  wire \preg_s_reg_n_152_[28] ;
  wire \preg_s_reg_n_152_[29] ;
  wire \preg_s_reg_n_152_[2] ;
  wire \preg_s_reg_n_152_[30] ;
  wire \preg_s_reg_n_152_[31] ;
  wire \preg_s_reg_n_152_[32] ;
  wire \preg_s_reg_n_152_[33] ;
  wire \preg_s_reg_n_152_[34] ;
  wire \preg_s_reg_n_152_[35] ;
  wire \preg_s_reg_n_152_[36] ;
  wire \preg_s_reg_n_152_[37] ;
  wire \preg_s_reg_n_152_[38] ;
  wire \preg_s_reg_n_152_[39] ;
  wire \preg_s_reg_n_152_[3] ;
  wire \preg_s_reg_n_152_[40] ;
  wire \preg_s_reg_n_152_[41] ;
  wire \preg_s_reg_n_152_[42] ;
  wire \preg_s_reg_n_152_[43] ;
  wire \preg_s_reg_n_152_[44] ;
  wire \preg_s_reg_n_152_[45] ;
  wire \preg_s_reg_n_152_[46] ;
  wire \preg_s_reg_n_152_[47] ;
  wire \preg_s_reg_n_152_[48] ;
  wire \preg_s_reg_n_152_[49] ;
  wire \preg_s_reg_n_152_[4] ;
  wire \preg_s_reg_n_152_[50] ;
  wire \preg_s_reg_n_152_[51] ;
  wire \preg_s_reg_n_152_[52] ;
  wire \preg_s_reg_n_152_[53] ;
  wire \preg_s_reg_n_152_[54] ;
  wire \preg_s_reg_n_152_[55] ;
  wire \preg_s_reg_n_152_[56] ;
  wire \preg_s_reg_n_152_[57] ;
  wire \preg_s_reg_n_152_[58] ;
  wire \preg_s_reg_n_152_[59] ;
  wire \preg_s_reg_n_152_[5] ;
  wire \preg_s_reg_n_152_[6] ;
  wire \preg_s_reg_n_152_[7] ;
  wire \preg_s_reg_n_152_[8] ;
  wire \preg_s_reg_n_152_[9] ;
  wire \preg_s_reg_n_153_[10] ;
  wire \preg_s_reg_n_153_[11] ;
  wire \preg_s_reg_n_153_[12] ;
  wire \preg_s_reg_n_153_[13] ;
  wire \preg_s_reg_n_153_[14] ;
  wire \preg_s_reg_n_153_[15] ;
  wire \preg_s_reg_n_153_[16] ;
  wire \preg_s_reg_n_153_[17] ;
  wire \preg_s_reg_n_153_[18] ;
  wire \preg_s_reg_n_153_[19] ;
  wire \preg_s_reg_n_153_[1] ;
  wire \preg_s_reg_n_153_[20] ;
  wire \preg_s_reg_n_153_[21] ;
  wire \preg_s_reg_n_153_[22] ;
  wire \preg_s_reg_n_153_[23] ;
  wire \preg_s_reg_n_153_[24] ;
  wire \preg_s_reg_n_153_[25] ;
  wire \preg_s_reg_n_153_[26] ;
  wire \preg_s_reg_n_153_[27] ;
  wire \preg_s_reg_n_153_[28] ;
  wire \preg_s_reg_n_153_[29] ;
  wire \preg_s_reg_n_153_[2] ;
  wire \preg_s_reg_n_153_[30] ;
  wire \preg_s_reg_n_153_[31] ;
  wire \preg_s_reg_n_153_[32] ;
  wire \preg_s_reg_n_153_[33] ;
  wire \preg_s_reg_n_153_[34] ;
  wire \preg_s_reg_n_153_[35] ;
  wire \preg_s_reg_n_153_[36] ;
  wire \preg_s_reg_n_153_[37] ;
  wire \preg_s_reg_n_153_[38] ;
  wire \preg_s_reg_n_153_[39] ;
  wire \preg_s_reg_n_153_[3] ;
  wire \preg_s_reg_n_153_[40] ;
  wire \preg_s_reg_n_153_[41] ;
  wire \preg_s_reg_n_153_[42] ;
  wire \preg_s_reg_n_153_[43] ;
  wire \preg_s_reg_n_153_[44] ;
  wire \preg_s_reg_n_153_[45] ;
  wire \preg_s_reg_n_153_[46] ;
  wire \preg_s_reg_n_153_[47] ;
  wire \preg_s_reg_n_153_[48] ;
  wire \preg_s_reg_n_153_[49] ;
  wire \preg_s_reg_n_153_[4] ;
  wire \preg_s_reg_n_153_[50] ;
  wire \preg_s_reg_n_153_[51] ;
  wire \preg_s_reg_n_153_[52] ;
  wire \preg_s_reg_n_153_[53] ;
  wire \preg_s_reg_n_153_[54] ;
  wire \preg_s_reg_n_153_[55] ;
  wire \preg_s_reg_n_153_[56] ;
  wire \preg_s_reg_n_153_[57] ;
  wire \preg_s_reg_n_153_[58] ;
  wire \preg_s_reg_n_153_[59] ;
  wire \preg_s_reg_n_153_[5] ;
  wire \preg_s_reg_n_153_[6] ;
  wire \preg_s_reg_n_153_[7] ;
  wire \preg_s_reg_n_153_[8] ;
  wire \preg_s_reg_n_153_[9] ;
  wire \preg_s_reg_n_15_[1] ;
  wire \preg_s_reg_n_15_[2] ;
  wire \preg_s_reg_n_15_[30] ;
  wire \preg_s_reg_n_15_[3] ;
  wire \preg_s_reg_n_15_[4] ;
  wire \preg_s_reg_n_15_[54] ;
  wire \preg_s_reg_n_15_[56] ;
  wire \preg_s_reg_n_15_[57] ;
  wire \preg_s_reg_n_15_[58] ;
  wire \preg_s_reg_n_15_[59] ;
  wire \preg_s_reg_n_15_[6] ;
  wire \preg_s_reg_n_16_[1] ;
  wire \preg_s_reg_n_16_[2] ;
  wire \preg_s_reg_n_16_[30] ;
  wire \preg_s_reg_n_16_[3] ;
  wire \preg_s_reg_n_16_[4] ;
  wire \preg_s_reg_n_16_[54] ;
  wire \preg_s_reg_n_16_[56] ;
  wire \preg_s_reg_n_16_[57] ;
  wire \preg_s_reg_n_16_[58] ;
  wire \preg_s_reg_n_16_[59] ;
  wire \preg_s_reg_n_16_[6] ;
  wire \preg_s_reg_n_17_[1] ;
  wire \preg_s_reg_n_17_[2] ;
  wire \preg_s_reg_n_17_[30] ;
  wire \preg_s_reg_n_17_[3] ;
  wire \preg_s_reg_n_17_[4] ;
  wire \preg_s_reg_n_17_[54] ;
  wire \preg_s_reg_n_17_[56] ;
  wire \preg_s_reg_n_17_[57] ;
  wire \preg_s_reg_n_17_[58] ;
  wire \preg_s_reg_n_17_[59] ;
  wire \preg_s_reg_n_17_[6] ;
  wire \preg_s_reg_n_18_[1] ;
  wire \preg_s_reg_n_18_[2] ;
  wire \preg_s_reg_n_18_[30] ;
  wire \preg_s_reg_n_18_[3] ;
  wire \preg_s_reg_n_18_[4] ;
  wire \preg_s_reg_n_18_[54] ;
  wire \preg_s_reg_n_18_[56] ;
  wire \preg_s_reg_n_18_[57] ;
  wire \preg_s_reg_n_18_[58] ;
  wire \preg_s_reg_n_18_[59] ;
  wire \preg_s_reg_n_18_[6] ;
  wire \preg_s_reg_n_19_[1] ;
  wire \preg_s_reg_n_19_[2] ;
  wire \preg_s_reg_n_19_[30] ;
  wire \preg_s_reg_n_19_[3] ;
  wire \preg_s_reg_n_19_[4] ;
  wire \preg_s_reg_n_19_[54] ;
  wire \preg_s_reg_n_19_[56] ;
  wire \preg_s_reg_n_19_[57] ;
  wire \preg_s_reg_n_19_[58] ;
  wire \preg_s_reg_n_19_[59] ;
  wire \preg_s_reg_n_19_[6] ;
  wire \preg_s_reg_n_20_[1] ;
  wire \preg_s_reg_n_20_[2] ;
  wire \preg_s_reg_n_20_[30] ;
  wire \preg_s_reg_n_20_[3] ;
  wire \preg_s_reg_n_20_[4] ;
  wire \preg_s_reg_n_20_[54] ;
  wire \preg_s_reg_n_20_[56] ;
  wire \preg_s_reg_n_20_[57] ;
  wire \preg_s_reg_n_20_[58] ;
  wire \preg_s_reg_n_20_[59] ;
  wire \preg_s_reg_n_20_[6] ;
  wire \preg_s_reg_n_21_[1] ;
  wire \preg_s_reg_n_21_[2] ;
  wire \preg_s_reg_n_21_[30] ;
  wire \preg_s_reg_n_21_[3] ;
  wire \preg_s_reg_n_21_[4] ;
  wire \preg_s_reg_n_21_[54] ;
  wire \preg_s_reg_n_21_[56] ;
  wire \preg_s_reg_n_21_[57] ;
  wire \preg_s_reg_n_21_[58] ;
  wire \preg_s_reg_n_21_[59] ;
  wire \preg_s_reg_n_21_[6] ;
  wire \preg_s_reg_n_22_[1] ;
  wire \preg_s_reg_n_22_[2] ;
  wire \preg_s_reg_n_22_[30] ;
  wire \preg_s_reg_n_22_[3] ;
  wire \preg_s_reg_n_22_[4] ;
  wire \preg_s_reg_n_22_[54] ;
  wire \preg_s_reg_n_22_[56] ;
  wire \preg_s_reg_n_22_[57] ;
  wire \preg_s_reg_n_22_[58] ;
  wire \preg_s_reg_n_22_[59] ;
  wire \preg_s_reg_n_22_[6] ;
  wire \preg_s_reg_n_23_[1] ;
  wire \preg_s_reg_n_23_[2] ;
  wire \preg_s_reg_n_23_[30] ;
  wire \preg_s_reg_n_23_[3] ;
  wire \preg_s_reg_n_23_[4] ;
  wire \preg_s_reg_n_23_[54] ;
  wire \preg_s_reg_n_23_[56] ;
  wire \preg_s_reg_n_23_[57] ;
  wire \preg_s_reg_n_23_[58] ;
  wire \preg_s_reg_n_23_[59] ;
  wire \preg_s_reg_n_23_[6] ;
  wire \preg_s_reg_n_6_[1] ;
  wire \preg_s_reg_n_6_[2] ;
  wire \preg_s_reg_n_6_[30] ;
  wire \preg_s_reg_n_6_[3] ;
  wire \preg_s_reg_n_6_[4] ;
  wire \preg_s_reg_n_6_[54] ;
  wire \preg_s_reg_n_6_[56] ;
  wire \preg_s_reg_n_6_[57] ;
  wire \preg_s_reg_n_6_[58] ;
  wire \preg_s_reg_n_6_[59] ;
  wire \preg_s_reg_n_6_[6] ;
  wire \preg_s_reg_n_7_[1] ;
  wire \preg_s_reg_n_7_[2] ;
  wire \preg_s_reg_n_7_[30] ;
  wire \preg_s_reg_n_7_[3] ;
  wire \preg_s_reg_n_7_[4] ;
  wire \preg_s_reg_n_7_[54] ;
  wire \preg_s_reg_n_7_[56] ;
  wire \preg_s_reg_n_7_[57] ;
  wire \preg_s_reg_n_7_[58] ;
  wire \preg_s_reg_n_7_[59] ;
  wire \preg_s_reg_n_7_[6] ;
  wire \preg_s_reg_n_8_[1] ;
  wire \preg_s_reg_n_8_[2] ;
  wire \preg_s_reg_n_8_[30] ;
  wire \preg_s_reg_n_8_[3] ;
  wire \preg_s_reg_n_8_[4] ;
  wire \preg_s_reg_n_8_[54] ;
  wire \preg_s_reg_n_8_[56] ;
  wire \preg_s_reg_n_8_[57] ;
  wire \preg_s_reg_n_8_[58] ;
  wire \preg_s_reg_n_8_[59] ;
  wire \preg_s_reg_n_8_[6] ;
  wire \preg_s_reg_n_91_[0] ;
  wire \preg_s_reg_n_92_[0] ;
  wire \preg_s_reg_n_93_[0] ;
  wire \preg_s_reg_n_94_[0] ;
  wire \preg_s_reg_n_95_[0] ;
  wire \preg_s_reg_n_96_[0] ;
  wire \preg_s_reg_n_97_[0] ;
  wire \preg_s_reg_n_98_[0] ;
  wire \preg_s_reg_n_99_[0] ;
  wire \preg_s_reg_n_9_[1] ;
  wire \preg_s_reg_n_9_[2] ;
  wire \preg_s_reg_n_9_[30] ;
  wire \preg_s_reg_n_9_[3] ;
  wire \preg_s_reg_n_9_[4] ;
  wire \preg_s_reg_n_9_[54] ;
  wire \preg_s_reg_n_9_[56] ;
  wire \preg_s_reg_n_9_[57] ;
  wire \preg_s_reg_n_9_[58] ;
  wire \preg_s_reg_n_9_[59] ;
  wire \preg_s_reg_n_9_[6] ;
  wire \NLW_preg_s_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:33]\NLW_preg_s_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[10]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[10]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[10]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[10]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[10]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[10]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[11]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[11]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[11]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[11]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[11]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[11]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[12]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[12]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[12]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[12]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[12]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[12]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[13]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[13]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[13]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[13]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[13]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[13]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[14]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[14]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[14]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[14]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[14]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[14]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[15]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[15]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[15]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[15]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[15]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[15]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[16]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[16]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[16]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[16]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[16]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[16]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[17]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[17]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[17]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[17]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[17]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[17]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[18]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[18]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[18]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[18]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[18]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[18]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[19]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[19]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[19]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[19]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[19]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[19]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[1]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[1]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[1]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[1]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[1]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[20]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[20]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[20]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[20]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[20]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[20]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[21]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[21]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[21]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[21]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[21]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[21]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[22]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[22]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[22]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[22]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[22]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[22]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[23]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[23]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[23]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[23]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[23]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[23]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[24]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[24]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[24]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[24]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[24]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[24]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[25]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[25]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[25]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[25]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[25]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[25]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[26]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[26]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[26]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[26]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[26]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[26]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[27]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[27]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[27]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[27]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[27]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[27]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[28]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[28]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[28]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[28]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[28]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[28]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[29]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[29]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[29]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[29]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[29]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[29]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[2]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[2]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[2]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[2]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[2]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[30]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[30]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[30]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[30]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[30]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[31]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[31]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[31]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[31]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[31]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[31]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[32]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[32]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[32]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[32]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[32]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[32]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[33]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[33]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[33]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[33]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[33]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[33]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[34]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[34]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[34]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[34]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[34]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[34]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[35]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[35]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[35]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[35]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[35]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[35]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[36]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[36]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[36]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[36]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[36]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[36]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[37]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[37]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[37]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[37]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[37]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[37]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[38]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[38]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[38]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[38]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[38]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[38]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[39]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[39]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[39]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[39]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[39]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[39]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[3]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[3]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[3]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[3]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[3]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[40]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[40]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[40]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[40]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[40]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[40]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[41]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[41]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[41]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[41]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[41]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[41]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[42]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[42]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[42]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[42]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[42]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[42]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[43]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[43]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[43]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[43]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[43]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[43]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[44]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[44]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[44]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[44]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[44]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[44]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[45]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[45]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[45]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[45]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[45]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[45]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[46]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[46]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[46]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[46]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[46]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[46]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[47]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[47]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[47]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[47]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[47]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[47]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[48]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[48]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[48]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[48]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[48]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[48]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[49]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[49]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[49]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[49]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[49]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[49]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[4]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[4]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[4]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[4]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[4]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[50]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[50]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[50]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[50]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[50]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[50]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[51]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[51]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[51]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[51]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[51]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[51]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[52]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[52]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[52]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[52]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[52]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[52]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[53]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[53]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[53]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[53]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[53]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[53]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[54]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[54]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[54]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[54]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[54]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[55]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[55]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[55]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[55]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[55]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[55]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[56]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[56]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[56]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[56]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[56]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[57]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[57]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[57]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[57]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[57]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[58]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[58]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[58]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[58]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[58]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[59]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[59]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[59]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[59]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[59]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[5]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[5]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[5]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[5]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[5]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[5]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[6]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[6]_ACOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[6]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[6]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[6]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[7]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[7]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[7]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[7]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[7]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[7]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[8]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[8]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[8]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[8]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[8]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[8]_XOROUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_OVERFLOW_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_preg_s_reg[9]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_preg_s_reg[9]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_preg_s_reg[9]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_preg_s_reg[9]_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_preg_s_reg[9]_P_UNCONNECTED ;
  wire [7:0]\NLW_preg_s_reg[9]_XOROUT_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \areg_s_reg[0][17] 
       (.C(clk),
        .CE(1'b1),
        .D(A[17]),
        .Q(\areg_s_reg[0]_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[0] 
       (.A({Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q[17],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[1] ,\preg_s_reg_n_7_[1] ,\preg_s_reg_n_8_[1] ,\preg_s_reg_n_9_[1] ,\preg_s_reg_n_10_[1] ,\preg_s_reg_n_11_[1] ,\preg_s_reg_n_12_[1] ,\preg_s_reg_n_13_[1] ,\preg_s_reg_n_14_[1] ,\preg_s_reg_n_15_[1] ,\preg_s_reg_n_16_[1] ,\preg_s_reg_n_17_[1] ,\preg_s_reg_n_18_[1] ,\preg_s_reg_n_19_[1] ,\preg_s_reg_n_20_[1] ,\preg_s_reg_n_21_[1] ,\preg_s_reg_n_22_[1] ,\preg_s_reg_n_23_[1] }),
        .BCOUT(\NLW_preg_s_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_preg_s_reg[0]_P_UNCONNECTED [47:33],data,\preg_s_reg_n_91_[0] ,\preg_s_reg_n_92_[0] ,\preg_s_reg_n_93_[0] ,\preg_s_reg_n_94_[0] ,\preg_s_reg_n_95_[0] ,\preg_s_reg_n_96_[0] ,\preg_s_reg_n_97_[0] ,\preg_s_reg_n_98_[0] ,\preg_s_reg_n_99_[0] ,\preg_s_reg_n_100_[0] ,\preg_s_reg_n_101_[0] ,\preg_s_reg_n_102_[0] ,\preg_s_reg_n_103_[0] ,\preg_s_reg_n_104_[0] ,\preg_s_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_preg_s_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[1] ,\preg_s_reg_n_107_[1] ,\preg_s_reg_n_108_[1] ,\preg_s_reg_n_109_[1] ,\preg_s_reg_n_110_[1] ,\preg_s_reg_n_111_[1] ,\preg_s_reg_n_112_[1] ,\preg_s_reg_n_113_[1] ,\preg_s_reg_n_114_[1] ,\preg_s_reg_n_115_[1] ,\preg_s_reg_n_116_[1] ,\preg_s_reg_n_117_[1] ,\preg_s_reg_n_118_[1] ,\preg_s_reg_n_119_[1] ,\preg_s_reg_n_120_[1] ,\preg_s_reg_n_121_[1] ,\preg_s_reg_n_122_[1] ,\preg_s_reg_n_123_[1] ,\preg_s_reg_n_124_[1] ,\preg_s_reg_n_125_[1] ,\preg_s_reg_n_126_[1] ,\preg_s_reg_n_127_[1] ,\preg_s_reg_n_128_[1] ,\preg_s_reg_n_129_[1] ,\preg_s_reg_n_130_[1] ,\preg_s_reg_n_131_[1] ,\preg_s_reg_n_132_[1] ,\preg_s_reg_n_133_[1] ,\preg_s_reg_n_134_[1] ,\preg_s_reg_n_135_[1] ,\preg_s_reg_n_136_[1] ,\preg_s_reg_n_137_[1] ,\preg_s_reg_n_138_[1] ,\preg_s_reg_n_139_[1] ,\preg_s_reg_n_140_[1] ,\preg_s_reg_n_141_[1] ,\preg_s_reg_n_142_[1] ,\preg_s_reg_n_143_[1] ,\preg_s_reg_n_144_[1] ,\preg_s_reg_n_145_[1] ,\preg_s_reg_n_146_[1] ,\preg_s_reg_n_147_[1] ,\preg_s_reg_n_148_[1] ,\preg_s_reg_n_149_[1] ,\preg_s_reg_n_150_[1] ,\preg_s_reg_n_151_[1] ,\preg_s_reg_n_152_[1] ,\preg_s_reg_n_153_[1] }),
        .PCOUT(\NLW_preg_s_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[10] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[10]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[10]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[10]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[10]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[10]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[10]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[10]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[10]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[10]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[11] ,\preg_s_reg_n_107_[11] ,\preg_s_reg_n_108_[11] ,\preg_s_reg_n_109_[11] ,\preg_s_reg_n_110_[11] ,\preg_s_reg_n_111_[11] ,\preg_s_reg_n_112_[11] ,\preg_s_reg_n_113_[11] ,\preg_s_reg_n_114_[11] ,\preg_s_reg_n_115_[11] ,\preg_s_reg_n_116_[11] ,\preg_s_reg_n_117_[11] ,\preg_s_reg_n_118_[11] ,\preg_s_reg_n_119_[11] ,\preg_s_reg_n_120_[11] ,\preg_s_reg_n_121_[11] ,\preg_s_reg_n_122_[11] ,\preg_s_reg_n_123_[11] ,\preg_s_reg_n_124_[11] ,\preg_s_reg_n_125_[11] ,\preg_s_reg_n_126_[11] ,\preg_s_reg_n_127_[11] ,\preg_s_reg_n_128_[11] ,\preg_s_reg_n_129_[11] ,\preg_s_reg_n_130_[11] ,\preg_s_reg_n_131_[11] ,\preg_s_reg_n_132_[11] ,\preg_s_reg_n_133_[11] ,\preg_s_reg_n_134_[11] ,\preg_s_reg_n_135_[11] ,\preg_s_reg_n_136_[11] ,\preg_s_reg_n_137_[11] ,\preg_s_reg_n_138_[11] ,\preg_s_reg_n_139_[11] ,\preg_s_reg_n_140_[11] ,\preg_s_reg_n_141_[11] ,\preg_s_reg_n_142_[11] ,\preg_s_reg_n_143_[11] ,\preg_s_reg_n_144_[11] ,\preg_s_reg_n_145_[11] ,\preg_s_reg_n_146_[11] ,\preg_s_reg_n_147_[11] ,\preg_s_reg_n_148_[11] ,\preg_s_reg_n_149_[11] ,\preg_s_reg_n_150_[11] ,\preg_s_reg_n_151_[11] ,\preg_s_reg_n_152_[11] ,\preg_s_reg_n_153_[11] }),
        .PCOUT({\preg_s_reg_n_106_[10] ,\preg_s_reg_n_107_[10] ,\preg_s_reg_n_108_[10] ,\preg_s_reg_n_109_[10] ,\preg_s_reg_n_110_[10] ,\preg_s_reg_n_111_[10] ,\preg_s_reg_n_112_[10] ,\preg_s_reg_n_113_[10] ,\preg_s_reg_n_114_[10] ,\preg_s_reg_n_115_[10] ,\preg_s_reg_n_116_[10] ,\preg_s_reg_n_117_[10] ,\preg_s_reg_n_118_[10] ,\preg_s_reg_n_119_[10] ,\preg_s_reg_n_120_[10] ,\preg_s_reg_n_121_[10] ,\preg_s_reg_n_122_[10] ,\preg_s_reg_n_123_[10] ,\preg_s_reg_n_124_[10] ,\preg_s_reg_n_125_[10] ,\preg_s_reg_n_126_[10] ,\preg_s_reg_n_127_[10] ,\preg_s_reg_n_128_[10] ,\preg_s_reg_n_129_[10] ,\preg_s_reg_n_130_[10] ,\preg_s_reg_n_131_[10] ,\preg_s_reg_n_132_[10] ,\preg_s_reg_n_133_[10] ,\preg_s_reg_n_134_[10] ,\preg_s_reg_n_135_[10] ,\preg_s_reg_n_136_[10] ,\preg_s_reg_n_137_[10] ,\preg_s_reg_n_138_[10] ,\preg_s_reg_n_139_[10] ,\preg_s_reg_n_140_[10] ,\preg_s_reg_n_141_[10] ,\preg_s_reg_n_142_[10] ,\preg_s_reg_n_143_[10] ,\preg_s_reg_n_144_[10] ,\preg_s_reg_n_145_[10] ,\preg_s_reg_n_146_[10] ,\preg_s_reg_n_147_[10] ,\preg_s_reg_n_148_[10] ,\preg_s_reg_n_149_[10] ,\preg_s_reg_n_150_[10] ,\preg_s_reg_n_151_[10] ,\preg_s_reg_n_152_[10] ,\preg_s_reg_n_153_[10] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[10]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[10]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[11] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[11]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[11]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[11]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[11]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[11]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[11]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[11]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[11]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[11]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[12] ,\preg_s_reg_n_107_[12] ,\preg_s_reg_n_108_[12] ,\preg_s_reg_n_109_[12] ,\preg_s_reg_n_110_[12] ,\preg_s_reg_n_111_[12] ,\preg_s_reg_n_112_[12] ,\preg_s_reg_n_113_[12] ,\preg_s_reg_n_114_[12] ,\preg_s_reg_n_115_[12] ,\preg_s_reg_n_116_[12] ,\preg_s_reg_n_117_[12] ,\preg_s_reg_n_118_[12] ,\preg_s_reg_n_119_[12] ,\preg_s_reg_n_120_[12] ,\preg_s_reg_n_121_[12] ,\preg_s_reg_n_122_[12] ,\preg_s_reg_n_123_[12] ,\preg_s_reg_n_124_[12] ,\preg_s_reg_n_125_[12] ,\preg_s_reg_n_126_[12] ,\preg_s_reg_n_127_[12] ,\preg_s_reg_n_128_[12] ,\preg_s_reg_n_129_[12] ,\preg_s_reg_n_130_[12] ,\preg_s_reg_n_131_[12] ,\preg_s_reg_n_132_[12] ,\preg_s_reg_n_133_[12] ,\preg_s_reg_n_134_[12] ,\preg_s_reg_n_135_[12] ,\preg_s_reg_n_136_[12] ,\preg_s_reg_n_137_[12] ,\preg_s_reg_n_138_[12] ,\preg_s_reg_n_139_[12] ,\preg_s_reg_n_140_[12] ,\preg_s_reg_n_141_[12] ,\preg_s_reg_n_142_[12] ,\preg_s_reg_n_143_[12] ,\preg_s_reg_n_144_[12] ,\preg_s_reg_n_145_[12] ,\preg_s_reg_n_146_[12] ,\preg_s_reg_n_147_[12] ,\preg_s_reg_n_148_[12] ,\preg_s_reg_n_149_[12] ,\preg_s_reg_n_150_[12] ,\preg_s_reg_n_151_[12] ,\preg_s_reg_n_152_[12] ,\preg_s_reg_n_153_[12] }),
        .PCOUT({\preg_s_reg_n_106_[11] ,\preg_s_reg_n_107_[11] ,\preg_s_reg_n_108_[11] ,\preg_s_reg_n_109_[11] ,\preg_s_reg_n_110_[11] ,\preg_s_reg_n_111_[11] ,\preg_s_reg_n_112_[11] ,\preg_s_reg_n_113_[11] ,\preg_s_reg_n_114_[11] ,\preg_s_reg_n_115_[11] ,\preg_s_reg_n_116_[11] ,\preg_s_reg_n_117_[11] ,\preg_s_reg_n_118_[11] ,\preg_s_reg_n_119_[11] ,\preg_s_reg_n_120_[11] ,\preg_s_reg_n_121_[11] ,\preg_s_reg_n_122_[11] ,\preg_s_reg_n_123_[11] ,\preg_s_reg_n_124_[11] ,\preg_s_reg_n_125_[11] ,\preg_s_reg_n_126_[11] ,\preg_s_reg_n_127_[11] ,\preg_s_reg_n_128_[11] ,\preg_s_reg_n_129_[11] ,\preg_s_reg_n_130_[11] ,\preg_s_reg_n_131_[11] ,\preg_s_reg_n_132_[11] ,\preg_s_reg_n_133_[11] ,\preg_s_reg_n_134_[11] ,\preg_s_reg_n_135_[11] ,\preg_s_reg_n_136_[11] ,\preg_s_reg_n_137_[11] ,\preg_s_reg_n_138_[11] ,\preg_s_reg_n_139_[11] ,\preg_s_reg_n_140_[11] ,\preg_s_reg_n_141_[11] ,\preg_s_reg_n_142_[11] ,\preg_s_reg_n_143_[11] ,\preg_s_reg_n_144_[11] ,\preg_s_reg_n_145_[11] ,\preg_s_reg_n_146_[11] ,\preg_s_reg_n_147_[11] ,\preg_s_reg_n_148_[11] ,\preg_s_reg_n_149_[11] ,\preg_s_reg_n_150_[11] ,\preg_s_reg_n_151_[11] ,\preg_s_reg_n_152_[11] ,\preg_s_reg_n_153_[11] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[11]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[11]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[12] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[12]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[12]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[12]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[12]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[12]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[12]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[12]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[12]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[12]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[13] ,\preg_s_reg_n_107_[13] ,\preg_s_reg_n_108_[13] ,\preg_s_reg_n_109_[13] ,\preg_s_reg_n_110_[13] ,\preg_s_reg_n_111_[13] ,\preg_s_reg_n_112_[13] ,\preg_s_reg_n_113_[13] ,\preg_s_reg_n_114_[13] ,\preg_s_reg_n_115_[13] ,\preg_s_reg_n_116_[13] ,\preg_s_reg_n_117_[13] ,\preg_s_reg_n_118_[13] ,\preg_s_reg_n_119_[13] ,\preg_s_reg_n_120_[13] ,\preg_s_reg_n_121_[13] ,\preg_s_reg_n_122_[13] ,\preg_s_reg_n_123_[13] ,\preg_s_reg_n_124_[13] ,\preg_s_reg_n_125_[13] ,\preg_s_reg_n_126_[13] ,\preg_s_reg_n_127_[13] ,\preg_s_reg_n_128_[13] ,\preg_s_reg_n_129_[13] ,\preg_s_reg_n_130_[13] ,\preg_s_reg_n_131_[13] ,\preg_s_reg_n_132_[13] ,\preg_s_reg_n_133_[13] ,\preg_s_reg_n_134_[13] ,\preg_s_reg_n_135_[13] ,\preg_s_reg_n_136_[13] ,\preg_s_reg_n_137_[13] ,\preg_s_reg_n_138_[13] ,\preg_s_reg_n_139_[13] ,\preg_s_reg_n_140_[13] ,\preg_s_reg_n_141_[13] ,\preg_s_reg_n_142_[13] ,\preg_s_reg_n_143_[13] ,\preg_s_reg_n_144_[13] ,\preg_s_reg_n_145_[13] ,\preg_s_reg_n_146_[13] ,\preg_s_reg_n_147_[13] ,\preg_s_reg_n_148_[13] ,\preg_s_reg_n_149_[13] ,\preg_s_reg_n_150_[13] ,\preg_s_reg_n_151_[13] ,\preg_s_reg_n_152_[13] ,\preg_s_reg_n_153_[13] }),
        .PCOUT({\preg_s_reg_n_106_[12] ,\preg_s_reg_n_107_[12] ,\preg_s_reg_n_108_[12] ,\preg_s_reg_n_109_[12] ,\preg_s_reg_n_110_[12] ,\preg_s_reg_n_111_[12] ,\preg_s_reg_n_112_[12] ,\preg_s_reg_n_113_[12] ,\preg_s_reg_n_114_[12] ,\preg_s_reg_n_115_[12] ,\preg_s_reg_n_116_[12] ,\preg_s_reg_n_117_[12] ,\preg_s_reg_n_118_[12] ,\preg_s_reg_n_119_[12] ,\preg_s_reg_n_120_[12] ,\preg_s_reg_n_121_[12] ,\preg_s_reg_n_122_[12] ,\preg_s_reg_n_123_[12] ,\preg_s_reg_n_124_[12] ,\preg_s_reg_n_125_[12] ,\preg_s_reg_n_126_[12] ,\preg_s_reg_n_127_[12] ,\preg_s_reg_n_128_[12] ,\preg_s_reg_n_129_[12] ,\preg_s_reg_n_130_[12] ,\preg_s_reg_n_131_[12] ,\preg_s_reg_n_132_[12] ,\preg_s_reg_n_133_[12] ,\preg_s_reg_n_134_[12] ,\preg_s_reg_n_135_[12] ,\preg_s_reg_n_136_[12] ,\preg_s_reg_n_137_[12] ,\preg_s_reg_n_138_[12] ,\preg_s_reg_n_139_[12] ,\preg_s_reg_n_140_[12] ,\preg_s_reg_n_141_[12] ,\preg_s_reg_n_142_[12] ,\preg_s_reg_n_143_[12] ,\preg_s_reg_n_144_[12] ,\preg_s_reg_n_145_[12] ,\preg_s_reg_n_146_[12] ,\preg_s_reg_n_147_[12] ,\preg_s_reg_n_148_[12] ,\preg_s_reg_n_149_[12] ,\preg_s_reg_n_150_[12] ,\preg_s_reg_n_151_[12] ,\preg_s_reg_n_152_[12] ,\preg_s_reg_n_153_[12] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[12]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[12]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[13] 
       (.A({A[18],A[18],A[18],A[18],A[18:17],A[17],A[17],A[17],A[17],A[17],A[17],A[17:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[13]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[13]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[13]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[13]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[13]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[13]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[13]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[13]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[13]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[14] ,\preg_s_reg_n_107_[14] ,\preg_s_reg_n_108_[14] ,\preg_s_reg_n_109_[14] ,\preg_s_reg_n_110_[14] ,\preg_s_reg_n_111_[14] ,\preg_s_reg_n_112_[14] ,\preg_s_reg_n_113_[14] ,\preg_s_reg_n_114_[14] ,\preg_s_reg_n_115_[14] ,\preg_s_reg_n_116_[14] ,\preg_s_reg_n_117_[14] ,\preg_s_reg_n_118_[14] ,\preg_s_reg_n_119_[14] ,\preg_s_reg_n_120_[14] ,\preg_s_reg_n_121_[14] ,\preg_s_reg_n_122_[14] ,\preg_s_reg_n_123_[14] ,\preg_s_reg_n_124_[14] ,\preg_s_reg_n_125_[14] ,\preg_s_reg_n_126_[14] ,\preg_s_reg_n_127_[14] ,\preg_s_reg_n_128_[14] ,\preg_s_reg_n_129_[14] ,\preg_s_reg_n_130_[14] ,\preg_s_reg_n_131_[14] ,\preg_s_reg_n_132_[14] ,\preg_s_reg_n_133_[14] ,\preg_s_reg_n_134_[14] ,\preg_s_reg_n_135_[14] ,\preg_s_reg_n_136_[14] ,\preg_s_reg_n_137_[14] ,\preg_s_reg_n_138_[14] ,\preg_s_reg_n_139_[14] ,\preg_s_reg_n_140_[14] ,\preg_s_reg_n_141_[14] ,\preg_s_reg_n_142_[14] ,\preg_s_reg_n_143_[14] ,\preg_s_reg_n_144_[14] ,\preg_s_reg_n_145_[14] ,\preg_s_reg_n_146_[14] ,\preg_s_reg_n_147_[14] ,\preg_s_reg_n_148_[14] ,\preg_s_reg_n_149_[14] ,\preg_s_reg_n_150_[14] ,\preg_s_reg_n_151_[14] ,\preg_s_reg_n_152_[14] ,\preg_s_reg_n_153_[14] }),
        .PCOUT({\preg_s_reg_n_106_[13] ,\preg_s_reg_n_107_[13] ,\preg_s_reg_n_108_[13] ,\preg_s_reg_n_109_[13] ,\preg_s_reg_n_110_[13] ,\preg_s_reg_n_111_[13] ,\preg_s_reg_n_112_[13] ,\preg_s_reg_n_113_[13] ,\preg_s_reg_n_114_[13] ,\preg_s_reg_n_115_[13] ,\preg_s_reg_n_116_[13] ,\preg_s_reg_n_117_[13] ,\preg_s_reg_n_118_[13] ,\preg_s_reg_n_119_[13] ,\preg_s_reg_n_120_[13] ,\preg_s_reg_n_121_[13] ,\preg_s_reg_n_122_[13] ,\preg_s_reg_n_123_[13] ,\preg_s_reg_n_124_[13] ,\preg_s_reg_n_125_[13] ,\preg_s_reg_n_126_[13] ,\preg_s_reg_n_127_[13] ,\preg_s_reg_n_128_[13] ,\preg_s_reg_n_129_[13] ,\preg_s_reg_n_130_[13] ,\preg_s_reg_n_131_[13] ,\preg_s_reg_n_132_[13] ,\preg_s_reg_n_133_[13] ,\preg_s_reg_n_134_[13] ,\preg_s_reg_n_135_[13] ,\preg_s_reg_n_136_[13] ,\preg_s_reg_n_137_[13] ,\preg_s_reg_n_138_[13] ,\preg_s_reg_n_139_[13] ,\preg_s_reg_n_140_[13] ,\preg_s_reg_n_141_[13] ,\preg_s_reg_n_142_[13] ,\preg_s_reg_n_143_[13] ,\preg_s_reg_n_144_[13] ,\preg_s_reg_n_145_[13] ,\preg_s_reg_n_146_[13] ,\preg_s_reg_n_147_[13] ,\preg_s_reg_n_148_[13] ,\preg_s_reg_n_149_[13] ,\preg_s_reg_n_150_[13] ,\preg_s_reg_n_151_[13] ,\preg_s_reg_n_152_[13] ,\preg_s_reg_n_153_[13] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[13]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[13]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[14] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[14]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[14]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[14]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[14]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[14]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[14]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[14]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[14]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[14]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[15] ,\preg_s_reg_n_107_[15] ,\preg_s_reg_n_108_[15] ,\preg_s_reg_n_109_[15] ,\preg_s_reg_n_110_[15] ,\preg_s_reg_n_111_[15] ,\preg_s_reg_n_112_[15] ,\preg_s_reg_n_113_[15] ,\preg_s_reg_n_114_[15] ,\preg_s_reg_n_115_[15] ,\preg_s_reg_n_116_[15] ,\preg_s_reg_n_117_[15] ,\preg_s_reg_n_118_[15] ,\preg_s_reg_n_119_[15] ,\preg_s_reg_n_120_[15] ,\preg_s_reg_n_121_[15] ,\preg_s_reg_n_122_[15] ,\preg_s_reg_n_123_[15] ,\preg_s_reg_n_124_[15] ,\preg_s_reg_n_125_[15] ,\preg_s_reg_n_126_[15] ,\preg_s_reg_n_127_[15] ,\preg_s_reg_n_128_[15] ,\preg_s_reg_n_129_[15] ,\preg_s_reg_n_130_[15] ,\preg_s_reg_n_131_[15] ,\preg_s_reg_n_132_[15] ,\preg_s_reg_n_133_[15] ,\preg_s_reg_n_134_[15] ,\preg_s_reg_n_135_[15] ,\preg_s_reg_n_136_[15] ,\preg_s_reg_n_137_[15] ,\preg_s_reg_n_138_[15] ,\preg_s_reg_n_139_[15] ,\preg_s_reg_n_140_[15] ,\preg_s_reg_n_141_[15] ,\preg_s_reg_n_142_[15] ,\preg_s_reg_n_143_[15] ,\preg_s_reg_n_144_[15] ,\preg_s_reg_n_145_[15] ,\preg_s_reg_n_146_[15] ,\preg_s_reg_n_147_[15] ,\preg_s_reg_n_148_[15] ,\preg_s_reg_n_149_[15] ,\preg_s_reg_n_150_[15] ,\preg_s_reg_n_151_[15] ,\preg_s_reg_n_152_[15] ,\preg_s_reg_n_153_[15] }),
        .PCOUT({\preg_s_reg_n_106_[14] ,\preg_s_reg_n_107_[14] ,\preg_s_reg_n_108_[14] ,\preg_s_reg_n_109_[14] ,\preg_s_reg_n_110_[14] ,\preg_s_reg_n_111_[14] ,\preg_s_reg_n_112_[14] ,\preg_s_reg_n_113_[14] ,\preg_s_reg_n_114_[14] ,\preg_s_reg_n_115_[14] ,\preg_s_reg_n_116_[14] ,\preg_s_reg_n_117_[14] ,\preg_s_reg_n_118_[14] ,\preg_s_reg_n_119_[14] ,\preg_s_reg_n_120_[14] ,\preg_s_reg_n_121_[14] ,\preg_s_reg_n_122_[14] ,\preg_s_reg_n_123_[14] ,\preg_s_reg_n_124_[14] ,\preg_s_reg_n_125_[14] ,\preg_s_reg_n_126_[14] ,\preg_s_reg_n_127_[14] ,\preg_s_reg_n_128_[14] ,\preg_s_reg_n_129_[14] ,\preg_s_reg_n_130_[14] ,\preg_s_reg_n_131_[14] ,\preg_s_reg_n_132_[14] ,\preg_s_reg_n_133_[14] ,\preg_s_reg_n_134_[14] ,\preg_s_reg_n_135_[14] ,\preg_s_reg_n_136_[14] ,\preg_s_reg_n_137_[14] ,\preg_s_reg_n_138_[14] ,\preg_s_reg_n_139_[14] ,\preg_s_reg_n_140_[14] ,\preg_s_reg_n_141_[14] ,\preg_s_reg_n_142_[14] ,\preg_s_reg_n_143_[14] ,\preg_s_reg_n_144_[14] ,\preg_s_reg_n_145_[14] ,\preg_s_reg_n_146_[14] ,\preg_s_reg_n_147_[14] ,\preg_s_reg_n_148_[14] ,\preg_s_reg_n_149_[14] ,\preg_s_reg_n_150_[14] ,\preg_s_reg_n_151_[14] ,\preg_s_reg_n_152_[14] ,\preg_s_reg_n_153_[14] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[14]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[14]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[15] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[15]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[15]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[15]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[15]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[15]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[15]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[15]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[15]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[15]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[16] ,\preg_s_reg_n_107_[16] ,\preg_s_reg_n_108_[16] ,\preg_s_reg_n_109_[16] ,\preg_s_reg_n_110_[16] ,\preg_s_reg_n_111_[16] ,\preg_s_reg_n_112_[16] ,\preg_s_reg_n_113_[16] ,\preg_s_reg_n_114_[16] ,\preg_s_reg_n_115_[16] ,\preg_s_reg_n_116_[16] ,\preg_s_reg_n_117_[16] ,\preg_s_reg_n_118_[16] ,\preg_s_reg_n_119_[16] ,\preg_s_reg_n_120_[16] ,\preg_s_reg_n_121_[16] ,\preg_s_reg_n_122_[16] ,\preg_s_reg_n_123_[16] ,\preg_s_reg_n_124_[16] ,\preg_s_reg_n_125_[16] ,\preg_s_reg_n_126_[16] ,\preg_s_reg_n_127_[16] ,\preg_s_reg_n_128_[16] ,\preg_s_reg_n_129_[16] ,\preg_s_reg_n_130_[16] ,\preg_s_reg_n_131_[16] ,\preg_s_reg_n_132_[16] ,\preg_s_reg_n_133_[16] ,\preg_s_reg_n_134_[16] ,\preg_s_reg_n_135_[16] ,\preg_s_reg_n_136_[16] ,\preg_s_reg_n_137_[16] ,\preg_s_reg_n_138_[16] ,\preg_s_reg_n_139_[16] ,\preg_s_reg_n_140_[16] ,\preg_s_reg_n_141_[16] ,\preg_s_reg_n_142_[16] ,\preg_s_reg_n_143_[16] ,\preg_s_reg_n_144_[16] ,\preg_s_reg_n_145_[16] ,\preg_s_reg_n_146_[16] ,\preg_s_reg_n_147_[16] ,\preg_s_reg_n_148_[16] ,\preg_s_reg_n_149_[16] ,\preg_s_reg_n_150_[16] ,\preg_s_reg_n_151_[16] ,\preg_s_reg_n_152_[16] ,\preg_s_reg_n_153_[16] }),
        .PCOUT({\preg_s_reg_n_106_[15] ,\preg_s_reg_n_107_[15] ,\preg_s_reg_n_108_[15] ,\preg_s_reg_n_109_[15] ,\preg_s_reg_n_110_[15] ,\preg_s_reg_n_111_[15] ,\preg_s_reg_n_112_[15] ,\preg_s_reg_n_113_[15] ,\preg_s_reg_n_114_[15] ,\preg_s_reg_n_115_[15] ,\preg_s_reg_n_116_[15] ,\preg_s_reg_n_117_[15] ,\preg_s_reg_n_118_[15] ,\preg_s_reg_n_119_[15] ,\preg_s_reg_n_120_[15] ,\preg_s_reg_n_121_[15] ,\preg_s_reg_n_122_[15] ,\preg_s_reg_n_123_[15] ,\preg_s_reg_n_124_[15] ,\preg_s_reg_n_125_[15] ,\preg_s_reg_n_126_[15] ,\preg_s_reg_n_127_[15] ,\preg_s_reg_n_128_[15] ,\preg_s_reg_n_129_[15] ,\preg_s_reg_n_130_[15] ,\preg_s_reg_n_131_[15] ,\preg_s_reg_n_132_[15] ,\preg_s_reg_n_133_[15] ,\preg_s_reg_n_134_[15] ,\preg_s_reg_n_135_[15] ,\preg_s_reg_n_136_[15] ,\preg_s_reg_n_137_[15] ,\preg_s_reg_n_138_[15] ,\preg_s_reg_n_139_[15] ,\preg_s_reg_n_140_[15] ,\preg_s_reg_n_141_[15] ,\preg_s_reg_n_142_[15] ,\preg_s_reg_n_143_[15] ,\preg_s_reg_n_144_[15] ,\preg_s_reg_n_145_[15] ,\preg_s_reg_n_146_[15] ,\preg_s_reg_n_147_[15] ,\preg_s_reg_n_148_[15] ,\preg_s_reg_n_149_[15] ,\preg_s_reg_n_150_[15] ,\preg_s_reg_n_151_[15] ,\preg_s_reg_n_152_[15] ,\preg_s_reg_n_153_[15] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[15]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[15]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[16] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[16]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[16]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[16]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[16]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[16]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[16]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[16]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[16]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[16]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[17] ,\preg_s_reg_n_107_[17] ,\preg_s_reg_n_108_[17] ,\preg_s_reg_n_109_[17] ,\preg_s_reg_n_110_[17] ,\preg_s_reg_n_111_[17] ,\preg_s_reg_n_112_[17] ,\preg_s_reg_n_113_[17] ,\preg_s_reg_n_114_[17] ,\preg_s_reg_n_115_[17] ,\preg_s_reg_n_116_[17] ,\preg_s_reg_n_117_[17] ,\preg_s_reg_n_118_[17] ,\preg_s_reg_n_119_[17] ,\preg_s_reg_n_120_[17] ,\preg_s_reg_n_121_[17] ,\preg_s_reg_n_122_[17] ,\preg_s_reg_n_123_[17] ,\preg_s_reg_n_124_[17] ,\preg_s_reg_n_125_[17] ,\preg_s_reg_n_126_[17] ,\preg_s_reg_n_127_[17] ,\preg_s_reg_n_128_[17] ,\preg_s_reg_n_129_[17] ,\preg_s_reg_n_130_[17] ,\preg_s_reg_n_131_[17] ,\preg_s_reg_n_132_[17] ,\preg_s_reg_n_133_[17] ,\preg_s_reg_n_134_[17] ,\preg_s_reg_n_135_[17] ,\preg_s_reg_n_136_[17] ,\preg_s_reg_n_137_[17] ,\preg_s_reg_n_138_[17] ,\preg_s_reg_n_139_[17] ,\preg_s_reg_n_140_[17] ,\preg_s_reg_n_141_[17] ,\preg_s_reg_n_142_[17] ,\preg_s_reg_n_143_[17] ,\preg_s_reg_n_144_[17] ,\preg_s_reg_n_145_[17] ,\preg_s_reg_n_146_[17] ,\preg_s_reg_n_147_[17] ,\preg_s_reg_n_148_[17] ,\preg_s_reg_n_149_[17] ,\preg_s_reg_n_150_[17] ,\preg_s_reg_n_151_[17] ,\preg_s_reg_n_152_[17] ,\preg_s_reg_n_153_[17] }),
        .PCOUT({\preg_s_reg_n_106_[16] ,\preg_s_reg_n_107_[16] ,\preg_s_reg_n_108_[16] ,\preg_s_reg_n_109_[16] ,\preg_s_reg_n_110_[16] ,\preg_s_reg_n_111_[16] ,\preg_s_reg_n_112_[16] ,\preg_s_reg_n_113_[16] ,\preg_s_reg_n_114_[16] ,\preg_s_reg_n_115_[16] ,\preg_s_reg_n_116_[16] ,\preg_s_reg_n_117_[16] ,\preg_s_reg_n_118_[16] ,\preg_s_reg_n_119_[16] ,\preg_s_reg_n_120_[16] ,\preg_s_reg_n_121_[16] ,\preg_s_reg_n_122_[16] ,\preg_s_reg_n_123_[16] ,\preg_s_reg_n_124_[16] ,\preg_s_reg_n_125_[16] ,\preg_s_reg_n_126_[16] ,\preg_s_reg_n_127_[16] ,\preg_s_reg_n_128_[16] ,\preg_s_reg_n_129_[16] ,\preg_s_reg_n_130_[16] ,\preg_s_reg_n_131_[16] ,\preg_s_reg_n_132_[16] ,\preg_s_reg_n_133_[16] ,\preg_s_reg_n_134_[16] ,\preg_s_reg_n_135_[16] ,\preg_s_reg_n_136_[16] ,\preg_s_reg_n_137_[16] ,\preg_s_reg_n_138_[16] ,\preg_s_reg_n_139_[16] ,\preg_s_reg_n_140_[16] ,\preg_s_reg_n_141_[16] ,\preg_s_reg_n_142_[16] ,\preg_s_reg_n_143_[16] ,\preg_s_reg_n_144_[16] ,\preg_s_reg_n_145_[16] ,\preg_s_reg_n_146_[16] ,\preg_s_reg_n_147_[16] ,\preg_s_reg_n_148_[16] ,\preg_s_reg_n_149_[16] ,\preg_s_reg_n_150_[16] ,\preg_s_reg_n_151_[16] ,\preg_s_reg_n_152_[16] ,\preg_s_reg_n_153_[16] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[16]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[16]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[17] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[17]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[17]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[17]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[17]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[17]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[17]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[17]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[17]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[17]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[18] ,\preg_s_reg_n_107_[18] ,\preg_s_reg_n_108_[18] ,\preg_s_reg_n_109_[18] ,\preg_s_reg_n_110_[18] ,\preg_s_reg_n_111_[18] ,\preg_s_reg_n_112_[18] ,\preg_s_reg_n_113_[18] ,\preg_s_reg_n_114_[18] ,\preg_s_reg_n_115_[18] ,\preg_s_reg_n_116_[18] ,\preg_s_reg_n_117_[18] ,\preg_s_reg_n_118_[18] ,\preg_s_reg_n_119_[18] ,\preg_s_reg_n_120_[18] ,\preg_s_reg_n_121_[18] ,\preg_s_reg_n_122_[18] ,\preg_s_reg_n_123_[18] ,\preg_s_reg_n_124_[18] ,\preg_s_reg_n_125_[18] ,\preg_s_reg_n_126_[18] ,\preg_s_reg_n_127_[18] ,\preg_s_reg_n_128_[18] ,\preg_s_reg_n_129_[18] ,\preg_s_reg_n_130_[18] ,\preg_s_reg_n_131_[18] ,\preg_s_reg_n_132_[18] ,\preg_s_reg_n_133_[18] ,\preg_s_reg_n_134_[18] ,\preg_s_reg_n_135_[18] ,\preg_s_reg_n_136_[18] ,\preg_s_reg_n_137_[18] ,\preg_s_reg_n_138_[18] ,\preg_s_reg_n_139_[18] ,\preg_s_reg_n_140_[18] ,\preg_s_reg_n_141_[18] ,\preg_s_reg_n_142_[18] ,\preg_s_reg_n_143_[18] ,\preg_s_reg_n_144_[18] ,\preg_s_reg_n_145_[18] ,\preg_s_reg_n_146_[18] ,\preg_s_reg_n_147_[18] ,\preg_s_reg_n_148_[18] ,\preg_s_reg_n_149_[18] ,\preg_s_reg_n_150_[18] ,\preg_s_reg_n_151_[18] ,\preg_s_reg_n_152_[18] ,\preg_s_reg_n_153_[18] }),
        .PCOUT({\preg_s_reg_n_106_[17] ,\preg_s_reg_n_107_[17] ,\preg_s_reg_n_108_[17] ,\preg_s_reg_n_109_[17] ,\preg_s_reg_n_110_[17] ,\preg_s_reg_n_111_[17] ,\preg_s_reg_n_112_[17] ,\preg_s_reg_n_113_[17] ,\preg_s_reg_n_114_[17] ,\preg_s_reg_n_115_[17] ,\preg_s_reg_n_116_[17] ,\preg_s_reg_n_117_[17] ,\preg_s_reg_n_118_[17] ,\preg_s_reg_n_119_[17] ,\preg_s_reg_n_120_[17] ,\preg_s_reg_n_121_[17] ,\preg_s_reg_n_122_[17] ,\preg_s_reg_n_123_[17] ,\preg_s_reg_n_124_[17] ,\preg_s_reg_n_125_[17] ,\preg_s_reg_n_126_[17] ,\preg_s_reg_n_127_[17] ,\preg_s_reg_n_128_[17] ,\preg_s_reg_n_129_[17] ,\preg_s_reg_n_130_[17] ,\preg_s_reg_n_131_[17] ,\preg_s_reg_n_132_[17] ,\preg_s_reg_n_133_[17] ,\preg_s_reg_n_134_[17] ,\preg_s_reg_n_135_[17] ,\preg_s_reg_n_136_[17] ,\preg_s_reg_n_137_[17] ,\preg_s_reg_n_138_[17] ,\preg_s_reg_n_139_[17] ,\preg_s_reg_n_140_[17] ,\preg_s_reg_n_141_[17] ,\preg_s_reg_n_142_[17] ,\preg_s_reg_n_143_[17] ,\preg_s_reg_n_144_[17] ,\preg_s_reg_n_145_[17] ,\preg_s_reg_n_146_[17] ,\preg_s_reg_n_147_[17] ,\preg_s_reg_n_148_[17] ,\preg_s_reg_n_149_[17] ,\preg_s_reg_n_150_[17] ,\preg_s_reg_n_151_[17] ,\preg_s_reg_n_152_[17] ,\preg_s_reg_n_153_[17] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[17]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[17]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[18] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[18]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[18]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[18]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[18]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[18]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[18]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[18]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[18]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[18]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[19] ,\preg_s_reg_n_107_[19] ,\preg_s_reg_n_108_[19] ,\preg_s_reg_n_109_[19] ,\preg_s_reg_n_110_[19] ,\preg_s_reg_n_111_[19] ,\preg_s_reg_n_112_[19] ,\preg_s_reg_n_113_[19] ,\preg_s_reg_n_114_[19] ,\preg_s_reg_n_115_[19] ,\preg_s_reg_n_116_[19] ,\preg_s_reg_n_117_[19] ,\preg_s_reg_n_118_[19] ,\preg_s_reg_n_119_[19] ,\preg_s_reg_n_120_[19] ,\preg_s_reg_n_121_[19] ,\preg_s_reg_n_122_[19] ,\preg_s_reg_n_123_[19] ,\preg_s_reg_n_124_[19] ,\preg_s_reg_n_125_[19] ,\preg_s_reg_n_126_[19] ,\preg_s_reg_n_127_[19] ,\preg_s_reg_n_128_[19] ,\preg_s_reg_n_129_[19] ,\preg_s_reg_n_130_[19] ,\preg_s_reg_n_131_[19] ,\preg_s_reg_n_132_[19] ,\preg_s_reg_n_133_[19] ,\preg_s_reg_n_134_[19] ,\preg_s_reg_n_135_[19] ,\preg_s_reg_n_136_[19] ,\preg_s_reg_n_137_[19] ,\preg_s_reg_n_138_[19] ,\preg_s_reg_n_139_[19] ,\preg_s_reg_n_140_[19] ,\preg_s_reg_n_141_[19] ,\preg_s_reg_n_142_[19] ,\preg_s_reg_n_143_[19] ,\preg_s_reg_n_144_[19] ,\preg_s_reg_n_145_[19] ,\preg_s_reg_n_146_[19] ,\preg_s_reg_n_147_[19] ,\preg_s_reg_n_148_[19] ,\preg_s_reg_n_149_[19] ,\preg_s_reg_n_150_[19] ,\preg_s_reg_n_151_[19] ,\preg_s_reg_n_152_[19] ,\preg_s_reg_n_153_[19] }),
        .PCOUT({\preg_s_reg_n_106_[18] ,\preg_s_reg_n_107_[18] ,\preg_s_reg_n_108_[18] ,\preg_s_reg_n_109_[18] ,\preg_s_reg_n_110_[18] ,\preg_s_reg_n_111_[18] ,\preg_s_reg_n_112_[18] ,\preg_s_reg_n_113_[18] ,\preg_s_reg_n_114_[18] ,\preg_s_reg_n_115_[18] ,\preg_s_reg_n_116_[18] ,\preg_s_reg_n_117_[18] ,\preg_s_reg_n_118_[18] ,\preg_s_reg_n_119_[18] ,\preg_s_reg_n_120_[18] ,\preg_s_reg_n_121_[18] ,\preg_s_reg_n_122_[18] ,\preg_s_reg_n_123_[18] ,\preg_s_reg_n_124_[18] ,\preg_s_reg_n_125_[18] ,\preg_s_reg_n_126_[18] ,\preg_s_reg_n_127_[18] ,\preg_s_reg_n_128_[18] ,\preg_s_reg_n_129_[18] ,\preg_s_reg_n_130_[18] ,\preg_s_reg_n_131_[18] ,\preg_s_reg_n_132_[18] ,\preg_s_reg_n_133_[18] ,\preg_s_reg_n_134_[18] ,\preg_s_reg_n_135_[18] ,\preg_s_reg_n_136_[18] ,\preg_s_reg_n_137_[18] ,\preg_s_reg_n_138_[18] ,\preg_s_reg_n_139_[18] ,\preg_s_reg_n_140_[18] ,\preg_s_reg_n_141_[18] ,\preg_s_reg_n_142_[18] ,\preg_s_reg_n_143_[18] ,\preg_s_reg_n_144_[18] ,\preg_s_reg_n_145_[18] ,\preg_s_reg_n_146_[18] ,\preg_s_reg_n_147_[18] ,\preg_s_reg_n_148_[18] ,\preg_s_reg_n_149_[18] ,\preg_s_reg_n_150_[18] ,\preg_s_reg_n_151_[18] ,\preg_s_reg_n_152_[18] ,\preg_s_reg_n_153_[18] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[18]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[18]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[19] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[19]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[19]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[19]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[19]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[19]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[19]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[19]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[19]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[19]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[20] ,\preg_s_reg_n_107_[20] ,\preg_s_reg_n_108_[20] ,\preg_s_reg_n_109_[20] ,\preg_s_reg_n_110_[20] ,\preg_s_reg_n_111_[20] ,\preg_s_reg_n_112_[20] ,\preg_s_reg_n_113_[20] ,\preg_s_reg_n_114_[20] ,\preg_s_reg_n_115_[20] ,\preg_s_reg_n_116_[20] ,\preg_s_reg_n_117_[20] ,\preg_s_reg_n_118_[20] ,\preg_s_reg_n_119_[20] ,\preg_s_reg_n_120_[20] ,\preg_s_reg_n_121_[20] ,\preg_s_reg_n_122_[20] ,\preg_s_reg_n_123_[20] ,\preg_s_reg_n_124_[20] ,\preg_s_reg_n_125_[20] ,\preg_s_reg_n_126_[20] ,\preg_s_reg_n_127_[20] ,\preg_s_reg_n_128_[20] ,\preg_s_reg_n_129_[20] ,\preg_s_reg_n_130_[20] ,\preg_s_reg_n_131_[20] ,\preg_s_reg_n_132_[20] ,\preg_s_reg_n_133_[20] ,\preg_s_reg_n_134_[20] ,\preg_s_reg_n_135_[20] ,\preg_s_reg_n_136_[20] ,\preg_s_reg_n_137_[20] ,\preg_s_reg_n_138_[20] ,\preg_s_reg_n_139_[20] ,\preg_s_reg_n_140_[20] ,\preg_s_reg_n_141_[20] ,\preg_s_reg_n_142_[20] ,\preg_s_reg_n_143_[20] ,\preg_s_reg_n_144_[20] ,\preg_s_reg_n_145_[20] ,\preg_s_reg_n_146_[20] ,\preg_s_reg_n_147_[20] ,\preg_s_reg_n_148_[20] ,\preg_s_reg_n_149_[20] ,\preg_s_reg_n_150_[20] ,\preg_s_reg_n_151_[20] ,\preg_s_reg_n_152_[20] ,\preg_s_reg_n_153_[20] }),
        .PCOUT({\preg_s_reg_n_106_[19] ,\preg_s_reg_n_107_[19] ,\preg_s_reg_n_108_[19] ,\preg_s_reg_n_109_[19] ,\preg_s_reg_n_110_[19] ,\preg_s_reg_n_111_[19] ,\preg_s_reg_n_112_[19] ,\preg_s_reg_n_113_[19] ,\preg_s_reg_n_114_[19] ,\preg_s_reg_n_115_[19] ,\preg_s_reg_n_116_[19] ,\preg_s_reg_n_117_[19] ,\preg_s_reg_n_118_[19] ,\preg_s_reg_n_119_[19] ,\preg_s_reg_n_120_[19] ,\preg_s_reg_n_121_[19] ,\preg_s_reg_n_122_[19] ,\preg_s_reg_n_123_[19] ,\preg_s_reg_n_124_[19] ,\preg_s_reg_n_125_[19] ,\preg_s_reg_n_126_[19] ,\preg_s_reg_n_127_[19] ,\preg_s_reg_n_128_[19] ,\preg_s_reg_n_129_[19] ,\preg_s_reg_n_130_[19] ,\preg_s_reg_n_131_[19] ,\preg_s_reg_n_132_[19] ,\preg_s_reg_n_133_[19] ,\preg_s_reg_n_134_[19] ,\preg_s_reg_n_135_[19] ,\preg_s_reg_n_136_[19] ,\preg_s_reg_n_137_[19] ,\preg_s_reg_n_138_[19] ,\preg_s_reg_n_139_[19] ,\preg_s_reg_n_140_[19] ,\preg_s_reg_n_141_[19] ,\preg_s_reg_n_142_[19] ,\preg_s_reg_n_143_[19] ,\preg_s_reg_n_144_[19] ,\preg_s_reg_n_145_[19] ,\preg_s_reg_n_146_[19] ,\preg_s_reg_n_147_[19] ,\preg_s_reg_n_148_[19] ,\preg_s_reg_n_149_[19] ,\preg_s_reg_n_150_[19] ,\preg_s_reg_n_151_[19] ,\preg_s_reg_n_152_[19] ,\preg_s_reg_n_153_[19] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[19]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[19]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[1] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[1]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[2] ,\preg_s_reg_n_7_[2] ,\preg_s_reg_n_8_[2] ,\preg_s_reg_n_9_[2] ,\preg_s_reg_n_10_[2] ,\preg_s_reg_n_11_[2] ,\preg_s_reg_n_12_[2] ,\preg_s_reg_n_13_[2] ,\preg_s_reg_n_14_[2] ,\preg_s_reg_n_15_[2] ,\preg_s_reg_n_16_[2] ,\preg_s_reg_n_17_[2] ,\preg_s_reg_n_18_[2] ,\preg_s_reg_n_19_[2] ,\preg_s_reg_n_20_[2] ,\preg_s_reg_n_21_[2] ,\preg_s_reg_n_22_[2] ,\preg_s_reg_n_23_[2] }),
        .BCOUT({\preg_s_reg_n_6_[1] ,\preg_s_reg_n_7_[1] ,\preg_s_reg_n_8_[1] ,\preg_s_reg_n_9_[1] ,\preg_s_reg_n_10_[1] ,\preg_s_reg_n_11_[1] ,\preg_s_reg_n_12_[1] ,\preg_s_reg_n_13_[1] ,\preg_s_reg_n_14_[1] ,\preg_s_reg_n_15_[1] ,\preg_s_reg_n_16_[1] ,\preg_s_reg_n_17_[1] ,\preg_s_reg_n_18_[1] ,\preg_s_reg_n_19_[1] ,\preg_s_reg_n_20_[1] ,\preg_s_reg_n_21_[1] ,\preg_s_reg_n_22_[1] ,\preg_s_reg_n_23_[1] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[1]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[1]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[1]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[1]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[1]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[1]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[1]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[2] ,\preg_s_reg_n_107_[2] ,\preg_s_reg_n_108_[2] ,\preg_s_reg_n_109_[2] ,\preg_s_reg_n_110_[2] ,\preg_s_reg_n_111_[2] ,\preg_s_reg_n_112_[2] ,\preg_s_reg_n_113_[2] ,\preg_s_reg_n_114_[2] ,\preg_s_reg_n_115_[2] ,\preg_s_reg_n_116_[2] ,\preg_s_reg_n_117_[2] ,\preg_s_reg_n_118_[2] ,\preg_s_reg_n_119_[2] ,\preg_s_reg_n_120_[2] ,\preg_s_reg_n_121_[2] ,\preg_s_reg_n_122_[2] ,\preg_s_reg_n_123_[2] ,\preg_s_reg_n_124_[2] ,\preg_s_reg_n_125_[2] ,\preg_s_reg_n_126_[2] ,\preg_s_reg_n_127_[2] ,\preg_s_reg_n_128_[2] ,\preg_s_reg_n_129_[2] ,\preg_s_reg_n_130_[2] ,\preg_s_reg_n_131_[2] ,\preg_s_reg_n_132_[2] ,\preg_s_reg_n_133_[2] ,\preg_s_reg_n_134_[2] ,\preg_s_reg_n_135_[2] ,\preg_s_reg_n_136_[2] ,\preg_s_reg_n_137_[2] ,\preg_s_reg_n_138_[2] ,\preg_s_reg_n_139_[2] ,\preg_s_reg_n_140_[2] ,\preg_s_reg_n_141_[2] ,\preg_s_reg_n_142_[2] ,\preg_s_reg_n_143_[2] ,\preg_s_reg_n_144_[2] ,\preg_s_reg_n_145_[2] ,\preg_s_reg_n_146_[2] ,\preg_s_reg_n_147_[2] ,\preg_s_reg_n_148_[2] ,\preg_s_reg_n_149_[2] ,\preg_s_reg_n_150_[2] ,\preg_s_reg_n_151_[2] ,\preg_s_reg_n_152_[2] ,\preg_s_reg_n_153_[2] }),
        .PCOUT({\preg_s_reg_n_106_[1] ,\preg_s_reg_n_107_[1] ,\preg_s_reg_n_108_[1] ,\preg_s_reg_n_109_[1] ,\preg_s_reg_n_110_[1] ,\preg_s_reg_n_111_[1] ,\preg_s_reg_n_112_[1] ,\preg_s_reg_n_113_[1] ,\preg_s_reg_n_114_[1] ,\preg_s_reg_n_115_[1] ,\preg_s_reg_n_116_[1] ,\preg_s_reg_n_117_[1] ,\preg_s_reg_n_118_[1] ,\preg_s_reg_n_119_[1] ,\preg_s_reg_n_120_[1] ,\preg_s_reg_n_121_[1] ,\preg_s_reg_n_122_[1] ,\preg_s_reg_n_123_[1] ,\preg_s_reg_n_124_[1] ,\preg_s_reg_n_125_[1] ,\preg_s_reg_n_126_[1] ,\preg_s_reg_n_127_[1] ,\preg_s_reg_n_128_[1] ,\preg_s_reg_n_129_[1] ,\preg_s_reg_n_130_[1] ,\preg_s_reg_n_131_[1] ,\preg_s_reg_n_132_[1] ,\preg_s_reg_n_133_[1] ,\preg_s_reg_n_134_[1] ,\preg_s_reg_n_135_[1] ,\preg_s_reg_n_136_[1] ,\preg_s_reg_n_137_[1] ,\preg_s_reg_n_138_[1] ,\preg_s_reg_n_139_[1] ,\preg_s_reg_n_140_[1] ,\preg_s_reg_n_141_[1] ,\preg_s_reg_n_142_[1] ,\preg_s_reg_n_143_[1] ,\preg_s_reg_n_144_[1] ,\preg_s_reg_n_145_[1] ,\preg_s_reg_n_146_[1] ,\preg_s_reg_n_147_[1] ,\preg_s_reg_n_148_[1] ,\preg_s_reg_n_149_[1] ,\preg_s_reg_n_150_[1] ,\preg_s_reg_n_151_[1] ,\preg_s_reg_n_152_[1] ,\preg_s_reg_n_153_[1] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[1]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[1]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[20] 
       (.A({A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[18],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[20]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[20]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[20]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[20]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[20]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[20]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[20]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[20]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[20]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[21] ,\preg_s_reg_n_107_[21] ,\preg_s_reg_n_108_[21] ,\preg_s_reg_n_109_[21] ,\preg_s_reg_n_110_[21] ,\preg_s_reg_n_111_[21] ,\preg_s_reg_n_112_[21] ,\preg_s_reg_n_113_[21] ,\preg_s_reg_n_114_[21] ,\preg_s_reg_n_115_[21] ,\preg_s_reg_n_116_[21] ,\preg_s_reg_n_117_[21] ,\preg_s_reg_n_118_[21] ,\preg_s_reg_n_119_[21] ,\preg_s_reg_n_120_[21] ,\preg_s_reg_n_121_[21] ,\preg_s_reg_n_122_[21] ,\preg_s_reg_n_123_[21] ,\preg_s_reg_n_124_[21] ,\preg_s_reg_n_125_[21] ,\preg_s_reg_n_126_[21] ,\preg_s_reg_n_127_[21] ,\preg_s_reg_n_128_[21] ,\preg_s_reg_n_129_[21] ,\preg_s_reg_n_130_[21] ,\preg_s_reg_n_131_[21] ,\preg_s_reg_n_132_[21] ,\preg_s_reg_n_133_[21] ,\preg_s_reg_n_134_[21] ,\preg_s_reg_n_135_[21] ,\preg_s_reg_n_136_[21] ,\preg_s_reg_n_137_[21] ,\preg_s_reg_n_138_[21] ,\preg_s_reg_n_139_[21] ,\preg_s_reg_n_140_[21] ,\preg_s_reg_n_141_[21] ,\preg_s_reg_n_142_[21] ,\preg_s_reg_n_143_[21] ,\preg_s_reg_n_144_[21] ,\preg_s_reg_n_145_[21] ,\preg_s_reg_n_146_[21] ,\preg_s_reg_n_147_[21] ,\preg_s_reg_n_148_[21] ,\preg_s_reg_n_149_[21] ,\preg_s_reg_n_150_[21] ,\preg_s_reg_n_151_[21] ,\preg_s_reg_n_152_[21] ,\preg_s_reg_n_153_[21] }),
        .PCOUT({\preg_s_reg_n_106_[20] ,\preg_s_reg_n_107_[20] ,\preg_s_reg_n_108_[20] ,\preg_s_reg_n_109_[20] ,\preg_s_reg_n_110_[20] ,\preg_s_reg_n_111_[20] ,\preg_s_reg_n_112_[20] ,\preg_s_reg_n_113_[20] ,\preg_s_reg_n_114_[20] ,\preg_s_reg_n_115_[20] ,\preg_s_reg_n_116_[20] ,\preg_s_reg_n_117_[20] ,\preg_s_reg_n_118_[20] ,\preg_s_reg_n_119_[20] ,\preg_s_reg_n_120_[20] ,\preg_s_reg_n_121_[20] ,\preg_s_reg_n_122_[20] ,\preg_s_reg_n_123_[20] ,\preg_s_reg_n_124_[20] ,\preg_s_reg_n_125_[20] ,\preg_s_reg_n_126_[20] ,\preg_s_reg_n_127_[20] ,\preg_s_reg_n_128_[20] ,\preg_s_reg_n_129_[20] ,\preg_s_reg_n_130_[20] ,\preg_s_reg_n_131_[20] ,\preg_s_reg_n_132_[20] ,\preg_s_reg_n_133_[20] ,\preg_s_reg_n_134_[20] ,\preg_s_reg_n_135_[20] ,\preg_s_reg_n_136_[20] ,\preg_s_reg_n_137_[20] ,\preg_s_reg_n_138_[20] ,\preg_s_reg_n_139_[20] ,\preg_s_reg_n_140_[20] ,\preg_s_reg_n_141_[20] ,\preg_s_reg_n_142_[20] ,\preg_s_reg_n_143_[20] ,\preg_s_reg_n_144_[20] ,\preg_s_reg_n_145_[20] ,\preg_s_reg_n_146_[20] ,\preg_s_reg_n_147_[20] ,\preg_s_reg_n_148_[20] ,\preg_s_reg_n_149_[20] ,\preg_s_reg_n_150_[20] ,\preg_s_reg_n_151_[20] ,\preg_s_reg_n_152_[20] ,\preg_s_reg_n_153_[20] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[20]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[20]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[21] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[21]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[21]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[21]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[21]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[21]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[21]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[21]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[21]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[21]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[22] ,\preg_s_reg_n_107_[22] ,\preg_s_reg_n_108_[22] ,\preg_s_reg_n_109_[22] ,\preg_s_reg_n_110_[22] ,\preg_s_reg_n_111_[22] ,\preg_s_reg_n_112_[22] ,\preg_s_reg_n_113_[22] ,\preg_s_reg_n_114_[22] ,\preg_s_reg_n_115_[22] ,\preg_s_reg_n_116_[22] ,\preg_s_reg_n_117_[22] ,\preg_s_reg_n_118_[22] ,\preg_s_reg_n_119_[22] ,\preg_s_reg_n_120_[22] ,\preg_s_reg_n_121_[22] ,\preg_s_reg_n_122_[22] ,\preg_s_reg_n_123_[22] ,\preg_s_reg_n_124_[22] ,\preg_s_reg_n_125_[22] ,\preg_s_reg_n_126_[22] ,\preg_s_reg_n_127_[22] ,\preg_s_reg_n_128_[22] ,\preg_s_reg_n_129_[22] ,\preg_s_reg_n_130_[22] ,\preg_s_reg_n_131_[22] ,\preg_s_reg_n_132_[22] ,\preg_s_reg_n_133_[22] ,\preg_s_reg_n_134_[22] ,\preg_s_reg_n_135_[22] ,\preg_s_reg_n_136_[22] ,\preg_s_reg_n_137_[22] ,\preg_s_reg_n_138_[22] ,\preg_s_reg_n_139_[22] ,\preg_s_reg_n_140_[22] ,\preg_s_reg_n_141_[22] ,\preg_s_reg_n_142_[22] ,\preg_s_reg_n_143_[22] ,\preg_s_reg_n_144_[22] ,\preg_s_reg_n_145_[22] ,\preg_s_reg_n_146_[22] ,\preg_s_reg_n_147_[22] ,\preg_s_reg_n_148_[22] ,\preg_s_reg_n_149_[22] ,\preg_s_reg_n_150_[22] ,\preg_s_reg_n_151_[22] ,\preg_s_reg_n_152_[22] ,\preg_s_reg_n_153_[22] }),
        .PCOUT({\preg_s_reg_n_106_[21] ,\preg_s_reg_n_107_[21] ,\preg_s_reg_n_108_[21] ,\preg_s_reg_n_109_[21] ,\preg_s_reg_n_110_[21] ,\preg_s_reg_n_111_[21] ,\preg_s_reg_n_112_[21] ,\preg_s_reg_n_113_[21] ,\preg_s_reg_n_114_[21] ,\preg_s_reg_n_115_[21] ,\preg_s_reg_n_116_[21] ,\preg_s_reg_n_117_[21] ,\preg_s_reg_n_118_[21] ,\preg_s_reg_n_119_[21] ,\preg_s_reg_n_120_[21] ,\preg_s_reg_n_121_[21] ,\preg_s_reg_n_122_[21] ,\preg_s_reg_n_123_[21] ,\preg_s_reg_n_124_[21] ,\preg_s_reg_n_125_[21] ,\preg_s_reg_n_126_[21] ,\preg_s_reg_n_127_[21] ,\preg_s_reg_n_128_[21] ,\preg_s_reg_n_129_[21] ,\preg_s_reg_n_130_[21] ,\preg_s_reg_n_131_[21] ,\preg_s_reg_n_132_[21] ,\preg_s_reg_n_133_[21] ,\preg_s_reg_n_134_[21] ,\preg_s_reg_n_135_[21] ,\preg_s_reg_n_136_[21] ,\preg_s_reg_n_137_[21] ,\preg_s_reg_n_138_[21] ,\preg_s_reg_n_139_[21] ,\preg_s_reg_n_140_[21] ,\preg_s_reg_n_141_[21] ,\preg_s_reg_n_142_[21] ,\preg_s_reg_n_143_[21] ,\preg_s_reg_n_144_[21] ,\preg_s_reg_n_145_[21] ,\preg_s_reg_n_146_[21] ,\preg_s_reg_n_147_[21] ,\preg_s_reg_n_148_[21] ,\preg_s_reg_n_149_[21] ,\preg_s_reg_n_150_[21] ,\preg_s_reg_n_151_[21] ,\preg_s_reg_n_152_[21] ,\preg_s_reg_n_153_[21] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[21]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[21]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[22] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[22]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[22]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[22]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[22]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[22]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[22]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[22]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[22]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[22]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[23] ,\preg_s_reg_n_107_[23] ,\preg_s_reg_n_108_[23] ,\preg_s_reg_n_109_[23] ,\preg_s_reg_n_110_[23] ,\preg_s_reg_n_111_[23] ,\preg_s_reg_n_112_[23] ,\preg_s_reg_n_113_[23] ,\preg_s_reg_n_114_[23] ,\preg_s_reg_n_115_[23] ,\preg_s_reg_n_116_[23] ,\preg_s_reg_n_117_[23] ,\preg_s_reg_n_118_[23] ,\preg_s_reg_n_119_[23] ,\preg_s_reg_n_120_[23] ,\preg_s_reg_n_121_[23] ,\preg_s_reg_n_122_[23] ,\preg_s_reg_n_123_[23] ,\preg_s_reg_n_124_[23] ,\preg_s_reg_n_125_[23] ,\preg_s_reg_n_126_[23] ,\preg_s_reg_n_127_[23] ,\preg_s_reg_n_128_[23] ,\preg_s_reg_n_129_[23] ,\preg_s_reg_n_130_[23] ,\preg_s_reg_n_131_[23] ,\preg_s_reg_n_132_[23] ,\preg_s_reg_n_133_[23] ,\preg_s_reg_n_134_[23] ,\preg_s_reg_n_135_[23] ,\preg_s_reg_n_136_[23] ,\preg_s_reg_n_137_[23] ,\preg_s_reg_n_138_[23] ,\preg_s_reg_n_139_[23] ,\preg_s_reg_n_140_[23] ,\preg_s_reg_n_141_[23] ,\preg_s_reg_n_142_[23] ,\preg_s_reg_n_143_[23] ,\preg_s_reg_n_144_[23] ,\preg_s_reg_n_145_[23] ,\preg_s_reg_n_146_[23] ,\preg_s_reg_n_147_[23] ,\preg_s_reg_n_148_[23] ,\preg_s_reg_n_149_[23] ,\preg_s_reg_n_150_[23] ,\preg_s_reg_n_151_[23] ,\preg_s_reg_n_152_[23] ,\preg_s_reg_n_153_[23] }),
        .PCOUT({\preg_s_reg_n_106_[22] ,\preg_s_reg_n_107_[22] ,\preg_s_reg_n_108_[22] ,\preg_s_reg_n_109_[22] ,\preg_s_reg_n_110_[22] ,\preg_s_reg_n_111_[22] ,\preg_s_reg_n_112_[22] ,\preg_s_reg_n_113_[22] ,\preg_s_reg_n_114_[22] ,\preg_s_reg_n_115_[22] ,\preg_s_reg_n_116_[22] ,\preg_s_reg_n_117_[22] ,\preg_s_reg_n_118_[22] ,\preg_s_reg_n_119_[22] ,\preg_s_reg_n_120_[22] ,\preg_s_reg_n_121_[22] ,\preg_s_reg_n_122_[22] ,\preg_s_reg_n_123_[22] ,\preg_s_reg_n_124_[22] ,\preg_s_reg_n_125_[22] ,\preg_s_reg_n_126_[22] ,\preg_s_reg_n_127_[22] ,\preg_s_reg_n_128_[22] ,\preg_s_reg_n_129_[22] ,\preg_s_reg_n_130_[22] ,\preg_s_reg_n_131_[22] ,\preg_s_reg_n_132_[22] ,\preg_s_reg_n_133_[22] ,\preg_s_reg_n_134_[22] ,\preg_s_reg_n_135_[22] ,\preg_s_reg_n_136_[22] ,\preg_s_reg_n_137_[22] ,\preg_s_reg_n_138_[22] ,\preg_s_reg_n_139_[22] ,\preg_s_reg_n_140_[22] ,\preg_s_reg_n_141_[22] ,\preg_s_reg_n_142_[22] ,\preg_s_reg_n_143_[22] ,\preg_s_reg_n_144_[22] ,\preg_s_reg_n_145_[22] ,\preg_s_reg_n_146_[22] ,\preg_s_reg_n_147_[22] ,\preg_s_reg_n_148_[22] ,\preg_s_reg_n_149_[22] ,\preg_s_reg_n_150_[22] ,\preg_s_reg_n_151_[22] ,\preg_s_reg_n_152_[22] ,\preg_s_reg_n_153_[22] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[22]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[22]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[23] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[23]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[23]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[23]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[23]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[23]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[23]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[23]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[23]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[23]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[24] ,\preg_s_reg_n_107_[24] ,\preg_s_reg_n_108_[24] ,\preg_s_reg_n_109_[24] ,\preg_s_reg_n_110_[24] ,\preg_s_reg_n_111_[24] ,\preg_s_reg_n_112_[24] ,\preg_s_reg_n_113_[24] ,\preg_s_reg_n_114_[24] ,\preg_s_reg_n_115_[24] ,\preg_s_reg_n_116_[24] ,\preg_s_reg_n_117_[24] ,\preg_s_reg_n_118_[24] ,\preg_s_reg_n_119_[24] ,\preg_s_reg_n_120_[24] ,\preg_s_reg_n_121_[24] ,\preg_s_reg_n_122_[24] ,\preg_s_reg_n_123_[24] ,\preg_s_reg_n_124_[24] ,\preg_s_reg_n_125_[24] ,\preg_s_reg_n_126_[24] ,\preg_s_reg_n_127_[24] ,\preg_s_reg_n_128_[24] ,\preg_s_reg_n_129_[24] ,\preg_s_reg_n_130_[24] ,\preg_s_reg_n_131_[24] ,\preg_s_reg_n_132_[24] ,\preg_s_reg_n_133_[24] ,\preg_s_reg_n_134_[24] ,\preg_s_reg_n_135_[24] ,\preg_s_reg_n_136_[24] ,\preg_s_reg_n_137_[24] ,\preg_s_reg_n_138_[24] ,\preg_s_reg_n_139_[24] ,\preg_s_reg_n_140_[24] ,\preg_s_reg_n_141_[24] ,\preg_s_reg_n_142_[24] ,\preg_s_reg_n_143_[24] ,\preg_s_reg_n_144_[24] ,\preg_s_reg_n_145_[24] ,\preg_s_reg_n_146_[24] ,\preg_s_reg_n_147_[24] ,\preg_s_reg_n_148_[24] ,\preg_s_reg_n_149_[24] ,\preg_s_reg_n_150_[24] ,\preg_s_reg_n_151_[24] ,\preg_s_reg_n_152_[24] ,\preg_s_reg_n_153_[24] }),
        .PCOUT({\preg_s_reg_n_106_[23] ,\preg_s_reg_n_107_[23] ,\preg_s_reg_n_108_[23] ,\preg_s_reg_n_109_[23] ,\preg_s_reg_n_110_[23] ,\preg_s_reg_n_111_[23] ,\preg_s_reg_n_112_[23] ,\preg_s_reg_n_113_[23] ,\preg_s_reg_n_114_[23] ,\preg_s_reg_n_115_[23] ,\preg_s_reg_n_116_[23] ,\preg_s_reg_n_117_[23] ,\preg_s_reg_n_118_[23] ,\preg_s_reg_n_119_[23] ,\preg_s_reg_n_120_[23] ,\preg_s_reg_n_121_[23] ,\preg_s_reg_n_122_[23] ,\preg_s_reg_n_123_[23] ,\preg_s_reg_n_124_[23] ,\preg_s_reg_n_125_[23] ,\preg_s_reg_n_126_[23] ,\preg_s_reg_n_127_[23] ,\preg_s_reg_n_128_[23] ,\preg_s_reg_n_129_[23] ,\preg_s_reg_n_130_[23] ,\preg_s_reg_n_131_[23] ,\preg_s_reg_n_132_[23] ,\preg_s_reg_n_133_[23] ,\preg_s_reg_n_134_[23] ,\preg_s_reg_n_135_[23] ,\preg_s_reg_n_136_[23] ,\preg_s_reg_n_137_[23] ,\preg_s_reg_n_138_[23] ,\preg_s_reg_n_139_[23] ,\preg_s_reg_n_140_[23] ,\preg_s_reg_n_141_[23] ,\preg_s_reg_n_142_[23] ,\preg_s_reg_n_143_[23] ,\preg_s_reg_n_144_[23] ,\preg_s_reg_n_145_[23] ,\preg_s_reg_n_146_[23] ,\preg_s_reg_n_147_[23] ,\preg_s_reg_n_148_[23] ,\preg_s_reg_n_149_[23] ,\preg_s_reg_n_150_[23] ,\preg_s_reg_n_151_[23] ,\preg_s_reg_n_152_[23] ,\preg_s_reg_n_153_[23] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[23]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[23]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[24] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[24]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[24]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[24]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[24]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[24]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[24]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[24]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[24]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[24]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[25] ,\preg_s_reg_n_107_[25] ,\preg_s_reg_n_108_[25] ,\preg_s_reg_n_109_[25] ,\preg_s_reg_n_110_[25] ,\preg_s_reg_n_111_[25] ,\preg_s_reg_n_112_[25] ,\preg_s_reg_n_113_[25] ,\preg_s_reg_n_114_[25] ,\preg_s_reg_n_115_[25] ,\preg_s_reg_n_116_[25] ,\preg_s_reg_n_117_[25] ,\preg_s_reg_n_118_[25] ,\preg_s_reg_n_119_[25] ,\preg_s_reg_n_120_[25] ,\preg_s_reg_n_121_[25] ,\preg_s_reg_n_122_[25] ,\preg_s_reg_n_123_[25] ,\preg_s_reg_n_124_[25] ,\preg_s_reg_n_125_[25] ,\preg_s_reg_n_126_[25] ,\preg_s_reg_n_127_[25] ,\preg_s_reg_n_128_[25] ,\preg_s_reg_n_129_[25] ,\preg_s_reg_n_130_[25] ,\preg_s_reg_n_131_[25] ,\preg_s_reg_n_132_[25] ,\preg_s_reg_n_133_[25] ,\preg_s_reg_n_134_[25] ,\preg_s_reg_n_135_[25] ,\preg_s_reg_n_136_[25] ,\preg_s_reg_n_137_[25] ,\preg_s_reg_n_138_[25] ,\preg_s_reg_n_139_[25] ,\preg_s_reg_n_140_[25] ,\preg_s_reg_n_141_[25] ,\preg_s_reg_n_142_[25] ,\preg_s_reg_n_143_[25] ,\preg_s_reg_n_144_[25] ,\preg_s_reg_n_145_[25] ,\preg_s_reg_n_146_[25] ,\preg_s_reg_n_147_[25] ,\preg_s_reg_n_148_[25] ,\preg_s_reg_n_149_[25] ,\preg_s_reg_n_150_[25] ,\preg_s_reg_n_151_[25] ,\preg_s_reg_n_152_[25] ,\preg_s_reg_n_153_[25] }),
        .PCOUT({\preg_s_reg_n_106_[24] ,\preg_s_reg_n_107_[24] ,\preg_s_reg_n_108_[24] ,\preg_s_reg_n_109_[24] ,\preg_s_reg_n_110_[24] ,\preg_s_reg_n_111_[24] ,\preg_s_reg_n_112_[24] ,\preg_s_reg_n_113_[24] ,\preg_s_reg_n_114_[24] ,\preg_s_reg_n_115_[24] ,\preg_s_reg_n_116_[24] ,\preg_s_reg_n_117_[24] ,\preg_s_reg_n_118_[24] ,\preg_s_reg_n_119_[24] ,\preg_s_reg_n_120_[24] ,\preg_s_reg_n_121_[24] ,\preg_s_reg_n_122_[24] ,\preg_s_reg_n_123_[24] ,\preg_s_reg_n_124_[24] ,\preg_s_reg_n_125_[24] ,\preg_s_reg_n_126_[24] ,\preg_s_reg_n_127_[24] ,\preg_s_reg_n_128_[24] ,\preg_s_reg_n_129_[24] ,\preg_s_reg_n_130_[24] ,\preg_s_reg_n_131_[24] ,\preg_s_reg_n_132_[24] ,\preg_s_reg_n_133_[24] ,\preg_s_reg_n_134_[24] ,\preg_s_reg_n_135_[24] ,\preg_s_reg_n_136_[24] ,\preg_s_reg_n_137_[24] ,\preg_s_reg_n_138_[24] ,\preg_s_reg_n_139_[24] ,\preg_s_reg_n_140_[24] ,\preg_s_reg_n_141_[24] ,\preg_s_reg_n_142_[24] ,\preg_s_reg_n_143_[24] ,\preg_s_reg_n_144_[24] ,\preg_s_reg_n_145_[24] ,\preg_s_reg_n_146_[24] ,\preg_s_reg_n_147_[24] ,\preg_s_reg_n_148_[24] ,\preg_s_reg_n_149_[24] ,\preg_s_reg_n_150_[24] ,\preg_s_reg_n_151_[24] ,\preg_s_reg_n_152_[24] ,\preg_s_reg_n_153_[24] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[24]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[24]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[25] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[25]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[25]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[25]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[25]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[25]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[25]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[25]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[25]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[25]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[26] ,\preg_s_reg_n_107_[26] ,\preg_s_reg_n_108_[26] ,\preg_s_reg_n_109_[26] ,\preg_s_reg_n_110_[26] ,\preg_s_reg_n_111_[26] ,\preg_s_reg_n_112_[26] ,\preg_s_reg_n_113_[26] ,\preg_s_reg_n_114_[26] ,\preg_s_reg_n_115_[26] ,\preg_s_reg_n_116_[26] ,\preg_s_reg_n_117_[26] ,\preg_s_reg_n_118_[26] ,\preg_s_reg_n_119_[26] ,\preg_s_reg_n_120_[26] ,\preg_s_reg_n_121_[26] ,\preg_s_reg_n_122_[26] ,\preg_s_reg_n_123_[26] ,\preg_s_reg_n_124_[26] ,\preg_s_reg_n_125_[26] ,\preg_s_reg_n_126_[26] ,\preg_s_reg_n_127_[26] ,\preg_s_reg_n_128_[26] ,\preg_s_reg_n_129_[26] ,\preg_s_reg_n_130_[26] ,\preg_s_reg_n_131_[26] ,\preg_s_reg_n_132_[26] ,\preg_s_reg_n_133_[26] ,\preg_s_reg_n_134_[26] ,\preg_s_reg_n_135_[26] ,\preg_s_reg_n_136_[26] ,\preg_s_reg_n_137_[26] ,\preg_s_reg_n_138_[26] ,\preg_s_reg_n_139_[26] ,\preg_s_reg_n_140_[26] ,\preg_s_reg_n_141_[26] ,\preg_s_reg_n_142_[26] ,\preg_s_reg_n_143_[26] ,\preg_s_reg_n_144_[26] ,\preg_s_reg_n_145_[26] ,\preg_s_reg_n_146_[26] ,\preg_s_reg_n_147_[26] ,\preg_s_reg_n_148_[26] ,\preg_s_reg_n_149_[26] ,\preg_s_reg_n_150_[26] ,\preg_s_reg_n_151_[26] ,\preg_s_reg_n_152_[26] ,\preg_s_reg_n_153_[26] }),
        .PCOUT({\preg_s_reg_n_106_[25] ,\preg_s_reg_n_107_[25] ,\preg_s_reg_n_108_[25] ,\preg_s_reg_n_109_[25] ,\preg_s_reg_n_110_[25] ,\preg_s_reg_n_111_[25] ,\preg_s_reg_n_112_[25] ,\preg_s_reg_n_113_[25] ,\preg_s_reg_n_114_[25] ,\preg_s_reg_n_115_[25] ,\preg_s_reg_n_116_[25] ,\preg_s_reg_n_117_[25] ,\preg_s_reg_n_118_[25] ,\preg_s_reg_n_119_[25] ,\preg_s_reg_n_120_[25] ,\preg_s_reg_n_121_[25] ,\preg_s_reg_n_122_[25] ,\preg_s_reg_n_123_[25] ,\preg_s_reg_n_124_[25] ,\preg_s_reg_n_125_[25] ,\preg_s_reg_n_126_[25] ,\preg_s_reg_n_127_[25] ,\preg_s_reg_n_128_[25] ,\preg_s_reg_n_129_[25] ,\preg_s_reg_n_130_[25] ,\preg_s_reg_n_131_[25] ,\preg_s_reg_n_132_[25] ,\preg_s_reg_n_133_[25] ,\preg_s_reg_n_134_[25] ,\preg_s_reg_n_135_[25] ,\preg_s_reg_n_136_[25] ,\preg_s_reg_n_137_[25] ,\preg_s_reg_n_138_[25] ,\preg_s_reg_n_139_[25] ,\preg_s_reg_n_140_[25] ,\preg_s_reg_n_141_[25] ,\preg_s_reg_n_142_[25] ,\preg_s_reg_n_143_[25] ,\preg_s_reg_n_144_[25] ,\preg_s_reg_n_145_[25] ,\preg_s_reg_n_146_[25] ,\preg_s_reg_n_147_[25] ,\preg_s_reg_n_148_[25] ,\preg_s_reg_n_149_[25] ,\preg_s_reg_n_150_[25] ,\preg_s_reg_n_151_[25] ,\preg_s_reg_n_152_[25] ,\preg_s_reg_n_153_[25] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[25]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[25]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[26] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[26]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[26]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[26]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[26]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[26]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[26]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[26]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[26]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[26]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[27] ,\preg_s_reg_n_107_[27] ,\preg_s_reg_n_108_[27] ,\preg_s_reg_n_109_[27] ,\preg_s_reg_n_110_[27] ,\preg_s_reg_n_111_[27] ,\preg_s_reg_n_112_[27] ,\preg_s_reg_n_113_[27] ,\preg_s_reg_n_114_[27] ,\preg_s_reg_n_115_[27] ,\preg_s_reg_n_116_[27] ,\preg_s_reg_n_117_[27] ,\preg_s_reg_n_118_[27] ,\preg_s_reg_n_119_[27] ,\preg_s_reg_n_120_[27] ,\preg_s_reg_n_121_[27] ,\preg_s_reg_n_122_[27] ,\preg_s_reg_n_123_[27] ,\preg_s_reg_n_124_[27] ,\preg_s_reg_n_125_[27] ,\preg_s_reg_n_126_[27] ,\preg_s_reg_n_127_[27] ,\preg_s_reg_n_128_[27] ,\preg_s_reg_n_129_[27] ,\preg_s_reg_n_130_[27] ,\preg_s_reg_n_131_[27] ,\preg_s_reg_n_132_[27] ,\preg_s_reg_n_133_[27] ,\preg_s_reg_n_134_[27] ,\preg_s_reg_n_135_[27] ,\preg_s_reg_n_136_[27] ,\preg_s_reg_n_137_[27] ,\preg_s_reg_n_138_[27] ,\preg_s_reg_n_139_[27] ,\preg_s_reg_n_140_[27] ,\preg_s_reg_n_141_[27] ,\preg_s_reg_n_142_[27] ,\preg_s_reg_n_143_[27] ,\preg_s_reg_n_144_[27] ,\preg_s_reg_n_145_[27] ,\preg_s_reg_n_146_[27] ,\preg_s_reg_n_147_[27] ,\preg_s_reg_n_148_[27] ,\preg_s_reg_n_149_[27] ,\preg_s_reg_n_150_[27] ,\preg_s_reg_n_151_[27] ,\preg_s_reg_n_152_[27] ,\preg_s_reg_n_153_[27] }),
        .PCOUT({\preg_s_reg_n_106_[26] ,\preg_s_reg_n_107_[26] ,\preg_s_reg_n_108_[26] ,\preg_s_reg_n_109_[26] ,\preg_s_reg_n_110_[26] ,\preg_s_reg_n_111_[26] ,\preg_s_reg_n_112_[26] ,\preg_s_reg_n_113_[26] ,\preg_s_reg_n_114_[26] ,\preg_s_reg_n_115_[26] ,\preg_s_reg_n_116_[26] ,\preg_s_reg_n_117_[26] ,\preg_s_reg_n_118_[26] ,\preg_s_reg_n_119_[26] ,\preg_s_reg_n_120_[26] ,\preg_s_reg_n_121_[26] ,\preg_s_reg_n_122_[26] ,\preg_s_reg_n_123_[26] ,\preg_s_reg_n_124_[26] ,\preg_s_reg_n_125_[26] ,\preg_s_reg_n_126_[26] ,\preg_s_reg_n_127_[26] ,\preg_s_reg_n_128_[26] ,\preg_s_reg_n_129_[26] ,\preg_s_reg_n_130_[26] ,\preg_s_reg_n_131_[26] ,\preg_s_reg_n_132_[26] ,\preg_s_reg_n_133_[26] ,\preg_s_reg_n_134_[26] ,\preg_s_reg_n_135_[26] ,\preg_s_reg_n_136_[26] ,\preg_s_reg_n_137_[26] ,\preg_s_reg_n_138_[26] ,\preg_s_reg_n_139_[26] ,\preg_s_reg_n_140_[26] ,\preg_s_reg_n_141_[26] ,\preg_s_reg_n_142_[26] ,\preg_s_reg_n_143_[26] ,\preg_s_reg_n_144_[26] ,\preg_s_reg_n_145_[26] ,\preg_s_reg_n_146_[26] ,\preg_s_reg_n_147_[26] ,\preg_s_reg_n_148_[26] ,\preg_s_reg_n_149_[26] ,\preg_s_reg_n_150_[26] ,\preg_s_reg_n_151_[26] ,\preg_s_reg_n_152_[26] ,\preg_s_reg_n_153_[26] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[26]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[26]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[27] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[27]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[27]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[27]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[27]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[27]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[27]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[27]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[27]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[27]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[28] ,\preg_s_reg_n_107_[28] ,\preg_s_reg_n_108_[28] ,\preg_s_reg_n_109_[28] ,\preg_s_reg_n_110_[28] ,\preg_s_reg_n_111_[28] ,\preg_s_reg_n_112_[28] ,\preg_s_reg_n_113_[28] ,\preg_s_reg_n_114_[28] ,\preg_s_reg_n_115_[28] ,\preg_s_reg_n_116_[28] ,\preg_s_reg_n_117_[28] ,\preg_s_reg_n_118_[28] ,\preg_s_reg_n_119_[28] ,\preg_s_reg_n_120_[28] ,\preg_s_reg_n_121_[28] ,\preg_s_reg_n_122_[28] ,\preg_s_reg_n_123_[28] ,\preg_s_reg_n_124_[28] ,\preg_s_reg_n_125_[28] ,\preg_s_reg_n_126_[28] ,\preg_s_reg_n_127_[28] ,\preg_s_reg_n_128_[28] ,\preg_s_reg_n_129_[28] ,\preg_s_reg_n_130_[28] ,\preg_s_reg_n_131_[28] ,\preg_s_reg_n_132_[28] ,\preg_s_reg_n_133_[28] ,\preg_s_reg_n_134_[28] ,\preg_s_reg_n_135_[28] ,\preg_s_reg_n_136_[28] ,\preg_s_reg_n_137_[28] ,\preg_s_reg_n_138_[28] ,\preg_s_reg_n_139_[28] ,\preg_s_reg_n_140_[28] ,\preg_s_reg_n_141_[28] ,\preg_s_reg_n_142_[28] ,\preg_s_reg_n_143_[28] ,\preg_s_reg_n_144_[28] ,\preg_s_reg_n_145_[28] ,\preg_s_reg_n_146_[28] ,\preg_s_reg_n_147_[28] ,\preg_s_reg_n_148_[28] ,\preg_s_reg_n_149_[28] ,\preg_s_reg_n_150_[28] ,\preg_s_reg_n_151_[28] ,\preg_s_reg_n_152_[28] ,\preg_s_reg_n_153_[28] }),
        .PCOUT({\preg_s_reg_n_106_[27] ,\preg_s_reg_n_107_[27] ,\preg_s_reg_n_108_[27] ,\preg_s_reg_n_109_[27] ,\preg_s_reg_n_110_[27] ,\preg_s_reg_n_111_[27] ,\preg_s_reg_n_112_[27] ,\preg_s_reg_n_113_[27] ,\preg_s_reg_n_114_[27] ,\preg_s_reg_n_115_[27] ,\preg_s_reg_n_116_[27] ,\preg_s_reg_n_117_[27] ,\preg_s_reg_n_118_[27] ,\preg_s_reg_n_119_[27] ,\preg_s_reg_n_120_[27] ,\preg_s_reg_n_121_[27] ,\preg_s_reg_n_122_[27] ,\preg_s_reg_n_123_[27] ,\preg_s_reg_n_124_[27] ,\preg_s_reg_n_125_[27] ,\preg_s_reg_n_126_[27] ,\preg_s_reg_n_127_[27] ,\preg_s_reg_n_128_[27] ,\preg_s_reg_n_129_[27] ,\preg_s_reg_n_130_[27] ,\preg_s_reg_n_131_[27] ,\preg_s_reg_n_132_[27] ,\preg_s_reg_n_133_[27] ,\preg_s_reg_n_134_[27] ,\preg_s_reg_n_135_[27] ,\preg_s_reg_n_136_[27] ,\preg_s_reg_n_137_[27] ,\preg_s_reg_n_138_[27] ,\preg_s_reg_n_139_[27] ,\preg_s_reg_n_140_[27] ,\preg_s_reg_n_141_[27] ,\preg_s_reg_n_142_[27] ,\preg_s_reg_n_143_[27] ,\preg_s_reg_n_144_[27] ,\preg_s_reg_n_145_[27] ,\preg_s_reg_n_146_[27] ,\preg_s_reg_n_147_[27] ,\preg_s_reg_n_148_[27] ,\preg_s_reg_n_149_[27] ,\preg_s_reg_n_150_[27] ,\preg_s_reg_n_151_[27] ,\preg_s_reg_n_152_[27] ,\preg_s_reg_n_153_[27] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[27]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[27]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[28] 
       (.A({DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1[1],DSP_ALU_INST_1,DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[28]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[28]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[28]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[28]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[28]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[28]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[28]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[28]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[28]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[29] ,\preg_s_reg_n_107_[29] ,\preg_s_reg_n_108_[29] ,\preg_s_reg_n_109_[29] ,\preg_s_reg_n_110_[29] ,\preg_s_reg_n_111_[29] ,\preg_s_reg_n_112_[29] ,\preg_s_reg_n_113_[29] ,\preg_s_reg_n_114_[29] ,\preg_s_reg_n_115_[29] ,\preg_s_reg_n_116_[29] ,\preg_s_reg_n_117_[29] ,\preg_s_reg_n_118_[29] ,\preg_s_reg_n_119_[29] ,\preg_s_reg_n_120_[29] ,\preg_s_reg_n_121_[29] ,\preg_s_reg_n_122_[29] ,\preg_s_reg_n_123_[29] ,\preg_s_reg_n_124_[29] ,\preg_s_reg_n_125_[29] ,\preg_s_reg_n_126_[29] ,\preg_s_reg_n_127_[29] ,\preg_s_reg_n_128_[29] ,\preg_s_reg_n_129_[29] ,\preg_s_reg_n_130_[29] ,\preg_s_reg_n_131_[29] ,\preg_s_reg_n_132_[29] ,\preg_s_reg_n_133_[29] ,\preg_s_reg_n_134_[29] ,\preg_s_reg_n_135_[29] ,\preg_s_reg_n_136_[29] ,\preg_s_reg_n_137_[29] ,\preg_s_reg_n_138_[29] ,\preg_s_reg_n_139_[29] ,\preg_s_reg_n_140_[29] ,\preg_s_reg_n_141_[29] ,\preg_s_reg_n_142_[29] ,\preg_s_reg_n_143_[29] ,\preg_s_reg_n_144_[29] ,\preg_s_reg_n_145_[29] ,\preg_s_reg_n_146_[29] ,\preg_s_reg_n_147_[29] ,\preg_s_reg_n_148_[29] ,\preg_s_reg_n_149_[29] ,\preg_s_reg_n_150_[29] ,\preg_s_reg_n_151_[29] ,\preg_s_reg_n_152_[29] ,\preg_s_reg_n_153_[29] }),
        .PCOUT({\preg_s_reg_n_106_[28] ,\preg_s_reg_n_107_[28] ,\preg_s_reg_n_108_[28] ,\preg_s_reg_n_109_[28] ,\preg_s_reg_n_110_[28] ,\preg_s_reg_n_111_[28] ,\preg_s_reg_n_112_[28] ,\preg_s_reg_n_113_[28] ,\preg_s_reg_n_114_[28] ,\preg_s_reg_n_115_[28] ,\preg_s_reg_n_116_[28] ,\preg_s_reg_n_117_[28] ,\preg_s_reg_n_118_[28] ,\preg_s_reg_n_119_[28] ,\preg_s_reg_n_120_[28] ,\preg_s_reg_n_121_[28] ,\preg_s_reg_n_122_[28] ,\preg_s_reg_n_123_[28] ,\preg_s_reg_n_124_[28] ,\preg_s_reg_n_125_[28] ,\preg_s_reg_n_126_[28] ,\preg_s_reg_n_127_[28] ,\preg_s_reg_n_128_[28] ,\preg_s_reg_n_129_[28] ,\preg_s_reg_n_130_[28] ,\preg_s_reg_n_131_[28] ,\preg_s_reg_n_132_[28] ,\preg_s_reg_n_133_[28] ,\preg_s_reg_n_134_[28] ,\preg_s_reg_n_135_[28] ,\preg_s_reg_n_136_[28] ,\preg_s_reg_n_137_[28] ,\preg_s_reg_n_138_[28] ,\preg_s_reg_n_139_[28] ,\preg_s_reg_n_140_[28] ,\preg_s_reg_n_141_[28] ,\preg_s_reg_n_142_[28] ,\preg_s_reg_n_143_[28] ,\preg_s_reg_n_144_[28] ,\preg_s_reg_n_145_[28] ,\preg_s_reg_n_146_[28] ,\preg_s_reg_n_147_[28] ,\preg_s_reg_n_148_[28] ,\preg_s_reg_n_149_[28] ,\preg_s_reg_n_150_[28] ,\preg_s_reg_n_151_[28] ,\preg_s_reg_n_152_[28] ,\preg_s_reg_n_153_[28] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[28]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[28]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[29] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[29]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[30] ,\preg_s_reg_n_7_[30] ,\preg_s_reg_n_8_[30] ,\preg_s_reg_n_9_[30] ,\preg_s_reg_n_10_[30] ,\preg_s_reg_n_11_[30] ,\preg_s_reg_n_12_[30] ,\preg_s_reg_n_13_[30] ,\preg_s_reg_n_14_[30] ,\preg_s_reg_n_15_[30] ,\preg_s_reg_n_16_[30] ,\preg_s_reg_n_17_[30] ,\preg_s_reg_n_18_[30] ,\preg_s_reg_n_19_[30] ,\preg_s_reg_n_20_[30] ,\preg_s_reg_n_21_[30] ,\preg_s_reg_n_22_[30] ,\preg_s_reg_n_23_[30] }),
        .BCOUT(\NLW_preg_s_reg[29]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[29]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[29]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[29]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[29]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[29]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[29]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[29]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[30] ,\preg_s_reg_n_107_[30] ,\preg_s_reg_n_108_[30] ,\preg_s_reg_n_109_[30] ,\preg_s_reg_n_110_[30] ,\preg_s_reg_n_111_[30] ,\preg_s_reg_n_112_[30] ,\preg_s_reg_n_113_[30] ,\preg_s_reg_n_114_[30] ,\preg_s_reg_n_115_[30] ,\preg_s_reg_n_116_[30] ,\preg_s_reg_n_117_[30] ,\preg_s_reg_n_118_[30] ,\preg_s_reg_n_119_[30] ,\preg_s_reg_n_120_[30] ,\preg_s_reg_n_121_[30] ,\preg_s_reg_n_122_[30] ,\preg_s_reg_n_123_[30] ,\preg_s_reg_n_124_[30] ,\preg_s_reg_n_125_[30] ,\preg_s_reg_n_126_[30] ,\preg_s_reg_n_127_[30] ,\preg_s_reg_n_128_[30] ,\preg_s_reg_n_129_[30] ,\preg_s_reg_n_130_[30] ,\preg_s_reg_n_131_[30] ,\preg_s_reg_n_132_[30] ,\preg_s_reg_n_133_[30] ,\preg_s_reg_n_134_[30] ,\preg_s_reg_n_135_[30] ,\preg_s_reg_n_136_[30] ,\preg_s_reg_n_137_[30] ,\preg_s_reg_n_138_[30] ,\preg_s_reg_n_139_[30] ,\preg_s_reg_n_140_[30] ,\preg_s_reg_n_141_[30] ,\preg_s_reg_n_142_[30] ,\preg_s_reg_n_143_[30] ,\preg_s_reg_n_144_[30] ,\preg_s_reg_n_145_[30] ,\preg_s_reg_n_146_[30] ,\preg_s_reg_n_147_[30] ,\preg_s_reg_n_148_[30] ,\preg_s_reg_n_149_[30] ,\preg_s_reg_n_150_[30] ,\preg_s_reg_n_151_[30] ,\preg_s_reg_n_152_[30] ,\preg_s_reg_n_153_[30] }),
        .PCOUT({\preg_s_reg_n_106_[29] ,\preg_s_reg_n_107_[29] ,\preg_s_reg_n_108_[29] ,\preg_s_reg_n_109_[29] ,\preg_s_reg_n_110_[29] ,\preg_s_reg_n_111_[29] ,\preg_s_reg_n_112_[29] ,\preg_s_reg_n_113_[29] ,\preg_s_reg_n_114_[29] ,\preg_s_reg_n_115_[29] ,\preg_s_reg_n_116_[29] ,\preg_s_reg_n_117_[29] ,\preg_s_reg_n_118_[29] ,\preg_s_reg_n_119_[29] ,\preg_s_reg_n_120_[29] ,\preg_s_reg_n_121_[29] ,\preg_s_reg_n_122_[29] ,\preg_s_reg_n_123_[29] ,\preg_s_reg_n_124_[29] ,\preg_s_reg_n_125_[29] ,\preg_s_reg_n_126_[29] ,\preg_s_reg_n_127_[29] ,\preg_s_reg_n_128_[29] ,\preg_s_reg_n_129_[29] ,\preg_s_reg_n_130_[29] ,\preg_s_reg_n_131_[29] ,\preg_s_reg_n_132_[29] ,\preg_s_reg_n_133_[29] ,\preg_s_reg_n_134_[29] ,\preg_s_reg_n_135_[29] ,\preg_s_reg_n_136_[29] ,\preg_s_reg_n_137_[29] ,\preg_s_reg_n_138_[29] ,\preg_s_reg_n_139_[29] ,\preg_s_reg_n_140_[29] ,\preg_s_reg_n_141_[29] ,\preg_s_reg_n_142_[29] ,\preg_s_reg_n_143_[29] ,\preg_s_reg_n_144_[29] ,\preg_s_reg_n_145_[29] ,\preg_s_reg_n_146_[29] ,\preg_s_reg_n_147_[29] ,\preg_s_reg_n_148_[29] ,\preg_s_reg_n_149_[29] ,\preg_s_reg_n_150_[29] ,\preg_s_reg_n_151_[29] ,\preg_s_reg_n_152_[29] ,\preg_s_reg_n_153_[29] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[29]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[29]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[2] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[2]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[3] ,\preg_s_reg_n_7_[3] ,\preg_s_reg_n_8_[3] ,\preg_s_reg_n_9_[3] ,\preg_s_reg_n_10_[3] ,\preg_s_reg_n_11_[3] ,\preg_s_reg_n_12_[3] ,\preg_s_reg_n_13_[3] ,\preg_s_reg_n_14_[3] ,\preg_s_reg_n_15_[3] ,\preg_s_reg_n_16_[3] ,\preg_s_reg_n_17_[3] ,\preg_s_reg_n_18_[3] ,\preg_s_reg_n_19_[3] ,\preg_s_reg_n_20_[3] ,\preg_s_reg_n_21_[3] ,\preg_s_reg_n_22_[3] ,\preg_s_reg_n_23_[3] }),
        .BCOUT({\preg_s_reg_n_6_[2] ,\preg_s_reg_n_7_[2] ,\preg_s_reg_n_8_[2] ,\preg_s_reg_n_9_[2] ,\preg_s_reg_n_10_[2] ,\preg_s_reg_n_11_[2] ,\preg_s_reg_n_12_[2] ,\preg_s_reg_n_13_[2] ,\preg_s_reg_n_14_[2] ,\preg_s_reg_n_15_[2] ,\preg_s_reg_n_16_[2] ,\preg_s_reg_n_17_[2] ,\preg_s_reg_n_18_[2] ,\preg_s_reg_n_19_[2] ,\preg_s_reg_n_20_[2] ,\preg_s_reg_n_21_[2] ,\preg_s_reg_n_22_[2] ,\preg_s_reg_n_23_[2] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[2]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[2]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[2]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[2]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[2]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[2]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[2]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[3] ,\preg_s_reg_n_107_[3] ,\preg_s_reg_n_108_[3] ,\preg_s_reg_n_109_[3] ,\preg_s_reg_n_110_[3] ,\preg_s_reg_n_111_[3] ,\preg_s_reg_n_112_[3] ,\preg_s_reg_n_113_[3] ,\preg_s_reg_n_114_[3] ,\preg_s_reg_n_115_[3] ,\preg_s_reg_n_116_[3] ,\preg_s_reg_n_117_[3] ,\preg_s_reg_n_118_[3] ,\preg_s_reg_n_119_[3] ,\preg_s_reg_n_120_[3] ,\preg_s_reg_n_121_[3] ,\preg_s_reg_n_122_[3] ,\preg_s_reg_n_123_[3] ,\preg_s_reg_n_124_[3] ,\preg_s_reg_n_125_[3] ,\preg_s_reg_n_126_[3] ,\preg_s_reg_n_127_[3] ,\preg_s_reg_n_128_[3] ,\preg_s_reg_n_129_[3] ,\preg_s_reg_n_130_[3] ,\preg_s_reg_n_131_[3] ,\preg_s_reg_n_132_[3] ,\preg_s_reg_n_133_[3] ,\preg_s_reg_n_134_[3] ,\preg_s_reg_n_135_[3] ,\preg_s_reg_n_136_[3] ,\preg_s_reg_n_137_[3] ,\preg_s_reg_n_138_[3] ,\preg_s_reg_n_139_[3] ,\preg_s_reg_n_140_[3] ,\preg_s_reg_n_141_[3] ,\preg_s_reg_n_142_[3] ,\preg_s_reg_n_143_[3] ,\preg_s_reg_n_144_[3] ,\preg_s_reg_n_145_[3] ,\preg_s_reg_n_146_[3] ,\preg_s_reg_n_147_[3] ,\preg_s_reg_n_148_[3] ,\preg_s_reg_n_149_[3] ,\preg_s_reg_n_150_[3] ,\preg_s_reg_n_151_[3] ,\preg_s_reg_n_152_[3] ,\preg_s_reg_n_153_[3] }),
        .PCOUT({\preg_s_reg_n_106_[2] ,\preg_s_reg_n_107_[2] ,\preg_s_reg_n_108_[2] ,\preg_s_reg_n_109_[2] ,\preg_s_reg_n_110_[2] ,\preg_s_reg_n_111_[2] ,\preg_s_reg_n_112_[2] ,\preg_s_reg_n_113_[2] ,\preg_s_reg_n_114_[2] ,\preg_s_reg_n_115_[2] ,\preg_s_reg_n_116_[2] ,\preg_s_reg_n_117_[2] ,\preg_s_reg_n_118_[2] ,\preg_s_reg_n_119_[2] ,\preg_s_reg_n_120_[2] ,\preg_s_reg_n_121_[2] ,\preg_s_reg_n_122_[2] ,\preg_s_reg_n_123_[2] ,\preg_s_reg_n_124_[2] ,\preg_s_reg_n_125_[2] ,\preg_s_reg_n_126_[2] ,\preg_s_reg_n_127_[2] ,\preg_s_reg_n_128_[2] ,\preg_s_reg_n_129_[2] ,\preg_s_reg_n_130_[2] ,\preg_s_reg_n_131_[2] ,\preg_s_reg_n_132_[2] ,\preg_s_reg_n_133_[2] ,\preg_s_reg_n_134_[2] ,\preg_s_reg_n_135_[2] ,\preg_s_reg_n_136_[2] ,\preg_s_reg_n_137_[2] ,\preg_s_reg_n_138_[2] ,\preg_s_reg_n_139_[2] ,\preg_s_reg_n_140_[2] ,\preg_s_reg_n_141_[2] ,\preg_s_reg_n_142_[2] ,\preg_s_reg_n_143_[2] ,\preg_s_reg_n_144_[2] ,\preg_s_reg_n_145_[2] ,\preg_s_reg_n_146_[2] ,\preg_s_reg_n_147_[2] ,\preg_s_reg_n_148_[2] ,\preg_s_reg_n_149_[2] ,\preg_s_reg_n_150_[2] ,\preg_s_reg_n_151_[2] ,\preg_s_reg_n_152_[2] ,\preg_s_reg_n_153_[2] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[2]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[2]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[30] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[30]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({\preg_s_reg_n_6_[30] ,\preg_s_reg_n_7_[30] ,\preg_s_reg_n_8_[30] ,\preg_s_reg_n_9_[30] ,\preg_s_reg_n_10_[30] ,\preg_s_reg_n_11_[30] ,\preg_s_reg_n_12_[30] ,\preg_s_reg_n_13_[30] ,\preg_s_reg_n_14_[30] ,\preg_s_reg_n_15_[30] ,\preg_s_reg_n_16_[30] ,\preg_s_reg_n_17_[30] ,\preg_s_reg_n_18_[30] ,\preg_s_reg_n_19_[30] ,\preg_s_reg_n_20_[30] ,\preg_s_reg_n_21_[30] ,\preg_s_reg_n_22_[30] ,\preg_s_reg_n_23_[30] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[30]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[30]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[30]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[30]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[30]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[30]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[30]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[31] ,\preg_s_reg_n_107_[31] ,\preg_s_reg_n_108_[31] ,\preg_s_reg_n_109_[31] ,\preg_s_reg_n_110_[31] ,\preg_s_reg_n_111_[31] ,\preg_s_reg_n_112_[31] ,\preg_s_reg_n_113_[31] ,\preg_s_reg_n_114_[31] ,\preg_s_reg_n_115_[31] ,\preg_s_reg_n_116_[31] ,\preg_s_reg_n_117_[31] ,\preg_s_reg_n_118_[31] ,\preg_s_reg_n_119_[31] ,\preg_s_reg_n_120_[31] ,\preg_s_reg_n_121_[31] ,\preg_s_reg_n_122_[31] ,\preg_s_reg_n_123_[31] ,\preg_s_reg_n_124_[31] ,\preg_s_reg_n_125_[31] ,\preg_s_reg_n_126_[31] ,\preg_s_reg_n_127_[31] ,\preg_s_reg_n_128_[31] ,\preg_s_reg_n_129_[31] ,\preg_s_reg_n_130_[31] ,\preg_s_reg_n_131_[31] ,\preg_s_reg_n_132_[31] ,\preg_s_reg_n_133_[31] ,\preg_s_reg_n_134_[31] ,\preg_s_reg_n_135_[31] ,\preg_s_reg_n_136_[31] ,\preg_s_reg_n_137_[31] ,\preg_s_reg_n_138_[31] ,\preg_s_reg_n_139_[31] ,\preg_s_reg_n_140_[31] ,\preg_s_reg_n_141_[31] ,\preg_s_reg_n_142_[31] ,\preg_s_reg_n_143_[31] ,\preg_s_reg_n_144_[31] ,\preg_s_reg_n_145_[31] ,\preg_s_reg_n_146_[31] ,\preg_s_reg_n_147_[31] ,\preg_s_reg_n_148_[31] ,\preg_s_reg_n_149_[31] ,\preg_s_reg_n_150_[31] ,\preg_s_reg_n_151_[31] ,\preg_s_reg_n_152_[31] ,\preg_s_reg_n_153_[31] }),
        .PCOUT({\preg_s_reg_n_106_[30] ,\preg_s_reg_n_107_[30] ,\preg_s_reg_n_108_[30] ,\preg_s_reg_n_109_[30] ,\preg_s_reg_n_110_[30] ,\preg_s_reg_n_111_[30] ,\preg_s_reg_n_112_[30] ,\preg_s_reg_n_113_[30] ,\preg_s_reg_n_114_[30] ,\preg_s_reg_n_115_[30] ,\preg_s_reg_n_116_[30] ,\preg_s_reg_n_117_[30] ,\preg_s_reg_n_118_[30] ,\preg_s_reg_n_119_[30] ,\preg_s_reg_n_120_[30] ,\preg_s_reg_n_121_[30] ,\preg_s_reg_n_122_[30] ,\preg_s_reg_n_123_[30] ,\preg_s_reg_n_124_[30] ,\preg_s_reg_n_125_[30] ,\preg_s_reg_n_126_[30] ,\preg_s_reg_n_127_[30] ,\preg_s_reg_n_128_[30] ,\preg_s_reg_n_129_[30] ,\preg_s_reg_n_130_[30] ,\preg_s_reg_n_131_[30] ,\preg_s_reg_n_132_[30] ,\preg_s_reg_n_133_[30] ,\preg_s_reg_n_134_[30] ,\preg_s_reg_n_135_[30] ,\preg_s_reg_n_136_[30] ,\preg_s_reg_n_137_[30] ,\preg_s_reg_n_138_[30] ,\preg_s_reg_n_139_[30] ,\preg_s_reg_n_140_[30] ,\preg_s_reg_n_141_[30] ,\preg_s_reg_n_142_[30] ,\preg_s_reg_n_143_[30] ,\preg_s_reg_n_144_[30] ,\preg_s_reg_n_145_[30] ,\preg_s_reg_n_146_[30] ,\preg_s_reg_n_147_[30] ,\preg_s_reg_n_148_[30] ,\preg_s_reg_n_149_[30] ,\preg_s_reg_n_150_[30] ,\preg_s_reg_n_151_[30] ,\preg_s_reg_n_152_[30] ,\preg_s_reg_n_153_[30] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[30]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[30]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[31] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[31]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[31]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[31]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[31]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[31]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[31]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[31]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[31]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[31]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[32] ,\preg_s_reg_n_107_[32] ,\preg_s_reg_n_108_[32] ,\preg_s_reg_n_109_[32] ,\preg_s_reg_n_110_[32] ,\preg_s_reg_n_111_[32] ,\preg_s_reg_n_112_[32] ,\preg_s_reg_n_113_[32] ,\preg_s_reg_n_114_[32] ,\preg_s_reg_n_115_[32] ,\preg_s_reg_n_116_[32] ,\preg_s_reg_n_117_[32] ,\preg_s_reg_n_118_[32] ,\preg_s_reg_n_119_[32] ,\preg_s_reg_n_120_[32] ,\preg_s_reg_n_121_[32] ,\preg_s_reg_n_122_[32] ,\preg_s_reg_n_123_[32] ,\preg_s_reg_n_124_[32] ,\preg_s_reg_n_125_[32] ,\preg_s_reg_n_126_[32] ,\preg_s_reg_n_127_[32] ,\preg_s_reg_n_128_[32] ,\preg_s_reg_n_129_[32] ,\preg_s_reg_n_130_[32] ,\preg_s_reg_n_131_[32] ,\preg_s_reg_n_132_[32] ,\preg_s_reg_n_133_[32] ,\preg_s_reg_n_134_[32] ,\preg_s_reg_n_135_[32] ,\preg_s_reg_n_136_[32] ,\preg_s_reg_n_137_[32] ,\preg_s_reg_n_138_[32] ,\preg_s_reg_n_139_[32] ,\preg_s_reg_n_140_[32] ,\preg_s_reg_n_141_[32] ,\preg_s_reg_n_142_[32] ,\preg_s_reg_n_143_[32] ,\preg_s_reg_n_144_[32] ,\preg_s_reg_n_145_[32] ,\preg_s_reg_n_146_[32] ,\preg_s_reg_n_147_[32] ,\preg_s_reg_n_148_[32] ,\preg_s_reg_n_149_[32] ,\preg_s_reg_n_150_[32] ,\preg_s_reg_n_151_[32] ,\preg_s_reg_n_152_[32] ,\preg_s_reg_n_153_[32] }),
        .PCOUT({\preg_s_reg_n_106_[31] ,\preg_s_reg_n_107_[31] ,\preg_s_reg_n_108_[31] ,\preg_s_reg_n_109_[31] ,\preg_s_reg_n_110_[31] ,\preg_s_reg_n_111_[31] ,\preg_s_reg_n_112_[31] ,\preg_s_reg_n_113_[31] ,\preg_s_reg_n_114_[31] ,\preg_s_reg_n_115_[31] ,\preg_s_reg_n_116_[31] ,\preg_s_reg_n_117_[31] ,\preg_s_reg_n_118_[31] ,\preg_s_reg_n_119_[31] ,\preg_s_reg_n_120_[31] ,\preg_s_reg_n_121_[31] ,\preg_s_reg_n_122_[31] ,\preg_s_reg_n_123_[31] ,\preg_s_reg_n_124_[31] ,\preg_s_reg_n_125_[31] ,\preg_s_reg_n_126_[31] ,\preg_s_reg_n_127_[31] ,\preg_s_reg_n_128_[31] ,\preg_s_reg_n_129_[31] ,\preg_s_reg_n_130_[31] ,\preg_s_reg_n_131_[31] ,\preg_s_reg_n_132_[31] ,\preg_s_reg_n_133_[31] ,\preg_s_reg_n_134_[31] ,\preg_s_reg_n_135_[31] ,\preg_s_reg_n_136_[31] ,\preg_s_reg_n_137_[31] ,\preg_s_reg_n_138_[31] ,\preg_s_reg_n_139_[31] ,\preg_s_reg_n_140_[31] ,\preg_s_reg_n_141_[31] ,\preg_s_reg_n_142_[31] ,\preg_s_reg_n_143_[31] ,\preg_s_reg_n_144_[31] ,\preg_s_reg_n_145_[31] ,\preg_s_reg_n_146_[31] ,\preg_s_reg_n_147_[31] ,\preg_s_reg_n_148_[31] ,\preg_s_reg_n_149_[31] ,\preg_s_reg_n_150_[31] ,\preg_s_reg_n_151_[31] ,\preg_s_reg_n_152_[31] ,\preg_s_reg_n_153_[31] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[31]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[31]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[32] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[32]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[32]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[32]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[32]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[32]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[32]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[32]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[32]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[32]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[33] ,\preg_s_reg_n_107_[33] ,\preg_s_reg_n_108_[33] ,\preg_s_reg_n_109_[33] ,\preg_s_reg_n_110_[33] ,\preg_s_reg_n_111_[33] ,\preg_s_reg_n_112_[33] ,\preg_s_reg_n_113_[33] ,\preg_s_reg_n_114_[33] ,\preg_s_reg_n_115_[33] ,\preg_s_reg_n_116_[33] ,\preg_s_reg_n_117_[33] ,\preg_s_reg_n_118_[33] ,\preg_s_reg_n_119_[33] ,\preg_s_reg_n_120_[33] ,\preg_s_reg_n_121_[33] ,\preg_s_reg_n_122_[33] ,\preg_s_reg_n_123_[33] ,\preg_s_reg_n_124_[33] ,\preg_s_reg_n_125_[33] ,\preg_s_reg_n_126_[33] ,\preg_s_reg_n_127_[33] ,\preg_s_reg_n_128_[33] ,\preg_s_reg_n_129_[33] ,\preg_s_reg_n_130_[33] ,\preg_s_reg_n_131_[33] ,\preg_s_reg_n_132_[33] ,\preg_s_reg_n_133_[33] ,\preg_s_reg_n_134_[33] ,\preg_s_reg_n_135_[33] ,\preg_s_reg_n_136_[33] ,\preg_s_reg_n_137_[33] ,\preg_s_reg_n_138_[33] ,\preg_s_reg_n_139_[33] ,\preg_s_reg_n_140_[33] ,\preg_s_reg_n_141_[33] ,\preg_s_reg_n_142_[33] ,\preg_s_reg_n_143_[33] ,\preg_s_reg_n_144_[33] ,\preg_s_reg_n_145_[33] ,\preg_s_reg_n_146_[33] ,\preg_s_reg_n_147_[33] ,\preg_s_reg_n_148_[33] ,\preg_s_reg_n_149_[33] ,\preg_s_reg_n_150_[33] ,\preg_s_reg_n_151_[33] ,\preg_s_reg_n_152_[33] ,\preg_s_reg_n_153_[33] }),
        .PCOUT({\preg_s_reg_n_106_[32] ,\preg_s_reg_n_107_[32] ,\preg_s_reg_n_108_[32] ,\preg_s_reg_n_109_[32] ,\preg_s_reg_n_110_[32] ,\preg_s_reg_n_111_[32] ,\preg_s_reg_n_112_[32] ,\preg_s_reg_n_113_[32] ,\preg_s_reg_n_114_[32] ,\preg_s_reg_n_115_[32] ,\preg_s_reg_n_116_[32] ,\preg_s_reg_n_117_[32] ,\preg_s_reg_n_118_[32] ,\preg_s_reg_n_119_[32] ,\preg_s_reg_n_120_[32] ,\preg_s_reg_n_121_[32] ,\preg_s_reg_n_122_[32] ,\preg_s_reg_n_123_[32] ,\preg_s_reg_n_124_[32] ,\preg_s_reg_n_125_[32] ,\preg_s_reg_n_126_[32] ,\preg_s_reg_n_127_[32] ,\preg_s_reg_n_128_[32] ,\preg_s_reg_n_129_[32] ,\preg_s_reg_n_130_[32] ,\preg_s_reg_n_131_[32] ,\preg_s_reg_n_132_[32] ,\preg_s_reg_n_133_[32] ,\preg_s_reg_n_134_[32] ,\preg_s_reg_n_135_[32] ,\preg_s_reg_n_136_[32] ,\preg_s_reg_n_137_[32] ,\preg_s_reg_n_138_[32] ,\preg_s_reg_n_139_[32] ,\preg_s_reg_n_140_[32] ,\preg_s_reg_n_141_[32] ,\preg_s_reg_n_142_[32] ,\preg_s_reg_n_143_[32] ,\preg_s_reg_n_144_[32] ,\preg_s_reg_n_145_[32] ,\preg_s_reg_n_146_[32] ,\preg_s_reg_n_147_[32] ,\preg_s_reg_n_148_[32] ,\preg_s_reg_n_149_[32] ,\preg_s_reg_n_150_[32] ,\preg_s_reg_n_151_[32] ,\preg_s_reg_n_152_[32] ,\preg_s_reg_n_153_[32] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[32]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[32]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[33] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[33]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[33]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[33]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[33]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[33]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[33]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[33]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[33]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[33]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[34] ,\preg_s_reg_n_107_[34] ,\preg_s_reg_n_108_[34] ,\preg_s_reg_n_109_[34] ,\preg_s_reg_n_110_[34] ,\preg_s_reg_n_111_[34] ,\preg_s_reg_n_112_[34] ,\preg_s_reg_n_113_[34] ,\preg_s_reg_n_114_[34] ,\preg_s_reg_n_115_[34] ,\preg_s_reg_n_116_[34] ,\preg_s_reg_n_117_[34] ,\preg_s_reg_n_118_[34] ,\preg_s_reg_n_119_[34] ,\preg_s_reg_n_120_[34] ,\preg_s_reg_n_121_[34] ,\preg_s_reg_n_122_[34] ,\preg_s_reg_n_123_[34] ,\preg_s_reg_n_124_[34] ,\preg_s_reg_n_125_[34] ,\preg_s_reg_n_126_[34] ,\preg_s_reg_n_127_[34] ,\preg_s_reg_n_128_[34] ,\preg_s_reg_n_129_[34] ,\preg_s_reg_n_130_[34] ,\preg_s_reg_n_131_[34] ,\preg_s_reg_n_132_[34] ,\preg_s_reg_n_133_[34] ,\preg_s_reg_n_134_[34] ,\preg_s_reg_n_135_[34] ,\preg_s_reg_n_136_[34] ,\preg_s_reg_n_137_[34] ,\preg_s_reg_n_138_[34] ,\preg_s_reg_n_139_[34] ,\preg_s_reg_n_140_[34] ,\preg_s_reg_n_141_[34] ,\preg_s_reg_n_142_[34] ,\preg_s_reg_n_143_[34] ,\preg_s_reg_n_144_[34] ,\preg_s_reg_n_145_[34] ,\preg_s_reg_n_146_[34] ,\preg_s_reg_n_147_[34] ,\preg_s_reg_n_148_[34] ,\preg_s_reg_n_149_[34] ,\preg_s_reg_n_150_[34] ,\preg_s_reg_n_151_[34] ,\preg_s_reg_n_152_[34] ,\preg_s_reg_n_153_[34] }),
        .PCOUT({\preg_s_reg_n_106_[33] ,\preg_s_reg_n_107_[33] ,\preg_s_reg_n_108_[33] ,\preg_s_reg_n_109_[33] ,\preg_s_reg_n_110_[33] ,\preg_s_reg_n_111_[33] ,\preg_s_reg_n_112_[33] ,\preg_s_reg_n_113_[33] ,\preg_s_reg_n_114_[33] ,\preg_s_reg_n_115_[33] ,\preg_s_reg_n_116_[33] ,\preg_s_reg_n_117_[33] ,\preg_s_reg_n_118_[33] ,\preg_s_reg_n_119_[33] ,\preg_s_reg_n_120_[33] ,\preg_s_reg_n_121_[33] ,\preg_s_reg_n_122_[33] ,\preg_s_reg_n_123_[33] ,\preg_s_reg_n_124_[33] ,\preg_s_reg_n_125_[33] ,\preg_s_reg_n_126_[33] ,\preg_s_reg_n_127_[33] ,\preg_s_reg_n_128_[33] ,\preg_s_reg_n_129_[33] ,\preg_s_reg_n_130_[33] ,\preg_s_reg_n_131_[33] ,\preg_s_reg_n_132_[33] ,\preg_s_reg_n_133_[33] ,\preg_s_reg_n_134_[33] ,\preg_s_reg_n_135_[33] ,\preg_s_reg_n_136_[33] ,\preg_s_reg_n_137_[33] ,\preg_s_reg_n_138_[33] ,\preg_s_reg_n_139_[33] ,\preg_s_reg_n_140_[33] ,\preg_s_reg_n_141_[33] ,\preg_s_reg_n_142_[33] ,\preg_s_reg_n_143_[33] ,\preg_s_reg_n_144_[33] ,\preg_s_reg_n_145_[33] ,\preg_s_reg_n_146_[33] ,\preg_s_reg_n_147_[33] ,\preg_s_reg_n_148_[33] ,\preg_s_reg_n_149_[33] ,\preg_s_reg_n_150_[33] ,\preg_s_reg_n_151_[33] ,\preg_s_reg_n_152_[33] ,\preg_s_reg_n_153_[33] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[33]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[33]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[34] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[34]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[34]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[34]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[34]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[34]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[34]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[34]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[34]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[34]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[35] ,\preg_s_reg_n_107_[35] ,\preg_s_reg_n_108_[35] ,\preg_s_reg_n_109_[35] ,\preg_s_reg_n_110_[35] ,\preg_s_reg_n_111_[35] ,\preg_s_reg_n_112_[35] ,\preg_s_reg_n_113_[35] ,\preg_s_reg_n_114_[35] ,\preg_s_reg_n_115_[35] ,\preg_s_reg_n_116_[35] ,\preg_s_reg_n_117_[35] ,\preg_s_reg_n_118_[35] ,\preg_s_reg_n_119_[35] ,\preg_s_reg_n_120_[35] ,\preg_s_reg_n_121_[35] ,\preg_s_reg_n_122_[35] ,\preg_s_reg_n_123_[35] ,\preg_s_reg_n_124_[35] ,\preg_s_reg_n_125_[35] ,\preg_s_reg_n_126_[35] ,\preg_s_reg_n_127_[35] ,\preg_s_reg_n_128_[35] ,\preg_s_reg_n_129_[35] ,\preg_s_reg_n_130_[35] ,\preg_s_reg_n_131_[35] ,\preg_s_reg_n_132_[35] ,\preg_s_reg_n_133_[35] ,\preg_s_reg_n_134_[35] ,\preg_s_reg_n_135_[35] ,\preg_s_reg_n_136_[35] ,\preg_s_reg_n_137_[35] ,\preg_s_reg_n_138_[35] ,\preg_s_reg_n_139_[35] ,\preg_s_reg_n_140_[35] ,\preg_s_reg_n_141_[35] ,\preg_s_reg_n_142_[35] ,\preg_s_reg_n_143_[35] ,\preg_s_reg_n_144_[35] ,\preg_s_reg_n_145_[35] ,\preg_s_reg_n_146_[35] ,\preg_s_reg_n_147_[35] ,\preg_s_reg_n_148_[35] ,\preg_s_reg_n_149_[35] ,\preg_s_reg_n_150_[35] ,\preg_s_reg_n_151_[35] ,\preg_s_reg_n_152_[35] ,\preg_s_reg_n_153_[35] }),
        .PCOUT({\preg_s_reg_n_106_[34] ,\preg_s_reg_n_107_[34] ,\preg_s_reg_n_108_[34] ,\preg_s_reg_n_109_[34] ,\preg_s_reg_n_110_[34] ,\preg_s_reg_n_111_[34] ,\preg_s_reg_n_112_[34] ,\preg_s_reg_n_113_[34] ,\preg_s_reg_n_114_[34] ,\preg_s_reg_n_115_[34] ,\preg_s_reg_n_116_[34] ,\preg_s_reg_n_117_[34] ,\preg_s_reg_n_118_[34] ,\preg_s_reg_n_119_[34] ,\preg_s_reg_n_120_[34] ,\preg_s_reg_n_121_[34] ,\preg_s_reg_n_122_[34] ,\preg_s_reg_n_123_[34] ,\preg_s_reg_n_124_[34] ,\preg_s_reg_n_125_[34] ,\preg_s_reg_n_126_[34] ,\preg_s_reg_n_127_[34] ,\preg_s_reg_n_128_[34] ,\preg_s_reg_n_129_[34] ,\preg_s_reg_n_130_[34] ,\preg_s_reg_n_131_[34] ,\preg_s_reg_n_132_[34] ,\preg_s_reg_n_133_[34] ,\preg_s_reg_n_134_[34] ,\preg_s_reg_n_135_[34] ,\preg_s_reg_n_136_[34] ,\preg_s_reg_n_137_[34] ,\preg_s_reg_n_138_[34] ,\preg_s_reg_n_139_[34] ,\preg_s_reg_n_140_[34] ,\preg_s_reg_n_141_[34] ,\preg_s_reg_n_142_[34] ,\preg_s_reg_n_143_[34] ,\preg_s_reg_n_144_[34] ,\preg_s_reg_n_145_[34] ,\preg_s_reg_n_146_[34] ,\preg_s_reg_n_147_[34] ,\preg_s_reg_n_148_[34] ,\preg_s_reg_n_149_[34] ,\preg_s_reg_n_150_[34] ,\preg_s_reg_n_151_[34] ,\preg_s_reg_n_152_[34] ,\preg_s_reg_n_153_[34] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[34]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[34]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[35] 
       (.A({DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST_1[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[35]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[35]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[35]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[35]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[35]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[35]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[35]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[35]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[35]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[36] ,\preg_s_reg_n_107_[36] ,\preg_s_reg_n_108_[36] ,\preg_s_reg_n_109_[36] ,\preg_s_reg_n_110_[36] ,\preg_s_reg_n_111_[36] ,\preg_s_reg_n_112_[36] ,\preg_s_reg_n_113_[36] ,\preg_s_reg_n_114_[36] ,\preg_s_reg_n_115_[36] ,\preg_s_reg_n_116_[36] ,\preg_s_reg_n_117_[36] ,\preg_s_reg_n_118_[36] ,\preg_s_reg_n_119_[36] ,\preg_s_reg_n_120_[36] ,\preg_s_reg_n_121_[36] ,\preg_s_reg_n_122_[36] ,\preg_s_reg_n_123_[36] ,\preg_s_reg_n_124_[36] ,\preg_s_reg_n_125_[36] ,\preg_s_reg_n_126_[36] ,\preg_s_reg_n_127_[36] ,\preg_s_reg_n_128_[36] ,\preg_s_reg_n_129_[36] ,\preg_s_reg_n_130_[36] ,\preg_s_reg_n_131_[36] ,\preg_s_reg_n_132_[36] ,\preg_s_reg_n_133_[36] ,\preg_s_reg_n_134_[36] ,\preg_s_reg_n_135_[36] ,\preg_s_reg_n_136_[36] ,\preg_s_reg_n_137_[36] ,\preg_s_reg_n_138_[36] ,\preg_s_reg_n_139_[36] ,\preg_s_reg_n_140_[36] ,\preg_s_reg_n_141_[36] ,\preg_s_reg_n_142_[36] ,\preg_s_reg_n_143_[36] ,\preg_s_reg_n_144_[36] ,\preg_s_reg_n_145_[36] ,\preg_s_reg_n_146_[36] ,\preg_s_reg_n_147_[36] ,\preg_s_reg_n_148_[36] ,\preg_s_reg_n_149_[36] ,\preg_s_reg_n_150_[36] ,\preg_s_reg_n_151_[36] ,\preg_s_reg_n_152_[36] ,\preg_s_reg_n_153_[36] }),
        .PCOUT({\preg_s_reg_n_106_[35] ,\preg_s_reg_n_107_[35] ,\preg_s_reg_n_108_[35] ,\preg_s_reg_n_109_[35] ,\preg_s_reg_n_110_[35] ,\preg_s_reg_n_111_[35] ,\preg_s_reg_n_112_[35] ,\preg_s_reg_n_113_[35] ,\preg_s_reg_n_114_[35] ,\preg_s_reg_n_115_[35] ,\preg_s_reg_n_116_[35] ,\preg_s_reg_n_117_[35] ,\preg_s_reg_n_118_[35] ,\preg_s_reg_n_119_[35] ,\preg_s_reg_n_120_[35] ,\preg_s_reg_n_121_[35] ,\preg_s_reg_n_122_[35] ,\preg_s_reg_n_123_[35] ,\preg_s_reg_n_124_[35] ,\preg_s_reg_n_125_[35] ,\preg_s_reg_n_126_[35] ,\preg_s_reg_n_127_[35] ,\preg_s_reg_n_128_[35] ,\preg_s_reg_n_129_[35] ,\preg_s_reg_n_130_[35] ,\preg_s_reg_n_131_[35] ,\preg_s_reg_n_132_[35] ,\preg_s_reg_n_133_[35] ,\preg_s_reg_n_134_[35] ,\preg_s_reg_n_135_[35] ,\preg_s_reg_n_136_[35] ,\preg_s_reg_n_137_[35] ,\preg_s_reg_n_138_[35] ,\preg_s_reg_n_139_[35] ,\preg_s_reg_n_140_[35] ,\preg_s_reg_n_141_[35] ,\preg_s_reg_n_142_[35] ,\preg_s_reg_n_143_[35] ,\preg_s_reg_n_144_[35] ,\preg_s_reg_n_145_[35] ,\preg_s_reg_n_146_[35] ,\preg_s_reg_n_147_[35] ,\preg_s_reg_n_148_[35] ,\preg_s_reg_n_149_[35] ,\preg_s_reg_n_150_[35] ,\preg_s_reg_n_151_[35] ,\preg_s_reg_n_152_[35] ,\preg_s_reg_n_153_[35] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[35]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[35]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[36] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[36]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[36]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[36]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[36]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[36]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[36]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[36]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[36]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[36]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[37] ,\preg_s_reg_n_107_[37] ,\preg_s_reg_n_108_[37] ,\preg_s_reg_n_109_[37] ,\preg_s_reg_n_110_[37] ,\preg_s_reg_n_111_[37] ,\preg_s_reg_n_112_[37] ,\preg_s_reg_n_113_[37] ,\preg_s_reg_n_114_[37] ,\preg_s_reg_n_115_[37] ,\preg_s_reg_n_116_[37] ,\preg_s_reg_n_117_[37] ,\preg_s_reg_n_118_[37] ,\preg_s_reg_n_119_[37] ,\preg_s_reg_n_120_[37] ,\preg_s_reg_n_121_[37] ,\preg_s_reg_n_122_[37] ,\preg_s_reg_n_123_[37] ,\preg_s_reg_n_124_[37] ,\preg_s_reg_n_125_[37] ,\preg_s_reg_n_126_[37] ,\preg_s_reg_n_127_[37] ,\preg_s_reg_n_128_[37] ,\preg_s_reg_n_129_[37] ,\preg_s_reg_n_130_[37] ,\preg_s_reg_n_131_[37] ,\preg_s_reg_n_132_[37] ,\preg_s_reg_n_133_[37] ,\preg_s_reg_n_134_[37] ,\preg_s_reg_n_135_[37] ,\preg_s_reg_n_136_[37] ,\preg_s_reg_n_137_[37] ,\preg_s_reg_n_138_[37] ,\preg_s_reg_n_139_[37] ,\preg_s_reg_n_140_[37] ,\preg_s_reg_n_141_[37] ,\preg_s_reg_n_142_[37] ,\preg_s_reg_n_143_[37] ,\preg_s_reg_n_144_[37] ,\preg_s_reg_n_145_[37] ,\preg_s_reg_n_146_[37] ,\preg_s_reg_n_147_[37] ,\preg_s_reg_n_148_[37] ,\preg_s_reg_n_149_[37] ,\preg_s_reg_n_150_[37] ,\preg_s_reg_n_151_[37] ,\preg_s_reg_n_152_[37] ,\preg_s_reg_n_153_[37] }),
        .PCOUT({\preg_s_reg_n_106_[36] ,\preg_s_reg_n_107_[36] ,\preg_s_reg_n_108_[36] ,\preg_s_reg_n_109_[36] ,\preg_s_reg_n_110_[36] ,\preg_s_reg_n_111_[36] ,\preg_s_reg_n_112_[36] ,\preg_s_reg_n_113_[36] ,\preg_s_reg_n_114_[36] ,\preg_s_reg_n_115_[36] ,\preg_s_reg_n_116_[36] ,\preg_s_reg_n_117_[36] ,\preg_s_reg_n_118_[36] ,\preg_s_reg_n_119_[36] ,\preg_s_reg_n_120_[36] ,\preg_s_reg_n_121_[36] ,\preg_s_reg_n_122_[36] ,\preg_s_reg_n_123_[36] ,\preg_s_reg_n_124_[36] ,\preg_s_reg_n_125_[36] ,\preg_s_reg_n_126_[36] ,\preg_s_reg_n_127_[36] ,\preg_s_reg_n_128_[36] ,\preg_s_reg_n_129_[36] ,\preg_s_reg_n_130_[36] ,\preg_s_reg_n_131_[36] ,\preg_s_reg_n_132_[36] ,\preg_s_reg_n_133_[36] ,\preg_s_reg_n_134_[36] ,\preg_s_reg_n_135_[36] ,\preg_s_reg_n_136_[36] ,\preg_s_reg_n_137_[36] ,\preg_s_reg_n_138_[36] ,\preg_s_reg_n_139_[36] ,\preg_s_reg_n_140_[36] ,\preg_s_reg_n_141_[36] ,\preg_s_reg_n_142_[36] ,\preg_s_reg_n_143_[36] ,\preg_s_reg_n_144_[36] ,\preg_s_reg_n_145_[36] ,\preg_s_reg_n_146_[36] ,\preg_s_reg_n_147_[36] ,\preg_s_reg_n_148_[36] ,\preg_s_reg_n_149_[36] ,\preg_s_reg_n_150_[36] ,\preg_s_reg_n_151_[36] ,\preg_s_reg_n_152_[36] ,\preg_s_reg_n_153_[36] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[36]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[36]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[37] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[37]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[37]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[37]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[37]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[37]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[37]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[37]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[37]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[37]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[38] ,\preg_s_reg_n_107_[38] ,\preg_s_reg_n_108_[38] ,\preg_s_reg_n_109_[38] ,\preg_s_reg_n_110_[38] ,\preg_s_reg_n_111_[38] ,\preg_s_reg_n_112_[38] ,\preg_s_reg_n_113_[38] ,\preg_s_reg_n_114_[38] ,\preg_s_reg_n_115_[38] ,\preg_s_reg_n_116_[38] ,\preg_s_reg_n_117_[38] ,\preg_s_reg_n_118_[38] ,\preg_s_reg_n_119_[38] ,\preg_s_reg_n_120_[38] ,\preg_s_reg_n_121_[38] ,\preg_s_reg_n_122_[38] ,\preg_s_reg_n_123_[38] ,\preg_s_reg_n_124_[38] ,\preg_s_reg_n_125_[38] ,\preg_s_reg_n_126_[38] ,\preg_s_reg_n_127_[38] ,\preg_s_reg_n_128_[38] ,\preg_s_reg_n_129_[38] ,\preg_s_reg_n_130_[38] ,\preg_s_reg_n_131_[38] ,\preg_s_reg_n_132_[38] ,\preg_s_reg_n_133_[38] ,\preg_s_reg_n_134_[38] ,\preg_s_reg_n_135_[38] ,\preg_s_reg_n_136_[38] ,\preg_s_reg_n_137_[38] ,\preg_s_reg_n_138_[38] ,\preg_s_reg_n_139_[38] ,\preg_s_reg_n_140_[38] ,\preg_s_reg_n_141_[38] ,\preg_s_reg_n_142_[38] ,\preg_s_reg_n_143_[38] ,\preg_s_reg_n_144_[38] ,\preg_s_reg_n_145_[38] ,\preg_s_reg_n_146_[38] ,\preg_s_reg_n_147_[38] ,\preg_s_reg_n_148_[38] ,\preg_s_reg_n_149_[38] ,\preg_s_reg_n_150_[38] ,\preg_s_reg_n_151_[38] ,\preg_s_reg_n_152_[38] ,\preg_s_reg_n_153_[38] }),
        .PCOUT({\preg_s_reg_n_106_[37] ,\preg_s_reg_n_107_[37] ,\preg_s_reg_n_108_[37] ,\preg_s_reg_n_109_[37] ,\preg_s_reg_n_110_[37] ,\preg_s_reg_n_111_[37] ,\preg_s_reg_n_112_[37] ,\preg_s_reg_n_113_[37] ,\preg_s_reg_n_114_[37] ,\preg_s_reg_n_115_[37] ,\preg_s_reg_n_116_[37] ,\preg_s_reg_n_117_[37] ,\preg_s_reg_n_118_[37] ,\preg_s_reg_n_119_[37] ,\preg_s_reg_n_120_[37] ,\preg_s_reg_n_121_[37] ,\preg_s_reg_n_122_[37] ,\preg_s_reg_n_123_[37] ,\preg_s_reg_n_124_[37] ,\preg_s_reg_n_125_[37] ,\preg_s_reg_n_126_[37] ,\preg_s_reg_n_127_[37] ,\preg_s_reg_n_128_[37] ,\preg_s_reg_n_129_[37] ,\preg_s_reg_n_130_[37] ,\preg_s_reg_n_131_[37] ,\preg_s_reg_n_132_[37] ,\preg_s_reg_n_133_[37] ,\preg_s_reg_n_134_[37] ,\preg_s_reg_n_135_[37] ,\preg_s_reg_n_136_[37] ,\preg_s_reg_n_137_[37] ,\preg_s_reg_n_138_[37] ,\preg_s_reg_n_139_[37] ,\preg_s_reg_n_140_[37] ,\preg_s_reg_n_141_[37] ,\preg_s_reg_n_142_[37] ,\preg_s_reg_n_143_[37] ,\preg_s_reg_n_144_[37] ,\preg_s_reg_n_145_[37] ,\preg_s_reg_n_146_[37] ,\preg_s_reg_n_147_[37] ,\preg_s_reg_n_148_[37] ,\preg_s_reg_n_149_[37] ,\preg_s_reg_n_150_[37] ,\preg_s_reg_n_151_[37] ,\preg_s_reg_n_152_[37] ,\preg_s_reg_n_153_[37] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[37]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[37]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[38] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[38]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[38]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[38]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[38]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[38]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[38]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[38]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[38]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[38]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[39] ,\preg_s_reg_n_107_[39] ,\preg_s_reg_n_108_[39] ,\preg_s_reg_n_109_[39] ,\preg_s_reg_n_110_[39] ,\preg_s_reg_n_111_[39] ,\preg_s_reg_n_112_[39] ,\preg_s_reg_n_113_[39] ,\preg_s_reg_n_114_[39] ,\preg_s_reg_n_115_[39] ,\preg_s_reg_n_116_[39] ,\preg_s_reg_n_117_[39] ,\preg_s_reg_n_118_[39] ,\preg_s_reg_n_119_[39] ,\preg_s_reg_n_120_[39] ,\preg_s_reg_n_121_[39] ,\preg_s_reg_n_122_[39] ,\preg_s_reg_n_123_[39] ,\preg_s_reg_n_124_[39] ,\preg_s_reg_n_125_[39] ,\preg_s_reg_n_126_[39] ,\preg_s_reg_n_127_[39] ,\preg_s_reg_n_128_[39] ,\preg_s_reg_n_129_[39] ,\preg_s_reg_n_130_[39] ,\preg_s_reg_n_131_[39] ,\preg_s_reg_n_132_[39] ,\preg_s_reg_n_133_[39] ,\preg_s_reg_n_134_[39] ,\preg_s_reg_n_135_[39] ,\preg_s_reg_n_136_[39] ,\preg_s_reg_n_137_[39] ,\preg_s_reg_n_138_[39] ,\preg_s_reg_n_139_[39] ,\preg_s_reg_n_140_[39] ,\preg_s_reg_n_141_[39] ,\preg_s_reg_n_142_[39] ,\preg_s_reg_n_143_[39] ,\preg_s_reg_n_144_[39] ,\preg_s_reg_n_145_[39] ,\preg_s_reg_n_146_[39] ,\preg_s_reg_n_147_[39] ,\preg_s_reg_n_148_[39] ,\preg_s_reg_n_149_[39] ,\preg_s_reg_n_150_[39] ,\preg_s_reg_n_151_[39] ,\preg_s_reg_n_152_[39] ,\preg_s_reg_n_153_[39] }),
        .PCOUT({\preg_s_reg_n_106_[38] ,\preg_s_reg_n_107_[38] ,\preg_s_reg_n_108_[38] ,\preg_s_reg_n_109_[38] ,\preg_s_reg_n_110_[38] ,\preg_s_reg_n_111_[38] ,\preg_s_reg_n_112_[38] ,\preg_s_reg_n_113_[38] ,\preg_s_reg_n_114_[38] ,\preg_s_reg_n_115_[38] ,\preg_s_reg_n_116_[38] ,\preg_s_reg_n_117_[38] ,\preg_s_reg_n_118_[38] ,\preg_s_reg_n_119_[38] ,\preg_s_reg_n_120_[38] ,\preg_s_reg_n_121_[38] ,\preg_s_reg_n_122_[38] ,\preg_s_reg_n_123_[38] ,\preg_s_reg_n_124_[38] ,\preg_s_reg_n_125_[38] ,\preg_s_reg_n_126_[38] ,\preg_s_reg_n_127_[38] ,\preg_s_reg_n_128_[38] ,\preg_s_reg_n_129_[38] ,\preg_s_reg_n_130_[38] ,\preg_s_reg_n_131_[38] ,\preg_s_reg_n_132_[38] ,\preg_s_reg_n_133_[38] ,\preg_s_reg_n_134_[38] ,\preg_s_reg_n_135_[38] ,\preg_s_reg_n_136_[38] ,\preg_s_reg_n_137_[38] ,\preg_s_reg_n_138_[38] ,\preg_s_reg_n_139_[38] ,\preg_s_reg_n_140_[38] ,\preg_s_reg_n_141_[38] ,\preg_s_reg_n_142_[38] ,\preg_s_reg_n_143_[38] ,\preg_s_reg_n_144_[38] ,\preg_s_reg_n_145_[38] ,\preg_s_reg_n_146_[38] ,\preg_s_reg_n_147_[38] ,\preg_s_reg_n_148_[38] ,\preg_s_reg_n_149_[38] ,\preg_s_reg_n_150_[38] ,\preg_s_reg_n_151_[38] ,\preg_s_reg_n_152_[38] ,\preg_s_reg_n_153_[38] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[38]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[38]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[39] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[39]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[39]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[39]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[39]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[39]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[39]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[39]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[39]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[39]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[40] ,\preg_s_reg_n_107_[40] ,\preg_s_reg_n_108_[40] ,\preg_s_reg_n_109_[40] ,\preg_s_reg_n_110_[40] ,\preg_s_reg_n_111_[40] ,\preg_s_reg_n_112_[40] ,\preg_s_reg_n_113_[40] ,\preg_s_reg_n_114_[40] ,\preg_s_reg_n_115_[40] ,\preg_s_reg_n_116_[40] ,\preg_s_reg_n_117_[40] ,\preg_s_reg_n_118_[40] ,\preg_s_reg_n_119_[40] ,\preg_s_reg_n_120_[40] ,\preg_s_reg_n_121_[40] ,\preg_s_reg_n_122_[40] ,\preg_s_reg_n_123_[40] ,\preg_s_reg_n_124_[40] ,\preg_s_reg_n_125_[40] ,\preg_s_reg_n_126_[40] ,\preg_s_reg_n_127_[40] ,\preg_s_reg_n_128_[40] ,\preg_s_reg_n_129_[40] ,\preg_s_reg_n_130_[40] ,\preg_s_reg_n_131_[40] ,\preg_s_reg_n_132_[40] ,\preg_s_reg_n_133_[40] ,\preg_s_reg_n_134_[40] ,\preg_s_reg_n_135_[40] ,\preg_s_reg_n_136_[40] ,\preg_s_reg_n_137_[40] ,\preg_s_reg_n_138_[40] ,\preg_s_reg_n_139_[40] ,\preg_s_reg_n_140_[40] ,\preg_s_reg_n_141_[40] ,\preg_s_reg_n_142_[40] ,\preg_s_reg_n_143_[40] ,\preg_s_reg_n_144_[40] ,\preg_s_reg_n_145_[40] ,\preg_s_reg_n_146_[40] ,\preg_s_reg_n_147_[40] ,\preg_s_reg_n_148_[40] ,\preg_s_reg_n_149_[40] ,\preg_s_reg_n_150_[40] ,\preg_s_reg_n_151_[40] ,\preg_s_reg_n_152_[40] ,\preg_s_reg_n_153_[40] }),
        .PCOUT({\preg_s_reg_n_106_[39] ,\preg_s_reg_n_107_[39] ,\preg_s_reg_n_108_[39] ,\preg_s_reg_n_109_[39] ,\preg_s_reg_n_110_[39] ,\preg_s_reg_n_111_[39] ,\preg_s_reg_n_112_[39] ,\preg_s_reg_n_113_[39] ,\preg_s_reg_n_114_[39] ,\preg_s_reg_n_115_[39] ,\preg_s_reg_n_116_[39] ,\preg_s_reg_n_117_[39] ,\preg_s_reg_n_118_[39] ,\preg_s_reg_n_119_[39] ,\preg_s_reg_n_120_[39] ,\preg_s_reg_n_121_[39] ,\preg_s_reg_n_122_[39] ,\preg_s_reg_n_123_[39] ,\preg_s_reg_n_124_[39] ,\preg_s_reg_n_125_[39] ,\preg_s_reg_n_126_[39] ,\preg_s_reg_n_127_[39] ,\preg_s_reg_n_128_[39] ,\preg_s_reg_n_129_[39] ,\preg_s_reg_n_130_[39] ,\preg_s_reg_n_131_[39] ,\preg_s_reg_n_132_[39] ,\preg_s_reg_n_133_[39] ,\preg_s_reg_n_134_[39] ,\preg_s_reg_n_135_[39] ,\preg_s_reg_n_136_[39] ,\preg_s_reg_n_137_[39] ,\preg_s_reg_n_138_[39] ,\preg_s_reg_n_139_[39] ,\preg_s_reg_n_140_[39] ,\preg_s_reg_n_141_[39] ,\preg_s_reg_n_142_[39] ,\preg_s_reg_n_143_[39] ,\preg_s_reg_n_144_[39] ,\preg_s_reg_n_145_[39] ,\preg_s_reg_n_146_[39] ,\preg_s_reg_n_147_[39] ,\preg_s_reg_n_148_[39] ,\preg_s_reg_n_149_[39] ,\preg_s_reg_n_150_[39] ,\preg_s_reg_n_151_[39] ,\preg_s_reg_n_152_[39] ,\preg_s_reg_n_153_[39] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[39]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[39]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[3] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[3]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[4] ,\preg_s_reg_n_7_[4] ,\preg_s_reg_n_8_[4] ,\preg_s_reg_n_9_[4] ,\preg_s_reg_n_10_[4] ,\preg_s_reg_n_11_[4] ,\preg_s_reg_n_12_[4] ,\preg_s_reg_n_13_[4] ,\preg_s_reg_n_14_[4] ,\preg_s_reg_n_15_[4] ,\preg_s_reg_n_16_[4] ,\preg_s_reg_n_17_[4] ,\preg_s_reg_n_18_[4] ,\preg_s_reg_n_19_[4] ,\preg_s_reg_n_20_[4] ,\preg_s_reg_n_21_[4] ,\preg_s_reg_n_22_[4] ,\preg_s_reg_n_23_[4] }),
        .BCOUT({\preg_s_reg_n_6_[3] ,\preg_s_reg_n_7_[3] ,\preg_s_reg_n_8_[3] ,\preg_s_reg_n_9_[3] ,\preg_s_reg_n_10_[3] ,\preg_s_reg_n_11_[3] ,\preg_s_reg_n_12_[3] ,\preg_s_reg_n_13_[3] ,\preg_s_reg_n_14_[3] ,\preg_s_reg_n_15_[3] ,\preg_s_reg_n_16_[3] ,\preg_s_reg_n_17_[3] ,\preg_s_reg_n_18_[3] ,\preg_s_reg_n_19_[3] ,\preg_s_reg_n_20_[3] ,\preg_s_reg_n_21_[3] ,\preg_s_reg_n_22_[3] ,\preg_s_reg_n_23_[3] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[3]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[3]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[3]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[3]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[3]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[3]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[3]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[4] ,\preg_s_reg_n_107_[4] ,\preg_s_reg_n_108_[4] ,\preg_s_reg_n_109_[4] ,\preg_s_reg_n_110_[4] ,\preg_s_reg_n_111_[4] ,\preg_s_reg_n_112_[4] ,\preg_s_reg_n_113_[4] ,\preg_s_reg_n_114_[4] ,\preg_s_reg_n_115_[4] ,\preg_s_reg_n_116_[4] ,\preg_s_reg_n_117_[4] ,\preg_s_reg_n_118_[4] ,\preg_s_reg_n_119_[4] ,\preg_s_reg_n_120_[4] ,\preg_s_reg_n_121_[4] ,\preg_s_reg_n_122_[4] ,\preg_s_reg_n_123_[4] ,\preg_s_reg_n_124_[4] ,\preg_s_reg_n_125_[4] ,\preg_s_reg_n_126_[4] ,\preg_s_reg_n_127_[4] ,\preg_s_reg_n_128_[4] ,\preg_s_reg_n_129_[4] ,\preg_s_reg_n_130_[4] ,\preg_s_reg_n_131_[4] ,\preg_s_reg_n_132_[4] ,\preg_s_reg_n_133_[4] ,\preg_s_reg_n_134_[4] ,\preg_s_reg_n_135_[4] ,\preg_s_reg_n_136_[4] ,\preg_s_reg_n_137_[4] ,\preg_s_reg_n_138_[4] ,\preg_s_reg_n_139_[4] ,\preg_s_reg_n_140_[4] ,\preg_s_reg_n_141_[4] ,\preg_s_reg_n_142_[4] ,\preg_s_reg_n_143_[4] ,\preg_s_reg_n_144_[4] ,\preg_s_reg_n_145_[4] ,\preg_s_reg_n_146_[4] ,\preg_s_reg_n_147_[4] ,\preg_s_reg_n_148_[4] ,\preg_s_reg_n_149_[4] ,\preg_s_reg_n_150_[4] ,\preg_s_reg_n_151_[4] ,\preg_s_reg_n_152_[4] ,\preg_s_reg_n_153_[4] }),
        .PCOUT({\preg_s_reg_n_106_[3] ,\preg_s_reg_n_107_[3] ,\preg_s_reg_n_108_[3] ,\preg_s_reg_n_109_[3] ,\preg_s_reg_n_110_[3] ,\preg_s_reg_n_111_[3] ,\preg_s_reg_n_112_[3] ,\preg_s_reg_n_113_[3] ,\preg_s_reg_n_114_[3] ,\preg_s_reg_n_115_[3] ,\preg_s_reg_n_116_[3] ,\preg_s_reg_n_117_[3] ,\preg_s_reg_n_118_[3] ,\preg_s_reg_n_119_[3] ,\preg_s_reg_n_120_[3] ,\preg_s_reg_n_121_[3] ,\preg_s_reg_n_122_[3] ,\preg_s_reg_n_123_[3] ,\preg_s_reg_n_124_[3] ,\preg_s_reg_n_125_[3] ,\preg_s_reg_n_126_[3] ,\preg_s_reg_n_127_[3] ,\preg_s_reg_n_128_[3] ,\preg_s_reg_n_129_[3] ,\preg_s_reg_n_130_[3] ,\preg_s_reg_n_131_[3] ,\preg_s_reg_n_132_[3] ,\preg_s_reg_n_133_[3] ,\preg_s_reg_n_134_[3] ,\preg_s_reg_n_135_[3] ,\preg_s_reg_n_136_[3] ,\preg_s_reg_n_137_[3] ,\preg_s_reg_n_138_[3] ,\preg_s_reg_n_139_[3] ,\preg_s_reg_n_140_[3] ,\preg_s_reg_n_141_[3] ,\preg_s_reg_n_142_[3] ,\preg_s_reg_n_143_[3] ,\preg_s_reg_n_144_[3] ,\preg_s_reg_n_145_[3] ,\preg_s_reg_n_146_[3] ,\preg_s_reg_n_147_[3] ,\preg_s_reg_n_148_[3] ,\preg_s_reg_n_149_[3] ,\preg_s_reg_n_150_[3] ,\preg_s_reg_n_151_[3] ,\preg_s_reg_n_152_[3] ,\preg_s_reg_n_153_[3] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[3]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[3]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[40] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[40]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[40]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[40]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[40]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[40]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[40]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[40]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[40]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[40]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[41] ,\preg_s_reg_n_107_[41] ,\preg_s_reg_n_108_[41] ,\preg_s_reg_n_109_[41] ,\preg_s_reg_n_110_[41] ,\preg_s_reg_n_111_[41] ,\preg_s_reg_n_112_[41] ,\preg_s_reg_n_113_[41] ,\preg_s_reg_n_114_[41] ,\preg_s_reg_n_115_[41] ,\preg_s_reg_n_116_[41] ,\preg_s_reg_n_117_[41] ,\preg_s_reg_n_118_[41] ,\preg_s_reg_n_119_[41] ,\preg_s_reg_n_120_[41] ,\preg_s_reg_n_121_[41] ,\preg_s_reg_n_122_[41] ,\preg_s_reg_n_123_[41] ,\preg_s_reg_n_124_[41] ,\preg_s_reg_n_125_[41] ,\preg_s_reg_n_126_[41] ,\preg_s_reg_n_127_[41] ,\preg_s_reg_n_128_[41] ,\preg_s_reg_n_129_[41] ,\preg_s_reg_n_130_[41] ,\preg_s_reg_n_131_[41] ,\preg_s_reg_n_132_[41] ,\preg_s_reg_n_133_[41] ,\preg_s_reg_n_134_[41] ,\preg_s_reg_n_135_[41] ,\preg_s_reg_n_136_[41] ,\preg_s_reg_n_137_[41] ,\preg_s_reg_n_138_[41] ,\preg_s_reg_n_139_[41] ,\preg_s_reg_n_140_[41] ,\preg_s_reg_n_141_[41] ,\preg_s_reg_n_142_[41] ,\preg_s_reg_n_143_[41] ,\preg_s_reg_n_144_[41] ,\preg_s_reg_n_145_[41] ,\preg_s_reg_n_146_[41] ,\preg_s_reg_n_147_[41] ,\preg_s_reg_n_148_[41] ,\preg_s_reg_n_149_[41] ,\preg_s_reg_n_150_[41] ,\preg_s_reg_n_151_[41] ,\preg_s_reg_n_152_[41] ,\preg_s_reg_n_153_[41] }),
        .PCOUT({\preg_s_reg_n_106_[40] ,\preg_s_reg_n_107_[40] ,\preg_s_reg_n_108_[40] ,\preg_s_reg_n_109_[40] ,\preg_s_reg_n_110_[40] ,\preg_s_reg_n_111_[40] ,\preg_s_reg_n_112_[40] ,\preg_s_reg_n_113_[40] ,\preg_s_reg_n_114_[40] ,\preg_s_reg_n_115_[40] ,\preg_s_reg_n_116_[40] ,\preg_s_reg_n_117_[40] ,\preg_s_reg_n_118_[40] ,\preg_s_reg_n_119_[40] ,\preg_s_reg_n_120_[40] ,\preg_s_reg_n_121_[40] ,\preg_s_reg_n_122_[40] ,\preg_s_reg_n_123_[40] ,\preg_s_reg_n_124_[40] ,\preg_s_reg_n_125_[40] ,\preg_s_reg_n_126_[40] ,\preg_s_reg_n_127_[40] ,\preg_s_reg_n_128_[40] ,\preg_s_reg_n_129_[40] ,\preg_s_reg_n_130_[40] ,\preg_s_reg_n_131_[40] ,\preg_s_reg_n_132_[40] ,\preg_s_reg_n_133_[40] ,\preg_s_reg_n_134_[40] ,\preg_s_reg_n_135_[40] ,\preg_s_reg_n_136_[40] ,\preg_s_reg_n_137_[40] ,\preg_s_reg_n_138_[40] ,\preg_s_reg_n_139_[40] ,\preg_s_reg_n_140_[40] ,\preg_s_reg_n_141_[40] ,\preg_s_reg_n_142_[40] ,\preg_s_reg_n_143_[40] ,\preg_s_reg_n_144_[40] ,\preg_s_reg_n_145_[40] ,\preg_s_reg_n_146_[40] ,\preg_s_reg_n_147_[40] ,\preg_s_reg_n_148_[40] ,\preg_s_reg_n_149_[40] ,\preg_s_reg_n_150_[40] ,\preg_s_reg_n_151_[40] ,\preg_s_reg_n_152_[40] ,\preg_s_reg_n_153_[40] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[40]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[40]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[41] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[41]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[41]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[41]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[41]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[41]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[41]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[41]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[41]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[41]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[42] ,\preg_s_reg_n_107_[42] ,\preg_s_reg_n_108_[42] ,\preg_s_reg_n_109_[42] ,\preg_s_reg_n_110_[42] ,\preg_s_reg_n_111_[42] ,\preg_s_reg_n_112_[42] ,\preg_s_reg_n_113_[42] ,\preg_s_reg_n_114_[42] ,\preg_s_reg_n_115_[42] ,\preg_s_reg_n_116_[42] ,\preg_s_reg_n_117_[42] ,\preg_s_reg_n_118_[42] ,\preg_s_reg_n_119_[42] ,\preg_s_reg_n_120_[42] ,\preg_s_reg_n_121_[42] ,\preg_s_reg_n_122_[42] ,\preg_s_reg_n_123_[42] ,\preg_s_reg_n_124_[42] ,\preg_s_reg_n_125_[42] ,\preg_s_reg_n_126_[42] ,\preg_s_reg_n_127_[42] ,\preg_s_reg_n_128_[42] ,\preg_s_reg_n_129_[42] ,\preg_s_reg_n_130_[42] ,\preg_s_reg_n_131_[42] ,\preg_s_reg_n_132_[42] ,\preg_s_reg_n_133_[42] ,\preg_s_reg_n_134_[42] ,\preg_s_reg_n_135_[42] ,\preg_s_reg_n_136_[42] ,\preg_s_reg_n_137_[42] ,\preg_s_reg_n_138_[42] ,\preg_s_reg_n_139_[42] ,\preg_s_reg_n_140_[42] ,\preg_s_reg_n_141_[42] ,\preg_s_reg_n_142_[42] ,\preg_s_reg_n_143_[42] ,\preg_s_reg_n_144_[42] ,\preg_s_reg_n_145_[42] ,\preg_s_reg_n_146_[42] ,\preg_s_reg_n_147_[42] ,\preg_s_reg_n_148_[42] ,\preg_s_reg_n_149_[42] ,\preg_s_reg_n_150_[42] ,\preg_s_reg_n_151_[42] ,\preg_s_reg_n_152_[42] ,\preg_s_reg_n_153_[42] }),
        .PCOUT({\preg_s_reg_n_106_[41] ,\preg_s_reg_n_107_[41] ,\preg_s_reg_n_108_[41] ,\preg_s_reg_n_109_[41] ,\preg_s_reg_n_110_[41] ,\preg_s_reg_n_111_[41] ,\preg_s_reg_n_112_[41] ,\preg_s_reg_n_113_[41] ,\preg_s_reg_n_114_[41] ,\preg_s_reg_n_115_[41] ,\preg_s_reg_n_116_[41] ,\preg_s_reg_n_117_[41] ,\preg_s_reg_n_118_[41] ,\preg_s_reg_n_119_[41] ,\preg_s_reg_n_120_[41] ,\preg_s_reg_n_121_[41] ,\preg_s_reg_n_122_[41] ,\preg_s_reg_n_123_[41] ,\preg_s_reg_n_124_[41] ,\preg_s_reg_n_125_[41] ,\preg_s_reg_n_126_[41] ,\preg_s_reg_n_127_[41] ,\preg_s_reg_n_128_[41] ,\preg_s_reg_n_129_[41] ,\preg_s_reg_n_130_[41] ,\preg_s_reg_n_131_[41] ,\preg_s_reg_n_132_[41] ,\preg_s_reg_n_133_[41] ,\preg_s_reg_n_134_[41] ,\preg_s_reg_n_135_[41] ,\preg_s_reg_n_136_[41] ,\preg_s_reg_n_137_[41] ,\preg_s_reg_n_138_[41] ,\preg_s_reg_n_139_[41] ,\preg_s_reg_n_140_[41] ,\preg_s_reg_n_141_[41] ,\preg_s_reg_n_142_[41] ,\preg_s_reg_n_143_[41] ,\preg_s_reg_n_144_[41] ,\preg_s_reg_n_145_[41] ,\preg_s_reg_n_146_[41] ,\preg_s_reg_n_147_[41] ,\preg_s_reg_n_148_[41] ,\preg_s_reg_n_149_[41] ,\preg_s_reg_n_150_[41] ,\preg_s_reg_n_151_[41] ,\preg_s_reg_n_152_[41] ,\preg_s_reg_n_153_[41] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[41]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[41]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[42] 
       (.A({DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[42]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[42]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[42]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[42]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[42]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[42]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[42]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[42]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[42]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[43] ,\preg_s_reg_n_107_[43] ,\preg_s_reg_n_108_[43] ,\preg_s_reg_n_109_[43] ,\preg_s_reg_n_110_[43] ,\preg_s_reg_n_111_[43] ,\preg_s_reg_n_112_[43] ,\preg_s_reg_n_113_[43] ,\preg_s_reg_n_114_[43] ,\preg_s_reg_n_115_[43] ,\preg_s_reg_n_116_[43] ,\preg_s_reg_n_117_[43] ,\preg_s_reg_n_118_[43] ,\preg_s_reg_n_119_[43] ,\preg_s_reg_n_120_[43] ,\preg_s_reg_n_121_[43] ,\preg_s_reg_n_122_[43] ,\preg_s_reg_n_123_[43] ,\preg_s_reg_n_124_[43] ,\preg_s_reg_n_125_[43] ,\preg_s_reg_n_126_[43] ,\preg_s_reg_n_127_[43] ,\preg_s_reg_n_128_[43] ,\preg_s_reg_n_129_[43] ,\preg_s_reg_n_130_[43] ,\preg_s_reg_n_131_[43] ,\preg_s_reg_n_132_[43] ,\preg_s_reg_n_133_[43] ,\preg_s_reg_n_134_[43] ,\preg_s_reg_n_135_[43] ,\preg_s_reg_n_136_[43] ,\preg_s_reg_n_137_[43] ,\preg_s_reg_n_138_[43] ,\preg_s_reg_n_139_[43] ,\preg_s_reg_n_140_[43] ,\preg_s_reg_n_141_[43] ,\preg_s_reg_n_142_[43] ,\preg_s_reg_n_143_[43] ,\preg_s_reg_n_144_[43] ,\preg_s_reg_n_145_[43] ,\preg_s_reg_n_146_[43] ,\preg_s_reg_n_147_[43] ,\preg_s_reg_n_148_[43] ,\preg_s_reg_n_149_[43] ,\preg_s_reg_n_150_[43] ,\preg_s_reg_n_151_[43] ,\preg_s_reg_n_152_[43] ,\preg_s_reg_n_153_[43] }),
        .PCOUT({\preg_s_reg_n_106_[42] ,\preg_s_reg_n_107_[42] ,\preg_s_reg_n_108_[42] ,\preg_s_reg_n_109_[42] ,\preg_s_reg_n_110_[42] ,\preg_s_reg_n_111_[42] ,\preg_s_reg_n_112_[42] ,\preg_s_reg_n_113_[42] ,\preg_s_reg_n_114_[42] ,\preg_s_reg_n_115_[42] ,\preg_s_reg_n_116_[42] ,\preg_s_reg_n_117_[42] ,\preg_s_reg_n_118_[42] ,\preg_s_reg_n_119_[42] ,\preg_s_reg_n_120_[42] ,\preg_s_reg_n_121_[42] ,\preg_s_reg_n_122_[42] ,\preg_s_reg_n_123_[42] ,\preg_s_reg_n_124_[42] ,\preg_s_reg_n_125_[42] ,\preg_s_reg_n_126_[42] ,\preg_s_reg_n_127_[42] ,\preg_s_reg_n_128_[42] ,\preg_s_reg_n_129_[42] ,\preg_s_reg_n_130_[42] ,\preg_s_reg_n_131_[42] ,\preg_s_reg_n_132_[42] ,\preg_s_reg_n_133_[42] ,\preg_s_reg_n_134_[42] ,\preg_s_reg_n_135_[42] ,\preg_s_reg_n_136_[42] ,\preg_s_reg_n_137_[42] ,\preg_s_reg_n_138_[42] ,\preg_s_reg_n_139_[42] ,\preg_s_reg_n_140_[42] ,\preg_s_reg_n_141_[42] ,\preg_s_reg_n_142_[42] ,\preg_s_reg_n_143_[42] ,\preg_s_reg_n_144_[42] ,\preg_s_reg_n_145_[42] ,\preg_s_reg_n_146_[42] ,\preg_s_reg_n_147_[42] ,\preg_s_reg_n_148_[42] ,\preg_s_reg_n_149_[42] ,\preg_s_reg_n_150_[42] ,\preg_s_reg_n_151_[42] ,\preg_s_reg_n_152_[42] ,\preg_s_reg_n_153_[42] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[42]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[42]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[43] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0,DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST_0[0],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[43]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[43]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[43]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[43]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[43]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[43]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[43]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[43]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[43]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[44] ,\preg_s_reg_n_107_[44] ,\preg_s_reg_n_108_[44] ,\preg_s_reg_n_109_[44] ,\preg_s_reg_n_110_[44] ,\preg_s_reg_n_111_[44] ,\preg_s_reg_n_112_[44] ,\preg_s_reg_n_113_[44] ,\preg_s_reg_n_114_[44] ,\preg_s_reg_n_115_[44] ,\preg_s_reg_n_116_[44] ,\preg_s_reg_n_117_[44] ,\preg_s_reg_n_118_[44] ,\preg_s_reg_n_119_[44] ,\preg_s_reg_n_120_[44] ,\preg_s_reg_n_121_[44] ,\preg_s_reg_n_122_[44] ,\preg_s_reg_n_123_[44] ,\preg_s_reg_n_124_[44] ,\preg_s_reg_n_125_[44] ,\preg_s_reg_n_126_[44] ,\preg_s_reg_n_127_[44] ,\preg_s_reg_n_128_[44] ,\preg_s_reg_n_129_[44] ,\preg_s_reg_n_130_[44] ,\preg_s_reg_n_131_[44] ,\preg_s_reg_n_132_[44] ,\preg_s_reg_n_133_[44] ,\preg_s_reg_n_134_[44] ,\preg_s_reg_n_135_[44] ,\preg_s_reg_n_136_[44] ,\preg_s_reg_n_137_[44] ,\preg_s_reg_n_138_[44] ,\preg_s_reg_n_139_[44] ,\preg_s_reg_n_140_[44] ,\preg_s_reg_n_141_[44] ,\preg_s_reg_n_142_[44] ,\preg_s_reg_n_143_[44] ,\preg_s_reg_n_144_[44] ,\preg_s_reg_n_145_[44] ,\preg_s_reg_n_146_[44] ,\preg_s_reg_n_147_[44] ,\preg_s_reg_n_148_[44] ,\preg_s_reg_n_149_[44] ,\preg_s_reg_n_150_[44] ,\preg_s_reg_n_151_[44] ,\preg_s_reg_n_152_[44] ,\preg_s_reg_n_153_[44] }),
        .PCOUT({\preg_s_reg_n_106_[43] ,\preg_s_reg_n_107_[43] ,\preg_s_reg_n_108_[43] ,\preg_s_reg_n_109_[43] ,\preg_s_reg_n_110_[43] ,\preg_s_reg_n_111_[43] ,\preg_s_reg_n_112_[43] ,\preg_s_reg_n_113_[43] ,\preg_s_reg_n_114_[43] ,\preg_s_reg_n_115_[43] ,\preg_s_reg_n_116_[43] ,\preg_s_reg_n_117_[43] ,\preg_s_reg_n_118_[43] ,\preg_s_reg_n_119_[43] ,\preg_s_reg_n_120_[43] ,\preg_s_reg_n_121_[43] ,\preg_s_reg_n_122_[43] ,\preg_s_reg_n_123_[43] ,\preg_s_reg_n_124_[43] ,\preg_s_reg_n_125_[43] ,\preg_s_reg_n_126_[43] ,\preg_s_reg_n_127_[43] ,\preg_s_reg_n_128_[43] ,\preg_s_reg_n_129_[43] ,\preg_s_reg_n_130_[43] ,\preg_s_reg_n_131_[43] ,\preg_s_reg_n_132_[43] ,\preg_s_reg_n_133_[43] ,\preg_s_reg_n_134_[43] ,\preg_s_reg_n_135_[43] ,\preg_s_reg_n_136_[43] ,\preg_s_reg_n_137_[43] ,\preg_s_reg_n_138_[43] ,\preg_s_reg_n_139_[43] ,\preg_s_reg_n_140_[43] ,\preg_s_reg_n_141_[43] ,\preg_s_reg_n_142_[43] ,\preg_s_reg_n_143_[43] ,\preg_s_reg_n_144_[43] ,\preg_s_reg_n_145_[43] ,\preg_s_reg_n_146_[43] ,\preg_s_reg_n_147_[43] ,\preg_s_reg_n_148_[43] ,\preg_s_reg_n_149_[43] ,\preg_s_reg_n_150_[43] ,\preg_s_reg_n_151_[43] ,\preg_s_reg_n_152_[43] ,\preg_s_reg_n_153_[43] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[43]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[43]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[44] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[44]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[44]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[44]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[44]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[44]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[44]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[44]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[44]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[44]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[45] ,\preg_s_reg_n_107_[45] ,\preg_s_reg_n_108_[45] ,\preg_s_reg_n_109_[45] ,\preg_s_reg_n_110_[45] ,\preg_s_reg_n_111_[45] ,\preg_s_reg_n_112_[45] ,\preg_s_reg_n_113_[45] ,\preg_s_reg_n_114_[45] ,\preg_s_reg_n_115_[45] ,\preg_s_reg_n_116_[45] ,\preg_s_reg_n_117_[45] ,\preg_s_reg_n_118_[45] ,\preg_s_reg_n_119_[45] ,\preg_s_reg_n_120_[45] ,\preg_s_reg_n_121_[45] ,\preg_s_reg_n_122_[45] ,\preg_s_reg_n_123_[45] ,\preg_s_reg_n_124_[45] ,\preg_s_reg_n_125_[45] ,\preg_s_reg_n_126_[45] ,\preg_s_reg_n_127_[45] ,\preg_s_reg_n_128_[45] ,\preg_s_reg_n_129_[45] ,\preg_s_reg_n_130_[45] ,\preg_s_reg_n_131_[45] ,\preg_s_reg_n_132_[45] ,\preg_s_reg_n_133_[45] ,\preg_s_reg_n_134_[45] ,\preg_s_reg_n_135_[45] ,\preg_s_reg_n_136_[45] ,\preg_s_reg_n_137_[45] ,\preg_s_reg_n_138_[45] ,\preg_s_reg_n_139_[45] ,\preg_s_reg_n_140_[45] ,\preg_s_reg_n_141_[45] ,\preg_s_reg_n_142_[45] ,\preg_s_reg_n_143_[45] ,\preg_s_reg_n_144_[45] ,\preg_s_reg_n_145_[45] ,\preg_s_reg_n_146_[45] ,\preg_s_reg_n_147_[45] ,\preg_s_reg_n_148_[45] ,\preg_s_reg_n_149_[45] ,\preg_s_reg_n_150_[45] ,\preg_s_reg_n_151_[45] ,\preg_s_reg_n_152_[45] ,\preg_s_reg_n_153_[45] }),
        .PCOUT({\preg_s_reg_n_106_[44] ,\preg_s_reg_n_107_[44] ,\preg_s_reg_n_108_[44] ,\preg_s_reg_n_109_[44] ,\preg_s_reg_n_110_[44] ,\preg_s_reg_n_111_[44] ,\preg_s_reg_n_112_[44] ,\preg_s_reg_n_113_[44] ,\preg_s_reg_n_114_[44] ,\preg_s_reg_n_115_[44] ,\preg_s_reg_n_116_[44] ,\preg_s_reg_n_117_[44] ,\preg_s_reg_n_118_[44] ,\preg_s_reg_n_119_[44] ,\preg_s_reg_n_120_[44] ,\preg_s_reg_n_121_[44] ,\preg_s_reg_n_122_[44] ,\preg_s_reg_n_123_[44] ,\preg_s_reg_n_124_[44] ,\preg_s_reg_n_125_[44] ,\preg_s_reg_n_126_[44] ,\preg_s_reg_n_127_[44] ,\preg_s_reg_n_128_[44] ,\preg_s_reg_n_129_[44] ,\preg_s_reg_n_130_[44] ,\preg_s_reg_n_131_[44] ,\preg_s_reg_n_132_[44] ,\preg_s_reg_n_133_[44] ,\preg_s_reg_n_134_[44] ,\preg_s_reg_n_135_[44] ,\preg_s_reg_n_136_[44] ,\preg_s_reg_n_137_[44] ,\preg_s_reg_n_138_[44] ,\preg_s_reg_n_139_[44] ,\preg_s_reg_n_140_[44] ,\preg_s_reg_n_141_[44] ,\preg_s_reg_n_142_[44] ,\preg_s_reg_n_143_[44] ,\preg_s_reg_n_144_[44] ,\preg_s_reg_n_145_[44] ,\preg_s_reg_n_146_[44] ,\preg_s_reg_n_147_[44] ,\preg_s_reg_n_148_[44] ,\preg_s_reg_n_149_[44] ,\preg_s_reg_n_150_[44] ,\preg_s_reg_n_151_[44] ,\preg_s_reg_n_152_[44] ,\preg_s_reg_n_153_[44] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[44]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[44]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[45] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[45]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[45]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[45]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[45]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[45]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[45]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[45]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[45]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[45]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[46] ,\preg_s_reg_n_107_[46] ,\preg_s_reg_n_108_[46] ,\preg_s_reg_n_109_[46] ,\preg_s_reg_n_110_[46] ,\preg_s_reg_n_111_[46] ,\preg_s_reg_n_112_[46] ,\preg_s_reg_n_113_[46] ,\preg_s_reg_n_114_[46] ,\preg_s_reg_n_115_[46] ,\preg_s_reg_n_116_[46] ,\preg_s_reg_n_117_[46] ,\preg_s_reg_n_118_[46] ,\preg_s_reg_n_119_[46] ,\preg_s_reg_n_120_[46] ,\preg_s_reg_n_121_[46] ,\preg_s_reg_n_122_[46] ,\preg_s_reg_n_123_[46] ,\preg_s_reg_n_124_[46] ,\preg_s_reg_n_125_[46] ,\preg_s_reg_n_126_[46] ,\preg_s_reg_n_127_[46] ,\preg_s_reg_n_128_[46] ,\preg_s_reg_n_129_[46] ,\preg_s_reg_n_130_[46] ,\preg_s_reg_n_131_[46] ,\preg_s_reg_n_132_[46] ,\preg_s_reg_n_133_[46] ,\preg_s_reg_n_134_[46] ,\preg_s_reg_n_135_[46] ,\preg_s_reg_n_136_[46] ,\preg_s_reg_n_137_[46] ,\preg_s_reg_n_138_[46] ,\preg_s_reg_n_139_[46] ,\preg_s_reg_n_140_[46] ,\preg_s_reg_n_141_[46] ,\preg_s_reg_n_142_[46] ,\preg_s_reg_n_143_[46] ,\preg_s_reg_n_144_[46] ,\preg_s_reg_n_145_[46] ,\preg_s_reg_n_146_[46] ,\preg_s_reg_n_147_[46] ,\preg_s_reg_n_148_[46] ,\preg_s_reg_n_149_[46] ,\preg_s_reg_n_150_[46] ,\preg_s_reg_n_151_[46] ,\preg_s_reg_n_152_[46] ,\preg_s_reg_n_153_[46] }),
        .PCOUT({\preg_s_reg_n_106_[45] ,\preg_s_reg_n_107_[45] ,\preg_s_reg_n_108_[45] ,\preg_s_reg_n_109_[45] ,\preg_s_reg_n_110_[45] ,\preg_s_reg_n_111_[45] ,\preg_s_reg_n_112_[45] ,\preg_s_reg_n_113_[45] ,\preg_s_reg_n_114_[45] ,\preg_s_reg_n_115_[45] ,\preg_s_reg_n_116_[45] ,\preg_s_reg_n_117_[45] ,\preg_s_reg_n_118_[45] ,\preg_s_reg_n_119_[45] ,\preg_s_reg_n_120_[45] ,\preg_s_reg_n_121_[45] ,\preg_s_reg_n_122_[45] ,\preg_s_reg_n_123_[45] ,\preg_s_reg_n_124_[45] ,\preg_s_reg_n_125_[45] ,\preg_s_reg_n_126_[45] ,\preg_s_reg_n_127_[45] ,\preg_s_reg_n_128_[45] ,\preg_s_reg_n_129_[45] ,\preg_s_reg_n_130_[45] ,\preg_s_reg_n_131_[45] ,\preg_s_reg_n_132_[45] ,\preg_s_reg_n_133_[45] ,\preg_s_reg_n_134_[45] ,\preg_s_reg_n_135_[45] ,\preg_s_reg_n_136_[45] ,\preg_s_reg_n_137_[45] ,\preg_s_reg_n_138_[45] ,\preg_s_reg_n_139_[45] ,\preg_s_reg_n_140_[45] ,\preg_s_reg_n_141_[45] ,\preg_s_reg_n_142_[45] ,\preg_s_reg_n_143_[45] ,\preg_s_reg_n_144_[45] ,\preg_s_reg_n_145_[45] ,\preg_s_reg_n_146_[45] ,\preg_s_reg_n_147_[45] ,\preg_s_reg_n_148_[45] ,\preg_s_reg_n_149_[45] ,\preg_s_reg_n_150_[45] ,\preg_s_reg_n_151_[45] ,\preg_s_reg_n_152_[45] ,\preg_s_reg_n_153_[45] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[45]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[45]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[46] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[46]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[46]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[46]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[46]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[46]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[46]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[46]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[46]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[46]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[47] ,\preg_s_reg_n_107_[47] ,\preg_s_reg_n_108_[47] ,\preg_s_reg_n_109_[47] ,\preg_s_reg_n_110_[47] ,\preg_s_reg_n_111_[47] ,\preg_s_reg_n_112_[47] ,\preg_s_reg_n_113_[47] ,\preg_s_reg_n_114_[47] ,\preg_s_reg_n_115_[47] ,\preg_s_reg_n_116_[47] ,\preg_s_reg_n_117_[47] ,\preg_s_reg_n_118_[47] ,\preg_s_reg_n_119_[47] ,\preg_s_reg_n_120_[47] ,\preg_s_reg_n_121_[47] ,\preg_s_reg_n_122_[47] ,\preg_s_reg_n_123_[47] ,\preg_s_reg_n_124_[47] ,\preg_s_reg_n_125_[47] ,\preg_s_reg_n_126_[47] ,\preg_s_reg_n_127_[47] ,\preg_s_reg_n_128_[47] ,\preg_s_reg_n_129_[47] ,\preg_s_reg_n_130_[47] ,\preg_s_reg_n_131_[47] ,\preg_s_reg_n_132_[47] ,\preg_s_reg_n_133_[47] ,\preg_s_reg_n_134_[47] ,\preg_s_reg_n_135_[47] ,\preg_s_reg_n_136_[47] ,\preg_s_reg_n_137_[47] ,\preg_s_reg_n_138_[47] ,\preg_s_reg_n_139_[47] ,\preg_s_reg_n_140_[47] ,\preg_s_reg_n_141_[47] ,\preg_s_reg_n_142_[47] ,\preg_s_reg_n_143_[47] ,\preg_s_reg_n_144_[47] ,\preg_s_reg_n_145_[47] ,\preg_s_reg_n_146_[47] ,\preg_s_reg_n_147_[47] ,\preg_s_reg_n_148_[47] ,\preg_s_reg_n_149_[47] ,\preg_s_reg_n_150_[47] ,\preg_s_reg_n_151_[47] ,\preg_s_reg_n_152_[47] ,\preg_s_reg_n_153_[47] }),
        .PCOUT({\preg_s_reg_n_106_[46] ,\preg_s_reg_n_107_[46] ,\preg_s_reg_n_108_[46] ,\preg_s_reg_n_109_[46] ,\preg_s_reg_n_110_[46] ,\preg_s_reg_n_111_[46] ,\preg_s_reg_n_112_[46] ,\preg_s_reg_n_113_[46] ,\preg_s_reg_n_114_[46] ,\preg_s_reg_n_115_[46] ,\preg_s_reg_n_116_[46] ,\preg_s_reg_n_117_[46] ,\preg_s_reg_n_118_[46] ,\preg_s_reg_n_119_[46] ,\preg_s_reg_n_120_[46] ,\preg_s_reg_n_121_[46] ,\preg_s_reg_n_122_[46] ,\preg_s_reg_n_123_[46] ,\preg_s_reg_n_124_[46] ,\preg_s_reg_n_125_[46] ,\preg_s_reg_n_126_[46] ,\preg_s_reg_n_127_[46] ,\preg_s_reg_n_128_[46] ,\preg_s_reg_n_129_[46] ,\preg_s_reg_n_130_[46] ,\preg_s_reg_n_131_[46] ,\preg_s_reg_n_132_[46] ,\preg_s_reg_n_133_[46] ,\preg_s_reg_n_134_[46] ,\preg_s_reg_n_135_[46] ,\preg_s_reg_n_136_[46] ,\preg_s_reg_n_137_[46] ,\preg_s_reg_n_138_[46] ,\preg_s_reg_n_139_[46] ,\preg_s_reg_n_140_[46] ,\preg_s_reg_n_141_[46] ,\preg_s_reg_n_142_[46] ,\preg_s_reg_n_143_[46] ,\preg_s_reg_n_144_[46] ,\preg_s_reg_n_145_[46] ,\preg_s_reg_n_146_[46] ,\preg_s_reg_n_147_[46] ,\preg_s_reg_n_148_[46] ,\preg_s_reg_n_149_[46] ,\preg_s_reg_n_150_[46] ,\preg_s_reg_n_151_[46] ,\preg_s_reg_n_152_[46] ,\preg_s_reg_n_153_[46] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[46]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[46]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[47] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[47]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[47]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[47]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[47]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[47]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[47]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[47]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[47]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[47]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[48] ,\preg_s_reg_n_107_[48] ,\preg_s_reg_n_108_[48] ,\preg_s_reg_n_109_[48] ,\preg_s_reg_n_110_[48] ,\preg_s_reg_n_111_[48] ,\preg_s_reg_n_112_[48] ,\preg_s_reg_n_113_[48] ,\preg_s_reg_n_114_[48] ,\preg_s_reg_n_115_[48] ,\preg_s_reg_n_116_[48] ,\preg_s_reg_n_117_[48] ,\preg_s_reg_n_118_[48] ,\preg_s_reg_n_119_[48] ,\preg_s_reg_n_120_[48] ,\preg_s_reg_n_121_[48] ,\preg_s_reg_n_122_[48] ,\preg_s_reg_n_123_[48] ,\preg_s_reg_n_124_[48] ,\preg_s_reg_n_125_[48] ,\preg_s_reg_n_126_[48] ,\preg_s_reg_n_127_[48] ,\preg_s_reg_n_128_[48] ,\preg_s_reg_n_129_[48] ,\preg_s_reg_n_130_[48] ,\preg_s_reg_n_131_[48] ,\preg_s_reg_n_132_[48] ,\preg_s_reg_n_133_[48] ,\preg_s_reg_n_134_[48] ,\preg_s_reg_n_135_[48] ,\preg_s_reg_n_136_[48] ,\preg_s_reg_n_137_[48] ,\preg_s_reg_n_138_[48] ,\preg_s_reg_n_139_[48] ,\preg_s_reg_n_140_[48] ,\preg_s_reg_n_141_[48] ,\preg_s_reg_n_142_[48] ,\preg_s_reg_n_143_[48] ,\preg_s_reg_n_144_[48] ,\preg_s_reg_n_145_[48] ,\preg_s_reg_n_146_[48] ,\preg_s_reg_n_147_[48] ,\preg_s_reg_n_148_[48] ,\preg_s_reg_n_149_[48] ,\preg_s_reg_n_150_[48] ,\preg_s_reg_n_151_[48] ,\preg_s_reg_n_152_[48] ,\preg_s_reg_n_153_[48] }),
        .PCOUT({\preg_s_reg_n_106_[47] ,\preg_s_reg_n_107_[47] ,\preg_s_reg_n_108_[47] ,\preg_s_reg_n_109_[47] ,\preg_s_reg_n_110_[47] ,\preg_s_reg_n_111_[47] ,\preg_s_reg_n_112_[47] ,\preg_s_reg_n_113_[47] ,\preg_s_reg_n_114_[47] ,\preg_s_reg_n_115_[47] ,\preg_s_reg_n_116_[47] ,\preg_s_reg_n_117_[47] ,\preg_s_reg_n_118_[47] ,\preg_s_reg_n_119_[47] ,\preg_s_reg_n_120_[47] ,\preg_s_reg_n_121_[47] ,\preg_s_reg_n_122_[47] ,\preg_s_reg_n_123_[47] ,\preg_s_reg_n_124_[47] ,\preg_s_reg_n_125_[47] ,\preg_s_reg_n_126_[47] ,\preg_s_reg_n_127_[47] ,\preg_s_reg_n_128_[47] ,\preg_s_reg_n_129_[47] ,\preg_s_reg_n_130_[47] ,\preg_s_reg_n_131_[47] ,\preg_s_reg_n_132_[47] ,\preg_s_reg_n_133_[47] ,\preg_s_reg_n_134_[47] ,\preg_s_reg_n_135_[47] ,\preg_s_reg_n_136_[47] ,\preg_s_reg_n_137_[47] ,\preg_s_reg_n_138_[47] ,\preg_s_reg_n_139_[47] ,\preg_s_reg_n_140_[47] ,\preg_s_reg_n_141_[47] ,\preg_s_reg_n_142_[47] ,\preg_s_reg_n_143_[47] ,\preg_s_reg_n_144_[47] ,\preg_s_reg_n_145_[47] ,\preg_s_reg_n_146_[47] ,\preg_s_reg_n_147_[47] ,\preg_s_reg_n_148_[47] ,\preg_s_reg_n_149_[47] ,\preg_s_reg_n_150_[47] ,\preg_s_reg_n_151_[47] ,\preg_s_reg_n_152_[47] ,\preg_s_reg_n_153_[47] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[47]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[47]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[48] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[48]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[48]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[48]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[48]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[48]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[48]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[48]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[48]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[48]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[49] ,\preg_s_reg_n_107_[49] ,\preg_s_reg_n_108_[49] ,\preg_s_reg_n_109_[49] ,\preg_s_reg_n_110_[49] ,\preg_s_reg_n_111_[49] ,\preg_s_reg_n_112_[49] ,\preg_s_reg_n_113_[49] ,\preg_s_reg_n_114_[49] ,\preg_s_reg_n_115_[49] ,\preg_s_reg_n_116_[49] ,\preg_s_reg_n_117_[49] ,\preg_s_reg_n_118_[49] ,\preg_s_reg_n_119_[49] ,\preg_s_reg_n_120_[49] ,\preg_s_reg_n_121_[49] ,\preg_s_reg_n_122_[49] ,\preg_s_reg_n_123_[49] ,\preg_s_reg_n_124_[49] ,\preg_s_reg_n_125_[49] ,\preg_s_reg_n_126_[49] ,\preg_s_reg_n_127_[49] ,\preg_s_reg_n_128_[49] ,\preg_s_reg_n_129_[49] ,\preg_s_reg_n_130_[49] ,\preg_s_reg_n_131_[49] ,\preg_s_reg_n_132_[49] ,\preg_s_reg_n_133_[49] ,\preg_s_reg_n_134_[49] ,\preg_s_reg_n_135_[49] ,\preg_s_reg_n_136_[49] ,\preg_s_reg_n_137_[49] ,\preg_s_reg_n_138_[49] ,\preg_s_reg_n_139_[49] ,\preg_s_reg_n_140_[49] ,\preg_s_reg_n_141_[49] ,\preg_s_reg_n_142_[49] ,\preg_s_reg_n_143_[49] ,\preg_s_reg_n_144_[49] ,\preg_s_reg_n_145_[49] ,\preg_s_reg_n_146_[49] ,\preg_s_reg_n_147_[49] ,\preg_s_reg_n_148_[49] ,\preg_s_reg_n_149_[49] ,\preg_s_reg_n_150_[49] ,\preg_s_reg_n_151_[49] ,\preg_s_reg_n_152_[49] ,\preg_s_reg_n_153_[49] }),
        .PCOUT({\preg_s_reg_n_106_[48] ,\preg_s_reg_n_107_[48] ,\preg_s_reg_n_108_[48] ,\preg_s_reg_n_109_[48] ,\preg_s_reg_n_110_[48] ,\preg_s_reg_n_111_[48] ,\preg_s_reg_n_112_[48] ,\preg_s_reg_n_113_[48] ,\preg_s_reg_n_114_[48] ,\preg_s_reg_n_115_[48] ,\preg_s_reg_n_116_[48] ,\preg_s_reg_n_117_[48] ,\preg_s_reg_n_118_[48] ,\preg_s_reg_n_119_[48] ,\preg_s_reg_n_120_[48] ,\preg_s_reg_n_121_[48] ,\preg_s_reg_n_122_[48] ,\preg_s_reg_n_123_[48] ,\preg_s_reg_n_124_[48] ,\preg_s_reg_n_125_[48] ,\preg_s_reg_n_126_[48] ,\preg_s_reg_n_127_[48] ,\preg_s_reg_n_128_[48] ,\preg_s_reg_n_129_[48] ,\preg_s_reg_n_130_[48] ,\preg_s_reg_n_131_[48] ,\preg_s_reg_n_132_[48] ,\preg_s_reg_n_133_[48] ,\preg_s_reg_n_134_[48] ,\preg_s_reg_n_135_[48] ,\preg_s_reg_n_136_[48] ,\preg_s_reg_n_137_[48] ,\preg_s_reg_n_138_[48] ,\preg_s_reg_n_139_[48] ,\preg_s_reg_n_140_[48] ,\preg_s_reg_n_141_[48] ,\preg_s_reg_n_142_[48] ,\preg_s_reg_n_143_[48] ,\preg_s_reg_n_144_[48] ,\preg_s_reg_n_145_[48] ,\preg_s_reg_n_146_[48] ,\preg_s_reg_n_147_[48] ,\preg_s_reg_n_148_[48] ,\preg_s_reg_n_149_[48] ,\preg_s_reg_n_150_[48] ,\preg_s_reg_n_151_[48] ,\preg_s_reg_n_152_[48] ,\preg_s_reg_n_153_[48] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[48]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[48]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[49] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],Q[17],Q[17],Q[17],Q[17],Q[17],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[49]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[49]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[49]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[49]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[49]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[49]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[49]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[49]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[49]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[50] ,\preg_s_reg_n_107_[50] ,\preg_s_reg_n_108_[50] ,\preg_s_reg_n_109_[50] ,\preg_s_reg_n_110_[50] ,\preg_s_reg_n_111_[50] ,\preg_s_reg_n_112_[50] ,\preg_s_reg_n_113_[50] ,\preg_s_reg_n_114_[50] ,\preg_s_reg_n_115_[50] ,\preg_s_reg_n_116_[50] ,\preg_s_reg_n_117_[50] ,\preg_s_reg_n_118_[50] ,\preg_s_reg_n_119_[50] ,\preg_s_reg_n_120_[50] ,\preg_s_reg_n_121_[50] ,\preg_s_reg_n_122_[50] ,\preg_s_reg_n_123_[50] ,\preg_s_reg_n_124_[50] ,\preg_s_reg_n_125_[50] ,\preg_s_reg_n_126_[50] ,\preg_s_reg_n_127_[50] ,\preg_s_reg_n_128_[50] ,\preg_s_reg_n_129_[50] ,\preg_s_reg_n_130_[50] ,\preg_s_reg_n_131_[50] ,\preg_s_reg_n_132_[50] ,\preg_s_reg_n_133_[50] ,\preg_s_reg_n_134_[50] ,\preg_s_reg_n_135_[50] ,\preg_s_reg_n_136_[50] ,\preg_s_reg_n_137_[50] ,\preg_s_reg_n_138_[50] ,\preg_s_reg_n_139_[50] ,\preg_s_reg_n_140_[50] ,\preg_s_reg_n_141_[50] ,\preg_s_reg_n_142_[50] ,\preg_s_reg_n_143_[50] ,\preg_s_reg_n_144_[50] ,\preg_s_reg_n_145_[50] ,\preg_s_reg_n_146_[50] ,\preg_s_reg_n_147_[50] ,\preg_s_reg_n_148_[50] ,\preg_s_reg_n_149_[50] ,\preg_s_reg_n_150_[50] ,\preg_s_reg_n_151_[50] ,\preg_s_reg_n_152_[50] ,\preg_s_reg_n_153_[50] }),
        .PCOUT({\preg_s_reg_n_106_[49] ,\preg_s_reg_n_107_[49] ,\preg_s_reg_n_108_[49] ,\preg_s_reg_n_109_[49] ,\preg_s_reg_n_110_[49] ,\preg_s_reg_n_111_[49] ,\preg_s_reg_n_112_[49] ,\preg_s_reg_n_113_[49] ,\preg_s_reg_n_114_[49] ,\preg_s_reg_n_115_[49] ,\preg_s_reg_n_116_[49] ,\preg_s_reg_n_117_[49] ,\preg_s_reg_n_118_[49] ,\preg_s_reg_n_119_[49] ,\preg_s_reg_n_120_[49] ,\preg_s_reg_n_121_[49] ,\preg_s_reg_n_122_[49] ,\preg_s_reg_n_123_[49] ,\preg_s_reg_n_124_[49] ,\preg_s_reg_n_125_[49] ,\preg_s_reg_n_126_[49] ,\preg_s_reg_n_127_[49] ,\preg_s_reg_n_128_[49] ,\preg_s_reg_n_129_[49] ,\preg_s_reg_n_130_[49] ,\preg_s_reg_n_131_[49] ,\preg_s_reg_n_132_[49] ,\preg_s_reg_n_133_[49] ,\preg_s_reg_n_134_[49] ,\preg_s_reg_n_135_[49] ,\preg_s_reg_n_136_[49] ,\preg_s_reg_n_137_[49] ,\preg_s_reg_n_138_[49] ,\preg_s_reg_n_139_[49] ,\preg_s_reg_n_140_[49] ,\preg_s_reg_n_141_[49] ,\preg_s_reg_n_142_[49] ,\preg_s_reg_n_143_[49] ,\preg_s_reg_n_144_[49] ,\preg_s_reg_n_145_[49] ,\preg_s_reg_n_146_[49] ,\preg_s_reg_n_147_[49] ,\preg_s_reg_n_148_[49] ,\preg_s_reg_n_149_[49] ,\preg_s_reg_n_150_[49] ,\preg_s_reg_n_151_[49] ,\preg_s_reg_n_152_[49] ,\preg_s_reg_n_153_[49] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[49]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[49]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[4] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[4]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({\preg_s_reg_n_6_[4] ,\preg_s_reg_n_7_[4] ,\preg_s_reg_n_8_[4] ,\preg_s_reg_n_9_[4] ,\preg_s_reg_n_10_[4] ,\preg_s_reg_n_11_[4] ,\preg_s_reg_n_12_[4] ,\preg_s_reg_n_13_[4] ,\preg_s_reg_n_14_[4] ,\preg_s_reg_n_15_[4] ,\preg_s_reg_n_16_[4] ,\preg_s_reg_n_17_[4] ,\preg_s_reg_n_18_[4] ,\preg_s_reg_n_19_[4] ,\preg_s_reg_n_20_[4] ,\preg_s_reg_n_21_[4] ,\preg_s_reg_n_22_[4] ,\preg_s_reg_n_23_[4] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[4]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[4]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[4]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[4]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[4]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[4]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[4]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[5] ,\preg_s_reg_n_107_[5] ,\preg_s_reg_n_108_[5] ,\preg_s_reg_n_109_[5] ,\preg_s_reg_n_110_[5] ,\preg_s_reg_n_111_[5] ,\preg_s_reg_n_112_[5] ,\preg_s_reg_n_113_[5] ,\preg_s_reg_n_114_[5] ,\preg_s_reg_n_115_[5] ,\preg_s_reg_n_116_[5] ,\preg_s_reg_n_117_[5] ,\preg_s_reg_n_118_[5] ,\preg_s_reg_n_119_[5] ,\preg_s_reg_n_120_[5] ,\preg_s_reg_n_121_[5] ,\preg_s_reg_n_122_[5] ,\preg_s_reg_n_123_[5] ,\preg_s_reg_n_124_[5] ,\preg_s_reg_n_125_[5] ,\preg_s_reg_n_126_[5] ,\preg_s_reg_n_127_[5] ,\preg_s_reg_n_128_[5] ,\preg_s_reg_n_129_[5] ,\preg_s_reg_n_130_[5] ,\preg_s_reg_n_131_[5] ,\preg_s_reg_n_132_[5] ,\preg_s_reg_n_133_[5] ,\preg_s_reg_n_134_[5] ,\preg_s_reg_n_135_[5] ,\preg_s_reg_n_136_[5] ,\preg_s_reg_n_137_[5] ,\preg_s_reg_n_138_[5] ,\preg_s_reg_n_139_[5] ,\preg_s_reg_n_140_[5] ,\preg_s_reg_n_141_[5] ,\preg_s_reg_n_142_[5] ,\preg_s_reg_n_143_[5] ,\preg_s_reg_n_144_[5] ,\preg_s_reg_n_145_[5] ,\preg_s_reg_n_146_[5] ,\preg_s_reg_n_147_[5] ,\preg_s_reg_n_148_[5] ,\preg_s_reg_n_149_[5] ,\preg_s_reg_n_150_[5] ,\preg_s_reg_n_151_[5] ,\preg_s_reg_n_152_[5] ,\preg_s_reg_n_153_[5] }),
        .PCOUT({\preg_s_reg_n_106_[4] ,\preg_s_reg_n_107_[4] ,\preg_s_reg_n_108_[4] ,\preg_s_reg_n_109_[4] ,\preg_s_reg_n_110_[4] ,\preg_s_reg_n_111_[4] ,\preg_s_reg_n_112_[4] ,\preg_s_reg_n_113_[4] ,\preg_s_reg_n_114_[4] ,\preg_s_reg_n_115_[4] ,\preg_s_reg_n_116_[4] ,\preg_s_reg_n_117_[4] ,\preg_s_reg_n_118_[4] ,\preg_s_reg_n_119_[4] ,\preg_s_reg_n_120_[4] ,\preg_s_reg_n_121_[4] ,\preg_s_reg_n_122_[4] ,\preg_s_reg_n_123_[4] ,\preg_s_reg_n_124_[4] ,\preg_s_reg_n_125_[4] ,\preg_s_reg_n_126_[4] ,\preg_s_reg_n_127_[4] ,\preg_s_reg_n_128_[4] ,\preg_s_reg_n_129_[4] ,\preg_s_reg_n_130_[4] ,\preg_s_reg_n_131_[4] ,\preg_s_reg_n_132_[4] ,\preg_s_reg_n_133_[4] ,\preg_s_reg_n_134_[4] ,\preg_s_reg_n_135_[4] ,\preg_s_reg_n_136_[4] ,\preg_s_reg_n_137_[4] ,\preg_s_reg_n_138_[4] ,\preg_s_reg_n_139_[4] ,\preg_s_reg_n_140_[4] ,\preg_s_reg_n_141_[4] ,\preg_s_reg_n_142_[4] ,\preg_s_reg_n_143_[4] ,\preg_s_reg_n_144_[4] ,\preg_s_reg_n_145_[4] ,\preg_s_reg_n_146_[4] ,\preg_s_reg_n_147_[4] ,\preg_s_reg_n_148_[4] ,\preg_s_reg_n_149_[4] ,\preg_s_reg_n_150_[4] ,\preg_s_reg_n_151_[4] ,\preg_s_reg_n_152_[4] ,\preg_s_reg_n_153_[4] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[4]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[4]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[50] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[50]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[50]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[50]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[50]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[50]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[50]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[50]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[50]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[50]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[51] ,\preg_s_reg_n_107_[51] ,\preg_s_reg_n_108_[51] ,\preg_s_reg_n_109_[51] ,\preg_s_reg_n_110_[51] ,\preg_s_reg_n_111_[51] ,\preg_s_reg_n_112_[51] ,\preg_s_reg_n_113_[51] ,\preg_s_reg_n_114_[51] ,\preg_s_reg_n_115_[51] ,\preg_s_reg_n_116_[51] ,\preg_s_reg_n_117_[51] ,\preg_s_reg_n_118_[51] ,\preg_s_reg_n_119_[51] ,\preg_s_reg_n_120_[51] ,\preg_s_reg_n_121_[51] ,\preg_s_reg_n_122_[51] ,\preg_s_reg_n_123_[51] ,\preg_s_reg_n_124_[51] ,\preg_s_reg_n_125_[51] ,\preg_s_reg_n_126_[51] ,\preg_s_reg_n_127_[51] ,\preg_s_reg_n_128_[51] ,\preg_s_reg_n_129_[51] ,\preg_s_reg_n_130_[51] ,\preg_s_reg_n_131_[51] ,\preg_s_reg_n_132_[51] ,\preg_s_reg_n_133_[51] ,\preg_s_reg_n_134_[51] ,\preg_s_reg_n_135_[51] ,\preg_s_reg_n_136_[51] ,\preg_s_reg_n_137_[51] ,\preg_s_reg_n_138_[51] ,\preg_s_reg_n_139_[51] ,\preg_s_reg_n_140_[51] ,\preg_s_reg_n_141_[51] ,\preg_s_reg_n_142_[51] ,\preg_s_reg_n_143_[51] ,\preg_s_reg_n_144_[51] ,\preg_s_reg_n_145_[51] ,\preg_s_reg_n_146_[51] ,\preg_s_reg_n_147_[51] ,\preg_s_reg_n_148_[51] ,\preg_s_reg_n_149_[51] ,\preg_s_reg_n_150_[51] ,\preg_s_reg_n_151_[51] ,\preg_s_reg_n_152_[51] ,\preg_s_reg_n_153_[51] }),
        .PCOUT({\preg_s_reg_n_106_[50] ,\preg_s_reg_n_107_[50] ,\preg_s_reg_n_108_[50] ,\preg_s_reg_n_109_[50] ,\preg_s_reg_n_110_[50] ,\preg_s_reg_n_111_[50] ,\preg_s_reg_n_112_[50] ,\preg_s_reg_n_113_[50] ,\preg_s_reg_n_114_[50] ,\preg_s_reg_n_115_[50] ,\preg_s_reg_n_116_[50] ,\preg_s_reg_n_117_[50] ,\preg_s_reg_n_118_[50] ,\preg_s_reg_n_119_[50] ,\preg_s_reg_n_120_[50] ,\preg_s_reg_n_121_[50] ,\preg_s_reg_n_122_[50] ,\preg_s_reg_n_123_[50] ,\preg_s_reg_n_124_[50] ,\preg_s_reg_n_125_[50] ,\preg_s_reg_n_126_[50] ,\preg_s_reg_n_127_[50] ,\preg_s_reg_n_128_[50] ,\preg_s_reg_n_129_[50] ,\preg_s_reg_n_130_[50] ,\preg_s_reg_n_131_[50] ,\preg_s_reg_n_132_[50] ,\preg_s_reg_n_133_[50] ,\preg_s_reg_n_134_[50] ,\preg_s_reg_n_135_[50] ,\preg_s_reg_n_136_[50] ,\preg_s_reg_n_137_[50] ,\preg_s_reg_n_138_[50] ,\preg_s_reg_n_139_[50] ,\preg_s_reg_n_140_[50] ,\preg_s_reg_n_141_[50] ,\preg_s_reg_n_142_[50] ,\preg_s_reg_n_143_[50] ,\preg_s_reg_n_144_[50] ,\preg_s_reg_n_145_[50] ,\preg_s_reg_n_146_[50] ,\preg_s_reg_n_147_[50] ,\preg_s_reg_n_148_[50] ,\preg_s_reg_n_149_[50] ,\preg_s_reg_n_150_[50] ,\preg_s_reg_n_151_[50] ,\preg_s_reg_n_152_[50] ,\preg_s_reg_n_153_[50] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[50]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[50]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[51] 
       (.A({\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[51]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({A[17],DSP_ALU_INST[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[51]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[51]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[51]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[51]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[51]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[51]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[51]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[51]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[52] ,\preg_s_reg_n_107_[52] ,\preg_s_reg_n_108_[52] ,\preg_s_reg_n_109_[52] ,\preg_s_reg_n_110_[52] ,\preg_s_reg_n_111_[52] ,\preg_s_reg_n_112_[52] ,\preg_s_reg_n_113_[52] ,\preg_s_reg_n_114_[52] ,\preg_s_reg_n_115_[52] ,\preg_s_reg_n_116_[52] ,\preg_s_reg_n_117_[52] ,\preg_s_reg_n_118_[52] ,\preg_s_reg_n_119_[52] ,\preg_s_reg_n_120_[52] ,\preg_s_reg_n_121_[52] ,\preg_s_reg_n_122_[52] ,\preg_s_reg_n_123_[52] ,\preg_s_reg_n_124_[52] ,\preg_s_reg_n_125_[52] ,\preg_s_reg_n_126_[52] ,\preg_s_reg_n_127_[52] ,\preg_s_reg_n_128_[52] ,\preg_s_reg_n_129_[52] ,\preg_s_reg_n_130_[52] ,\preg_s_reg_n_131_[52] ,\preg_s_reg_n_132_[52] ,\preg_s_reg_n_133_[52] ,\preg_s_reg_n_134_[52] ,\preg_s_reg_n_135_[52] ,\preg_s_reg_n_136_[52] ,\preg_s_reg_n_137_[52] ,\preg_s_reg_n_138_[52] ,\preg_s_reg_n_139_[52] ,\preg_s_reg_n_140_[52] ,\preg_s_reg_n_141_[52] ,\preg_s_reg_n_142_[52] ,\preg_s_reg_n_143_[52] ,\preg_s_reg_n_144_[52] ,\preg_s_reg_n_145_[52] ,\preg_s_reg_n_146_[52] ,\preg_s_reg_n_147_[52] ,\preg_s_reg_n_148_[52] ,\preg_s_reg_n_149_[52] ,\preg_s_reg_n_150_[52] ,\preg_s_reg_n_151_[52] ,\preg_s_reg_n_152_[52] ,\preg_s_reg_n_153_[52] }),
        .PCOUT({\preg_s_reg_n_106_[51] ,\preg_s_reg_n_107_[51] ,\preg_s_reg_n_108_[51] ,\preg_s_reg_n_109_[51] ,\preg_s_reg_n_110_[51] ,\preg_s_reg_n_111_[51] ,\preg_s_reg_n_112_[51] ,\preg_s_reg_n_113_[51] ,\preg_s_reg_n_114_[51] ,\preg_s_reg_n_115_[51] ,\preg_s_reg_n_116_[51] ,\preg_s_reg_n_117_[51] ,\preg_s_reg_n_118_[51] ,\preg_s_reg_n_119_[51] ,\preg_s_reg_n_120_[51] ,\preg_s_reg_n_121_[51] ,\preg_s_reg_n_122_[51] ,\preg_s_reg_n_123_[51] ,\preg_s_reg_n_124_[51] ,\preg_s_reg_n_125_[51] ,\preg_s_reg_n_126_[51] ,\preg_s_reg_n_127_[51] ,\preg_s_reg_n_128_[51] ,\preg_s_reg_n_129_[51] ,\preg_s_reg_n_130_[51] ,\preg_s_reg_n_131_[51] ,\preg_s_reg_n_132_[51] ,\preg_s_reg_n_133_[51] ,\preg_s_reg_n_134_[51] ,\preg_s_reg_n_135_[51] ,\preg_s_reg_n_136_[51] ,\preg_s_reg_n_137_[51] ,\preg_s_reg_n_138_[51] ,\preg_s_reg_n_139_[51] ,\preg_s_reg_n_140_[51] ,\preg_s_reg_n_141_[51] ,\preg_s_reg_n_142_[51] ,\preg_s_reg_n_143_[51] ,\preg_s_reg_n_144_[51] ,\preg_s_reg_n_145_[51] ,\preg_s_reg_n_146_[51] ,\preg_s_reg_n_147_[51] ,\preg_s_reg_n_148_[51] ,\preg_s_reg_n_149_[51] ,\preg_s_reg_n_150_[51] ,\preg_s_reg_n_151_[51] ,\preg_s_reg_n_152_[51] ,\preg_s_reg_n_153_[51] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[51]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[51]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[52] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[52]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[52]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[52]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[52]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[52]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[52]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[52]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[52]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[52]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[53] ,\preg_s_reg_n_107_[53] ,\preg_s_reg_n_108_[53] ,\preg_s_reg_n_109_[53] ,\preg_s_reg_n_110_[53] ,\preg_s_reg_n_111_[53] ,\preg_s_reg_n_112_[53] ,\preg_s_reg_n_113_[53] ,\preg_s_reg_n_114_[53] ,\preg_s_reg_n_115_[53] ,\preg_s_reg_n_116_[53] ,\preg_s_reg_n_117_[53] ,\preg_s_reg_n_118_[53] ,\preg_s_reg_n_119_[53] ,\preg_s_reg_n_120_[53] ,\preg_s_reg_n_121_[53] ,\preg_s_reg_n_122_[53] ,\preg_s_reg_n_123_[53] ,\preg_s_reg_n_124_[53] ,\preg_s_reg_n_125_[53] ,\preg_s_reg_n_126_[53] ,\preg_s_reg_n_127_[53] ,\preg_s_reg_n_128_[53] ,\preg_s_reg_n_129_[53] ,\preg_s_reg_n_130_[53] ,\preg_s_reg_n_131_[53] ,\preg_s_reg_n_132_[53] ,\preg_s_reg_n_133_[53] ,\preg_s_reg_n_134_[53] ,\preg_s_reg_n_135_[53] ,\preg_s_reg_n_136_[53] ,\preg_s_reg_n_137_[53] ,\preg_s_reg_n_138_[53] ,\preg_s_reg_n_139_[53] ,\preg_s_reg_n_140_[53] ,\preg_s_reg_n_141_[53] ,\preg_s_reg_n_142_[53] ,\preg_s_reg_n_143_[53] ,\preg_s_reg_n_144_[53] ,\preg_s_reg_n_145_[53] ,\preg_s_reg_n_146_[53] ,\preg_s_reg_n_147_[53] ,\preg_s_reg_n_148_[53] ,\preg_s_reg_n_149_[53] ,\preg_s_reg_n_150_[53] ,\preg_s_reg_n_151_[53] ,\preg_s_reg_n_152_[53] ,\preg_s_reg_n_153_[53] }),
        .PCOUT({\preg_s_reg_n_106_[52] ,\preg_s_reg_n_107_[52] ,\preg_s_reg_n_108_[52] ,\preg_s_reg_n_109_[52] ,\preg_s_reg_n_110_[52] ,\preg_s_reg_n_111_[52] ,\preg_s_reg_n_112_[52] ,\preg_s_reg_n_113_[52] ,\preg_s_reg_n_114_[52] ,\preg_s_reg_n_115_[52] ,\preg_s_reg_n_116_[52] ,\preg_s_reg_n_117_[52] ,\preg_s_reg_n_118_[52] ,\preg_s_reg_n_119_[52] ,\preg_s_reg_n_120_[52] ,\preg_s_reg_n_121_[52] ,\preg_s_reg_n_122_[52] ,\preg_s_reg_n_123_[52] ,\preg_s_reg_n_124_[52] ,\preg_s_reg_n_125_[52] ,\preg_s_reg_n_126_[52] ,\preg_s_reg_n_127_[52] ,\preg_s_reg_n_128_[52] ,\preg_s_reg_n_129_[52] ,\preg_s_reg_n_130_[52] ,\preg_s_reg_n_131_[52] ,\preg_s_reg_n_132_[52] ,\preg_s_reg_n_133_[52] ,\preg_s_reg_n_134_[52] ,\preg_s_reg_n_135_[52] ,\preg_s_reg_n_136_[52] ,\preg_s_reg_n_137_[52] ,\preg_s_reg_n_138_[52] ,\preg_s_reg_n_139_[52] ,\preg_s_reg_n_140_[52] ,\preg_s_reg_n_141_[52] ,\preg_s_reg_n_142_[52] ,\preg_s_reg_n_143_[52] ,\preg_s_reg_n_144_[52] ,\preg_s_reg_n_145_[52] ,\preg_s_reg_n_146_[52] ,\preg_s_reg_n_147_[52] ,\preg_s_reg_n_148_[52] ,\preg_s_reg_n_149_[52] ,\preg_s_reg_n_150_[52] ,\preg_s_reg_n_151_[52] ,\preg_s_reg_n_152_[52] ,\preg_s_reg_n_153_[52] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[52]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[52]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[53] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[53]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[54] ,\preg_s_reg_n_7_[54] ,\preg_s_reg_n_8_[54] ,\preg_s_reg_n_9_[54] ,\preg_s_reg_n_10_[54] ,\preg_s_reg_n_11_[54] ,\preg_s_reg_n_12_[54] ,\preg_s_reg_n_13_[54] ,\preg_s_reg_n_14_[54] ,\preg_s_reg_n_15_[54] ,\preg_s_reg_n_16_[54] ,\preg_s_reg_n_17_[54] ,\preg_s_reg_n_18_[54] ,\preg_s_reg_n_19_[54] ,\preg_s_reg_n_20_[54] ,\preg_s_reg_n_21_[54] ,\preg_s_reg_n_22_[54] ,\preg_s_reg_n_23_[54] }),
        .BCOUT(\NLW_preg_s_reg[53]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[53]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[53]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[53]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[53]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[53]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[53]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[53]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[54] ,\preg_s_reg_n_107_[54] ,\preg_s_reg_n_108_[54] ,\preg_s_reg_n_109_[54] ,\preg_s_reg_n_110_[54] ,\preg_s_reg_n_111_[54] ,\preg_s_reg_n_112_[54] ,\preg_s_reg_n_113_[54] ,\preg_s_reg_n_114_[54] ,\preg_s_reg_n_115_[54] ,\preg_s_reg_n_116_[54] ,\preg_s_reg_n_117_[54] ,\preg_s_reg_n_118_[54] ,\preg_s_reg_n_119_[54] ,\preg_s_reg_n_120_[54] ,\preg_s_reg_n_121_[54] ,\preg_s_reg_n_122_[54] ,\preg_s_reg_n_123_[54] ,\preg_s_reg_n_124_[54] ,\preg_s_reg_n_125_[54] ,\preg_s_reg_n_126_[54] ,\preg_s_reg_n_127_[54] ,\preg_s_reg_n_128_[54] ,\preg_s_reg_n_129_[54] ,\preg_s_reg_n_130_[54] ,\preg_s_reg_n_131_[54] ,\preg_s_reg_n_132_[54] ,\preg_s_reg_n_133_[54] ,\preg_s_reg_n_134_[54] ,\preg_s_reg_n_135_[54] ,\preg_s_reg_n_136_[54] ,\preg_s_reg_n_137_[54] ,\preg_s_reg_n_138_[54] ,\preg_s_reg_n_139_[54] ,\preg_s_reg_n_140_[54] ,\preg_s_reg_n_141_[54] ,\preg_s_reg_n_142_[54] ,\preg_s_reg_n_143_[54] ,\preg_s_reg_n_144_[54] ,\preg_s_reg_n_145_[54] ,\preg_s_reg_n_146_[54] ,\preg_s_reg_n_147_[54] ,\preg_s_reg_n_148_[54] ,\preg_s_reg_n_149_[54] ,\preg_s_reg_n_150_[54] ,\preg_s_reg_n_151_[54] ,\preg_s_reg_n_152_[54] ,\preg_s_reg_n_153_[54] }),
        .PCOUT({\preg_s_reg_n_106_[53] ,\preg_s_reg_n_107_[53] ,\preg_s_reg_n_108_[53] ,\preg_s_reg_n_109_[53] ,\preg_s_reg_n_110_[53] ,\preg_s_reg_n_111_[53] ,\preg_s_reg_n_112_[53] ,\preg_s_reg_n_113_[53] ,\preg_s_reg_n_114_[53] ,\preg_s_reg_n_115_[53] ,\preg_s_reg_n_116_[53] ,\preg_s_reg_n_117_[53] ,\preg_s_reg_n_118_[53] ,\preg_s_reg_n_119_[53] ,\preg_s_reg_n_120_[53] ,\preg_s_reg_n_121_[53] ,\preg_s_reg_n_122_[53] ,\preg_s_reg_n_123_[53] ,\preg_s_reg_n_124_[53] ,\preg_s_reg_n_125_[53] ,\preg_s_reg_n_126_[53] ,\preg_s_reg_n_127_[53] ,\preg_s_reg_n_128_[53] ,\preg_s_reg_n_129_[53] ,\preg_s_reg_n_130_[53] ,\preg_s_reg_n_131_[53] ,\preg_s_reg_n_132_[53] ,\preg_s_reg_n_133_[53] ,\preg_s_reg_n_134_[53] ,\preg_s_reg_n_135_[53] ,\preg_s_reg_n_136_[53] ,\preg_s_reg_n_137_[53] ,\preg_s_reg_n_138_[53] ,\preg_s_reg_n_139_[53] ,\preg_s_reg_n_140_[53] ,\preg_s_reg_n_141_[53] ,\preg_s_reg_n_142_[53] ,\preg_s_reg_n_143_[53] ,\preg_s_reg_n_144_[53] ,\preg_s_reg_n_145_[53] ,\preg_s_reg_n_146_[53] ,\preg_s_reg_n_147_[53] ,\preg_s_reg_n_148_[53] ,\preg_s_reg_n_149_[53] ,\preg_s_reg_n_150_[53] ,\preg_s_reg_n_151_[53] ,\preg_s_reg_n_152_[53] ,\preg_s_reg_n_153_[53] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[53]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[53]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[54] 
       (.A({DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST_0[1],DSP_ALU_INST[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[54]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({\preg_s_reg_n_6_[54] ,\preg_s_reg_n_7_[54] ,\preg_s_reg_n_8_[54] ,\preg_s_reg_n_9_[54] ,\preg_s_reg_n_10_[54] ,\preg_s_reg_n_11_[54] ,\preg_s_reg_n_12_[54] ,\preg_s_reg_n_13_[54] ,\preg_s_reg_n_14_[54] ,\preg_s_reg_n_15_[54] ,\preg_s_reg_n_16_[54] ,\preg_s_reg_n_17_[54] ,\preg_s_reg_n_18_[54] ,\preg_s_reg_n_19_[54] ,\preg_s_reg_n_20_[54] ,\preg_s_reg_n_21_[54] ,\preg_s_reg_n_22_[54] ,\preg_s_reg_n_23_[54] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[54]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[54]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[54]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[54]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[54]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[54]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[54]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[55] ,\preg_s_reg_n_107_[55] ,\preg_s_reg_n_108_[55] ,\preg_s_reg_n_109_[55] ,\preg_s_reg_n_110_[55] ,\preg_s_reg_n_111_[55] ,\preg_s_reg_n_112_[55] ,\preg_s_reg_n_113_[55] ,\preg_s_reg_n_114_[55] ,\preg_s_reg_n_115_[55] ,\preg_s_reg_n_116_[55] ,\preg_s_reg_n_117_[55] ,\preg_s_reg_n_118_[55] ,\preg_s_reg_n_119_[55] ,\preg_s_reg_n_120_[55] ,\preg_s_reg_n_121_[55] ,\preg_s_reg_n_122_[55] ,\preg_s_reg_n_123_[55] ,\preg_s_reg_n_124_[55] ,\preg_s_reg_n_125_[55] ,\preg_s_reg_n_126_[55] ,\preg_s_reg_n_127_[55] ,\preg_s_reg_n_128_[55] ,\preg_s_reg_n_129_[55] ,\preg_s_reg_n_130_[55] ,\preg_s_reg_n_131_[55] ,\preg_s_reg_n_132_[55] ,\preg_s_reg_n_133_[55] ,\preg_s_reg_n_134_[55] ,\preg_s_reg_n_135_[55] ,\preg_s_reg_n_136_[55] ,\preg_s_reg_n_137_[55] ,\preg_s_reg_n_138_[55] ,\preg_s_reg_n_139_[55] ,\preg_s_reg_n_140_[55] ,\preg_s_reg_n_141_[55] ,\preg_s_reg_n_142_[55] ,\preg_s_reg_n_143_[55] ,\preg_s_reg_n_144_[55] ,\preg_s_reg_n_145_[55] ,\preg_s_reg_n_146_[55] ,\preg_s_reg_n_147_[55] ,\preg_s_reg_n_148_[55] ,\preg_s_reg_n_149_[55] ,\preg_s_reg_n_150_[55] ,\preg_s_reg_n_151_[55] ,\preg_s_reg_n_152_[55] ,\preg_s_reg_n_153_[55] }),
        .PCOUT({\preg_s_reg_n_106_[54] ,\preg_s_reg_n_107_[54] ,\preg_s_reg_n_108_[54] ,\preg_s_reg_n_109_[54] ,\preg_s_reg_n_110_[54] ,\preg_s_reg_n_111_[54] ,\preg_s_reg_n_112_[54] ,\preg_s_reg_n_113_[54] ,\preg_s_reg_n_114_[54] ,\preg_s_reg_n_115_[54] ,\preg_s_reg_n_116_[54] ,\preg_s_reg_n_117_[54] ,\preg_s_reg_n_118_[54] ,\preg_s_reg_n_119_[54] ,\preg_s_reg_n_120_[54] ,\preg_s_reg_n_121_[54] ,\preg_s_reg_n_122_[54] ,\preg_s_reg_n_123_[54] ,\preg_s_reg_n_124_[54] ,\preg_s_reg_n_125_[54] ,\preg_s_reg_n_126_[54] ,\preg_s_reg_n_127_[54] ,\preg_s_reg_n_128_[54] ,\preg_s_reg_n_129_[54] ,\preg_s_reg_n_130_[54] ,\preg_s_reg_n_131_[54] ,\preg_s_reg_n_132_[54] ,\preg_s_reg_n_133_[54] ,\preg_s_reg_n_134_[54] ,\preg_s_reg_n_135_[54] ,\preg_s_reg_n_136_[54] ,\preg_s_reg_n_137_[54] ,\preg_s_reg_n_138_[54] ,\preg_s_reg_n_139_[54] ,\preg_s_reg_n_140_[54] ,\preg_s_reg_n_141_[54] ,\preg_s_reg_n_142_[54] ,\preg_s_reg_n_143_[54] ,\preg_s_reg_n_144_[54] ,\preg_s_reg_n_145_[54] ,\preg_s_reg_n_146_[54] ,\preg_s_reg_n_147_[54] ,\preg_s_reg_n_148_[54] ,\preg_s_reg_n_149_[54] ,\preg_s_reg_n_150_[54] ,\preg_s_reg_n_151_[54] ,\preg_s_reg_n_152_[54] ,\preg_s_reg_n_153_[54] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[54]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[54]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[55] 
       (.A({DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[55]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[56] ,\preg_s_reg_n_7_[56] ,\preg_s_reg_n_8_[56] ,\preg_s_reg_n_9_[56] ,\preg_s_reg_n_10_[56] ,\preg_s_reg_n_11_[56] ,\preg_s_reg_n_12_[56] ,\preg_s_reg_n_13_[56] ,\preg_s_reg_n_14_[56] ,\preg_s_reg_n_15_[56] ,\preg_s_reg_n_16_[56] ,\preg_s_reg_n_17_[56] ,\preg_s_reg_n_18_[56] ,\preg_s_reg_n_19_[56] ,\preg_s_reg_n_20_[56] ,\preg_s_reg_n_21_[56] ,\preg_s_reg_n_22_[56] ,\preg_s_reg_n_23_[56] }),
        .BCOUT(\NLW_preg_s_reg[55]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[55]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[55]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[55]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[55]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[55]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[55]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[55]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[56] ,\preg_s_reg_n_107_[56] ,\preg_s_reg_n_108_[56] ,\preg_s_reg_n_109_[56] ,\preg_s_reg_n_110_[56] ,\preg_s_reg_n_111_[56] ,\preg_s_reg_n_112_[56] ,\preg_s_reg_n_113_[56] ,\preg_s_reg_n_114_[56] ,\preg_s_reg_n_115_[56] ,\preg_s_reg_n_116_[56] ,\preg_s_reg_n_117_[56] ,\preg_s_reg_n_118_[56] ,\preg_s_reg_n_119_[56] ,\preg_s_reg_n_120_[56] ,\preg_s_reg_n_121_[56] ,\preg_s_reg_n_122_[56] ,\preg_s_reg_n_123_[56] ,\preg_s_reg_n_124_[56] ,\preg_s_reg_n_125_[56] ,\preg_s_reg_n_126_[56] ,\preg_s_reg_n_127_[56] ,\preg_s_reg_n_128_[56] ,\preg_s_reg_n_129_[56] ,\preg_s_reg_n_130_[56] ,\preg_s_reg_n_131_[56] ,\preg_s_reg_n_132_[56] ,\preg_s_reg_n_133_[56] ,\preg_s_reg_n_134_[56] ,\preg_s_reg_n_135_[56] ,\preg_s_reg_n_136_[56] ,\preg_s_reg_n_137_[56] ,\preg_s_reg_n_138_[56] ,\preg_s_reg_n_139_[56] ,\preg_s_reg_n_140_[56] ,\preg_s_reg_n_141_[56] ,\preg_s_reg_n_142_[56] ,\preg_s_reg_n_143_[56] ,\preg_s_reg_n_144_[56] ,\preg_s_reg_n_145_[56] ,\preg_s_reg_n_146_[56] ,\preg_s_reg_n_147_[56] ,\preg_s_reg_n_148_[56] ,\preg_s_reg_n_149_[56] ,\preg_s_reg_n_150_[56] ,\preg_s_reg_n_151_[56] ,\preg_s_reg_n_152_[56] ,\preg_s_reg_n_153_[56] }),
        .PCOUT({\preg_s_reg_n_106_[55] ,\preg_s_reg_n_107_[55] ,\preg_s_reg_n_108_[55] ,\preg_s_reg_n_109_[55] ,\preg_s_reg_n_110_[55] ,\preg_s_reg_n_111_[55] ,\preg_s_reg_n_112_[55] ,\preg_s_reg_n_113_[55] ,\preg_s_reg_n_114_[55] ,\preg_s_reg_n_115_[55] ,\preg_s_reg_n_116_[55] ,\preg_s_reg_n_117_[55] ,\preg_s_reg_n_118_[55] ,\preg_s_reg_n_119_[55] ,\preg_s_reg_n_120_[55] ,\preg_s_reg_n_121_[55] ,\preg_s_reg_n_122_[55] ,\preg_s_reg_n_123_[55] ,\preg_s_reg_n_124_[55] ,\preg_s_reg_n_125_[55] ,\preg_s_reg_n_126_[55] ,\preg_s_reg_n_127_[55] ,\preg_s_reg_n_128_[55] ,\preg_s_reg_n_129_[55] ,\preg_s_reg_n_130_[55] ,\preg_s_reg_n_131_[55] ,\preg_s_reg_n_132_[55] ,\preg_s_reg_n_133_[55] ,\preg_s_reg_n_134_[55] ,\preg_s_reg_n_135_[55] ,\preg_s_reg_n_136_[55] ,\preg_s_reg_n_137_[55] ,\preg_s_reg_n_138_[55] ,\preg_s_reg_n_139_[55] ,\preg_s_reg_n_140_[55] ,\preg_s_reg_n_141_[55] ,\preg_s_reg_n_142_[55] ,\preg_s_reg_n_143_[55] ,\preg_s_reg_n_144_[55] ,\preg_s_reg_n_145_[55] ,\preg_s_reg_n_146_[55] ,\preg_s_reg_n_147_[55] ,\preg_s_reg_n_148_[55] ,\preg_s_reg_n_149_[55] ,\preg_s_reg_n_150_[55] ,\preg_s_reg_n_151_[55] ,\preg_s_reg_n_152_[55] ,\preg_s_reg_n_153_[55] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[55]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[55]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[56] 
       (.A({DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[56]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[57] ,\preg_s_reg_n_7_[57] ,\preg_s_reg_n_8_[57] ,\preg_s_reg_n_9_[57] ,\preg_s_reg_n_10_[57] ,\preg_s_reg_n_11_[57] ,\preg_s_reg_n_12_[57] ,\preg_s_reg_n_13_[57] ,\preg_s_reg_n_14_[57] ,\preg_s_reg_n_15_[57] ,\preg_s_reg_n_16_[57] ,\preg_s_reg_n_17_[57] ,\preg_s_reg_n_18_[57] ,\preg_s_reg_n_19_[57] ,\preg_s_reg_n_20_[57] ,\preg_s_reg_n_21_[57] ,\preg_s_reg_n_22_[57] ,\preg_s_reg_n_23_[57] }),
        .BCOUT({\preg_s_reg_n_6_[56] ,\preg_s_reg_n_7_[56] ,\preg_s_reg_n_8_[56] ,\preg_s_reg_n_9_[56] ,\preg_s_reg_n_10_[56] ,\preg_s_reg_n_11_[56] ,\preg_s_reg_n_12_[56] ,\preg_s_reg_n_13_[56] ,\preg_s_reg_n_14_[56] ,\preg_s_reg_n_15_[56] ,\preg_s_reg_n_16_[56] ,\preg_s_reg_n_17_[56] ,\preg_s_reg_n_18_[56] ,\preg_s_reg_n_19_[56] ,\preg_s_reg_n_20_[56] ,\preg_s_reg_n_21_[56] ,\preg_s_reg_n_22_[56] ,\preg_s_reg_n_23_[56] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[56]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[56]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[56]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[56]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[56]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[56]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[56]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[57] ,\preg_s_reg_n_107_[57] ,\preg_s_reg_n_108_[57] ,\preg_s_reg_n_109_[57] ,\preg_s_reg_n_110_[57] ,\preg_s_reg_n_111_[57] ,\preg_s_reg_n_112_[57] ,\preg_s_reg_n_113_[57] ,\preg_s_reg_n_114_[57] ,\preg_s_reg_n_115_[57] ,\preg_s_reg_n_116_[57] ,\preg_s_reg_n_117_[57] ,\preg_s_reg_n_118_[57] ,\preg_s_reg_n_119_[57] ,\preg_s_reg_n_120_[57] ,\preg_s_reg_n_121_[57] ,\preg_s_reg_n_122_[57] ,\preg_s_reg_n_123_[57] ,\preg_s_reg_n_124_[57] ,\preg_s_reg_n_125_[57] ,\preg_s_reg_n_126_[57] ,\preg_s_reg_n_127_[57] ,\preg_s_reg_n_128_[57] ,\preg_s_reg_n_129_[57] ,\preg_s_reg_n_130_[57] ,\preg_s_reg_n_131_[57] ,\preg_s_reg_n_132_[57] ,\preg_s_reg_n_133_[57] ,\preg_s_reg_n_134_[57] ,\preg_s_reg_n_135_[57] ,\preg_s_reg_n_136_[57] ,\preg_s_reg_n_137_[57] ,\preg_s_reg_n_138_[57] ,\preg_s_reg_n_139_[57] ,\preg_s_reg_n_140_[57] ,\preg_s_reg_n_141_[57] ,\preg_s_reg_n_142_[57] ,\preg_s_reg_n_143_[57] ,\preg_s_reg_n_144_[57] ,\preg_s_reg_n_145_[57] ,\preg_s_reg_n_146_[57] ,\preg_s_reg_n_147_[57] ,\preg_s_reg_n_148_[57] ,\preg_s_reg_n_149_[57] ,\preg_s_reg_n_150_[57] ,\preg_s_reg_n_151_[57] ,\preg_s_reg_n_152_[57] ,\preg_s_reg_n_153_[57] }),
        .PCOUT({\preg_s_reg_n_106_[56] ,\preg_s_reg_n_107_[56] ,\preg_s_reg_n_108_[56] ,\preg_s_reg_n_109_[56] ,\preg_s_reg_n_110_[56] ,\preg_s_reg_n_111_[56] ,\preg_s_reg_n_112_[56] ,\preg_s_reg_n_113_[56] ,\preg_s_reg_n_114_[56] ,\preg_s_reg_n_115_[56] ,\preg_s_reg_n_116_[56] ,\preg_s_reg_n_117_[56] ,\preg_s_reg_n_118_[56] ,\preg_s_reg_n_119_[56] ,\preg_s_reg_n_120_[56] ,\preg_s_reg_n_121_[56] ,\preg_s_reg_n_122_[56] ,\preg_s_reg_n_123_[56] ,\preg_s_reg_n_124_[56] ,\preg_s_reg_n_125_[56] ,\preg_s_reg_n_126_[56] ,\preg_s_reg_n_127_[56] ,\preg_s_reg_n_128_[56] ,\preg_s_reg_n_129_[56] ,\preg_s_reg_n_130_[56] ,\preg_s_reg_n_131_[56] ,\preg_s_reg_n_132_[56] ,\preg_s_reg_n_133_[56] ,\preg_s_reg_n_134_[56] ,\preg_s_reg_n_135_[56] ,\preg_s_reg_n_136_[56] ,\preg_s_reg_n_137_[56] ,\preg_s_reg_n_138_[56] ,\preg_s_reg_n_139_[56] ,\preg_s_reg_n_140_[56] ,\preg_s_reg_n_141_[56] ,\preg_s_reg_n_142_[56] ,\preg_s_reg_n_143_[56] ,\preg_s_reg_n_144_[56] ,\preg_s_reg_n_145_[56] ,\preg_s_reg_n_146_[56] ,\preg_s_reg_n_147_[56] ,\preg_s_reg_n_148_[56] ,\preg_s_reg_n_149_[56] ,\preg_s_reg_n_150_[56] ,\preg_s_reg_n_151_[56] ,\preg_s_reg_n_152_[56] ,\preg_s_reg_n_153_[56] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[56]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[56]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[57] 
       (.A({DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[57]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[58] ,\preg_s_reg_n_7_[58] ,\preg_s_reg_n_8_[58] ,\preg_s_reg_n_9_[58] ,\preg_s_reg_n_10_[58] ,\preg_s_reg_n_11_[58] ,\preg_s_reg_n_12_[58] ,\preg_s_reg_n_13_[58] ,\preg_s_reg_n_14_[58] ,\preg_s_reg_n_15_[58] ,\preg_s_reg_n_16_[58] ,\preg_s_reg_n_17_[58] ,\preg_s_reg_n_18_[58] ,\preg_s_reg_n_19_[58] ,\preg_s_reg_n_20_[58] ,\preg_s_reg_n_21_[58] ,\preg_s_reg_n_22_[58] ,\preg_s_reg_n_23_[58] }),
        .BCOUT({\preg_s_reg_n_6_[57] ,\preg_s_reg_n_7_[57] ,\preg_s_reg_n_8_[57] ,\preg_s_reg_n_9_[57] ,\preg_s_reg_n_10_[57] ,\preg_s_reg_n_11_[57] ,\preg_s_reg_n_12_[57] ,\preg_s_reg_n_13_[57] ,\preg_s_reg_n_14_[57] ,\preg_s_reg_n_15_[57] ,\preg_s_reg_n_16_[57] ,\preg_s_reg_n_17_[57] ,\preg_s_reg_n_18_[57] ,\preg_s_reg_n_19_[57] ,\preg_s_reg_n_20_[57] ,\preg_s_reg_n_21_[57] ,\preg_s_reg_n_22_[57] ,\preg_s_reg_n_23_[57] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[57]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[57]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[57]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[57]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[57]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[57]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[57]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[58] ,\preg_s_reg_n_107_[58] ,\preg_s_reg_n_108_[58] ,\preg_s_reg_n_109_[58] ,\preg_s_reg_n_110_[58] ,\preg_s_reg_n_111_[58] ,\preg_s_reg_n_112_[58] ,\preg_s_reg_n_113_[58] ,\preg_s_reg_n_114_[58] ,\preg_s_reg_n_115_[58] ,\preg_s_reg_n_116_[58] ,\preg_s_reg_n_117_[58] ,\preg_s_reg_n_118_[58] ,\preg_s_reg_n_119_[58] ,\preg_s_reg_n_120_[58] ,\preg_s_reg_n_121_[58] ,\preg_s_reg_n_122_[58] ,\preg_s_reg_n_123_[58] ,\preg_s_reg_n_124_[58] ,\preg_s_reg_n_125_[58] ,\preg_s_reg_n_126_[58] ,\preg_s_reg_n_127_[58] ,\preg_s_reg_n_128_[58] ,\preg_s_reg_n_129_[58] ,\preg_s_reg_n_130_[58] ,\preg_s_reg_n_131_[58] ,\preg_s_reg_n_132_[58] ,\preg_s_reg_n_133_[58] ,\preg_s_reg_n_134_[58] ,\preg_s_reg_n_135_[58] ,\preg_s_reg_n_136_[58] ,\preg_s_reg_n_137_[58] ,\preg_s_reg_n_138_[58] ,\preg_s_reg_n_139_[58] ,\preg_s_reg_n_140_[58] ,\preg_s_reg_n_141_[58] ,\preg_s_reg_n_142_[58] ,\preg_s_reg_n_143_[58] ,\preg_s_reg_n_144_[58] ,\preg_s_reg_n_145_[58] ,\preg_s_reg_n_146_[58] ,\preg_s_reg_n_147_[58] ,\preg_s_reg_n_148_[58] ,\preg_s_reg_n_149_[58] ,\preg_s_reg_n_150_[58] ,\preg_s_reg_n_151_[58] ,\preg_s_reg_n_152_[58] ,\preg_s_reg_n_153_[58] }),
        .PCOUT({\preg_s_reg_n_106_[57] ,\preg_s_reg_n_107_[57] ,\preg_s_reg_n_108_[57] ,\preg_s_reg_n_109_[57] ,\preg_s_reg_n_110_[57] ,\preg_s_reg_n_111_[57] ,\preg_s_reg_n_112_[57] ,\preg_s_reg_n_113_[57] ,\preg_s_reg_n_114_[57] ,\preg_s_reg_n_115_[57] ,\preg_s_reg_n_116_[57] ,\preg_s_reg_n_117_[57] ,\preg_s_reg_n_118_[57] ,\preg_s_reg_n_119_[57] ,\preg_s_reg_n_120_[57] ,\preg_s_reg_n_121_[57] ,\preg_s_reg_n_122_[57] ,\preg_s_reg_n_123_[57] ,\preg_s_reg_n_124_[57] ,\preg_s_reg_n_125_[57] ,\preg_s_reg_n_126_[57] ,\preg_s_reg_n_127_[57] ,\preg_s_reg_n_128_[57] ,\preg_s_reg_n_129_[57] ,\preg_s_reg_n_130_[57] ,\preg_s_reg_n_131_[57] ,\preg_s_reg_n_132_[57] ,\preg_s_reg_n_133_[57] ,\preg_s_reg_n_134_[57] ,\preg_s_reg_n_135_[57] ,\preg_s_reg_n_136_[57] ,\preg_s_reg_n_137_[57] ,\preg_s_reg_n_138_[57] ,\preg_s_reg_n_139_[57] ,\preg_s_reg_n_140_[57] ,\preg_s_reg_n_141_[57] ,\preg_s_reg_n_142_[57] ,\preg_s_reg_n_143_[57] ,\preg_s_reg_n_144_[57] ,\preg_s_reg_n_145_[57] ,\preg_s_reg_n_146_[57] ,\preg_s_reg_n_147_[57] ,\preg_s_reg_n_148_[57] ,\preg_s_reg_n_149_[57] ,\preg_s_reg_n_150_[57] ,\preg_s_reg_n_151_[57] ,\preg_s_reg_n_152_[57] ,\preg_s_reg_n_153_[57] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[57]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[57]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[58] 
       (.A({DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[58]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[59] ,\preg_s_reg_n_7_[59] ,\preg_s_reg_n_8_[59] ,\preg_s_reg_n_9_[59] ,\preg_s_reg_n_10_[59] ,\preg_s_reg_n_11_[59] ,\preg_s_reg_n_12_[59] ,\preg_s_reg_n_13_[59] ,\preg_s_reg_n_14_[59] ,\preg_s_reg_n_15_[59] ,\preg_s_reg_n_16_[59] ,\preg_s_reg_n_17_[59] ,\preg_s_reg_n_18_[59] ,\preg_s_reg_n_19_[59] ,\preg_s_reg_n_20_[59] ,\preg_s_reg_n_21_[59] ,\preg_s_reg_n_22_[59] ,\preg_s_reg_n_23_[59] }),
        .BCOUT({\preg_s_reg_n_6_[58] ,\preg_s_reg_n_7_[58] ,\preg_s_reg_n_8_[58] ,\preg_s_reg_n_9_[58] ,\preg_s_reg_n_10_[58] ,\preg_s_reg_n_11_[58] ,\preg_s_reg_n_12_[58] ,\preg_s_reg_n_13_[58] ,\preg_s_reg_n_14_[58] ,\preg_s_reg_n_15_[58] ,\preg_s_reg_n_16_[58] ,\preg_s_reg_n_17_[58] ,\preg_s_reg_n_18_[58] ,\preg_s_reg_n_19_[58] ,\preg_s_reg_n_20_[58] ,\preg_s_reg_n_21_[58] ,\preg_s_reg_n_22_[58] ,\preg_s_reg_n_23_[58] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[58]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[58]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[58]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[58]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[58]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[58]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[58]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[59] ,\preg_s_reg_n_107_[59] ,\preg_s_reg_n_108_[59] ,\preg_s_reg_n_109_[59] ,\preg_s_reg_n_110_[59] ,\preg_s_reg_n_111_[59] ,\preg_s_reg_n_112_[59] ,\preg_s_reg_n_113_[59] ,\preg_s_reg_n_114_[59] ,\preg_s_reg_n_115_[59] ,\preg_s_reg_n_116_[59] ,\preg_s_reg_n_117_[59] ,\preg_s_reg_n_118_[59] ,\preg_s_reg_n_119_[59] ,\preg_s_reg_n_120_[59] ,\preg_s_reg_n_121_[59] ,\preg_s_reg_n_122_[59] ,\preg_s_reg_n_123_[59] ,\preg_s_reg_n_124_[59] ,\preg_s_reg_n_125_[59] ,\preg_s_reg_n_126_[59] ,\preg_s_reg_n_127_[59] ,\preg_s_reg_n_128_[59] ,\preg_s_reg_n_129_[59] ,\preg_s_reg_n_130_[59] ,\preg_s_reg_n_131_[59] ,\preg_s_reg_n_132_[59] ,\preg_s_reg_n_133_[59] ,\preg_s_reg_n_134_[59] ,\preg_s_reg_n_135_[59] ,\preg_s_reg_n_136_[59] ,\preg_s_reg_n_137_[59] ,\preg_s_reg_n_138_[59] ,\preg_s_reg_n_139_[59] ,\preg_s_reg_n_140_[59] ,\preg_s_reg_n_141_[59] ,\preg_s_reg_n_142_[59] ,\preg_s_reg_n_143_[59] ,\preg_s_reg_n_144_[59] ,\preg_s_reg_n_145_[59] ,\preg_s_reg_n_146_[59] ,\preg_s_reg_n_147_[59] ,\preg_s_reg_n_148_[59] ,\preg_s_reg_n_149_[59] ,\preg_s_reg_n_150_[59] ,\preg_s_reg_n_151_[59] ,\preg_s_reg_n_152_[59] ,\preg_s_reg_n_153_[59] }),
        .PCOUT({\preg_s_reg_n_106_[58] ,\preg_s_reg_n_107_[58] ,\preg_s_reg_n_108_[58] ,\preg_s_reg_n_109_[58] ,\preg_s_reg_n_110_[58] ,\preg_s_reg_n_111_[58] ,\preg_s_reg_n_112_[58] ,\preg_s_reg_n_113_[58] ,\preg_s_reg_n_114_[58] ,\preg_s_reg_n_115_[58] ,\preg_s_reg_n_116_[58] ,\preg_s_reg_n_117_[58] ,\preg_s_reg_n_118_[58] ,\preg_s_reg_n_119_[58] ,\preg_s_reg_n_120_[58] ,\preg_s_reg_n_121_[58] ,\preg_s_reg_n_122_[58] ,\preg_s_reg_n_123_[58] ,\preg_s_reg_n_124_[58] ,\preg_s_reg_n_125_[58] ,\preg_s_reg_n_126_[58] ,\preg_s_reg_n_127_[58] ,\preg_s_reg_n_128_[58] ,\preg_s_reg_n_129_[58] ,\preg_s_reg_n_130_[58] ,\preg_s_reg_n_131_[58] ,\preg_s_reg_n_132_[58] ,\preg_s_reg_n_133_[58] ,\preg_s_reg_n_134_[58] ,\preg_s_reg_n_135_[58] ,\preg_s_reg_n_136_[58] ,\preg_s_reg_n_137_[58] ,\preg_s_reg_n_138_[58] ,\preg_s_reg_n_139_[58] ,\preg_s_reg_n_140_[58] ,\preg_s_reg_n_141_[58] ,\preg_s_reg_n_142_[58] ,\preg_s_reg_n_143_[58] ,\preg_s_reg_n_144_[58] ,\preg_s_reg_n_145_[58] ,\preg_s_reg_n_146_[58] ,\preg_s_reg_n_147_[58] ,\preg_s_reg_n_148_[58] ,\preg_s_reg_n_149_[58] ,\preg_s_reg_n_150_[58] ,\preg_s_reg_n_151_[58] ,\preg_s_reg_n_152_[58] ,\preg_s_reg_n_153_[58] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[58]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[58]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[59] 
       (.A({DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST[17],DSP_ALU_INST}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[59]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({\preg_s_reg_n_6_[59] ,\preg_s_reg_n_7_[59] ,\preg_s_reg_n_8_[59] ,\preg_s_reg_n_9_[59] ,\preg_s_reg_n_10_[59] ,\preg_s_reg_n_11_[59] ,\preg_s_reg_n_12_[59] ,\preg_s_reg_n_13_[59] ,\preg_s_reg_n_14_[59] ,\preg_s_reg_n_15_[59] ,\preg_s_reg_n_16_[59] ,\preg_s_reg_n_17_[59] ,\preg_s_reg_n_18_[59] ,\preg_s_reg_n_19_[59] ,\preg_s_reg_n_20_[59] ,\preg_s_reg_n_21_[59] ,\preg_s_reg_n_22_[59] ,\preg_s_reg_n_23_[59] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[59]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[59]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[59]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[59]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[59]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[59]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[59]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\preg_s_reg_n_106_[59] ,\preg_s_reg_n_107_[59] ,\preg_s_reg_n_108_[59] ,\preg_s_reg_n_109_[59] ,\preg_s_reg_n_110_[59] ,\preg_s_reg_n_111_[59] ,\preg_s_reg_n_112_[59] ,\preg_s_reg_n_113_[59] ,\preg_s_reg_n_114_[59] ,\preg_s_reg_n_115_[59] ,\preg_s_reg_n_116_[59] ,\preg_s_reg_n_117_[59] ,\preg_s_reg_n_118_[59] ,\preg_s_reg_n_119_[59] ,\preg_s_reg_n_120_[59] ,\preg_s_reg_n_121_[59] ,\preg_s_reg_n_122_[59] ,\preg_s_reg_n_123_[59] ,\preg_s_reg_n_124_[59] ,\preg_s_reg_n_125_[59] ,\preg_s_reg_n_126_[59] ,\preg_s_reg_n_127_[59] ,\preg_s_reg_n_128_[59] ,\preg_s_reg_n_129_[59] ,\preg_s_reg_n_130_[59] ,\preg_s_reg_n_131_[59] ,\preg_s_reg_n_132_[59] ,\preg_s_reg_n_133_[59] ,\preg_s_reg_n_134_[59] ,\preg_s_reg_n_135_[59] ,\preg_s_reg_n_136_[59] ,\preg_s_reg_n_137_[59] ,\preg_s_reg_n_138_[59] ,\preg_s_reg_n_139_[59] ,\preg_s_reg_n_140_[59] ,\preg_s_reg_n_141_[59] ,\preg_s_reg_n_142_[59] ,\preg_s_reg_n_143_[59] ,\preg_s_reg_n_144_[59] ,\preg_s_reg_n_145_[59] ,\preg_s_reg_n_146_[59] ,\preg_s_reg_n_147_[59] ,\preg_s_reg_n_148_[59] ,\preg_s_reg_n_149_[59] ,\preg_s_reg_n_150_[59] ,\preg_s_reg_n_151_[59] ,\preg_s_reg_n_152_[59] ,\preg_s_reg_n_153_[59] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[59]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[59]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[5] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[5]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({\preg_s_reg_n_6_[6] ,\preg_s_reg_n_7_[6] ,\preg_s_reg_n_8_[6] ,\preg_s_reg_n_9_[6] ,\preg_s_reg_n_10_[6] ,\preg_s_reg_n_11_[6] ,\preg_s_reg_n_12_[6] ,\preg_s_reg_n_13_[6] ,\preg_s_reg_n_14_[6] ,\preg_s_reg_n_15_[6] ,\preg_s_reg_n_16_[6] ,\preg_s_reg_n_17_[6] ,\preg_s_reg_n_18_[6] ,\preg_s_reg_n_19_[6] ,\preg_s_reg_n_20_[6] ,\preg_s_reg_n_21_[6] ,\preg_s_reg_n_22_[6] ,\preg_s_reg_n_23_[6] }),
        .BCOUT(\NLW_preg_s_reg[5]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[5]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[5]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[5]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[5]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[5]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[5]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[5]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[6] ,\preg_s_reg_n_107_[6] ,\preg_s_reg_n_108_[6] ,\preg_s_reg_n_109_[6] ,\preg_s_reg_n_110_[6] ,\preg_s_reg_n_111_[6] ,\preg_s_reg_n_112_[6] ,\preg_s_reg_n_113_[6] ,\preg_s_reg_n_114_[6] ,\preg_s_reg_n_115_[6] ,\preg_s_reg_n_116_[6] ,\preg_s_reg_n_117_[6] ,\preg_s_reg_n_118_[6] ,\preg_s_reg_n_119_[6] ,\preg_s_reg_n_120_[6] ,\preg_s_reg_n_121_[6] ,\preg_s_reg_n_122_[6] ,\preg_s_reg_n_123_[6] ,\preg_s_reg_n_124_[6] ,\preg_s_reg_n_125_[6] ,\preg_s_reg_n_126_[6] ,\preg_s_reg_n_127_[6] ,\preg_s_reg_n_128_[6] ,\preg_s_reg_n_129_[6] ,\preg_s_reg_n_130_[6] ,\preg_s_reg_n_131_[6] ,\preg_s_reg_n_132_[6] ,\preg_s_reg_n_133_[6] ,\preg_s_reg_n_134_[6] ,\preg_s_reg_n_135_[6] ,\preg_s_reg_n_136_[6] ,\preg_s_reg_n_137_[6] ,\preg_s_reg_n_138_[6] ,\preg_s_reg_n_139_[6] ,\preg_s_reg_n_140_[6] ,\preg_s_reg_n_141_[6] ,\preg_s_reg_n_142_[6] ,\preg_s_reg_n_143_[6] ,\preg_s_reg_n_144_[6] ,\preg_s_reg_n_145_[6] ,\preg_s_reg_n_146_[6] ,\preg_s_reg_n_147_[6] ,\preg_s_reg_n_148_[6] ,\preg_s_reg_n_149_[6] ,\preg_s_reg_n_150_[6] ,\preg_s_reg_n_151_[6] ,\preg_s_reg_n_152_[6] ,\preg_s_reg_n_153_[6] }),
        .PCOUT({\preg_s_reg_n_106_[5] ,\preg_s_reg_n_107_[5] ,\preg_s_reg_n_108_[5] ,\preg_s_reg_n_109_[5] ,\preg_s_reg_n_110_[5] ,\preg_s_reg_n_111_[5] ,\preg_s_reg_n_112_[5] ,\preg_s_reg_n_113_[5] ,\preg_s_reg_n_114_[5] ,\preg_s_reg_n_115_[5] ,\preg_s_reg_n_116_[5] ,\preg_s_reg_n_117_[5] ,\preg_s_reg_n_118_[5] ,\preg_s_reg_n_119_[5] ,\preg_s_reg_n_120_[5] ,\preg_s_reg_n_121_[5] ,\preg_s_reg_n_122_[5] ,\preg_s_reg_n_123_[5] ,\preg_s_reg_n_124_[5] ,\preg_s_reg_n_125_[5] ,\preg_s_reg_n_126_[5] ,\preg_s_reg_n_127_[5] ,\preg_s_reg_n_128_[5] ,\preg_s_reg_n_129_[5] ,\preg_s_reg_n_130_[5] ,\preg_s_reg_n_131_[5] ,\preg_s_reg_n_132_[5] ,\preg_s_reg_n_133_[5] ,\preg_s_reg_n_134_[5] ,\preg_s_reg_n_135_[5] ,\preg_s_reg_n_136_[5] ,\preg_s_reg_n_137_[5] ,\preg_s_reg_n_138_[5] ,\preg_s_reg_n_139_[5] ,\preg_s_reg_n_140_[5] ,\preg_s_reg_n_141_[5] ,\preg_s_reg_n_142_[5] ,\preg_s_reg_n_143_[5] ,\preg_s_reg_n_144_[5] ,\preg_s_reg_n_145_[5] ,\preg_s_reg_n_146_[5] ,\preg_s_reg_n_147_[5] ,\preg_s_reg_n_148_[5] ,\preg_s_reg_n_149_[5] ,\preg_s_reg_n_150_[5] ,\preg_s_reg_n_151_[5] ,\preg_s_reg_n_152_[5] ,\preg_s_reg_n_153_[5] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[5]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[5]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[6] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[6]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({\preg_s_reg_n_6_[6] ,\preg_s_reg_n_7_[6] ,\preg_s_reg_n_8_[6] ,\preg_s_reg_n_9_[6] ,\preg_s_reg_n_10_[6] ,\preg_s_reg_n_11_[6] ,\preg_s_reg_n_12_[6] ,\preg_s_reg_n_13_[6] ,\preg_s_reg_n_14_[6] ,\preg_s_reg_n_15_[6] ,\preg_s_reg_n_16_[6] ,\preg_s_reg_n_17_[6] ,\preg_s_reg_n_18_[6] ,\preg_s_reg_n_19_[6] ,\preg_s_reg_n_20_[6] ,\preg_s_reg_n_21_[6] ,\preg_s_reg_n_22_[6] ,\preg_s_reg_n_23_[6] }),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[6]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[6]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[6]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[6]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[6]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[6]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[6]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[7] ,\preg_s_reg_n_107_[7] ,\preg_s_reg_n_108_[7] ,\preg_s_reg_n_109_[7] ,\preg_s_reg_n_110_[7] ,\preg_s_reg_n_111_[7] ,\preg_s_reg_n_112_[7] ,\preg_s_reg_n_113_[7] ,\preg_s_reg_n_114_[7] ,\preg_s_reg_n_115_[7] ,\preg_s_reg_n_116_[7] ,\preg_s_reg_n_117_[7] ,\preg_s_reg_n_118_[7] ,\preg_s_reg_n_119_[7] ,\preg_s_reg_n_120_[7] ,\preg_s_reg_n_121_[7] ,\preg_s_reg_n_122_[7] ,\preg_s_reg_n_123_[7] ,\preg_s_reg_n_124_[7] ,\preg_s_reg_n_125_[7] ,\preg_s_reg_n_126_[7] ,\preg_s_reg_n_127_[7] ,\preg_s_reg_n_128_[7] ,\preg_s_reg_n_129_[7] ,\preg_s_reg_n_130_[7] ,\preg_s_reg_n_131_[7] ,\preg_s_reg_n_132_[7] ,\preg_s_reg_n_133_[7] ,\preg_s_reg_n_134_[7] ,\preg_s_reg_n_135_[7] ,\preg_s_reg_n_136_[7] ,\preg_s_reg_n_137_[7] ,\preg_s_reg_n_138_[7] ,\preg_s_reg_n_139_[7] ,\preg_s_reg_n_140_[7] ,\preg_s_reg_n_141_[7] ,\preg_s_reg_n_142_[7] ,\preg_s_reg_n_143_[7] ,\preg_s_reg_n_144_[7] ,\preg_s_reg_n_145_[7] ,\preg_s_reg_n_146_[7] ,\preg_s_reg_n_147_[7] ,\preg_s_reg_n_148_[7] ,\preg_s_reg_n_149_[7] ,\preg_s_reg_n_150_[7] ,\preg_s_reg_n_151_[7] ,\preg_s_reg_n_152_[7] ,\preg_s_reg_n_153_[7] }),
        .PCOUT({\preg_s_reg_n_106_[6] ,\preg_s_reg_n_107_[6] ,\preg_s_reg_n_108_[6] ,\preg_s_reg_n_109_[6] ,\preg_s_reg_n_110_[6] ,\preg_s_reg_n_111_[6] ,\preg_s_reg_n_112_[6] ,\preg_s_reg_n_113_[6] ,\preg_s_reg_n_114_[6] ,\preg_s_reg_n_115_[6] ,\preg_s_reg_n_116_[6] ,\preg_s_reg_n_117_[6] ,\preg_s_reg_n_118_[6] ,\preg_s_reg_n_119_[6] ,\preg_s_reg_n_120_[6] ,\preg_s_reg_n_121_[6] ,\preg_s_reg_n_122_[6] ,\preg_s_reg_n_123_[6] ,\preg_s_reg_n_124_[6] ,\preg_s_reg_n_125_[6] ,\preg_s_reg_n_126_[6] ,\preg_s_reg_n_127_[6] ,\preg_s_reg_n_128_[6] ,\preg_s_reg_n_129_[6] ,\preg_s_reg_n_130_[6] ,\preg_s_reg_n_131_[6] ,\preg_s_reg_n_132_[6] ,\preg_s_reg_n_133_[6] ,\preg_s_reg_n_134_[6] ,\preg_s_reg_n_135_[6] ,\preg_s_reg_n_136_[6] ,\preg_s_reg_n_137_[6] ,\preg_s_reg_n_138_[6] ,\preg_s_reg_n_139_[6] ,\preg_s_reg_n_140_[6] ,\preg_s_reg_n_141_[6] ,\preg_s_reg_n_142_[6] ,\preg_s_reg_n_143_[6] ,\preg_s_reg_n_144_[6] ,\preg_s_reg_n_145_[6] ,\preg_s_reg_n_146_[6] ,\preg_s_reg_n_147_[6] ,\preg_s_reg_n_148_[6] ,\preg_s_reg_n_149_[6] ,\preg_s_reg_n_150_[6] ,\preg_s_reg_n_151_[6] ,\preg_s_reg_n_152_[6] ,\preg_s_reg_n_153_[6] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[6]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[6]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[7] 
       (.A({DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,DSP_ALU_INST_2,A[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[7]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[7]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[7]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[7]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[7]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[7]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[7]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[7]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[7]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[8] ,\preg_s_reg_n_107_[8] ,\preg_s_reg_n_108_[8] ,\preg_s_reg_n_109_[8] ,\preg_s_reg_n_110_[8] ,\preg_s_reg_n_111_[8] ,\preg_s_reg_n_112_[8] ,\preg_s_reg_n_113_[8] ,\preg_s_reg_n_114_[8] ,\preg_s_reg_n_115_[8] ,\preg_s_reg_n_116_[8] ,\preg_s_reg_n_117_[8] ,\preg_s_reg_n_118_[8] ,\preg_s_reg_n_119_[8] ,\preg_s_reg_n_120_[8] ,\preg_s_reg_n_121_[8] ,\preg_s_reg_n_122_[8] ,\preg_s_reg_n_123_[8] ,\preg_s_reg_n_124_[8] ,\preg_s_reg_n_125_[8] ,\preg_s_reg_n_126_[8] ,\preg_s_reg_n_127_[8] ,\preg_s_reg_n_128_[8] ,\preg_s_reg_n_129_[8] ,\preg_s_reg_n_130_[8] ,\preg_s_reg_n_131_[8] ,\preg_s_reg_n_132_[8] ,\preg_s_reg_n_133_[8] ,\preg_s_reg_n_134_[8] ,\preg_s_reg_n_135_[8] ,\preg_s_reg_n_136_[8] ,\preg_s_reg_n_137_[8] ,\preg_s_reg_n_138_[8] ,\preg_s_reg_n_139_[8] ,\preg_s_reg_n_140_[8] ,\preg_s_reg_n_141_[8] ,\preg_s_reg_n_142_[8] ,\preg_s_reg_n_143_[8] ,\preg_s_reg_n_144_[8] ,\preg_s_reg_n_145_[8] ,\preg_s_reg_n_146_[8] ,\preg_s_reg_n_147_[8] ,\preg_s_reg_n_148_[8] ,\preg_s_reg_n_149_[8] ,\preg_s_reg_n_150_[8] ,\preg_s_reg_n_151_[8] ,\preg_s_reg_n_152_[8] ,\preg_s_reg_n_153_[8] }),
        .PCOUT({\preg_s_reg_n_106_[7] ,\preg_s_reg_n_107_[7] ,\preg_s_reg_n_108_[7] ,\preg_s_reg_n_109_[7] ,\preg_s_reg_n_110_[7] ,\preg_s_reg_n_111_[7] ,\preg_s_reg_n_112_[7] ,\preg_s_reg_n_113_[7] ,\preg_s_reg_n_114_[7] ,\preg_s_reg_n_115_[7] ,\preg_s_reg_n_116_[7] ,\preg_s_reg_n_117_[7] ,\preg_s_reg_n_118_[7] ,\preg_s_reg_n_119_[7] ,\preg_s_reg_n_120_[7] ,\preg_s_reg_n_121_[7] ,\preg_s_reg_n_122_[7] ,\preg_s_reg_n_123_[7] ,\preg_s_reg_n_124_[7] ,\preg_s_reg_n_125_[7] ,\preg_s_reg_n_126_[7] ,\preg_s_reg_n_127_[7] ,\preg_s_reg_n_128_[7] ,\preg_s_reg_n_129_[7] ,\preg_s_reg_n_130_[7] ,\preg_s_reg_n_131_[7] ,\preg_s_reg_n_132_[7] ,\preg_s_reg_n_133_[7] ,\preg_s_reg_n_134_[7] ,\preg_s_reg_n_135_[7] ,\preg_s_reg_n_136_[7] ,\preg_s_reg_n_137_[7] ,\preg_s_reg_n_138_[7] ,\preg_s_reg_n_139_[7] ,\preg_s_reg_n_140_[7] ,\preg_s_reg_n_141_[7] ,\preg_s_reg_n_142_[7] ,\preg_s_reg_n_143_[7] ,\preg_s_reg_n_144_[7] ,\preg_s_reg_n_145_[7] ,\preg_s_reg_n_146_[7] ,\preg_s_reg_n_147_[7] ,\preg_s_reg_n_148_[7] ,\preg_s_reg_n_149_[7] ,\preg_s_reg_n_150_[7] ,\preg_s_reg_n_151_[7] ,\preg_s_reg_n_152_[7] ,\preg_s_reg_n_153_[7] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[7]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[7]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[8] 
       (.A({\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 ,\areg_s_reg[0]_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[8]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST_2,A[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[8]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[8]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[8]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[8]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[8]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[8]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[8]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[8]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[9] ,\preg_s_reg_n_107_[9] ,\preg_s_reg_n_108_[9] ,\preg_s_reg_n_109_[9] ,\preg_s_reg_n_110_[9] ,\preg_s_reg_n_111_[9] ,\preg_s_reg_n_112_[9] ,\preg_s_reg_n_113_[9] ,\preg_s_reg_n_114_[9] ,\preg_s_reg_n_115_[9] ,\preg_s_reg_n_116_[9] ,\preg_s_reg_n_117_[9] ,\preg_s_reg_n_118_[9] ,\preg_s_reg_n_119_[9] ,\preg_s_reg_n_120_[9] ,\preg_s_reg_n_121_[9] ,\preg_s_reg_n_122_[9] ,\preg_s_reg_n_123_[9] ,\preg_s_reg_n_124_[9] ,\preg_s_reg_n_125_[9] ,\preg_s_reg_n_126_[9] ,\preg_s_reg_n_127_[9] ,\preg_s_reg_n_128_[9] ,\preg_s_reg_n_129_[9] ,\preg_s_reg_n_130_[9] ,\preg_s_reg_n_131_[9] ,\preg_s_reg_n_132_[9] ,\preg_s_reg_n_133_[9] ,\preg_s_reg_n_134_[9] ,\preg_s_reg_n_135_[9] ,\preg_s_reg_n_136_[9] ,\preg_s_reg_n_137_[9] ,\preg_s_reg_n_138_[9] ,\preg_s_reg_n_139_[9] ,\preg_s_reg_n_140_[9] ,\preg_s_reg_n_141_[9] ,\preg_s_reg_n_142_[9] ,\preg_s_reg_n_143_[9] ,\preg_s_reg_n_144_[9] ,\preg_s_reg_n_145_[9] ,\preg_s_reg_n_146_[9] ,\preg_s_reg_n_147_[9] ,\preg_s_reg_n_148_[9] ,\preg_s_reg_n_149_[9] ,\preg_s_reg_n_150_[9] ,\preg_s_reg_n_151_[9] ,\preg_s_reg_n_152_[9] ,\preg_s_reg_n_153_[9] }),
        .PCOUT({\preg_s_reg_n_106_[8] ,\preg_s_reg_n_107_[8] ,\preg_s_reg_n_108_[8] ,\preg_s_reg_n_109_[8] ,\preg_s_reg_n_110_[8] ,\preg_s_reg_n_111_[8] ,\preg_s_reg_n_112_[8] ,\preg_s_reg_n_113_[8] ,\preg_s_reg_n_114_[8] ,\preg_s_reg_n_115_[8] ,\preg_s_reg_n_116_[8] ,\preg_s_reg_n_117_[8] ,\preg_s_reg_n_118_[8] ,\preg_s_reg_n_119_[8] ,\preg_s_reg_n_120_[8] ,\preg_s_reg_n_121_[8] ,\preg_s_reg_n_122_[8] ,\preg_s_reg_n_123_[8] ,\preg_s_reg_n_124_[8] ,\preg_s_reg_n_125_[8] ,\preg_s_reg_n_126_[8] ,\preg_s_reg_n_127_[8] ,\preg_s_reg_n_128_[8] ,\preg_s_reg_n_129_[8] ,\preg_s_reg_n_130_[8] ,\preg_s_reg_n_131_[8] ,\preg_s_reg_n_132_[8] ,\preg_s_reg_n_133_[8] ,\preg_s_reg_n_134_[8] ,\preg_s_reg_n_135_[8] ,\preg_s_reg_n_136_[8] ,\preg_s_reg_n_137_[8] ,\preg_s_reg_n_138_[8] ,\preg_s_reg_n_139_[8] ,\preg_s_reg_n_140_[8] ,\preg_s_reg_n_141_[8] ,\preg_s_reg_n_142_[8] ,\preg_s_reg_n_143_[8] ,\preg_s_reg_n_144_[8] ,\preg_s_reg_n_145_[8] ,\preg_s_reg_n_146_[8] ,\preg_s_reg_n_147_[8] ,\preg_s_reg_n_148_[8] ,\preg_s_reg_n_149_[8] ,\preg_s_reg_n_150_[8] ,\preg_s_reg_n_151_[8] ,\preg_s_reg_n_152_[8] ,\preg_s_reg_n_153_[8] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[8]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[8]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \preg_s_reg[9] 
       (.A({A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17],A[17:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_preg_s_reg[9]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_preg_s_reg[9]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_preg_s_reg[9]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_preg_s_reg[9]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_preg_s_reg[9]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_preg_s_reg[9]_OVERFLOW_UNCONNECTED ),
        .P(\NLW_preg_s_reg[9]_P_UNCONNECTED [47:0]),
        .PATTERNBDETECT(\NLW_preg_s_reg[9]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_preg_s_reg[9]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\preg_s_reg_n_106_[10] ,\preg_s_reg_n_107_[10] ,\preg_s_reg_n_108_[10] ,\preg_s_reg_n_109_[10] ,\preg_s_reg_n_110_[10] ,\preg_s_reg_n_111_[10] ,\preg_s_reg_n_112_[10] ,\preg_s_reg_n_113_[10] ,\preg_s_reg_n_114_[10] ,\preg_s_reg_n_115_[10] ,\preg_s_reg_n_116_[10] ,\preg_s_reg_n_117_[10] ,\preg_s_reg_n_118_[10] ,\preg_s_reg_n_119_[10] ,\preg_s_reg_n_120_[10] ,\preg_s_reg_n_121_[10] ,\preg_s_reg_n_122_[10] ,\preg_s_reg_n_123_[10] ,\preg_s_reg_n_124_[10] ,\preg_s_reg_n_125_[10] ,\preg_s_reg_n_126_[10] ,\preg_s_reg_n_127_[10] ,\preg_s_reg_n_128_[10] ,\preg_s_reg_n_129_[10] ,\preg_s_reg_n_130_[10] ,\preg_s_reg_n_131_[10] ,\preg_s_reg_n_132_[10] ,\preg_s_reg_n_133_[10] ,\preg_s_reg_n_134_[10] ,\preg_s_reg_n_135_[10] ,\preg_s_reg_n_136_[10] ,\preg_s_reg_n_137_[10] ,\preg_s_reg_n_138_[10] ,\preg_s_reg_n_139_[10] ,\preg_s_reg_n_140_[10] ,\preg_s_reg_n_141_[10] ,\preg_s_reg_n_142_[10] ,\preg_s_reg_n_143_[10] ,\preg_s_reg_n_144_[10] ,\preg_s_reg_n_145_[10] ,\preg_s_reg_n_146_[10] ,\preg_s_reg_n_147_[10] ,\preg_s_reg_n_148_[10] ,\preg_s_reg_n_149_[10] ,\preg_s_reg_n_150_[10] ,\preg_s_reg_n_151_[10] ,\preg_s_reg_n_152_[10] ,\preg_s_reg_n_153_[10] }),
        .PCOUT({\preg_s_reg_n_106_[9] ,\preg_s_reg_n_107_[9] ,\preg_s_reg_n_108_[9] ,\preg_s_reg_n_109_[9] ,\preg_s_reg_n_110_[9] ,\preg_s_reg_n_111_[9] ,\preg_s_reg_n_112_[9] ,\preg_s_reg_n_113_[9] ,\preg_s_reg_n_114_[9] ,\preg_s_reg_n_115_[9] ,\preg_s_reg_n_116_[9] ,\preg_s_reg_n_117_[9] ,\preg_s_reg_n_118_[9] ,\preg_s_reg_n_119_[9] ,\preg_s_reg_n_120_[9] ,\preg_s_reg_n_121_[9] ,\preg_s_reg_n_122_[9] ,\preg_s_reg_n_123_[9] ,\preg_s_reg_n_124_[9] ,\preg_s_reg_n_125_[9] ,\preg_s_reg_n_126_[9] ,\preg_s_reg_n_127_[9] ,\preg_s_reg_n_128_[9] ,\preg_s_reg_n_129_[9] ,\preg_s_reg_n_130_[9] ,\preg_s_reg_n_131_[9] ,\preg_s_reg_n_132_[9] ,\preg_s_reg_n_133_[9] ,\preg_s_reg_n_134_[9] ,\preg_s_reg_n_135_[9] ,\preg_s_reg_n_136_[9] ,\preg_s_reg_n_137_[9] ,\preg_s_reg_n_138_[9] ,\preg_s_reg_n_139_[9] ,\preg_s_reg_n_140_[9] ,\preg_s_reg_n_141_[9] ,\preg_s_reg_n_142_[9] ,\preg_s_reg_n_143_[9] ,\preg_s_reg_n_144_[9] ,\preg_s_reg_n_145_[9] ,\preg_s_reg_n_146_[9] ,\preg_s_reg_n_147_[9] ,\preg_s_reg_n_148_[9] ,\preg_s_reg_n_149_[9] ,\preg_s_reg_n_150_[9] ,\preg_s_reg_n_151_[9] ,\preg_s_reg_n_152_[9] ,\preg_s_reg_n_153_[9] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_preg_s_reg[9]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_preg_s_reg[9]_XOROUT_UNCONNECTED [7:0]));
endmodule

(* ORIG_REF_NAME = "SPI" *) 
module SPI_Sensor_0_SPI
   (CLK,
    Valid,
    SCK,
    CNV,
    data,
    SDO,
    CNV_temp_reg);
  output CLK;
  output Valid;
  output SCK;
  output CNV;
  output [17:0]data;
  input SDO;
  input CNV_temp_reg;

  wire AD4006_Controller_0_n_19;
  wire AD4006_Controller_0_n_20;
  wire AD4006_Controller_0_n_21;
  wire AD4006_Controller_0_n_22;
  wire AD4006_Controller_0_n_23;
  wire AD4006_Controller_0_n_24;
  wire AD4006_Controller_0_n_25;
  wire AD4006_Controller_0_n_26;
  wire AD4006_Controller_0_n_27;
  wire AD4006_Controller_0_n_28;
  wire AD4006_Controller_0_n_29;
  wire AD4006_Controller_0_n_30;
  wire AD4006_Controller_0_n_31;
  wire AD4006_Controller_0_n_32;
  wire AD4006_Controller_0_n_33;
  wire AD4006_Controller_0_n_34;
  wire AD4006_Controller_0_n_35;
  wire AD4006_Controller_0_n_36;
  wire AD4006_Controller_0_n_37;
  wire AD4006_Controller_0_n_38;
  wire AD4006_Controller_0_n_39;
  wire AD4006_Controller_0_n_40;
  wire AD4006_Controller_0_n_41;
  wire AD4006_Controller_0_n_42;
  wire AD4006_Controller_0_n_43;
  wire AD4006_Controller_0_n_44;
  wire AD4006_Controller_0_n_45;
  wire AD4006_Controller_0_n_46;
  wire AD4006_Controller_0_n_47;
  wire AD4006_Controller_0_n_48;
  wire AD4006_Controller_0_n_49;
  wire AD4006_Controller_0_n_50;
  wire AD4006_Controller_0_n_51;
  wire AD4006_Controller_0_n_52;
  wire AD4006_Controller_0_n_53;
  wire AD4006_Controller_0_n_54;
  wire AD4006_Controller_0_n_55;
  wire AD4006_Controller_0_n_56;
  wire AD4006_Controller_0_n_57;
  wire AD4006_Controller_0_n_58;
  wire AD4006_Controller_0_n_59;
  wire AD4006_Controller_0_n_60;
  wire CLK;
  wire CNV;
  wire CNV_temp_reg;
  wire SCK;
  wire SDO;
  wire Valid;
  wire [17:0]data;
  wire [17:0]data_i;

  (* x_core_info = "AD4006_Controller,Vivado 2020.2" *) 
  SPI_Sensor_0_SPI_AD4006_Controller_0_0 AD4006_Controller_0
       (.A({AD4006_Controller_0_n_19,AD4006_Controller_0_n_20,AD4006_Controller_0_n_21,AD4006_Controller_0_n_22,AD4006_Controller_0_n_23,AD4006_Controller_0_n_24,AD4006_Controller_0_n_25,AD4006_Controller_0_n_26,AD4006_Controller_0_n_27,AD4006_Controller_0_n_28,AD4006_Controller_0_n_29,AD4006_Controller_0_n_30,AD4006_Controller_0_n_31,AD4006_Controller_0_n_32,AD4006_Controller_0_n_33,AD4006_Controller_0_n_34,AD4006_Controller_0_n_35,AD4006_Controller_0_n_36}),
        .CNV(CNV),
        .CNV_temp_reg(CNV_temp_reg),
        .\DataOut_reg[17]_rep__0 ({AD4006_Controller_0_n_37,AD4006_Controller_0_n_38,AD4006_Controller_0_n_39,AD4006_Controller_0_n_40,AD4006_Controller_0_n_41,AD4006_Controller_0_n_42,AD4006_Controller_0_n_43,AD4006_Controller_0_n_44,AD4006_Controller_0_n_45,AD4006_Controller_0_n_46,AD4006_Controller_0_n_47,AD4006_Controller_0_n_48,AD4006_Controller_0_n_49,AD4006_Controller_0_n_50,AD4006_Controller_0_n_51,AD4006_Controller_0_n_52,AD4006_Controller_0_n_53,AD4006_Controller_0_n_54}),
        .\DataOut_reg[17]_rep__1 ({AD4006_Controller_0_n_55,AD4006_Controller_0_n_56}),
        .\DataOut_reg[17]_rep__4 ({AD4006_Controller_0_n_57,AD4006_Controller_0_n_58}),
        .\DataOut_reg[17]_rep__5 ({AD4006_Controller_0_n_59,AD4006_Controller_0_n_60}),
        .Q(data_i),
        .SCK(SCK),
        .SDO(SDO),
        .Valid(Valid),
        .clk(CLK));
  (* x_core_info = "Parallel_FIR_Filter,Vivado 2020.2" *) 
  SPI_Sensor_0_SPI_Parallel_FIR_Filter_0_1 Parallel_FIR_Filter_0
       (.A({AD4006_Controller_0_n_57,AD4006_Controller_0_n_58,AD4006_Controller_0_n_20,AD4006_Controller_0_n_21,AD4006_Controller_0_n_22,AD4006_Controller_0_n_23,AD4006_Controller_0_n_24,AD4006_Controller_0_n_25,AD4006_Controller_0_n_26,AD4006_Controller_0_n_27,AD4006_Controller_0_n_28,AD4006_Controller_0_n_29,AD4006_Controller_0_n_30,AD4006_Controller_0_n_31,AD4006_Controller_0_n_32,AD4006_Controller_0_n_33,AD4006_Controller_0_n_34,AD4006_Controller_0_n_35,AD4006_Controller_0_n_36}),
        .DSP_ALU_INST({AD4006_Controller_0_n_37,AD4006_Controller_0_n_38,AD4006_Controller_0_n_39,AD4006_Controller_0_n_40,AD4006_Controller_0_n_41,AD4006_Controller_0_n_42,AD4006_Controller_0_n_43,AD4006_Controller_0_n_44,AD4006_Controller_0_n_45,AD4006_Controller_0_n_46,AD4006_Controller_0_n_47,AD4006_Controller_0_n_48,AD4006_Controller_0_n_49,AD4006_Controller_0_n_50,AD4006_Controller_0_n_51,AD4006_Controller_0_n_52,AD4006_Controller_0_n_53,AD4006_Controller_0_n_54}),
        .DSP_ALU_INST_0({AD4006_Controller_0_n_55,AD4006_Controller_0_n_56}),
        .DSP_ALU_INST_1({AD4006_Controller_0_n_59,AD4006_Controller_0_n_60}),
        .DSP_ALU_INST_2(AD4006_Controller_0_n_19),
        .Q(data_i),
        .clk(CLK),
        .data(data));
endmodule

(* ORIG_REF_NAME = "SPI_AD4006_Controller_0_0" *) 
module SPI_Sensor_0_SPI_AD4006_Controller_0_0
   (clk,
    Q,
    A,
    \DataOut_reg[17]_rep__0 ,
    \DataOut_reg[17]_rep__1 ,
    \DataOut_reg[17]_rep__4 ,
    \DataOut_reg[17]_rep__5 ,
    Valid,
    SCK,
    CNV,
    SDO,
    CNV_temp_reg);
  output clk;
  output [17:0]Q;
  output [17:0]A;
  output [17:0]\DataOut_reg[17]_rep__0 ;
  output [1:0]\DataOut_reg[17]_rep__1 ;
  output [1:0]\DataOut_reg[17]_rep__4 ;
  output [1:0]\DataOut_reg[17]_rep__5 ;
  output Valid;
  output SCK;
  output CNV;
  input SDO;
  input CNV_temp_reg;

  wire [17:0]A;
  wire CNV;
  wire CNV_temp_reg;
  wire [17:0]\DataOut_reg[17]_rep__0 ;
  wire [1:0]\DataOut_reg[17]_rep__1 ;
  wire [1:0]\DataOut_reg[17]_rep__4 ;
  wire [1:0]\DataOut_reg[17]_rep__5 ;
  wire [17:0]Q;
  wire SCK;
  wire SDO;
  wire Valid;
  wire clk;

  SPI_Sensor_0_AD4006_Controller U0
       (.A(A),
        .CNV(CNV),
        .CNV_temp_reg_0(CNV_temp_reg),
        .\DataOut_reg[17]_rep__0_0 (\DataOut_reg[17]_rep__0 ),
        .\DataOut_reg[17]_rep__1_0 (\DataOut_reg[17]_rep__1 ),
        .\DataOut_reg[17]_rep__4_0 (\DataOut_reg[17]_rep__4 ),
        .\DataOut_reg[17]_rep__5_0 (\DataOut_reg[17]_rep__5 ),
        .Q(Q),
        .SCK(SCK),
        .SDO(SDO),
        .Valid(Valid),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "SPI_Parallel_FIR_Filter_0_1" *) 
module SPI_Sensor_0_SPI_Parallel_FIR_Filter_0_1
   (data,
    clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1,
    Q,
    A,
    DSP_ALU_INST_2);
  output [17:0]data;
  input clk;
  input [17:0]DSP_ALU_INST;
  input [1:0]DSP_ALU_INST_0;
  input [1:0]DSP_ALU_INST_1;
  input [17:0]Q;
  input [18:0]A;
  input [0:0]DSP_ALU_INST_2;

  wire [18:0]A;
  wire [17:0]DSP_ALU_INST;
  wire [1:0]DSP_ALU_INST_0;
  wire [1:0]DSP_ALU_INST_1;
  wire [0:0]DSP_ALU_INST_2;
  wire [17:0]Q;
  wire clk;
  wire [17:0]data;

  SPI_Sensor_0_Parallel_FIR_Filter U0
       (.A({DSP_ALU_INST_1,A[16:0]}),
        .DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .DSP_ALU_INST_1(A[18:17]),
        .DSP_ALU_INST_2(DSP_ALU_INST_2),
        .Q(Q),
        .clk(clk),
        .data(data));
endmodule

(* ORIG_REF_NAME = "SPI_wrapper" *) 
module SPI_Sensor_0_SPI_wrapper
   (clk,
    Valid,
    SCK,
    CNV,
    data,
    SDO,
    CLK);
  output clk;
  output Valid;
  output SCK;
  output CNV;
  output [17:0]data;
  input SDO;
  input CLK;

  wire CLK;
  wire CNV;
  wire SCK;
  wire SDO;
  wire Valid;
  wire clk;
  wire [17:0]data;

  SPI_Sensor_0_SPI SPI_i
       (.CLK(clk),
        .CNV(CNV),
        .CNV_temp_reg(CLK),
        .SCK(SCK),
        .SDO(SDO),
        .Valid(Valid),
        .data(data));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
