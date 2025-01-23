`timescale 1ns / 1ns


// This module implements a 4-Bit Carry Look Ahead Adder to be used to create a 16-Bit Carry Look Ahead Adder
module Four_Bit_Adder(A,B,ci,S,co);
input [3:0] A; //Input A
input [3:0] B; //Input B
input ci;      // Carry In Input
output reg [3:0] S; // Sum Output
output reg co;   //Carry Out Output


// The following assign lines ensure that the carrys for each 1-Bit Summation will be calculated at the same time
assign C1 = A[0]*ci+B[0]*ci+A[0]*B[0];
assign C2 = A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1];
assign C3 = A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2];
assign C4 = A[3]*(A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2])+B[3]*(A[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+B[2]*(A[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+B[1]*(A[0]*ci+B[0]*ci+A[0]*B[0])+A[1]*B[1])+A[2]*B[2])+A[3]*B[3];

// The Following block handles the behavior of the module. co is set if C4 is high and each of the summations are set according
// to their own logic statements
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
