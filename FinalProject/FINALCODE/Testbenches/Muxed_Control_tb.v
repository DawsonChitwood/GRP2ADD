`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 01:11:07 PM
// Design Name: 
// Module Name: Muxed_Control_tb
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 11:50:17 AM
// Design Name: 
// Module Name: Muxed_Starting_tb
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


module Muxed_Starting_tb();
reg Clk = 0;
reg Reset = 0;
reg FrameSelect = 0;
reg Start = 0;
wire [1:0] dataB;
wire RW;
wire [5:0] currentRow; 
wire [6:0] currentCol;
wire [1:0] DataIn; 
wire enableData1;
wire enableData2;
reg keepGoing = 0;
reg vCount;
reg hCount;
reg enableVisual = 0;
wire [1:0] colorData;
integer i = 0;



Control_And_Start cas(Clk,Reset,FrameSelect,Start,dataB,RW,currentRow,currentCol,DataIn,enableData1,enableData2,keepGoing);
Memory meme(currentRow,currentCol,vCount,hCount,enableVisual,enableData1,enableData2,RW,Clk,Reset,DataIn,dataB,colorColor);

initial begin
    @(posedge Clk) keepGoing = 1;
    for(i = 0; i < 10000; i = i + 1)begin
        @(posedge Clk);
    end
    
    @(posedge Clk) keepGoing = 0;
    @(posedge Clk) Start = 1;
    
    
    for(i = 0; i < 20; i = i + 1) begin
        @(posedge Clk);    
    end 
       
    FrameSelect = 1;
    
    for(i = 0; i < 10000; i = i + 1)begin
        @(posedge Clk);
    end
 /*   
    for(i = 0; i < 20; i = i + 1) begin
        @(posedge Clk);    
    end 
       
    @(posedge Clk) FrameSelect = 1;
    
    for(i = 0; i < 20; i = i + 1) begin
        @(posedge Clk);
    end    
       @(posedge Clk) FrameSelect = 0;
       
     for(i = 0; i < 200; i = i + 1) begin
        @(posedge Clk);
    end  
    */
end

always begin
    #1 Clk = 1;
    #1 Clk = 0;
end

endmodule

