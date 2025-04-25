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

module Top(input CLK100MHZ, input RESET,input [5:0] JA, input [4:0] SW, output h_sync, output v_sync, output logic [3:0] R, output logic [3:0] G,output logic [3:0] B, output [5:0] LED);

wire [1:0] colors;
wire [5:0] VC;
wire [6:0] HC;
wire [5:0] currentRow;
wire [6:0] currentCol;
wire [1:0] dataIn;
wire enableData1;
wire enableData2;
wire [1:0] dataBack;
wire CLK;
wire RW;
wire enableVis;
wire start;
wire [2:0] testing;



Clk_Divider_25MHZ CD(CLK100MHZ,CLK);
Memory mem(currentRow,currentCol,VC,HC,enableVis,enableData1,enableData2,readWrite,CLK100MHZ,RESET,dataIn,dataBack,colors);
VGA_Out vga(CLK,RESET,colors, h_sync, v_sync,R,G, B, HC, VC);
Control_And_Start cas(CLK100MHZ,RESET,JA[5:0],SW[3],start,dataBack,readWrite,currentRow,currentCol,dataIn,enableData1,enableData2,enableVis,testing);
//EnableVisual_Control evc(CLK100MHZ,RESET,start,SW[3],enableVis);
//Starting_Pixels(CLK100MHZ,currentRow,currentCol,dataIn,enableData1,SW[1]);
//assign enableVis = (SW[4]) ? ~SW[3] : 1;

assign LED[0] = testing[0];
assign LED[1] = testing[1];
assign LED[2] = testing[2];

endmodule
