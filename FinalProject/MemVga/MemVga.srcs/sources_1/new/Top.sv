`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2025 11:23:20 AM
// Design Name: 
// Module Name: Top
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

module Top(input CLK100MHZ, input RESET, input [1:0] SW, output h_sync, output v_sync, output logic [3:0] R, output logic [3:0] G,output logic [3:0] B);
wire [1:0] colors;
wire [5:0] VC;
wire [6:0] HC;
wire [5:0] currentRow;
wire [6:0] currentCol;
wire [1:0] dataIn;
wire enableData1;
reg [5:0] Write;
wire CLK;
wire RW;

Clk_Divider_25MHZ CD(CLK100MHZ,CLK);
Memory mem(currentRow,currentCol,VC,HC,SW[0],enableData1,enableData2,readWrite,CLK100MHZ,RESET,dataIn,dataBack,colors);
VGA_Out vga(CLK,RESET,colors, h_sync, v_sync,R,G, B, HC, VC);
Control_And_Start cas(CLK100MHZ,RESET,SW[3],SW[4],dataBack,readWrite,currentRow,currentCol,dataIn,enableData1,enableData2);


endmodule
