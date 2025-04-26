`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:47:11 AM
// Design Name: 
// Module Name: Auto_Clk
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

//This module divides the 100 MHZ clock into 50 MHZ

module Auto_Clk(input Clk, output  Clk_50MHZ);
reg Clk_50MHZ_reg = 0;

// It does so by flipping the polarity of the 50MHZ clock on every positive edge of the 100 MHZ clock; effectively halfing the frequency.
always @(posedge Clk) begin
    Clk_50MHZ_reg <= ~Clk_50MHZ_reg;
end

assign Clk_50MHZ = Clk_50MHZ_reg;
endmodule
