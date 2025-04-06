`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 01:18:26 PM
// Design Name: 
// Module Name: top
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


module top(
input [6:0] SW,
input BTNU,
input BTNL,
input BTNR,
input BTND,
output [3:0] LED
);
reg [6:0] hCount=0;
reg [5:0] vCount=0;

Memory mem(
vCount,
hCount,
vCount,
hCount,
SW[5],
SW[3],
SW[4],
SW[2],
clk,
SW[6],
SW[1:0],
LED[1:0],
LED[3:2] 
);

always @ (posedge clk) begin
    if(BTNU) begin
        if(vCount == 0)
            vCount = 59;
        else
            vCount--;
    end
    if(BTND) begin
        if(vCount == 59)
            vCount = 0;
        else
            vCount++;
    end
    if(BTNL) begin
        if(hCount == 0)
            hCount = 79;
        else
            hCount--;
    end
    if(BTNR) begin
        if(hCount == 79)
            hCount = 0;
        else
            hCount++;
    end
end
endmodule
