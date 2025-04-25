`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 12:05:37 PM
// Design Name: 
// Module Name: Control_And_Start
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Control_And_Start(input Clk,input Reset,input [5:0] keys, input FrameSelect,output start, input [1:0] dataB,output RW, output [5:0] currentRow, output [6:0] currentCol, output [1:0] dataIn, output enableData1, output enableData2,output keepGoingOut, output [2:0] testing);

wire [5:0] currentRow_A;
wire [6:0] currentCol_A;
wire [5:0] currentRow_B;
wire [6:0] currentCol_B;
wire [5:0] currentRow_C;
wire [6:0] currentCol_C;
reg start_prev;
reg start_prev_reg;
reg start_counter;
wire keepGoing;
wire clear;
wire mode;
wire [2:0] currentkey;
wire [2:0] keyprev1;
wire [2:0] keyprev2;
wire [2:0] keyprev3;



Auto_Control ac(Clk,Reset,FrameSelect,doesnothing,dataB,RW_A,currentRow_A,currentCol_A,dataIn_A,enableData1_A,enableData2_A);
Starting_Pixels sp(Clk,currentRow_B,currentCol_B,dataIn_B,enableData1_B,keepGoing);
User_Interface ui(Clk,Reset,dataB,keys,start,clear,keepGoing,currentRow_C,currentCol_C,dataIn_C,RW_C,enableData1_C,mode,currentkey,keyprev1,keyprev2,keyprev3);

assign currentRow = mode ? currentRow_C:(keepGoing ? currentRow_B:currentRow_A);
assign currentCol = mode ? currentCol_C:(keepGoing ? currentCol_B:currentCol_A);
assign dataIn = mode ? dataIn_C:(keepGoing ? dataIn_B:dataIn_A);
assign enableData1 = mode ? enableData1_C:(keepGoing ? enableData1_B:enableData1_A);
assign enableData2 = mode ? enableData1_C:(keepGoing ? 0:enableData2_A);
assign RW = mode ? RW_C:(keepGoing ? 0:RW_A);
assign enableVisual = 1;
//assign enableVisual = mode ? !FrameSelect: 1;
//assign FrameSelector = mode ? FrameSelect:(!userMode & currentkey == 2 & !(keyprev1 == 2 && keyprev2 == 2 && keyprev3 == 2)) ? !FrameSelect:1; 
assign keepGoingOut = keepGoing;
assign testing[2] = start;
//assign testing2 = currentkey;

endmodule
