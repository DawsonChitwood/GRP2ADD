`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 09:08:08 AM
// Design Name: 
// Module Name: SSD_tb
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


module SSD_tb();
reg clk;
reg rst;
reg encoded;
reg error;
wire anode;
wire cathode;
reg [8:0] checker;

integer i;

task checking(input [8:0] anode, input [5:0] R,input [5:0] G, input [5:0] , output [7:0] check);
    case(anode) 
    




initial begin
    clk = 0;
    rst = 1;
    error = 0;
    checker = 7'b0000000;
end

for(i = 0; i < 64; i = i + 1) begin
    
    end


always begin
    #1 clk = 1;
    #1 clk = 0;
end



endmodule
