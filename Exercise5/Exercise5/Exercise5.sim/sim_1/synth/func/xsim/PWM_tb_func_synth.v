// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Feb 13 16:54:06 2025
// Host        : LAPTOP-RH96MGM6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.sim/sim_1/synth/func/xsim/PWM_tb_func_synth.v
// Design      : PWM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BOOT = "6" *) (* OFFA = "3" *) (* OFFB = "4" *) 
(* ONA = "1" *) (* ONB = "2" *) (* START = "0" *) 
(* SWITCH = "5" *) 
(* NotValidForBitStream *)
module PWM
   (Duty,
    SysClk,
    Reset,
    pwm);
  input [7:0]Duty;
  input SysClk;
  input Reset;
  output pwm;

  wire [15:0]Counter;
  wire [7:0]Duty;
  wire [7:0]Duty_IBUF;
  wire \FSM_onehot_CurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_10_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_11_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_12_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_13_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_15_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_16_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_17_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_18_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_19_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_20_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_21_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_22_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_23_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_24_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_25_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_26_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_27_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_28_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_29_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_30_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_31_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_32_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_9_n_0 ;
  wire \FSM_onehot_CurrentState[4]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[4]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[5]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[5]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[5]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState[5]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_12_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_4_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_5_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_6_n_0 ;
  wire \FSM_onehot_CurrentState[6]_i_7_n_0 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_14_n_0 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_14_n_1 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_14_n_2 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_14_n_3 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_2_n_0 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_2_n_1 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_2_n_2 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_2_n_3 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_3_n_1 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_3_n_2 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_3_n_3 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_8_n_1 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_8_n_2 ;
  wire \FSM_onehot_CurrentState_reg[3]_i_8_n_3 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_14_n_0 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_14_n_1 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_14_n_2 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_14_n_3 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_15_n_1 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_15_n_2 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_15_n_3 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_3_n_0 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_3_n_1 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_3_n_2 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_3_n_3 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_8_n_0 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_8_n_1 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_8_n_2 ;
  wire \FSM_onehot_CurrentState_reg[6]_i_8_n_3 ;
  wire \FSM_onehot_CurrentState_reg_n_0_[0] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[1] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[2] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[3] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[4] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[5] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[6] ;
  wire Reset;
  wire Reset_IBUF;
  wire SysClk;
  wire SysClk_IBUF;
  wire SysClk_IBUF_BUFG;
  wire [7:0]TransitionTime;
  wire [15:0]in5;
  wire pwm;
  wire pwm_OBUF;
  wire [3:0]\NLW_FSM_onehot_CurrentState_reg[3]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_CurrentState_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_CurrentState_reg[3]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_CurrentState_reg[3]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_FSM_onehot_CurrentState_reg[6]_i_15_CO_UNCONNECTED ;

  IBUF \Duty_IBUF[0]_inst 
       (.I(Duty[0]),
        .O(Duty_IBUF[0]));
  IBUF \Duty_IBUF[1]_inst 
       (.I(Duty[1]),
        .O(Duty_IBUF[1]));
  IBUF \Duty_IBUF[2]_inst 
       (.I(Duty[2]),
        .O(Duty_IBUF[2]));
  IBUF \Duty_IBUF[3]_inst 
       (.I(Duty[3]),
        .O(Duty_IBUF[3]));
  IBUF \Duty_IBUF[4]_inst 
       (.I(Duty[4]),
        .O(Duty_IBUF[4]));
  IBUF \Duty_IBUF[5]_inst 
       (.I(Duty[5]),
        .O(Duty_IBUF[5]));
  IBUF \Duty_IBUF[6]_inst 
       (.I(Duty[6]),
        .O(Duty_IBUF[6]));
  IBUF \Duty_IBUF[7]_inst 
       (.I(Duty[7]),
        .O(Duty_IBUF[7]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAAAAA)) 
    \FSM_onehot_CurrentState[2]_i_1 
       (.I0(\FSM_onehot_CurrentState[2]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState[6]_i_6_n_0 ),
        .I2(\FSM_onehot_CurrentState[6]_i_5_n_0 ),
        .I3(\FSM_onehot_CurrentState[5]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState[6]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState[2]_i_3_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_CurrentState[2]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState[2]_i_4_n_0 ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .O(\FSM_onehot_CurrentState[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CurrentState[2]_i_3 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_CurrentState_reg[3]_i_2_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_CurrentState[2]_i_4 
       (.I0(Duty_IBUF[2]),
        .I1(Duty_IBUF[3]),
        .I2(Duty_IBUF[0]),
        .I3(Duty_IBUF[1]),
        .I4(\FSM_onehot_CurrentState[5]_i_4_n_0 ),
        .O(\FSM_onehot_CurrentState[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004440)) 
    \FSM_onehot_CurrentState[3]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg[3]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(\FSM_onehot_CurrentState[6]_i_2_n_0 ),
        .I3(\FSM_onehot_CurrentState[5]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState[6]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState[6]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_10 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_11 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_12 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_CurrentState[3]_i_13 
       (.I0(TransitionTime[4]),
        .I1(TransitionTime[2]),
        .I2(TransitionTime[0]),
        .I3(TransitionTime[1]),
        .I4(TransitionTime[3]),
        .I5(TransitionTime[5]),
        .O(\FSM_onehot_CurrentState[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE000000)) 
    \FSM_onehot_CurrentState[3]_i_15 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[14]),
        .I5(in5[15]),
        .O(\FSM_onehot_CurrentState[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE000000)) 
    \FSM_onehot_CurrentState[3]_i_16 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[12]),
        .I5(in5[13]),
        .O(\FSM_onehot_CurrentState[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE000000)) 
    \FSM_onehot_CurrentState[3]_i_17 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[10]),
        .I5(in5[11]),
        .O(\FSM_onehot_CurrentState[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE000000)) 
    \FSM_onehot_CurrentState[3]_i_18 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[8]),
        .I5(in5[9]),
        .O(\FSM_onehot_CurrentState[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h01FE00FE00FEFEFE)) 
    \FSM_onehot_CurrentState[3]_i_19 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[14]),
        .I5(in5[15]),
        .O(\FSM_onehot_CurrentState[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h01FE00FE00FEFEFE)) 
    \FSM_onehot_CurrentState[3]_i_20 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[12]),
        .I5(in5[13]),
        .O(\FSM_onehot_CurrentState[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h01FE00FE00FEFEFE)) 
    \FSM_onehot_CurrentState[3]_i_21 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[10]),
        .I5(in5[11]),
        .O(\FSM_onehot_CurrentState[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h01FE00FE00FEFEFE)) 
    \FSM_onehot_CurrentState[3]_i_22 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[8]),
        .I5(in5[9]),
        .O(\FSM_onehot_CurrentState[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4CC8044044480000)) 
    \FSM_onehot_CurrentState[3]_i_23 
       (.I0(TransitionTime[7]),
        .I1(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I2(TransitionTime[6]),
        .I3(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I4(in5[7]),
        .I5(in5[6]),
        .O(\FSM_onehot_CurrentState[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h4CC8044044480000)) 
    \FSM_onehot_CurrentState[3]_i_24 
       (.I0(TransitionTime[5]),
        .I1(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I2(TransitionTime[4]),
        .I3(\FSM_onehot_CurrentState[3]_i_31_n_0 ),
        .I4(in5[5]),
        .I5(in5[4]),
        .O(\FSM_onehot_CurrentState[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4CC8044044480000)) 
    \FSM_onehot_CurrentState[3]_i_25 
       (.I0(TransitionTime[3]),
        .I1(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I2(TransitionTime[2]),
        .I3(\FSM_onehot_CurrentState[3]_i_32_n_0 ),
        .I4(in5[3]),
        .I5(in5[2]),
        .O(\FSM_onehot_CurrentState[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h80C0E000)) 
    \FSM_onehot_CurrentState[3]_i_26 
       (.I0(in5[0]),
        .I1(in5[1]),
        .I2(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I3(TransitionTime[0]),
        .I4(TransitionTime[1]),
        .O(\FSM_onehot_CurrentState[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8020401F401F2080)) 
    \FSM_onehot_CurrentState[3]_i_27 
       (.I0(in5[6]),
        .I1(in5[7]),
        .I2(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I3(TransitionTime[7]),
        .I4(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I5(TransitionTime[6]),
        .O(\FSM_onehot_CurrentState[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8106180660060606)) 
    \FSM_onehot_CurrentState[3]_i_28 
       (.I0(\FSM_onehot_CurrentState[3]_i_31_n_0 ),
        .I1(TransitionTime[4]),
        .I2(TransitionTime[5]),
        .I3(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I4(in5[5]),
        .I5(in5[4]),
        .O(\FSM_onehot_CurrentState[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8160180600006666)) 
    \FSM_onehot_CurrentState[3]_i_29 
       (.I0(\FSM_onehot_CurrentState[3]_i_32_n_0 ),
        .I1(TransitionTime[2]),
        .I2(in5[3]),
        .I3(in5[2]),
        .I4(TransitionTime[3]),
        .I5(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .O(\FSM_onehot_CurrentState[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h05288700)) 
    \FSM_onehot_CurrentState[3]_i_30 
       (.I0(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .I1(in5[1]),
        .I2(TransitionTime[1]),
        .I3(TransitionTime[0]),
        .I4(in5[0]),
        .O(\FSM_onehot_CurrentState[3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[3]_i_31 
       (.I0(TransitionTime[2]),
        .I1(TransitionTime[0]),
        .I2(TransitionTime[1]),
        .I3(TransitionTime[3]),
        .O(\FSM_onehot_CurrentState[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_CurrentState[3]_i_32 
       (.I0(TransitionTime[0]),
        .I1(TransitionTime[1]),
        .O(\FSM_onehot_CurrentState[3]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_4 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_5 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_6 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_7 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_CurrentState[3]_i_9 
       (.I0(TransitionTime[6]),
        .I1(\FSM_onehot_CurrentState[3]_i_13_n_0 ),
        .I2(TransitionTime[7]),
        .O(\FSM_onehot_CurrentState[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA8A)) 
    \FSM_onehot_CurrentState[4]_i_1 
       (.I0(\FSM_onehot_CurrentState[4]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState[6]_i_2_n_0 ),
        .I2(in5[1]),
        .I3(\FSM_onehot_CurrentState[6]_i_4_n_0 ),
        .I4(\FSM_onehot_CurrentState[6]_i_5_n_0 ),
        .I5(\FSM_onehot_CurrentState[6]_i_6_n_0 ),
        .O(\FSM_onehot_CurrentState[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \FSM_onehot_CurrentState[4]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg[3]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .O(\FSM_onehot_CurrentState[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAAAAAAAAA)) 
    \FSM_onehot_CurrentState[5]_i_1 
       (.I0(\FSM_onehot_CurrentState[5]_i_2_n_0 ),
        .I1(\FSM_onehot_CurrentState[6]_i_6_n_0 ),
        .I2(\FSM_onehot_CurrentState[6]_i_5_n_0 ),
        .I3(\FSM_onehot_CurrentState[5]_i_3_n_0 ),
        .I4(\FSM_onehot_CurrentState[6]_i_2_n_0 ),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .O(\FSM_onehot_CurrentState[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_CurrentState[5]_i_2 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState[5]_i_4_n_0 ),
        .I2(Duty_IBUF[1]),
        .I3(Duty_IBUF[0]),
        .I4(Duty_IBUF[3]),
        .I5(Duty_IBUF[2]),
        .O(\FSM_onehot_CurrentState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_CurrentState[5]_i_3 
       (.I0(in5[7]),
        .I1(in5[6]),
        .I2(in5[1]),
        .O(\FSM_onehot_CurrentState[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[5]_i_4 
       (.I0(Duty_IBUF[5]),
        .I1(Duty_IBUF[4]),
        .I2(Duty_IBUF[7]),
        .I3(Duty_IBUF[6]),
        .O(\FSM_onehot_CurrentState[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0400000000)) 
    \FSM_onehot_CurrentState[6]_i_1 
       (.I0(\FSM_onehot_CurrentState[6]_i_2_n_0 ),
        .I1(in5[1]),
        .I2(\FSM_onehot_CurrentState[6]_i_4_n_0 ),
        .I3(\FSM_onehot_CurrentState[6]_i_5_n_0 ),
        .I4(\FSM_onehot_CurrentState[6]_i_6_n_0 ),
        .I5(\FSM_onehot_CurrentState[6]_i_7_n_0 ),
        .O(\FSM_onehot_CurrentState[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_10 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[3]),
        .O(Counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_11 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[2]),
        .O(Counter[2]));
  LUT5 #(
    .INIT(32'h55555557)) 
    \FSM_onehot_CurrentState[6]_i_12 
       (.I0(in5[1]),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\FSM_onehot_CurrentState[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_13 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[0]),
        .O(Counter[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_16 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[7]),
        .O(Counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_17 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[6]),
        .O(Counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_18 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[5]),
        .O(Counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_19 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[4]),
        .O(Counter[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_CurrentState[6]_i_2 
       (.I0(in5[3]),
        .I1(in5[2]),
        .I2(in5[5]),
        .I3(in5[4]),
        .O(\FSM_onehot_CurrentState[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_20 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[11]),
        .O(Counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_21 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[10]),
        .O(Counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_22 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[9]),
        .O(Counter[9]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_23 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[8]),
        .O(Counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_24 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[15]),
        .O(Counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_25 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[14]),
        .O(Counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_26 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[13]),
        .O(Counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_27 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[12]),
        .O(Counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_CurrentState[6]_i_4 
       (.I0(in5[6]),
        .I1(in5[7]),
        .O(\FSM_onehot_CurrentState[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[6]_i_5 
       (.I0(in5[9]),
        .I1(in5[8]),
        .I2(in5[11]),
        .I3(in5[10]),
        .O(\FSM_onehot_CurrentState[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[6]_i_6 
       (.I0(in5[13]),
        .I1(in5[12]),
        .I2(in5[15]),
        .I3(in5[14]),
        .O(\FSM_onehot_CurrentState[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_CurrentState[6]_i_7 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\FSM_onehot_CurrentState[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_CurrentState[6]_i_9 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .I4(in5[1]),
        .O(Counter[1]));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_CurrentState_reg[0] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[0] ),
        .S(Reset_IBUF));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[1] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState_reg_n_0_[0] ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .R(Reset_IBUF));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[2] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .R(Reset_IBUF));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[3] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[3]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .R(Reset_IBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[3]_i_14 
       (.CI(1'b0),
        .CO({\FSM_onehot_CurrentState_reg[3]_i_14_n_0 ,\FSM_onehot_CurrentState_reg[3]_i_14_n_1 ,\FSM_onehot_CurrentState_reg[3]_i_14_n_2 ,\FSM_onehot_CurrentState_reg[3]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_onehot_CurrentState[3]_i_23_n_0 ,\FSM_onehot_CurrentState[3]_i_24_n_0 ,\FSM_onehot_CurrentState[3]_i_25_n_0 ,\FSM_onehot_CurrentState[3]_i_26_n_0 }),
        .O(\NLW_FSM_onehot_CurrentState_reg[3]_i_14_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_CurrentState[3]_i_27_n_0 ,\FSM_onehot_CurrentState[3]_i_28_n_0 ,\FSM_onehot_CurrentState[3]_i_29_n_0 ,\FSM_onehot_CurrentState[3]_i_30_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[3]_i_2 
       (.CI(\FSM_onehot_CurrentState_reg[3]_i_3_n_0 ),
        .CO({\FSM_onehot_CurrentState_reg[3]_i_2_n_0 ,\FSM_onehot_CurrentState_reg[3]_i_2_n_1 ,\FSM_onehot_CurrentState_reg[3]_i_2_n_2 ,\FSM_onehot_CurrentState_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_CurrentState_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_CurrentState[3]_i_4_n_0 ,\FSM_onehot_CurrentState[3]_i_5_n_0 ,\FSM_onehot_CurrentState[3]_i_6_n_0 ,\FSM_onehot_CurrentState[3]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[3]_i_3 
       (.CI(\FSM_onehot_CurrentState_reg[3]_i_8_n_0 ),
        .CO({\FSM_onehot_CurrentState_reg[3]_i_3_n_0 ,\FSM_onehot_CurrentState_reg[3]_i_3_n_1 ,\FSM_onehot_CurrentState_reg[3]_i_3_n_2 ,\FSM_onehot_CurrentState_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_CurrentState_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_CurrentState[3]_i_9_n_0 ,\FSM_onehot_CurrentState[3]_i_10_n_0 ,\FSM_onehot_CurrentState[3]_i_11_n_0 ,\FSM_onehot_CurrentState[3]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[3]_i_8 
       (.CI(\FSM_onehot_CurrentState_reg[3]_i_14_n_0 ),
        .CO({\FSM_onehot_CurrentState_reg[3]_i_8_n_0 ,\FSM_onehot_CurrentState_reg[3]_i_8_n_1 ,\FSM_onehot_CurrentState_reg[3]_i_8_n_2 ,\FSM_onehot_CurrentState_reg[3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_onehot_CurrentState[3]_i_15_n_0 ,\FSM_onehot_CurrentState[3]_i_16_n_0 ,\FSM_onehot_CurrentState[3]_i_17_n_0 ,\FSM_onehot_CurrentState[3]_i_18_n_0 }),
        .O(\NLW_FSM_onehot_CurrentState_reg[3]_i_8_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_CurrentState[3]_i_19_n_0 ,\FSM_onehot_CurrentState[3]_i_20_n_0 ,\FSM_onehot_CurrentState[3]_i_21_n_0 ,\FSM_onehot_CurrentState[3]_i_22_n_0 }));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[4] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[4]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[4] ),
        .R(Reset_IBUF));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[5] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[5]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[5] ),
        .R(Reset_IBUF));
  (* FSM_ENCODED_STATES = "START:0000010,BOOT:0000001,ONB:0001000,OFFB:0100000,ONA:0000100,OFFA:0010000,SWITCH:1000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[6] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[6]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .R(Reset_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[6]_i_14 
       (.CI(\FSM_onehot_CurrentState_reg[6]_i_8_n_0 ),
        .CO({\FSM_onehot_CurrentState_reg[6]_i_14_n_0 ,\FSM_onehot_CurrentState_reg[6]_i_14_n_1 ,\FSM_onehot_CurrentState_reg[6]_i_14_n_2 ,\FSM_onehot_CurrentState_reg[6]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[11:8]),
        .S(Counter[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[6]_i_15 
       (.CI(\FSM_onehot_CurrentState_reg[6]_i_14_n_0 ),
        .CO({\NLW_FSM_onehot_CurrentState_reg[6]_i_15_CO_UNCONNECTED [3],\FSM_onehot_CurrentState_reg[6]_i_15_n_1 ,\FSM_onehot_CurrentState_reg[6]_i_15_n_2 ,\FSM_onehot_CurrentState_reg[6]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[15:12]),
        .S(Counter[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[6]_i_3 
       (.CI(1'b0),
        .CO({\FSM_onehot_CurrentState_reg[6]_i_3_n_0 ,\FSM_onehot_CurrentState_reg[6]_i_3_n_1 ,\FSM_onehot_CurrentState_reg[6]_i_3_n_2 ,\FSM_onehot_CurrentState_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Counter[1],1'b0}),
        .O(in5[3:0]),
        .S({Counter[3:2],\FSM_onehot_CurrentState[6]_i_12_n_0 ,Counter[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \FSM_onehot_CurrentState_reg[6]_i_8 
       (.CI(\FSM_onehot_CurrentState_reg[6]_i_3_n_0 ),
        .CO({\FSM_onehot_CurrentState_reg[6]_i_8_n_0 ,\FSM_onehot_CurrentState_reg[6]_i_8_n_1 ,\FSM_onehot_CurrentState_reg[6]_i_8_n_2 ,\FSM_onehot_CurrentState_reg[6]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[7:4]),
        .S(Counter[7:4]));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  BUFG SysClk_IBUF_BUFG_inst
       (.I(SysClk_IBUF),
        .O(SysClk_IBUF_BUFG));
  IBUF SysClk_IBUF_inst
       (.I(SysClk),
        .O(SysClk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[0] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[0]),
        .Q(TransitionTime[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[1] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[1]),
        .Q(TransitionTime[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[2] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[2]),
        .Q(TransitionTime[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[3] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[3]),
        .Q(TransitionTime[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[4] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[4]),
        .Q(TransitionTime[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[5] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[5]),
        .Q(TransitionTime[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[6] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[6]),
        .Q(TransitionTime[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TransitionTime_reg[7] 
       (.C(SysClk_IBUF_BUFG),
        .CE(1'b1),
        .D(Duty_IBUF[7]),
        .Q(TransitionTime[7]),
        .R(1'b0));
  OBUF pwm_OBUF_inst
       (.I(pwm_OBUF),
        .O(pwm));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm_OBUF_inst_i_1
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[6] ),
        .O(pwm_OBUF));
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
