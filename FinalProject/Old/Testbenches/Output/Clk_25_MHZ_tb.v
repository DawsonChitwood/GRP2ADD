`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2025 11:59:39 AM
// Design Name: 
// Module Name: Clk_25_MHZ_tb
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


module Clk_25_MHZ_tb();
reg Clk = 0;
reg Rst = 0;
wire Clk_25_MHZ;

Clk_Divider_25MHZ CD(Clk,Rst,Clk_25_MHZ);

always begin
    #1 Clk = 1;
    #1 Clk = 0;
end
endmodule
