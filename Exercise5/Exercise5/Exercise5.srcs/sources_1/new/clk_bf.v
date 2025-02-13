`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 12:18:53 PM
// Design Name: 
// Module Name: clk_bf
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


module clk_bf(input clk, output reg clkout);
reg first = 1;

always @(posedge clk) begin
    if(first) begin
        clkout = 1;
        first = 0;
    end 
    else clkout = !clk;
end

endmodule
