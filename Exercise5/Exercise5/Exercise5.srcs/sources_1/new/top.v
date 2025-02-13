`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 04:48:16 PM
// Design Name: 
// Module Name: top
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


module top(input wire CLK100MHZ,input wire BTNC,input wire [15:0] SW,output wire LED16_R,output wire LED16_G, output wire LED16_B);


rgb_controller rgbc(CLK100MHZ,BTNC,SW[15:11],SW[10:5],SW[4:0],LED16_R,LED16_G,LED16_B);

endmodule
