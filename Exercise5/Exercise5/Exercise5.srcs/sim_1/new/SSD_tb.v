`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 09:08:08 AM
// Design Name: 
// Module Name: SSD_tb
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


module SSD_tb();
reg clk;
reg rst;
reg [7:0] R;
reg [7:0] G;
reg [7:0] B;
reg error;
wire [7:0] anode;
wire [7:0] cathode;
reg [8:0] checker;

task(input [7:0] an,input [7:0] R, inpu



ssd_controller ssdc(clk,rst,R,G,B,anode,cathode);

initial begin
    clk = 0;
    rst = 0;
    error = 0;
    checker = 7'b0000000;
    R = 32;
    G = 0;
    B = 15;
end


always begin
    #1 clk = 1;
    #1 clk = 0;
end



endmodule
