`timescale 1ns / 1 ns


// Our Top module that adds sixteen bits
module Sixteen_Bit_Adder(A,B,S,co,ci);

input [15:0] A; //input A
input [15:0] B; //input B
input ci;       // Carry In Input
output [15:0] S; // Sum Output
output co;       // Carry Out Output

wire c2,c3,c4; // Nets used to tie the carrys of each 4-Bit Module Together

wire [3:0] a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2,s3;  // Nets for each for each of the 4-Bit Modules


// The code below assigns four bits of each input (A and B) to each 4-Bit Module
assign a0 = A[3:0];
assign a1 = A[7:4];
assign a2 = A[11:8];
assign a3 = A[15:12];
assign b0 = B[3:0];
assign b1 = B[7:4];
assign b2 = B[11:8];
assign b3 = B[15:12];
assign S = {s3,s2,s1,s0};    // This line concatenates the sums of each 4-Bit Module


// These lines instantiate each 4-Bit Module
Four_Bit_Adder FB1(a0,b0,ci,s0,c2);
Four_Bit_Adder FB2(a1,b1,c2,s1,c3);
Four_Bit_Adder FB3(a2,b2,c3,s2,c4);
Four_Bit_Adder FB4(a3,b3,c4,s3,co);




endmodule
