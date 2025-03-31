`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:39:06 AM
// Design Name: 
// Module Name: Start_Control_tb
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


module Start_Control_tb();

reg Clk_tb = 0;
reg Reset_tb = 0;
reg Start_tb = 0;
wire Start_State_tb;

Start_Control SCTB(Clk_tb,Reset_tb,Start_tb,Start_State_tb);


initial begin
    Start_tb = 1;
    #5 Start_tb = 0;
    #2 Start_tb = 1;
    #10 Reset_tb = 1;
    #1 Reset_tb = 0;
    #3 Start_tb = 0;
end

always begin
    #1 Clk_tb = 1;
    #1 Clk_tb = 0;
end
endmodule
