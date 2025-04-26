`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 10:26:52 AM
// Design Name: 
// Module Name: Memory
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


module Memory(
input [5:0] currentRow,
input [6:0] currentCol,
input [5:0] vCount,
input [6:0] hCount,
input enableVisual,
input enableData1,
input enableData2,
input readWrite,
input clk,
input reset,
input [1:0] dataIn,
output wire [1:0] dataBack,
output wire [1:0] colorData 
);

reg invertVisual;
assign invertVisual = !enableVisual;

DualPort dp1(
currentRow,
currentCol,
vCount,
hCount,
enableVisual,
enableData1,
readWrite,
clk,
reset,
dataIn,
dataBack,
colorData
);

DualPort dp2(
currentRow,
currentCol,
vCount,
hCount,
invertVisual,
enableData2,
readWrite,
clk,
reset,
dataIn,
dataBack,
colorData 
);
endmodule
