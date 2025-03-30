`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 01:54:14 PM
// Design Name: 
// Module Name: Memory_tb
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


module Memory_tb(
    );
    
reg [5:0] currentRow_tb;
reg [6:0] currentCol_tb;
reg [5:0] vCount_tb;
reg [6:0] hCount_tb;
reg enableVisual_tb;
reg enableData1_tb;
reg enableData2_tb;
reg readWrite_tb;
reg clk_tb;
reg reset_tb;
reg [1:0] dataIn_tb;
wire [1:0] dataBack_tb;
wire [1:0] colorData_tb; 

    Memory mem(
currentRow_tb,
currentCol_tb,
vCount_tb,
hCount_tb,
enableVisual_tb,
enableData1_tb,
enableData2_tb,
readWrite_tb,
clk_tb,
reset_tb,
dataIn_tb,
dataBack_tb,
colorData_tb 
);
initial begin
    enableVisual_tb=1;
    enableData1_tb=1;
    enableData2_tb=0;
    readWrite_tb=0;
    currentRow_tb=25;
    currentCol_tb=25;
    dataIn_tb=2;    
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=50;
    currentCol_tb=50;
    dataIn_tb=1;
    @(posedge clk_tb)
    @(posedge clk_tb)
    readWrite_tb=1;
    vCount_tb=50;
    hCount_tb=50;
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=25;
    currentCol_tb=25;
    vCount_tb=25;
    hCount_tb=25;
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=50;
    currentCol_tb=50;
    vCount_tb=50;
    hCount_tb=50; 
     @(posedge clk_tb)
    @(posedge clk_tb)
    enableVisual_tb=0;
    enableData1_tb=0;
    enableData2_tb=1;
    readWrite_tb=0;
    currentRow_tb=25;
    currentCol_tb=25;
    dataIn_tb=3;    
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=50;
    currentCol_tb=50;
    dataIn_tb=0;
    @(posedge clk_tb)
    @(posedge clk_tb)
    readWrite_tb=1;
    vCount_tb=50;
    hCount_tb=50;
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=25;
    currentCol_tb=25;
    vCount_tb=25;
    hCount_tb=25;
    @(posedge clk_tb)
    @(posedge clk_tb)
    currentRow_tb=50;
    currentCol_tb=50;
    vCount_tb=50;
    hCount_tb=50;
    @(posedge clk_tb)
    @(posedge clk_tb)
    enableVisual_tb=1;
    @(posedge clk_tb)
    @(posedge clk_tb)
    vCount_tb=25;
    hCount_tb=25;
    end

always begin
    #1 clk_tb = 1;
    #1 clk_tb = 0;
end
endmodule
