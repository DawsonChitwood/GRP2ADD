// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Feb 14 10:27:34 2025
// Host        : LAPTOP-RH96MGM6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.sim/sim_1/impl/func/xsim/SSD_tb_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PWM
   (\Counter_reg[7]_0 ,
    JA_OBUF,
    CLK,
    S,
    bdut,
    NextState__0__0,
    SR);
  output [6:0]\Counter_reg[7]_0 ;
  output [0:0]JA_OBUF;
  input CLK;
  input [3:0]S;
  input [5:0]bdut;
  input [0:0]NextState__0__0;
  input [0:0]SR;

  wire CLK;
  wire \Counter[1]_i_1__0_n_0 ;
  wire \Counter[1]_i_3__1_n_0 ;
  wire [15:8]Counter_reg;
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
  wire [6:0]\Counter_reg[7]_0 ;
  wire \Counter_reg[9]_i_1__1_n_0 ;
  wire \Counter_reg[9]_i_1__1_n_4 ;
  wire \Counter_reg[9]_i_1__1_n_5 ;
  wire \Counter_reg[9]_i_1__1_n_6 ;
  wire \Counter_reg[9]_i_1__1_n_7 ;
  wire [2:0]CurrentState;
  wire \FSM_sequential_CurrentState[2]_i_4__0_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_5__1_n_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry__0_n_0 ;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire NextState20_in;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [0:0]SR;
  wire [5:0]bdut;
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
    .INIT(8'h43)) 
    \Counter[1]_i_1__0 
       (.I0(CurrentState[2]),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(\Counter[1]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3__1 
       (.I0(\Counter_reg[7]_0 [0]),
        .O(\Counter[1]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_7 ),
        .Q(Counter_reg[13]),
        .R(\Counter[1]_i_1__0_n_0 ));
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
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__1_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_7 ),
        .Q(\Counter_reg[7]_0 [0]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2__1 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2__1_n_0 ,\NLW_Counter_reg[1]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2__1_n_4 ,\Counter_reg[1]_i_2__1_n_5 ,\Counter_reg[1]_i_2__1_n_6 ,\Counter_reg[1]_i_2__1_n_7 }),
        .S({\Counter_reg[7]_0 [3:1],\Counter[1]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_6 ),
        .Q(\Counter_reg[7]_0 [1]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_5 ),
        .Q(\Counter_reg[7]_0 [2]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__1_n_4 ),
        .Q(\Counter_reg[7]_0 [3]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_7 ),
        .Q(\Counter_reg[7]_0 [4]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1__1 
       (.CI(\Counter_reg[1]_i_2__1_n_0 ),
        .CO({\Counter_reg[5]_i_1__1_n_0 ,\NLW_Counter_reg[5]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1__1_n_4 ,\Counter_reg[5]_i_1__1_n_5 ,\Counter_reg[5]_i_1__1_n_6 ,\Counter_reg[5]_i_1__1_n_7 }),
        .S({Counter_reg[8],\Counter_reg[7]_0 [6:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_6 ),
        .Q(\Counter_reg[7]_0 [5]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_5 ),
        .Q(\Counter_reg[7]_0 [6]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__1_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__1_n_7 ),
        .Q(Counter_reg[9]),
        .R(\Counter[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[9]_i_1__1 
       (.CI(\Counter_reg[5]_i_1__1_n_0 ),
        .CO({\Counter_reg[9]_i_1__1_n_0 ,\NLW_Counter_reg[9]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[9]_i_1__1_n_4 ,\Counter_reg[9]_i_1__1_n_5 ,\Counter_reg[9]_i_1__1_n_6 ,\Counter_reg[9]_i_1__1_n_7 }),
        .S(Counter_reg[12:9]));
  LUT6 #(
    .INIT(64'h00000F00FB01AF00)) 
    \FSM_sequential_CurrentState[0]_i_1__1 
       (.I0(NextState20_in),
        .I1(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(CurrentState[0]),
        .I5(CurrentState[2]),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h030C030F0C33083B)) 
    \FSM_sequential_CurrentState[1]_i_1__1 
       (.I0(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I1(CurrentState[0]),
        .I2(CurrentState[2]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .I5(CurrentState[1]),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1__1 
       (.I0(CurrentState[2]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3__1 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .I2(Counter_reg[14]),
        .I3(Counter_reg[15]),
        .I4(\FSM_sequential_CurrentState[2]_i_4__0_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_5__1_n_0 ),
        .O(NextState20_in));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_4__0 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(\FSM_sequential_CurrentState[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5__1 
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(\FSM_sequential_CurrentState[2]_i_5__1_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(SR));
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
        .S(S));
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
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(\Counter_reg[7]_0 [5]),
        .I1(bdut[4]),
        .I2(bdut[5]),
        .I3(\Counter_reg[7]_0 [6]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(\Counter_reg[7]_0 [3]),
        .I1(bdut[2]),
        .I2(bdut[3]),
        .I3(\Counter_reg[7]_0 [4]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(\Counter_reg[7]_0 [1]),
        .I1(bdut[0]),
        .I2(bdut[1]),
        .I3(\Counter_reg[7]_0 [2]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(\Counter_reg[7]_0 [0]),
        .I1(bdut[0]),
        .O(i__carry_i_4__1_n_0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_0
   (\Counter_reg[7]_0 ,
    JA_OBUF,
    CLK,
    S,
    gdut,
    NextState__0__0,
    SR);
  output [6:0]\Counter_reg[7]_0 ;
  output [0:0]JA_OBUF;
  input CLK;
  input [3:0]S;
  input [6:0]gdut;
  input [0:0]NextState__0__0;
  input [0:0]SR;

  wire CLK;
  wire \Counter[1]_i_1__1_n_0 ;
  wire \Counter[1]_i_3__0_n_0 ;
  wire [15:8]Counter_reg;
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
  wire [6:0]\Counter_reg[7]_0 ;
  wire \Counter_reg[9]_i_1__0_n_0 ;
  wire \Counter_reg[9]_i_1__0_n_4 ;
  wire \Counter_reg[9]_i_1__0_n_5 ;
  wire \Counter_reg[9]_i_1__0_n_6 ;
  wire \Counter_reg[9]_i_1__0_n_7 ;
  wire [2:0]CurrentState;
  wire \FSM_sequential_CurrentState[2]_i_5__0_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_6_n_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry__0_n_0 ;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire NextState20_in;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [0:0]SR;
  wire [6:0]gdut;
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
    .INIT(8'h43)) 
    \Counter[1]_i_1__1 
       (.I0(CurrentState[2]),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(\Counter[1]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3__0 
       (.I0(\Counter_reg[7]_0 [0]),
        .O(\Counter[1]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_7 ),
        .Q(Counter_reg[13]),
        .R(\Counter[1]_i_1__1_n_0 ));
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
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1__0_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_7 ),
        .Q(\Counter_reg[7]_0 [0]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2__0 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2__0_n_0 ,\NLW_Counter_reg[1]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2__0_n_4 ,\Counter_reg[1]_i_2__0_n_5 ,\Counter_reg[1]_i_2__0_n_6 ,\Counter_reg[1]_i_2__0_n_7 }),
        .S({\Counter_reg[7]_0 [3:1],\Counter[1]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_6 ),
        .Q(\Counter_reg[7]_0 [1]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_5 ),
        .Q(\Counter_reg[7]_0 [2]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2__0_n_4 ),
        .Q(\Counter_reg[7]_0 [3]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_7 ),
        .Q(\Counter_reg[7]_0 [4]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1__0 
       (.CI(\Counter_reg[1]_i_2__0_n_0 ),
        .CO({\Counter_reg[5]_i_1__0_n_0 ,\NLW_Counter_reg[5]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1__0_n_4 ,\Counter_reg[5]_i_1__0_n_5 ,\Counter_reg[5]_i_1__0_n_6 ,\Counter_reg[5]_i_1__0_n_7 }),
        .S({Counter_reg[8],\Counter_reg[7]_0 [6:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_6 ),
        .Q(\Counter_reg[7]_0 [5]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_5 ),
        .Q(\Counter_reg[7]_0 [6]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1__0_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1__0_n_7 ),
        .Q(Counter_reg[9]),
        .R(\Counter[1]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[9]_i_1__0 
       (.CI(\Counter_reg[5]_i_1__0_n_0 ),
        .CO({\Counter_reg[9]_i_1__0_n_0 ,\NLW_Counter_reg[9]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[9]_i_1__0_n_4 ,\Counter_reg[9]_i_1__0_n_5 ,\Counter_reg[9]_i_1__0_n_6 ,\Counter_reg[9]_i_1__0_n_7 }),
        .S(Counter_reg[12:9]));
  LUT6 #(
    .INIT(64'h00000F00FB01AF00)) 
    \FSM_sequential_CurrentState[0]_i_1__0 
       (.I0(NextState20_in),
        .I1(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(CurrentState[0]),
        .I5(CurrentState[2]),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h030C030F0C33083B)) 
    \FSM_sequential_CurrentState[1]_i_1__0 
       (.I0(\NextState1_inferred__1/i__carry__0_n_0 ),
        .I1(CurrentState[0]),
        .I2(CurrentState[2]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .I5(CurrentState[1]),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1__0 
       (.I0(CurrentState[2]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3__0 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .I2(Counter_reg[14]),
        .I3(Counter_reg[15]),
        .I4(\FSM_sequential_CurrentState[2]_i_5__0_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_6_n_0 ),
        .O(NextState20_in));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5__0 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(\FSM_sequential_CurrentState[2]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_6 
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(\FSM_sequential_CurrentState[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(SR));
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
        .S(S));
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
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(\Counter_reg[7]_0 [5]),
        .I1(gdut[5]),
        .I2(gdut[6]),
        .I3(\Counter_reg[7]_0 [6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(\Counter_reg[7]_0 [3]),
        .I1(gdut[3]),
        .I2(gdut[4]),
        .I3(\Counter_reg[7]_0 [4]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(\Counter_reg[7]_0 [1]),
        .I1(gdut[1]),
        .I2(gdut[2]),
        .I3(\Counter_reg[7]_0 [2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(\Counter_reg[7]_0 [0]),
        .I1(gdut[0]),
        .O(i__carry_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_1
   (\Counter_reg[7]_0 ,
    JA_OBUF,
    CLK,
    S,
    rdut,
    NextState__0__0,
    SR);
  output [6:0]\Counter_reg[7]_0 ;
  output [0:0]JA_OBUF;
  input CLK;
  input [3:0]S;
  input [5:0]rdut;
  input [0:0]NextState__0__0;
  input [0:0]SR;

  wire CLK;
  wire \Counter[1]_i_1_n_0 ;
  wire \Counter[1]_i_3_n_0 ;
  wire [15:8]Counter_reg;
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
  wire [6:0]\Counter_reg[7]_0 ;
  wire \Counter_reg[9]_i_1_n_0 ;
  wire \Counter_reg[9]_i_1_n_4 ;
  wire \Counter_reg[9]_i_1_n_5 ;
  wire \Counter_reg[9]_i_1_n_6 ;
  wire \Counter_reg[9]_i_1_n_7 ;
  wire [2:0]CurrentState;
  wire \FSM_sequential_CurrentState[2]_i_4_n_0 ;
  wire \FSM_sequential_CurrentState[2]_i_5_n_0 ;
  wire [0:0]JA_OBUF;
  wire [2:0]NextState;
  wire \NextState1_inferred__1/i__carry_n_0 ;
  wire NextState20_in;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [0:0]SR;
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
  wire in5;
  wire [5:0]rdut;
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
    .INIT(8'h43)) 
    \Counter[1]_i_1 
       (.I0(CurrentState[2]),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(\Counter[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[1]_i_3 
       (.I0(\Counter_reg[7]_0 [0]),
        .O(\Counter[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_6 ),
        .Q(Counter_reg[10]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_5 ),
        .Q(Counter_reg[11]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[9]_i_1_n_4 ),
        .Q(Counter_reg[12]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1_n_6 ),
        .Q(Counter_reg[14]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[13]_i_1_n_5 ),
        .Q(Counter_reg[15]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_7 ),
        .Q(\Counter_reg[7]_0 [0]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\Counter_reg[1]_i_2_n_0 ,\NLW_Counter_reg[1]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[1]_i_2_n_4 ,\Counter_reg[1]_i_2_n_5 ,\Counter_reg[1]_i_2_n_6 ,\Counter_reg[1]_i_2_n_7 }),
        .S({\Counter_reg[7]_0 [3:1],\Counter[1]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_6 ),
        .Q(\Counter_reg[7]_0 [1]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_5 ),
        .Q(\Counter_reg[7]_0 [2]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[1]_i_2_n_4 ),
        .Q(\Counter_reg[7]_0 [3]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_7 ),
        .Q(\Counter_reg[7]_0 [4]),
        .R(\Counter[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Counter_reg[5]_i_1 
       (.CI(\Counter_reg[1]_i_2_n_0 ),
        .CO({\Counter_reg[5]_i_1_n_0 ,\NLW_Counter_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[5]_i_1_n_4 ,\Counter_reg[5]_i_1_n_5 ,\Counter_reg[5]_i_1_n_6 ,\Counter_reg[5]_i_1_n_7 }),
        .S({Counter_reg[8],\Counter_reg[7]_0 [6:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_6 ),
        .Q(\Counter_reg[7]_0 [5]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_5 ),
        .Q(\Counter_reg[7]_0 [6]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Counter_reg[5]_i_1_n_4 ),
        .Q(Counter_reg[8]),
        .R(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(CLK),
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
    .INIT(64'h00000F00FB01AF00)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(NextState20_in),
        .I1(in5),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(CurrentState[0]),
        .I5(CurrentState[2]),
        .O(NextState[0]));
  LUT6 #(
    .INIT(64'h030C030F0C33083B)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(in5),
        .I1(CurrentState[0]),
        .I2(CurrentState[2]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .I5(CurrentState[1]),
        .O(NextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_CurrentState[2]_i_1 
       (.I0(CurrentState[2]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(NextState__0__0),
        .I4(NextState20_in),
        .O(NextState[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_3 
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .I2(Counter_reg[14]),
        .I3(Counter_reg[15]),
        .I4(\FSM_sequential_CurrentState[2]_i_4_n_0 ),
        .I5(\FSM_sequential_CurrentState[2]_i_5_n_0 ),
        .O(NextState20_in));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_4 
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(\FSM_sequential_CurrentState[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_CurrentState[2]_i_5 
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(\FSM_sequential_CurrentState[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[0]),
        .Q(CurrentState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[1]),
        .Q(CurrentState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "START:000,SWITCHON:011,SWITCHOFF:100,ON:001,OFF:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(NextState[2]),
        .Q(CurrentState[2]),
        .R(SR));
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
        .S(S));
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
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\Counter_reg[7]_0 [5]),
        .I1(rdut[4]),
        .I2(rdut[5]),
        .I3(\Counter_reg[7]_0 [6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(\Counter_reg[7]_0 [3]),
        .I1(rdut[2]),
        .I2(rdut[3]),
        .I3(\Counter_reg[7]_0 [4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(\Counter_reg[7]_0 [1]),
        .I1(rdut[0]),
        .I2(rdut[1]),
        .I3(\Counter_reg[7]_0 [2]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(\Counter_reg[7]_0 [0]),
        .I1(rdut[0]),
        .O(i__carry_i_4_n_0));
endmodule

module cathode_top
   (Q,
    SW_IBUF,
    anode_count_reg,
    CLK);
  output [6:0]Q;
  input [15:0]SW_IBUF;
  input [2:0]anode_count_reg;
  input CLK;

  wire CLK;
  wire [6:0]Q;
  wire [15:0]SW_IBUF;
  wire [2:0]anode_count_reg;
  wire [6:0]cathode;
  wire \cathode[6]_i_6_n_0 ;
  wire \cathode[6]_i_7_n_0 ;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4806)) 
    \cathode[0]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(cathode[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD680)) 
    \cathode[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(cathode[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h80C2)) 
    \cathode[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .O(cathode[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8492)) 
    \cathode[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(cathode[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0B2A)) 
    \cathode[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(cathode[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5910)) 
    \cathode[5]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(cathode[5]));
  LUT4 #(
    .INIT(16'h1805)) 
    \cathode[6]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(cathode[6]));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \cathode[6]_i_2 
       (.I0(\cathode[6]_i_6_n_0 ),
        .I1(SW_IBUF[1]),
        .I2(anode_count_reg[0]),
        .I3(anode_count_reg[2]),
        .I4(anode_count_reg[1]),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'h00F000F0CCF0AAF0)) 
    \cathode[6]_i_3 
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[0]),
        .I2(\cathode[6]_i_7_n_0 ),
        .I3(anode_count_reg[2]),
        .I4(anode_count_reg[0]),
        .I5(anode_count_reg[1]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \cathode[6]_i_4 
       (.I0(SW_IBUF[3]),
        .I1(SW_IBUF[14]),
        .I2(anode_count_reg[2]),
        .I3(anode_count_reg[0]),
        .I4(anode_count_reg[1]),
        .I5(SW_IBUF[8]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'h0F00AC000000AC00)) 
    \cathode[6]_i_5 
       (.I0(SW_IBUF[2]),
        .I1(SW_IBUF[13]),
        .I2(anode_count_reg[2]),
        .I3(anode_count_reg[0]),
        .I4(anode_count_reg[1]),
        .I5(SW_IBUF[7]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'h5414501044044000)) 
    \cathode[6]_i_6 
       (.I0(anode_count_reg[2]),
        .I1(anode_count_reg[0]),
        .I2(anode_count_reg[1]),
        .I3(SW_IBUF[6]),
        .I4(SW_IBUF[12]),
        .I5(SW_IBUF[10]),
        .O(\cathode[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \cathode[6]_i_7 
       (.I0(SW_IBUF[11]),
        .I1(SW_IBUF[5]),
        .I2(anode_count_reg[1]),
        .I3(SW_IBUF[15]),
        .I4(anode_count_reg[0]),
        .I5(SW_IBUF[9]),
        .O(\cathode[6]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cathode_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(cathode[6]),
        .Q(Q[6]),
        .R(1'b0));
endmodule

module rgb_controller
   (JA_OBUF,
    CLK,
    SW_IBUF,
    SR);
  output [2:0]JA_OBUF;
  input CLK;
  input [15:0]SW_IBUF;
  input [0:0]SR;

  wire CLK;
  wire [7:1]Counter_reg;
  wire [7:1]Counter_reg_0;
  wire [7:1]Counter_reg_1;
  wire [2:0]JA_OBUF;
  wire [0:0]NextState__0__0;
  wire [0:0]NextState__0__0_2;
  wire [0:0]NextState__0__0_3;
  wire [0:0]SR;
  wire [15:0]SW_IBUF;
  wire [7:0]bdut;
  wire [7:0]gdut;
  wire [7:0]rdut;
  wire stdb_n_0;
  wire stdb_n_1;
  wire stdb_n_2;
  wire stdb_n_3;
  wire stdg_n_0;
  wire stdg_n_1;
  wire stdg_n_2;
  wire stdg_n_3;
  wire stdr_n_0;
  wire stdr_n_1;
  wire stdr_n_2;
  wire stdr_n_3;

  PWM pwmb
       (.CLK(CLK),
        .\Counter_reg[7]_0 (Counter_reg),
        .JA_OBUF(JA_OBUF[2]),
        .NextState__0__0(NextState__0__0),
        .S({stdb_n_0,stdb_n_1,stdb_n_2,stdb_n_3}),
        .SR(SR),
        .bdut({bdut[7:3],bdut[0]}));
  PWM_0 pwmg
       (.CLK(CLK),
        .\Counter_reg[7]_0 (Counter_reg_0),
        .JA_OBUF(JA_OBUF[1]),
        .NextState__0__0(NextState__0__0_2),
        .S({stdg_n_0,stdg_n_1,stdg_n_2,stdg_n_3}),
        .SR(SR),
        .gdut({gdut[7:2],gdut[0]}));
  PWM_1 pwmr
       (.CLK(CLK),
        .\Counter_reg[7]_0 (Counter_reg_1),
        .JA_OBUF(JA_OBUF[0]),
        .NextState__0__0(NextState__0__0_3),
        .S({stdr_n_0,stdr_n_1,stdr_n_2,stdr_n_3}),
        .SR(SR),
        .rdut({rdut[7:3],rdut[0]}));
  switch_to_duty stdb
       (.CLK(CLK),
        .\NextState1_inferred__1/i__carry (Counter_reg),
        .NextState__0__0(NextState__0__0),
        .S({stdb_n_0,stdb_n_1,stdb_n_2,stdb_n_3}),
        .SW_IBUF(SW_IBUF[4:0]),
        .bdut({bdut[7:3],bdut[0]}));
  switch_to_duty_2 stdg
       (.CLK(CLK),
        .\NextState1_inferred__1/i__carry (Counter_reg_0),
        .NextState__0__0(NextState__0__0_2),
        .S({stdg_n_0,stdg_n_1,stdg_n_2,stdg_n_3}),
        .SW_IBUF(SW_IBUF[10:5]),
        .gdut({gdut[7:2],gdut[0]}));
  switch_to_duty_3 stdr
       (.CLK(CLK),
        .\NextState1_inferred__1/i__carry (Counter_reg_1),
        .NextState__0__0(NextState__0__0_3),
        .S({stdr_n_0,stdr_n_1,stdr_n_2,stdr_n_3}),
        .SW_IBUF(SW_IBUF[15:11]),
        .rdut({rdut[7:3],rdut[0]}));
endmodule

module ssd_controller
   (Q,
    CLK,
    SW_IBUF,
    SR);
  output [6:0]Q;
  input CLK;
  input [15:0]SW_IBUF;
  input [0:0]SR;

  wire CLK;
  wire [6:0]Q;
  wire [0:0]SR;
  wire [15:0]SW_IBUF;
  wire anode_count;
  wire \anode_count[0]_i_1_n_0 ;
  wire \anode_count[1]_i_1_n_0 ;
  wire \anode_count[2]_i_1_n_0 ;
  wire \anode_count[2]_i_3_n_0 ;
  wire [2:0]anode_count_reg;
  wire \refresh_count[0]_i_1_n_0 ;
  wire \refresh_count[0]_i_3_n_0 ;
  wire \refresh_count[0]_i_4_n_0 ;
  wire [6:0]refresh_count_reg;
  wire \refresh_count_reg[0]_i_2_n_0 ;
  wire \refresh_count_reg[0]_i_2_n_4 ;
  wire \refresh_count_reg[0]_i_2_n_5 ;
  wire \refresh_count_reg[0]_i_2_n_6 ;
  wire \refresh_count_reg[0]_i_2_n_7 ;
  wire \refresh_count_reg[4]_i_1_n_5 ;
  wire \refresh_count_reg[4]_i_1_n_6 ;
  wire \refresh_count_reg[4]_i_1_n_7 ;
  wire [2:0]\NLW_refresh_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_refresh_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_refresh_count_reg[4]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \anode_count[0]_i_1 
       (.I0(anode_count),
        .I1(anode_count_reg[0]),
        .O(\anode_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \anode_count[1]_i_1 
       (.I0(anode_count_reg[0]),
        .I1(anode_count),
        .I2(anode_count_reg[1]),
        .O(\anode_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \anode_count[2]_i_1 
       (.I0(anode_count_reg[0]),
        .I1(anode_count_reg[1]),
        .I2(anode_count),
        .I3(anode_count_reg[2]),
        .O(\anode_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \anode_count[2]_i_2 
       (.I0(\anode_count[2]_i_3_n_0 ),
        .I1(refresh_count_reg[5]),
        .I2(refresh_count_reg[4]),
        .I3(refresh_count_reg[3]),
        .O(anode_count));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \anode_count[2]_i_3 
       (.I0(refresh_count_reg[2]),
        .I1(refresh_count_reg[4]),
        .I2(refresh_count_reg[0]),
        .I3(refresh_count_reg[1]),
        .I4(refresh_count_reg[6]),
        .I5(refresh_count_reg[5]),
        .O(\anode_count[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anode_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\anode_count[0]_i_1_n_0 ),
        .Q(anode_count_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \anode_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\anode_count[1]_i_1_n_0 ),
        .Q(anode_count_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \anode_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\anode_count[2]_i_1_n_0 ),
        .Q(anode_count_reg[2]),
        .R(SR));
  cathode_top ct
       (.CLK(CLK),
        .Q(Q),
        .SW_IBUF(SW_IBUF),
        .anode_count_reg(anode_count_reg));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \refresh_count[0]_i_1 
       (.I0(refresh_count_reg[1]),
        .I1(refresh_count_reg[2]),
        .I2(refresh_count_reg[0]),
        .I3(\refresh_count[0]_i_3_n_0 ),
        .I4(SR),
        .O(\refresh_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \refresh_count[0]_i_3 
       (.I0(refresh_count_reg[6]),
        .I1(refresh_count_reg[5]),
        .I2(refresh_count_reg[4]),
        .I3(refresh_count_reg[3]),
        .O(\refresh_count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_count[0]_i_4 
       (.I0(refresh_count_reg[0]),
        .O(\refresh_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[0]_i_2_n_7 ),
        .Q(refresh_count_reg[0]),
        .R(\refresh_count[0]_i_1_n_0 ));
  CARRY4 \refresh_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refresh_count_reg[0]_i_2_n_0 ,\NLW_refresh_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_count_reg[0]_i_2_n_4 ,\refresh_count_reg[0]_i_2_n_5 ,\refresh_count_reg[0]_i_2_n_6 ,\refresh_count_reg[0]_i_2_n_7 }),
        .S({refresh_count_reg[3:1],\refresh_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[0]_i_2_n_6 ),
        .Q(refresh_count_reg[1]),
        .R(\refresh_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[0]_i_2_n_5 ),
        .Q(refresh_count_reg[2]),
        .R(\refresh_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[0]_i_2_n_4 ),
        .Q(refresh_count_reg[3]),
        .R(\refresh_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[4]_i_1_n_7 ),
        .Q(refresh_count_reg[4]),
        .R(\refresh_count[0]_i_1_n_0 ));
  CARRY4 \refresh_count_reg[4]_i_1 
       (.CI(\refresh_count_reg[0]_i_2_n_0 ),
        .CO(\NLW_refresh_count_reg[4]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_refresh_count_reg[4]_i_1_O_UNCONNECTED [3],\refresh_count_reg[4]_i_1_n_5 ,\refresh_count_reg[4]_i_1_n_6 ,\refresh_count_reg[4]_i_1_n_7 }),
        .S({1'b0,refresh_count_reg[6:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[4]_i_1_n_6 ),
        .Q(refresh_count_reg[5]),
        .R(\refresh_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count_reg[4]_i_1_n_5 ),
        .Q(refresh_count_reg[6]),
        .R(\refresh_count[0]_i_1_n_0 ));
endmodule

module switch_to_duty
   (S,
    bdut,
    NextState__0__0,
    \NextState1_inferred__1/i__carry ,
    SW_IBUF,
    CLK);
  output [3:0]S;
  output [5:0]bdut;
  output [0:0]NextState__0__0;
  input [6:0]\NextState1_inferred__1/i__carry ;
  input [4:0]SW_IBUF;
  input CLK;

  wire CLK;
  wire [6:0]\NextState1_inferred__1/i__carry ;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [4:0]SW_IBUF;
  wire [5:0]bdut;
  wire g0_b0__1_n_0;
  wire g0_b1__0_n_0;
  wire g0_b2__0_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2__1 
       (.I0(bdut[4]),
        .I1(bdut[5]),
        .I2(bdut[3]),
        .I3(bdut[2]),
        .I4(bdut[0]),
        .I5(bdut[1]),
        .O(NextState__0__0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b0__1_n_0),
        .Q(bdut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b1__0_n_0),
        .Q(bdut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b2__0_n_0),
        .Q(bdut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[2]),
        .Q(bdut[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[3]),
        .Q(bdut[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[4]),
        .Q(bdut[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    g0_b0__1
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDAAAAAAA)) 
    g0_b1__0
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b1__0_n_0));
  LUT5 #(
    .INIT(32'hECCCCCCC)) 
    g0_b2__0
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b2__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(bdut[5]),
        .I1(\NextState1_inferred__1/i__carry [6]),
        .I2(bdut[4]),
        .I3(\NextState1_inferred__1/i__carry [5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(bdut[3]),
        .I1(\NextState1_inferred__1/i__carry [4]),
        .I2(bdut[2]),
        .I3(\NextState1_inferred__1/i__carry [3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(bdut[1]),
        .I1(\NextState1_inferred__1/i__carry [2]),
        .I2(bdut[0]),
        .I3(\NextState1_inferred__1/i__carry [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__1
       (.I0(bdut[0]),
        .I1(\NextState1_inferred__1/i__carry [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "switch_to_duty" *) 
module switch_to_duty_2
   (S,
    gdut,
    NextState__0__0,
    SW_IBUF,
    \NextState1_inferred__1/i__carry ,
    CLK);
  output [3:0]S;
  output [6:0]gdut;
  output [0:0]NextState__0__0;
  input [5:0]SW_IBUF;
  input [6:0]\NextState1_inferred__1/i__carry ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_CurrentState[2]_i_4__1_n_0 ;
  wire [6:0]\NextState1_inferred__1/i__carry ;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [5:0]SW_IBUF;
  wire g0_b0__0_n_0;
  wire [6:0]gdut;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2__0 
       (.I0(\FSM_sequential_CurrentState[2]_i_4__1_n_0 ),
        .I1(gdut[0]),
        .I2(gdut[5]),
        .I3(gdut[6]),
        .O(NextState__0__0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_CurrentState[2]_i_4__1 
       (.I0(gdut[1]),
        .I1(gdut[2]),
        .I2(gdut[3]),
        .I3(gdut[4]),
        .O(\FSM_sequential_CurrentState[2]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b0__0_n_0),
        .Q(gdut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[0]),
        .Q(gdut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[1]),
        .Q(gdut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[2]),
        .Q(gdut[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[3]),
        .Q(gdut[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[4]),
        .Q(gdut[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[5]),
        .Q(gdut[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    g0_b0__0
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .I5(SW_IBUF[5]),
        .O(g0_b0__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(gdut[6]),
        .I1(\NextState1_inferred__1/i__carry [6]),
        .I2(gdut[5]),
        .I3(\NextState1_inferred__1/i__carry [5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(gdut[4]),
        .I1(\NextState1_inferred__1/i__carry [4]),
        .I2(gdut[3]),
        .I3(\NextState1_inferred__1/i__carry [3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(gdut[2]),
        .I1(\NextState1_inferred__1/i__carry [2]),
        .I2(gdut[1]),
        .I3(\NextState1_inferred__1/i__carry [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__0
       (.I0(gdut[0]),
        .I1(\NextState1_inferred__1/i__carry [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "switch_to_duty" *) 
module switch_to_duty_3
   (S,
    rdut,
    NextState__0__0,
    \NextState1_inferred__1/i__carry ,
    SW_IBUF,
    CLK);
  output [3:0]S;
  output [5:0]rdut;
  output [0:0]NextState__0__0;
  input [6:0]\NextState1_inferred__1/i__carry ;
  input [4:0]SW_IBUF;
  input CLK;

  wire CLK;
  wire [6:0]\NextState1_inferred__1/i__carry ;
  wire [0:0]NextState__0__0;
  wire [3:0]S;
  wire [4:0]SW_IBUF;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire [5:0]rdut;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrentState[2]_i_2 
       (.I0(rdut[4]),
        .I1(rdut[5]),
        .I2(rdut[3]),
        .I3(rdut[2]),
        .I4(rdut[0]),
        .I5(rdut[1]),
        .O(NextState__0__0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b0_n_0),
        .Q(rdut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b1_n_0),
        .Q(rdut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b2_n_0),
        .Q(rdut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[2]),
        .Q(rdut[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[3]),
        .Q(rdut[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(SW_IBUF[4]),
        .Q(rdut[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    g0_b0
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hDAAAAAAA)) 
    g0_b1
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b1_n_0));
  LUT5 #(
    .INIT(32'hECCCCCCC)) 
    g0_b2
       (.I0(SW_IBUF[0]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[2]),
        .I3(SW_IBUF[3]),
        .I4(SW_IBUF[4]),
        .O(g0_b2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(rdut[5]),
        .I1(\NextState1_inferred__1/i__carry [6]),
        .I2(rdut[4]),
        .I3(\NextState1_inferred__1/i__carry [5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(rdut[3]),
        .I1(\NextState1_inferred__1/i__carry [4]),
        .I2(rdut[2]),
        .I3(\NextState1_inferred__1/i__carry [3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(rdut[1]),
        .I1(\NextState1_inferred__1/i__carry [2]),
        .I2(rdut[0]),
        .I3(\NextState1_inferred__1/i__carry [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(rdut[0]),
        .I1(\NextState1_inferred__1/i__carry [0]),
        .O(S[0]));
endmodule

(* ECO_CHECKSUM = "a2527604" *) 
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
    JA,
    AN,
    cathode);
  input CLK100MHZ;
  input BTNC;
  input [15:0]SW;
  output LED16_R;
  output LED16_G;
  output LED16_B;
  output [4:1]JA;
  output [7:0]AN;
  output [7:0]cathode;

  wire [7:0]AN;
  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire [4:1]JA;
  wire [3:1]JA_OBUF;
  wire \JA_OBUF[4] ;
  wire \JA_OBUF_BUFG[4] ;
  wire LED16_B;
  wire LED16_G;
  wire LED16_R;
  wire [15:0]SW;
  wire [15:0]SW_IBUF;
  wire [7:0]cathode;
  wire [6:0]cathode_OBUF;

  OBUFT \AN_OBUF[0]_inst 
       (.I(1'b0),
        .O(AN[0]),
        .T(1'b1));
  OBUFT \AN_OBUF[1]_inst 
       (.I(1'b0),
        .O(AN[1]),
        .T(1'b1));
  OBUFT \AN_OBUF[2]_inst 
       (.I(1'b0),
        .O(AN[2]),
        .T(1'b1));
  OBUFT \AN_OBUF[3]_inst 
       (.I(1'b0),
        .O(AN[3]),
        .T(1'b1));
  OBUFT \AN_OBUF[4]_inst 
       (.I(1'b0),
        .O(AN[4]),
        .T(1'b1));
  OBUFT \AN_OBUF[5]_inst 
       (.I(1'b0),
        .O(AN[5]),
        .T(1'b1));
  OBUFT \AN_OBUF[6]_inst 
       (.I(1'b0),
        .O(AN[6]),
        .T(1'b1));
  OBUFT \AN_OBUF[7]_inst 
       (.I(1'b0),
        .O(AN[7]),
        .T(1'b1));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(\JA_OBUF[4] ));
  OBUF \JA_OBUF[1]_inst 
       (.I(JA_OBUF[1]),
        .O(JA[1]));
  OBUF \JA_OBUF[2]_inst 
       (.I(JA_OBUF[2]),
        .O(JA[2]));
  OBUF \JA_OBUF[3]_inst 
       (.I(JA_OBUF[3]),
        .O(JA[3]));
  OBUF \JA_OBUF[4]_inst 
       (.I(\JA_OBUF_BUFG[4] ),
        .O(JA[4]));
  BUFG \JA_OBUF_BUFG[4]_inst 
       (.I(\JA_OBUF[4] ),
        .O(\JA_OBUF_BUFG[4] ));
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
  OBUF \cathode_OBUF[0]_inst 
       (.I(cathode_OBUF[0]),
        .O(cathode[0]));
  OBUF \cathode_OBUF[1]_inst 
       (.I(cathode_OBUF[1]),
        .O(cathode[1]));
  OBUF \cathode_OBUF[2]_inst 
       (.I(cathode_OBUF[2]),
        .O(cathode[2]));
  OBUF \cathode_OBUF[3]_inst 
       (.I(cathode_OBUF[3]),
        .O(cathode[3]));
  OBUF \cathode_OBUF[4]_inst 
       (.I(cathode_OBUF[4]),
        .O(cathode[4]));
  OBUF \cathode_OBUF[5]_inst 
       (.I(cathode_OBUF[5]),
        .O(cathode[5]));
  OBUF \cathode_OBUF[6]_inst 
       (.I(cathode_OBUF[6]),
        .O(cathode[6]));
  OBUF \cathode_OBUF[7]_inst 
       (.I(1'b0),
        .O(cathode[7]));
  rgb_controller rgbc
       (.CLK(\JA_OBUF_BUFG[4] ),
        .JA_OBUF(JA_OBUF),
        .SR(BTNC_IBUF),
        .SW_IBUF(SW_IBUF));
  ssd_controller ssd
       (.CLK(\JA_OBUF_BUFG[4] ),
        .Q(cathode_OBUF),
        .SR(BTNC_IBUF),
        .SW_IBUF(SW_IBUF));
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
