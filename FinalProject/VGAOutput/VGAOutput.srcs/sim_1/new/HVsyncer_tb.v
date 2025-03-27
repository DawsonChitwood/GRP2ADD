`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:24:42 PM
// Design Name: 
// Module Name: HVsyncer_tb
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


module HVsyncer_tb();
reg Clk = 0;
reg Rst = 0;
wire hsync;
wire vsync;
wire [6:0] HC;
wire [6:0] VC;

HVsyncer hvs(Clk,Rst,hsync,vsync,HC,VC);

always begin
    #1 Clk = 1;
    #1 Clk = 0;
end

endmodule
