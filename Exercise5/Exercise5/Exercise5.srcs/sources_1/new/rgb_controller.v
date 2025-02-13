`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 04:58:55 PM
// Design Name: 
// Module Name: rgb_controller
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


module rgb_controller(input clk_in, input rst_in, input [7:0] r_in, 
input [7:0] g_in, input [7:0] b_in, output r_out, output g_out, output b_out);

wire [7:0] rdut ;
wire [7:0] gdut ;
wire [7:0] bdut ;
wire pwmclk;

switch_to_duty stdr(clk_in,r_in,rdut);
switch_to_duty stdg(clk_in,g_in,gdut);
switch_to_duty stdb(clk_in,b_in,bdut);
//clk_bf clkb(clk_in,pwmclk);


PWM pwmr(rdut,clk_in,rst_in,r_out);
PWM pwmg(gdut,clk_in,rst_in,g_out);
PWM pwmb(bdut,clk_in,rst_in,b_out);

endmodule
