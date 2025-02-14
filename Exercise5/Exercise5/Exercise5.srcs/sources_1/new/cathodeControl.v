`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 08:02:14 AM
// Design Name: 
// Module Name: cathodeControl
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


module cathodeControl(input [3:0] digit1,input [3:0] digit2,input [3:0] digit3, input [3:0] digit4,input [3:0] digit5,input [3:0] digit6,input [2:0] selector,output reg [3:0] out);
    always@(selector) begin
            case(selector)
                0: out = digit1;
                1:  out = digit2;
                2:  out = digit3;
                3:  out = digit4;
                4:  out = digit5;
                5:  out = digit6;
                default: out=0;
            endcase
       end
endmodule
