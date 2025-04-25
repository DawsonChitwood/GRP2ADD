`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 06:45:50 PM
// Design Name: 
// Module Name: Keypad
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


module Keypad(input CLK100MHZ,input [1:0]SW, input [5:0] JA,output [5:0] LED);

assign LED[0] = JA[0];
assign LED[1] = JA[1];
assign LED[2] = JA[2];
//assign LED[3] = JA[3];
assign LED[4] = JA[4];
assign LED[5] = JA[5];

endmodule
