`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 11:39:24 AM
// Design Name: 
// Module Name: Send
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


module Send(input Clk, input Reset,input Frame_Done, input [6:0] Row, input [7:0] Col, output [6:0] Send_Row, output [7:0] Send_Col);
always @(posedge Clk) begin
    if(Reset) begin
        Send_Row <= 0;
        Send_Col <= 0;
    end
    else begin
        if(~Frame_Done) begin   
            Send_Row <= Row;
            Send_Col <= Col;
        end
    end
endmodule
