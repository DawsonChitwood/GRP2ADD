`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 05:55:49 PM
// Design Name: 
// Module Name: Four_Bit_Adder_tb
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


module Four_Bit_Adder_tb();

reg [3:0] a;
reg [3:0] b;
reg ci;
wire[3:0] x;
wire co;

reg [3:0] currx;
reg currco;
integer i;
reg [2:0] test;





integer error = 0;

// Test 1: An add with no input carry in which there is no 
// carry out

parameter [3:0] atest1 = 4'b1010;
parameter [3:0] btest1 = 4'b0101;
parameter citest1 = 0;
parameter [3:0] test1expo = 4'b1111;
parameter test1expco = 0;

// Test 2: An add with an input carry in which there is no
// carry out

parameter [3:0] atest2 = 4'b0011;
parameter [3:0] btest2 = 4'b0101;
parameter citest2 = 1;
parameter [3:0] test2expo = 4'b1001;
parameter test2expco = 0;

// Test 3: An add with no input carry in which there is a 
// carry out

parameter [3:0] atest3 = 4'b1111;
parameter [3:0] btest3 = 4'b0001;
parameter citest3 = 0;
parameter [3:0] test3expo = 4'b0000;
parameter test3expco = 1;

// Test 4: An add with an input carry in which there is a
// carry out

parameter [3:0] atest4 = 4'b1110;
parameter [3:0] btest4 = 4'b0001;
parameter citest4 = 1;
parameter [3:0] test4expo = 4'b0000;
parameter test4expco = 1;


Four_Bit_Adder FBA(a,b,ci,x,co);

initial begin
    
    error = 0;
    
    //Test 1
   assign currx = test1expo;
   assign currco = test1expco;
   assign test = 1;
   assign a = atest1;
   assign b = btest1;
   assign ci = citest1;
   

   
    //Test 2
   #1  assign currx = test2expo;
   assign currco = test2expco;
   assign test = 2;
   assign a = atest2;
   assign b = btest2;
   assign ci = citest2;
    

    //Test 3
   #1  assign currx = test2expo;
   assign currco = test2expco;
   assign test = 3;
   assign a = atest3;
   assign b = btest3;
   assign ci = citest3;
   

  
    //Test 4
   #1  assign currx = test2expo;
   assign currco = test2expco;
   assign test = 1;
   assign a = atest4;
   assign b = btest4;
   assign ci = citest4;
   
   $display("Test Complete: %d errors",error);
   
end

always @(x,co) begin
    for(i = 0; i < 4; i = i + 1) 
        if (x[i] !== currx[i]) begin
            $display("Error in test %d at bit %d",test,i);
            error = error + 1;
        end

   
    if(co !== currco) begin
        $display("Error in test %d co value", test);
        error = error + 1;
    end
            

end
endmodule
