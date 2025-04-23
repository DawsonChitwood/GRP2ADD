`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 08:10:11 AM
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


module top(input CLK100MHZ ,input [1:0] SW ,output reg [15:0] LED,output reg bitOut);
reg [15:0] test;
reg [15:0] temp;
reg newBit;
reg start;
always @(posedge CLK100MHZ ) begin
    if(test == 0) begin
     test=28179;
    end
    else begin
    if(SW[1]==0) LED=test;    
    bitOut=test[0];
    temp[14:0] = test[15:1];
    newBit= ((test[0] ^ test[2])^test[3])^test[5];
    temp[15]=newBit;
    test=temp;
    end
end

endmodule
