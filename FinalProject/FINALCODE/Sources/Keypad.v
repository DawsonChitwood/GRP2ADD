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



//This module was not used in the final design, however its contents were. Our controller is merely an array of buttons that are all tied to a common 3v3 rail (current limited by a 1k ohm resistor).
// Each time a button is pressed, its alternate pin will saturate to 3v3 volts, which means the PMOD pin it is connected to will also saturate to 3v3 volts. Now, for some reason our controller worked the 
// opposite way when we implemented it. It acted as an active low, meaning each button actually pulled the high voltage of the PMOD pins down to low when pressed. 
module Keypad(input CLK100MHZ,input [1:0]SW, input [5:0] JA,output [5:0] LED);

assign LED[0] = JA[0];
assign LED[1] = JA[1];
assign LED[2] = JA[2];
//assign LED[3] = JA[3];
assign LED[4] = JA[4];
assign LED[5] = JA[5];

endmodule
