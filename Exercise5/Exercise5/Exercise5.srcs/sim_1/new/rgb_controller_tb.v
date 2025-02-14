`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 10:21:02 AM
// Design Name: 
// Module Name: rgb_controller_tb
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


module rgb_controller_tb();
reg clk = 0;
reg rst = 0;
reg [7:0] rin;
reg [7:0] gin;
reg [7:0] bin;
wire  rout ;
wire  gout ;
wire  bout ;



rgb_controller rgb(clk,rst,rin,gin,bin,rout,gout,bout);

initial begin
    clk = 0;
    rst = 0;
    rin = 32;
    gin = 0;
    bin = 0;
end

always begin
    #1 clk = 1;
    #1 clk = 0;
end

endmodule
