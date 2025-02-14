// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Feb 13 23:18:03 2025
// Host        : LAPTOP-RH96MGM6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.sim/sim_1/impl/func/xsim/PWM_tb_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PWM
   (JA_OBUF,
    CLK100MHZ_IBUF_BUFG,
    DOADO,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    rst_in);
  output [0:0]JA_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [6:0]DOADO;
  input \FSM_sequential_CurrentState_reg[0]_0 ;
  input rst_in;

  wire CLK100MHZ_IBUF_BUFG;
  wire \Counter[1]_i_1__1_n_0 ;
  wire \Counter[1]_i_3__1_n_0 ;
  wire [15:1]Counter_reg;
  wire \Counter_reg[13]_i_1__1_n_5 ;
  wire \Counter_reg[13]_i_1__1_n_6 ;
  wire \Counter_reg[13]_i_1__1_n_7 ;
  wire \Counter_reg[1]_i_2__1_n_0 ;
  wire \Counter_reg[1]_i_2__1_n_4 ;
  wire \Counter_reg[1]_i_2__1_n_5 ;
  wire \Counter_reg[1]_i_2__1_n_6 ;
  wire \Counter_reg[1]_i_2__1_n_7 ;
  wire \Counter_reg[5]_i_1__1_n_0 ;
  wire \Counter_reg[5]_i_1__1_n_4 ;
  wire \Counter_reg[5]_i_1__1_n_5 ;
  wire \Counter_reg[5]_i_1__1_n_6 ;
  wire \Counter_reg[5]_i_1__1_n_7 ;
  wire \Counter_reg[9]_i_1__1_n_0 ;
  wire \Counter_reg[9]_i_1__1_n_4 ;
  wire \Counter_reg[9]_i_1__1_n_5 ;
  wire \Counter_reg[9]_i_1__1_n_6 ;
  wire \Counter_reg[9]_i_1__1_n_7 ;
  wire [2:0]CurrentState;
  wire [6:0]DOADO;
  wire \FSM_sequential_CurrentState[2]_i_3__1_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_5__1_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_6__1_n_0 ;
  wire \FSM_sequential_CurrentState_reg[0]_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry__0_n_0 ;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8__1_n_0;
  wire rst_in;
  wire [3:0]\NLW_Counter_reg[13]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter_reg[13]_i_1__1_O_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[1]_i_2__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[5]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[9]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h19)) 
    \Counter[1]_i_1__1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .O(\Counter[1]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3__1 
       (.I0(Counter_reg[1]),
        .O(\Counter[1]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_7 ),
        .Q(Counter_reg[13]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[13]_i_1__1 
       (.CI(\Counter_reg[9]_i_1__1_n_0 ),
        .CO(\NLW_Counter_reg[13]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter_reg[13]_i_1__1_O_UNCONNECTED [3],\Counter_reg[13]_i_1__1_n_5 ,\Counter_reg[13]_i_1__1_n_6 ,\Counter_reg[13]_i_1__1_n_7 }),
        .S({1'b0,Counter_reg[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_7 ),
        .Q(Counter_reg[1]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2__1 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2__1_n_0 ,\NLW_Counter_reg[1]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2__1_n_4 ,\Counter_reg[1]_i_2__1_n_5 ,\Counter_reg[1]_i_2__1_n_6 ,\Counter_reg[1]_i_2__1_n_7 }),
        .S({Counter_reg[4:2],\Counter[1]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_6 ),
        .Q(Counter_reg[2]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_5 ),
        .Q(Counter_reg[3]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_4 ),
        .Q(Counter_reg[4]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_7 ),
        .Q(Counter_reg[5]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1__1 
       (.CI(\Counter_reg[1]_i_2__1_n_0 ),
        .CO({\Counter_reg[5]_i_1__1_n_0 ,\NLW_Counter_reg[5]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1__1_n_4 ,\Counter_reg[5]_i_1__1_n_5 ,\Counter_reg[5]_i_1__1_n_6 ,\Counter_reg[5]_i_1__1_n_7 }),
        .S(Counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_6 ),
        .Q(Counter_reg[6]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_5 ),
        .Q(Counter_reg[7]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_7 ),
        .Q(Counter_reg[9]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[9]_i_1__1 
       (.CI(\Counter_reg[5]_i_1__1_n_0 ),
        .CO({\Counter_reg[9]_i_1__1_n_0 ,\NLW_Counter_reg[9]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[9]_i_1__1_n_4 ,\Counter_reg[9]_i_1__1_n_5 ,\Counter_reg[9]_i_1__1_n_6 ,\Counter_reg[9]_i_1__1_n_7 }),
        .S(Counter_reg[12:9]));
  LUT6 #(
    .INIT(64'h444040CC444540CC)) 
    \FSM_sequential_CurrentState[0]_i_1__1 
       (.I0(CurrentState[2]),
        .I1(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I2(\FSM_sequential_CurrentState[2]_i_3__1_n_0 ),
        .I3(CurrentState[1]),
        .I4(CurrentState[0]),
        .I5(\NextState1_inferred__1/i__carry__0_n_0 ),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h06190619061F041D)) 
    \FSM_sequential_CurrentState[1]_i_1__1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .I3(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I4(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_3__1_n_0 ),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1__1 
       (.I0(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .I3(CurrentState[2]),
        .I4(\FSM_sequential_CurrentState[2]_i_3__1_n_0 ),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3__1 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .I2(Counter_reg[8]),
        .I3(Counter_reg[9]),
        .I4(\FSM_sequential_CurrentState[2]_i_5__1_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_6__1_n_0 ),
        .O(\FSM_sequential_CurrentState[2]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5__1 
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(\FSM_sequential_CurrentState[2]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_6__1 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(\FSM_sequential_CurrentState[2]_i_6__1_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(rst_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LED16_B_OBUF_inst_i_1
       (.I0(CurrentState[0]),
        .I1(CurrentState[2]),
        .O(JA_OBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NextState1_inferred__1/i__carry_n_0 ,\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry__0 
       (.CI(\NextState1_inferred__1/i__carry_n_0 ),
        .CO({\NextState1_inferred__1/i__carry__0_n_0 ,\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__1
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__1
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__1
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__1
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5__1
       (.I0(Counter_reg[15]),
        .I1(Counter_reg[14]),
        .O(i__carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6__1
       (.I0(Counter_reg[13]),
        .I1(Counter_reg[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7__1
       (.I0(Counter_reg[11]),
        .I1(Counter_reg[10]),
        .O(i__carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8__1
       (.I0(Counter_reg[9]),
        .I1(Counter_reg[8]),
        .O(i__carry__0_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_1__1
       (.I0(Counter_reg[7]),
        .I1(DOADO[5]),
        .I2(DOADO[6]),
        .I3(Counter_reg[6]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_2__1
       (.I0(Counter_reg[5]),
        .I1(DOADO[3]),
        .I2(DOADO[4]),
        .I3(Counter_reg[4]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_3__1
       (.I0(Counter_reg[3]),
        .I1(DOADO[1]),
        .I2(DOADO[2]),
        .I3(Counter_reg[2]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(Counter_reg[1]),
        .I1(DOADO[0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(Counter_reg[7]),
        .I1(DOADO[6]),
        .I2(Counter_reg[6]),
        .I3(DOADO[5]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(Counter_reg[5]),
        .I1(DOADO[4]),
        .I2(Counter_reg[4]),
        .I3(DOADO[3]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(Counter_reg[3]),
        .I1(DOADO[2]),
        .I2(Counter_reg[2]),
        .I3(DOADO[1]),
        .O(i__carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__1
       (.I0(Counter_reg[1]),
        .I1(DOADO[0]),
        .O(i__carry_i_8__1_n_0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_0
   (JA_OBUF,
    CLK100MHZ_IBUF_BUFG,
    DOBDO,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    rst_in);
  output [0:0]JA_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [6:0]DOBDO;
  input \FSM_sequential_CurrentState_reg[0]_0 ;
  input rst_in;

  wire CLK100MHZ_IBUF_BUFG;
  wire \Counter[1]_i_1__0_n_0 ;
  wire \Counter[1]_i_3__0_n_0 ;
  wire [15:1]Counter_reg;
  wire \Counter_reg[13]_i_1__0_n_5 ;
  wire \Counter_reg[13]_i_1__0_n_6 ;
  wire \Counter_reg[13]_i_1__0_n_7 ;
  wire \Counter_reg[1]_i_2__0_n_0 ;
  wire \Counter_reg[1]_i_2__0_n_4 ;
  wire \Counter_reg[1]_i_2__0_n_5 ;
  wire \Counter_reg[1]_i_2__0_n_6 ;
  wire \Counter_reg[1]_i_2__0_n_7 ;
  wire \Counter_reg[5]_i_1__0_n_0 ;
  wire \Counter_reg[5]_i_1__0_n_4 ;
  wire \Counter_reg[5]_i_1__0_n_5 ;
  wire \Counter_reg[5]_i_1__0_n_6 ;
  wire \Counter_reg[5]_i_1__0_n_7 ;
  wire \Counter_reg[9]_i_1__0_n_0 ;
  wire \Counter_reg[9]_i_1__0_n_4 ;
  wire \Counter_reg[9]_i_1__0_n_5 ;
  wire \Counter_reg[9]_i_1__0_n_6 ;
  wire \Counter_reg[9]_i_1__0_n_7 ;
  wire [2:0]CurrentState;
  wire [6:0]DOBDO;
  wire \FSM_sequential_CurrentState[2]_i_3__0_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_5__0_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_6__0_n_0 ;
  wire \FSM_sequential_CurrentState_reg[0]_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry__0_n_0 ;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_8__0_n_0;
  wire rst_in;
  wire [3:0]\NLW_Counter_reg[13]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter_reg[13]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[1]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[5]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[9]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h19)) 
    \Counter[1]_i_1__0 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .O(\Counter[1]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3__0 
       (.I0(Counter_reg[1]),
        .O(\Counter[1]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_7 ),
        .Q(Counter_reg[13]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[13]_i_1__0 
       (.CI(\Counter_reg[9]_i_1__0_n_0 ),
        .CO(\NLW_Counter_reg[13]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter_reg[13]_i_1__0_O_UNCONNECTED [3],\Counter_reg[13]_i_1__0_n_5 ,\Counter_reg[13]_i_1__0_n_6 ,\Counter_reg[13]_i_1__0_n_7 }),
        .S({1'b0,Counter_reg[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_7 ),
        .Q(Counter_reg[1]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2__0 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2__0_n_0 ,\NLW_Counter_reg[1]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2__0_n_4 ,\Counter_reg[1]_i_2__0_n_5 ,\Counter_reg[1]_i_2__0_n_6 ,\Counter_reg[1]_i_2__0_n_7 }),
        .S({Counter_reg[4:2],\Counter[1]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_6 ),
        .Q(Counter_reg[2]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_5 ),
        .Q(Counter_reg[3]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_4 ),
        .Q(Counter_reg[4]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_7 ),
        .Q(Counter_reg[5]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1__0 
       (.CI(\Counter_reg[1]_i_2__0_n_0 ),
        .CO({\Counter_reg[5]_i_1__0_n_0 ,\NLW_Counter_reg[5]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1__0_n_4 ,\Counter_reg[5]_i_1__0_n_5 ,\Counter_reg[5]_i_1__0_n_6 ,\Counter_reg[5]_i_1__0_n_7 }),
        .S(Counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_6 ),
        .Q(Counter_reg[6]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_5 ),
        .Q(Counter_reg[7]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_7 ),
        .Q(Counter_reg[9]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[9]_i_1__0 
       (.CI(\Counter_reg[5]_i_1__0_n_0 ),
        .CO({\Counter_reg[9]_i_1__0_n_0 ,\NLW_Counter_reg[9]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[9]_i_1__0_n_4 ,\Counter_reg[9]_i_1__0_n_5 ,\Counter_reg[9]_i_1__0_n_6 ,\Counter_reg[9]_i_1__0_n_7 }),
        .S(Counter_reg[12:9]));
  LUT6 #(
    .INIT(64'h444040CC444540CC)) 
    \FSM_sequential_CurrentState[0]_i_1__0 
       (.I0(CurrentState[2]),
        .I1(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I2(\FSM_sequential_CurrentState[2]_i_3__0_n_0 ),
        .I3(CurrentState[1]),
        .I4(CurrentState[0]),
        .I5(\NextState1_inferred__1/i__carry__0_n_0 ),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h06190619061F041D)) 
    \FSM_sequential_CurrentState[1]_i_1__0 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .I3(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I4(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_3__0_n_0 ),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1__0 
       (.I0(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .I3(CurrentState[2]),
        .I4(\FSM_sequential_CurrentState[2]_i_3__0_n_0 ),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3__0 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .I2(Counter_reg[8]),
        .I3(Counter_reg[9]),
        .I4(\FSM_sequential_CurrentState[2]_i_5__0_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_6__0_n_0 ),
        .O(\FSM_sequential_CurrentState[2]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5__0 
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(\FSM_sequential_CurrentState[2]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_6__0 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(\FSM_sequential_CurrentState[2]_i_6__0_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(rst_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LED16_G_OBUF_inst_i_1
       (.I0(CurrentState[0]),
        .I1(CurrentState[2]),
        .O(JA_OBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NextState1_inferred__1/i__carry_n_0 ,\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry__0 
       (.CI(\NextState1_inferred__1/i__carry_n_0 ),
        .CO({\NextState1_inferred__1/i__carry__0_n_0 ,\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__0
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5__0
       (.I0(Counter_reg[15]),
        .I1(Counter_reg[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6__0
       (.I0(Counter_reg[13]),
        .I1(Counter_reg[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7__0
       (.I0(Counter_reg[11]),
        .I1(Counter_reg[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8__0
       (.I0(Counter_reg[9]),
        .I1(Counter_reg[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_1__0
       (.I0(Counter_reg[7]),
        .I1(DOBDO[5]),
        .I2(DOBDO[6]),
        .I3(Counter_reg[6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_2__0
       (.I0(Counter_reg[5]),
        .I1(DOBDO[3]),
        .I2(DOBDO[4]),
        .I3(Counter_reg[4]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_3__0
       (.I0(Counter_reg[3]),
        .I1(DOBDO[1]),
        .I2(DOBDO[2]),
        .I3(Counter_reg[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(Counter_reg[1]),
        .I1(DOBDO[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(Counter_reg[7]),
        .I1(DOBDO[6]),
        .I2(Counter_reg[6]),
        .I3(DOBDO[5]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(Counter_reg[5]),
        .I1(DOBDO[4]),
        .I2(Counter_reg[4]),
        .I3(DOBDO[3]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(Counter_reg[3]),
        .I1(DOBDO[2]),
        .I2(Counter_reg[2]),
        .I3(DOBDO[1]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__0
       (.I0(Counter_reg[1]),
        .I1(DOBDO[0]),
        .O(i__carry_i_8__0_n_0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_1
   (JA_OBUF,
    CLK100MHZ_IBUF_BUFG,
    DOADO,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    rst_in);
  output [0:0]JA_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [6:0]DOADO;
  input \FSM_sequential_CurrentState_reg[0]_0 ;
  input rst_in;

  wire CLK100MHZ_IBUF_BUFG;
  wire \Counter[1]_i_1_n_0 ;
  wire \Counter[1]_i_3_n_0 ;
  wire [15:1]Counter_reg;
  wire \Counter_reg[13]_i_1_n_5 ;
  wire \Counter_reg[13]_i_1_n_6 ;
  wire \Counter_reg[13]_i_1_n_7 ;
  wire \Counter_reg[1]_i_2_n_0 ;
  wire \Counter_reg[1]_i_2_n_4 ;
  wire \Counter_reg[1]_i_2_n_5 ;
  wire \Counter_reg[1]_i_2_n_6 ;
  wire \Counter_reg[1]_i_2_n_7 ;
  wire \Counter_reg[5]_i_1_n_0 ;
  wire \Counter_reg[5]_i_1_n_4 ;
  wire \Counter_reg[5]_i_1_n_5 ;
  wire \Counter_reg[5]_i_1_n_6 ;
  wire \Counter_reg[5]_i_1_n_7 ;
  wire \Counter_reg[9]_i_1_n_0 ;
  wire \Counter_reg[9]_i_1_n_4 ;
  wire \Counter_reg[9]_i_1_n_5 ;
  wire \Counter_reg[9]_i_1_n_6 ;
  wire \Counter_reg[9]_i_1_n_7 ;
  wire [2:0]CurrentState;
  wire [6:0]DOADO;
  wire \FSM_sequential_CurrentState[2]_i_3_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_5_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_6_n_0 ;
  wire \FSM_sequential_CurrentState_reg[0]_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire in5;
  wire rst_in;
  wire [3:0]\NLW_Counter_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_Counter_reg[13]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[1]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[5]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[9]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h19)) 
    \Counter[1]_i_1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .O(\Counter[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3 
       (.I0(Counter_reg[1]),
        .O(\Counter[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1_n_7 ),
        .Q(Counter_reg[13]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[13]_i_1 
       (.CI(\Counter_reg[9]_i_1_n_0 ),
        .CO(\NLW_Counter_reg[13]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter_reg[13]_i_1_O_UNCONNECTED [3],\Counter_reg[13]_i_1_n_5 ,\Counter_reg[13]_i_1_n_6 ,\Counter_reg[13]_i_1_n_7 }),
        .S({1'b0,Counter_reg[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_7 ),
        .Q(Counter_reg[1]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2_n_0 ,\NLW_Counter_reg[1]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2_n_4 ,\Counter_reg[1]_i_2_n_5 ,\Counter_reg[1]_i_2_n_6 ,\Counter_reg[1]_i_2_n_7 }),
        .S({Counter_reg[4:2],\Counter[1]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_6 ),
        .Q(Counter_reg[2]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_5 ),
        .Q(Counter_reg[3]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_4 ),
        .Q(Counter_reg[4]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_7 ),
        .Q(Counter_reg[5]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1 
       (.CI(\Counter_reg[1]_i_2_n_0 ),
        .CO({\Counter_reg[5]_i_1_n_0 ,\NLW_Counter_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1_n_4 ,\Counter_reg[5]_i_1_n_5 ,\Counter_reg[5]_i_1_n_6 ,\Counter_reg[5]_i_1_n_7 }),
        .S(Counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_6 ),
        .Q(Counter_reg[6]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_5 ),
        .Q(Counter_reg[7]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_7 ),
        .Q(Counter_reg[9]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[9]_i_1 
       (.CI(\Counter_reg[5]_i_1_n_0 ),
        .CO({\Counter_reg[9]_i_1_n_0 ,\NLW_Counter_reg[9]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[9]_i_1_n_4 ,\Counter_reg[9]_i_1_n_5 ,\Counter_reg[9]_i_1_n_6 ,\Counter_reg[9]_i_1_n_7 }),
        .S(Counter_reg[12:9]));
  LUT6 #(
    .INIT(64'h444040CC444540CC)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(CurrentState[2]),
        .I1(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I2(\FSM_sequential_CurrentState[2]_i_3_n_0 ),
        .I3(CurrentState[1]),
        .I4(CurrentState[0]),
        .I5(in5),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h06190619061F041D)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(CurrentState[2]),
        .I3(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I4(in5),
        .I5(\FSM_sequential_CurrentState[2]_i_3_n_0 ),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1 
       (.I0(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .I3(CurrentState[2]),
        .I4(\FSM_sequential_CurrentState[2]_i_3_n_0 ),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .I2(Counter_reg[8]),
        .I3(Counter_reg[9]),
        .I4(\FSM_sequential_CurrentState[2]_i_5_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_6_n_0 ),
        .O(\FSM_sequential_CurrentState[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5 
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(\FSM_sequential_CurrentState[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_6 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(\FSM_sequential_CurrentState[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(rst_in));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(rst_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LED16_R_OBUF_inst_i_1
       (.I0(CurrentState[0]),
        .I1(CurrentState[2]),
        .O(JA_OBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NextState1_inferred__1/i__carry_n_0 ,\NLW_NextState1_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \NextState1_inferred__1/i__carry__0 
       (.CI(\NextState1_inferred__1/i__carry_n_0 ),
        .CO({in5,\NLW_NextState1_inferred__1/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_NextState1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(Counter_reg[15]),
        .I1(Counter_reg[14]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(Counter_reg[13]),
        .I1(Counter_reg[12]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(Counter_reg[11]),
        .I1(Counter_reg[10]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(Counter_reg[9]),
        .I1(Counter_reg[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_1
       (.I0(Counter_reg[7]),
        .I1(DOADO[5]),
        .I2(DOADO[6]),
        .I3(Counter_reg[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_2
       (.I0(Counter_reg[5]),
        .I1(DOADO[3]),
        .I2(DOADO[4]),
        .I3(Counter_reg[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    i__carry_i_3
       (.I0(Counter_reg[3]),
        .I1(DOADO[1]),
        .I2(DOADO[2]),
        .I3(Counter_reg[2]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(Counter_reg[1]),
        .I1(DOADO[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(Counter_reg[7]),
        .I1(DOADO[6]),
        .I2(Counter_reg[6]),
        .I3(DOADO[5]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(Counter_reg[5]),
        .I1(DOADO[4]),
        .I2(Counter_reg[4]),
        .I3(DOADO[3]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(Counter_reg[3]),
        .I1(DOADO[2]),
        .I2(Counter_reg[2]),
        .I3(DOADO[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(Counter_reg[1]),
        .I1(DOADO[0]),
        .O(i__carry_i_8_n_0));
endmodule

module rgb_controller
   (JA_OBUF,
    rst_in,
    CLK100MHZ_IBUF_BUFG,
    SW_IBUF);
  output [3:1]JA_OBUF;
  input rst_in;
  input CLK100MHZ_IBUF_BUFG;
  input [15:0]SW_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire [3:1]JA_OBUF;
  wire [15:0]SW_IBUF;
  wire [7:0]bdut;
  wire [7:0]gdut;
  wire [7:0]rdut;
  wire rst_in;
  wire stdb_n_7;
  wire stdr_n_14;
  wire stdr_n_15;

  PWM pwmb
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DOADO({bdut[7:2],bdut[0]}),
        .\FSM_sequential_CurrentState_reg[0]_0 (stdb_n_7),
        .JA_OBUF(JA_OBUF[3]),
        .rst_in(rst_in));
  PWM_0 pwmg
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DOBDO({gdut[7:2],gdut[0]}),
        .\FSM_sequential_CurrentState_reg[0]_0 (stdr_n_15),
        .JA_OBUF(JA_OBUF[2]),
        .rst_in(rst_in));
  PWM_1 pwmr
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DOADO({rdut[7:2],rdut[0]}),
        .\FSM_sequential_CurrentState_reg[0]_0 (stdr_n_14),
        .JA_OBUF(JA_OBUF[1]),
        .rst_in(rst_in));
  switch_to_duty stdb
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DOADO({bdut[7:2],bdut[0]}),
        .SW_IBUF(SW_IBUF[4:0]),
        .duty_reg_0(stdb_n_7));
  switch_to_duty_2 stdr
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DOADO({rdut[7:2],rdut[0]}),
        .DOBDO({gdut[7:2],gdut[0]}),
        .SW_IBUF(SW_IBUF[15:5]),
        .duty_reg_0(stdr_n_14),
        .duty_reg_1(stdr_n_15));
endmodule

module switch_to_duty
   (DOADO,
    duty_reg_0,
    CLK100MHZ_IBUF_BUFG,
    SW_IBUF);
  output [6:0]DOADO;
  output duty_reg_0;
  input CLK100MHZ_IBUF_BUFG;
  input [4:0]SW_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire [6:0]DOADO;
  wire \FSM_sequential_CurrentState[2]_i_4__1_n_0 ;
  wire [4:0]SW_IBUF;
  wire duty_reg_0;
  wire [15:7]NLW_duty_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_duty_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_duty_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_duty_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2__1 
       (.I0(DOADO[3]),
        .I1(DOADO[4]),
        .I2(DOADO[1]),
        .I3(DOADO[2]),
        .I4(DOADO[0]),
        .I5(\FSM_sequential_CurrentState[2]_i_4__1_n_0 ),
        .O(duty_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_4__1 
       (.I0(DOADO[5]),
        .I1(DOADO[6]),
        .O(\FSM_sequential_CurrentState[2]_i_4__1_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1792" *) 
  (* RTL_RAM_NAME = "top/rgbc/stdb/duty_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h001E001C001A00180016001400120010000E000C000A00080006000400020000),
    .INIT_01(256'h003E003C003A00380036003400320030002E002C002A00280026002400220020),
    .INIT_02(256'h005E005C005A00580056005400520050004E004C004A00480046004400420040),
    .INIT_03(256'h007F007C007A00780076007400720070006E006C006A00680066006400620060),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    duty_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,SW_IBUF,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK100MHZ_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_duty_reg_DOADO_UNCONNECTED[15:7],DOADO}),
        .DOBDO(NLW_duty_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_duty_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_duty_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "switch_to_duty" *) 
module switch_to_duty_2
   (DOADO,
    DOBDO,
    duty_reg_0,
    duty_reg_1,
    CLK100MHZ_IBUF_BUFG,
    SW_IBUF);
  output [6:0]DOADO;
  output [6:0]DOBDO;
  output duty_reg_0;
  output duty_reg_1;
  input CLK100MHZ_IBUF_BUFG;
  input [10:0]SW_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire [6:0]DOADO;
  wire [6:0]DOBDO;
  wire \FSM_sequential_CurrentState[2]_i_4__0_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_4_n_0 ;
  wire [10:0]SW_IBUF;
  wire duty_reg_0;
  wire duty_reg_1;
  wire [15:7]NLW_duty_reg_DOADO_UNCONNECTED;
  wire [15:7]NLW_duty_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_duty_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_duty_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2 
       (.I0(DOADO[3]),
        .I1(DOADO[4]),
        .I2(DOADO[1]),
        .I3(DOADO[2]),
        .I4(DOADO[0]),
        .I5(\FSM_sequential_CurrentState[2]_i_4_n_0 ),
        .O(duty_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2__0 
       (.I0(DOBDO[3]),
        .I1(DOBDO[4]),
        .I2(DOBDO[1]),
        .I3(DOBDO[2]),
        .I4(DOBDO[0]),
        .I5(\FSM_sequential_CurrentState[2]_i_4__0_n_0 ),
        .O(duty_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_4 
       (.I0(DOADO[5]),
        .I1(DOADO[6]),
        .O(\FSM_sequential_CurrentState[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_4__0 
       (.I0(DOBDO[5]),
        .I1(DOBDO[6]),
        .O(\FSM_sequential_CurrentState[2]_i_4__0_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1792" *) 
  (* RTL_RAM_NAME = "top/rgbc/stdr/duty_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h001E001C001A00180016001400120010000E000C000A00080006000400020000),
    .INIT_01(256'h003E003C003A00380036003400320030002E002C002A00280026002400220020),
    .INIT_02(256'h005E005C005A00580056005400520050004E004C004A00480046004400420040),
    .INIT_03(256'h007F007C007A00780076007400720070006E006C006A00680066006400620060),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    duty_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,SW_IBUF[10:6],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,SW_IBUF[5:0],1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(CLK100MHZ_IBUF_BUFG),
        .CLKBWRCLK(CLK100MHZ_IBUF_BUFG),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_duty_reg_DOADO_UNCONNECTED[15:7],DOADO}),
        .DOBDO({NLW_duty_reg_DOBDO_UNCONNECTED[15:7],DOBDO}),
        .DOPADOP(NLW_duty_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_duty_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ECO_CHECKSUM = "4d9f74a2" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (CLK100MHZ,
    BTNC,
    SW,
    LED16_R,
    LED16_G,
    LED16_B,
    JA);
  input CLK100MHZ;
  input BTNC;
  input [15:0]SW;
  output LED16_R;
  output LED16_G;
  output LED16_B;
  output [3:1]JA;

  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [3:1]JA;
  wire [3:1]JA_OBUF;
  wire LED16_B;
  wire LED16_G;
  wire LED16_R;
  wire [15:0]SW;
  wire [15:0]SW_IBUF;

  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF \JA_OBUF[1]_inst 
       (.I(JA_OBUF[1]),
        .O(JA[1]));
  OBUF \JA_OBUF[2]_inst 
       (.I(JA_OBUF[2]),
        .O(JA[2]));
  OBUF \JA_OBUF[3]_inst 
       (.I(JA_OBUF[3]),
        .O(JA[3]));
  OBUF LED16_B_OBUF_inst
       (.I(JA_OBUF[3]),
        .O(LED16_B));
  OBUF LED16_G_OBUF_inst
       (.I(JA_OBUF[2]),
        .O(LED16_G));
  OBUF LED16_R_OBUF_inst
       (.I(JA_OBUF[1]),
        .O(LED16_R));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[10]_inst 
       (.I(SW[10]),
        .O(SW_IBUF[10]));
  IBUF \SW_IBUF[11]_inst 
       (.I(SW[11]),
        .O(SW_IBUF[11]));
  IBUF \SW_IBUF[12]_inst 
       (.I(SW[12]),
        .O(SW_IBUF[12]));
  IBUF \SW_IBUF[13]_inst 
       (.I(SW[13]),
        .O(SW_IBUF[13]));
  IBUF \SW_IBUF[14]_inst 
       (.I(SW[14]),
        .O(SW_IBUF[14]));
  IBUF \SW_IBUF[15]_inst 
       (.I(SW[15]),
        .O(SW_IBUF[15]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF \SW_IBUF[8]_inst 
       (.I(SW[8]),
        .O(SW_IBUF[8]));
  IBUF \SW_IBUF[9]_inst 
       (.I(SW[9]),
        .O(SW_IBUF[9]));
  rgb_controller rgbc
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .JA_OBUF(JA_OBUF),
        .SW_IBUF(SW_IBUF),
        .rst_in(BTNC_IBUF));
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
