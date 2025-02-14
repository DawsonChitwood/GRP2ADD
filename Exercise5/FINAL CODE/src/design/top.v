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

// Our top module for Exercise 5. 
module top(input wire CLK100MHZ,input wire BTNC,input wire [15:0] SW,output wire LED16_R,output wire LED16_G, output wire LED16_B,output [4:1]JA,
output wire [7:0] AN,output wire [7:0] cathode);

// Instantiation of the rgb_controller
rgb_controller rgbc(CLK100MHZ,BTNC,SW[15:11],SW[10:5],SW[4:0],LED16_R,LED16_G,LED16_B);

// Instantiation of the ssd_controller
ssd_controller ssd(CLK100MHZ,BTNC,SW[15:11],SW[10:5],SW[4:0],AN,cathode);


// Continuous assignment of the PMOD outputs
assign JA[1] = LED16_R;
assign JA[2] = LED16_G;
assign JA[3] = LED16_B;
assign JA[4] = CLK100MHZ;



endmodule
