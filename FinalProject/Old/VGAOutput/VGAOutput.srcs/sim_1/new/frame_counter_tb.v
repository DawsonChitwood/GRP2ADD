`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 01:11:02 PM
// Design Name: 
// Module Name: frame_counter_tb
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


module frame_counter_tb();
reg Clk = 0;
reg Rst = 0;
wire [6:0] hc;
wire [6:0] vc;

frame_counter fc(Clk,Rst,hc,vc);

always  begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end
endmodule
