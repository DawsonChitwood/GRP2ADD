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

// a module we were going to use for clock buffering but didn't end up using
module clk_bf(input clk, output reg clkout);
reg first = 1;


// flip flop that inverses the clock every time a posedge is encountered
always @(posedge clk) begin
    if(first) begin
        clkout = 1;
        first = 0;
    end 
    else clkout = !clk;
end

endmodule
