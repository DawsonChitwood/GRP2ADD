`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 05:55:49 PM
// Design Name: 
// Module Name: Four_Bit_Adder_tb
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


module Four_Bit_Adder_tb();

input reg [3:0] a;
input reg [3:0] b;
input reg cin;
output x;
output co;

parameter [3:0] atest1 = 4'b1010;
parameter [3:0] btest1 = 4'b0101;
parameter [3:0] atest2 = 4'b1111;
parameter [3:0] btest2 = 4'b0001;
parameter [3:0] atest3 = 4'b1101;
parameter [3:0] btest3 = 4'b0101;
parameter [3:0] test1expx = 4'b1111;
parameter [3:0] test2expx = 4'b0000;
parameter [3:0] test3expx = 4'b0010;
parameter test1expco = 0;
parameter test2expco = 1;
parameter test3expco = 1;


task checker;

endtask
