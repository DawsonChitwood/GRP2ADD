`timescale 1ns / 1ps
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


module Four_Bit_Adder(a,b,ci,x,co);
input [3:0] a;
input [3:0] b;
input ci;
output reg [3:0] x;
output reg co;

assign C1 = a[0]*ci+b[0]*ci+a[0]*b[0];
assign C2 = a[1]*C1+b[1]*C1+a[1]*b[1];
assign C3 = a[2]*C2+b[2]*C2+a[2]*b[2];
assign C4 = a[3]*C3+b[3]*C3+a[3]*b[3];

always @(*) 
    if(C4)
        co = 1;
    else
        co = 0;
        
always @(*) 
    if(!a[0]*!b[0]*ci+!a[0]*b[0]*!ci+a[0]*!b[0]*!ci+a[0]*b[0]*ci)
        x[0] = 1;
    else 
        x[0] = 0;

always @(*)
    if(!a[1]*!b[1]*C1+!a[1]*b[1]*!C1+a[1]*!b[1]*!C1+a[1]*b[1]*C1)
        x[1] = 1;
    else 
        x[1] = 0;

always @(*)
    if(!a[2]*!b[2]*C2+!a[2]*b[2]*!C2+a[2]*!b[2]*!C2+a[2]*b[2]*C2)
        x[2] = 1;
    else 
        x[2] = 0;
        
always @(*)
    if(!a[3]*!b[3]*C3+!a[3]*b[3]*!C3+a[3]*!b[3]*!C3+a[3]*b[3]*C3)
        x[0] = 1;
    else 
        x[0] = 0;
        
endmodule
