`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 10:26:49 AM
// Design Name: 
// Module Name: LFSR
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


module LFSR(input CLK100MHZ ,output reg bitOut);
   reg [15:0] test;
   reg [15:0] temp;
   reg newBit;
   reg start;
   always @(posedge CLK100MHZ ) begin
        if(test == 0) begin
         test=28179; //randomly picked seed
        end
        else begin  
        bitOut=test[0];
        temp[14:0] = test[15:1];
        newBit= ((test[0] ^ test[2])^test[3])^test[5];
        temp[15]=newBit;
        test=temp;
        end
    end
endmodule
