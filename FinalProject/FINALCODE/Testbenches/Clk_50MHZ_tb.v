`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:49:24 AM
// Design Name: 
// Module Name: Clk_50MHZ_tb
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


module Auto_Clk_tb();
reg Clk_tb = 0;
wire Clk_50MHZ_tb;

Auto_Clk C50(Clk_tb,Clk_50MHZ_tb);

always begin
    #1 Clk_tb = 1;
    #1 Clk_tb = 0;
end

endmodule
