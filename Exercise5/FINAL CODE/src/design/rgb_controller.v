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



// Our module for the rgb_controller
module rgb_controller(input clk_in, input rst_in, input [7:0] r_in, 
input [7:0] g_in, input [7:0] b_in, output r_out, output g_out, output b_out);

wire [7:0] rdut ;      //variable to hold the duty cycle for the red PWM
wire [7:0] gdut ;       //variable to hold the duty cycle for the green PWM
wire [7:0] bdut ;       //variable to hold the duty cycle for the blue PWM
         
reg [2:0] red_bits = 5;   //Number of bits checked in red for the switch to duty conversion
reg [2:0] green_bits = 6; //Number of bits checked in green for the switch to duty conversion
reg [2:0] blue_bits = 5;  //Numner of bits checked in blue for the switch to duty conversion


//Switch to Duty module instantiation for conversion to duty cycle.
switch_to_duty stdr(clk_in,r_in,rdut,red_bits);
switch_to_duty stdg(clk_in,g_in,gdut,green_bits);
switch_to_duty stdb(clk_in,b_in,bdut,blue_bits);

//PWM module instantiations 
PWM pwmr(rdut,clk_in,rst_in,r_out);
PWM pwmg(gdut,clk_in,rst_in,g_out);
PWM pwmb(bdut,clk_in,rst_in,b_out);

endmodule
