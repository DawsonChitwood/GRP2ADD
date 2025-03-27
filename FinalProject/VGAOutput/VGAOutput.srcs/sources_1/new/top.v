`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2025 11:39:34 AM
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


module top(input CLK100MHZ, input RESET, input [1:0] SW, output h_sync, output v_sync, output logic [3:0] R, output logic [3:0] G,output logic [3:0] B);
wire CLK;
wire [10:0] HC;
wire [10:0] VC;
logic [11:0] FIBISH;
wire [11:0] FISH;

Clk_Divider_25MHZ CD(CLK100MHZ,CLK);

VGA_Out vga(CLK,RESET,SW, h_sync, v_sync,R,G, B, HC, VC);
HVsyncer hvs(CLK,RESET,h_sync,v_sync,HC,VC);


endmodule
