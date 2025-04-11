`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 04:02:09 PM
// Design Name: 
// Module Name: Auto_Control_tb
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


module Auto_Control_tb();
reg Clk = 0;
reg Reset = 0;
reg FrameSelector = 0;
reg Start = 0; 
reg [1:0] DataBack = 0;
reg RW = 0;
wire[5:0] Row;
wire [6:0] Col;
wire [1:0] Data;
wire enable1;
wire enable2;

AutoClk actb(Clk,Reset,FrameSelector,Start,DataBack,RW,Row,Col,Data,enable1,enable2);


endmodule
