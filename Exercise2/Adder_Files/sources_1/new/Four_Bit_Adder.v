`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 10:40:16 AM
// Design Name: 
// Module Name: Four_Bit_Adder
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


module Four_Bit_Adder(A,B,ci,S,co);
input [3:0] A;
input [3:0] B;
input ci;
output reg [3:0] S;
output reg co;

assign C1 = A[0]*ci+B[0]*ci+A[0]*B[0];
assign C2 = A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1];
assign C3 = A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2];
assign C4 = A[3]*(A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2])+B[3]*(A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2])+A[3]*B[3];

always @(*) 
    if(C4)
        co = 1;
    else
        co = 0;
        
always @(*) 
    if(!A[0]*!B[0]*ci+!A[0]*B[0]*!ci+A[0]*!B[0]*!ci+A[0]*B[0]*ci)
        S[0] = 1;
    else 
        S[0] = 0;

always @(*)
    if(!A[1]*!B[1]*C1+!A[1]*B[1]*!C1+A[1]*!B[1]*!C1+A[1]*B[1]*C1)
        S[1] = 1;
    else 
        S[1] = 0;

always @(*)
    if(!A[2]*!B[2]*C2+!A[2]*B[2]*!C2+A[2]*!B[2]*!C2+A[2]*B[2]*C2)
        S[2] = 1;
    else 
        S[2] = 0;
        
always @(*)
    if(!A[3]*!B[3]*C3+!A[3]*B[3]*!C3+A[3]*!B[3]*!C3+A[3]*B[3]*C3)
        S[3] = 1;
    else 
        S[3] = 0;
        
endmodule
