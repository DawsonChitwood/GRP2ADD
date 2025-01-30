`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 02:30:07 AM
// Design Name: 
// Module Name: PrimeFinder_tb
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


module PrimeFinder_tb();
    reg [9:0] NumMax_tb;
    reg Reset_tb,SysClk_tb;
    wire Prime_tb;
    wire [9:0] NumberChecked_tb;
    wire [7:0] NumberofPrimesFound_tb;
    
    PrimeFinder PF(NumMax_tb,Reset_tb,SysClk_tb,Prime_tb,NumberChecked_tb,NumberofPrimesFound_tb);
    
    initial begin
        @(posedge SysClk_tb)   
        Reset_tb = 0;
        NumMax_tb = 15;
       end
       
       
    
    always begin
        SysClk_tb <=0;
        #10;
        SysClk_tb <=1;
        #10;
    end
        
    
endmodule
