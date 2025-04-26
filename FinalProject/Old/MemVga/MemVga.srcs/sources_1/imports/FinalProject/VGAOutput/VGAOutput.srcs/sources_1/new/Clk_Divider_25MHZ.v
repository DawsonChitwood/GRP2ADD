`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2025 11:40:49 AM
// Design Name: 
// Module Name: Clk_Divider_25MHZ
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


module Clk_Divider_25MHZ(input Clk, output Clk_25_MHZ);

reg Clk_25_MHZ_reg = 0;
reg [1:0] Counter = 0;

parameter [1:0] COUNT25MHZ = 2;

/*
always @(BANANAS) begin
    Clk_25_MHZ_reg = 0;
 end
*/

always @(posedge Clk) begin
    Counter <= Counter + 1;
    
    if (Counter == COUNT25MHZ) begin
        Clk_25_MHZ_reg <= !Clk_25_MHZ_reg;
        Counter <= 0;
    end else Clk_25_MHZ_reg <= Clk_25_MHZ_reg;
end


assign Clk_25_MHZ = Clk_25_MHZ_reg;

endmodule
