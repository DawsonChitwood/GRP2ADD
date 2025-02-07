`timescale 1ps / 1fs
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 07:52:08 PM
// Design Name: 
// Module Name: clock_moderator
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


module clock_moderator(SysClk,clk);
input SysClk;
output clk;
integer i = 0;
reg clkreg = 0;

assign clk = clkreg;

//creates a 3 Ghz Clock Signal
always @ (posedge SysClk) begin
    for(i = 0; i < 333; i = i + 1) begin
        if(i === 0) clkreg = 1;
        else #0.5  clkreg = 1;
        #0.5 clkreg = 0;
    end
end

endmodule
