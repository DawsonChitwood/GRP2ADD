`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:34:30 AM
// Design Name: 
// Module Name: Start_Control
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


module Start_Control(input Clk, input Reset, input Start, output reg Start_State);

always @(posedge Clk) begin
    if (Reset) Start_State <= 0;
    else begin
        if(Start) Start_State <= 1;
        else Start_State <= 0;
    end
end


endmodule
