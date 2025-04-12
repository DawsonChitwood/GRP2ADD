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


module Control_And_Start(input Clk,input Reset, input FrameSelect, input Start, input [1:0] dataB,output RW, output [5:0] currentRow, output [6:0] currentCol, output [1:0] dataIn, output enabledata1, output enabledata2);

Auto_Control(Clk,Reset,FrameSelect,Start,dataB,RW,currentRow,currentCol,dataIn,enableData1,enableData2);
Starting_Pixels(Clk,currentRow,currentCol,dataIn,enableData1);

endmodule
