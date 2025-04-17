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


module Control_And_Start(input Clk,input Reset, input FrameSelect, input Start, input [1:0] dataB,output RW, output [5:0] currentRow, output [6:0] currentCol, output [1:0] dataIn, output enableData1, output enableData2,input keepGoing);


wire [5:0] currentRow_A;
wire [6:0] currentCol_A;
wire [5:0] currentRow_B;
wire [6:0] currentCol_B;
wire [1:0] BANANA_A;
wire [1:0] BANANA_B;

Auto_Control ac(Clk,Reset,FrameSelect,Start,dataB,RW_A,currentRow_A,currentCol_A,dataIn_A,enableData1_A,enableData2_A);
Starting_Pixels sp(Clk,currentRow_B,currentCol_B,dataIn_B,enableData1_B,keepGoing);


assign currentRow = Start ? currentRow_A:currentRow_B;
assign currentCol = Start ? currentCol_A:currentCol_B;
assign dataIn = Start ? dataIn_A:dataIn_B;
assign enableData1 = Start ? enableData1_A:enableData1_B;
assign enableData2 = Start ? enableData2_A:0;
assign RW = Start ? RW_A:0;


endmodule
