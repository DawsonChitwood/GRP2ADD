`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 07:59:43 PM
// Design Name: 
// Module Name: clock_moderator_tb
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


module clock_moderator_tb();
reg SysClk = 0;
wire clk = 0;

clock_moderator cmtb(SysClk,clk);

always begin
    #0.5 SysClk = 1;
    #0.5 SysClk = 0;
end

endmodule
