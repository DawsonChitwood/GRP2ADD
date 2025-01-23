`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2025 08:44:53 PM
// Design Name: 
// Module Name: Sixteen_Bit_Adder_tb
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


module Sixteen_Bit_Adder_tb();
reg [15:0] A;
reg [15:0] B;
wire[15:0] S;
reg cI;
wire co;


reg [15:0] testA = 16'b0000000000000000;
reg [15:0] testB = 16'b0000000000000000;
reg testCI;
reg [16:0] testS;
reg testCO;
integer error = 0;
integer i,j,k,l;

parameter aStart = 16'hCBA9;
parameter bStart = 0;


Sixteen_Bit_Adder FBA(A,B,S,co,cI);

initial begin
    error = 0;
    assign testS = testA + testB + testCI;
    assign testCO = testS[16];
    for(k = 0; k < 2; k = k + 1)begin
       assign cI = k;
       assign testCI = k;
        for(i = aStart; i < 65535; i = i + 1) begin
            assign A = i;
            assign testA = i;
                 for(j = bStart; j < 65535; j = j + 1)begin
                    assign B = j;
                    #1 assign testB = j;
                    check;
                  
                 end
        end
     end
    $display("Test Complete: %d errors",error);
                
end

task check; begin
    for(l = 0; l < 15; l = l + 1)  begin
        if (S[l] !== testS[l]) begin
            $display("Error in test %d + %d (ci = %d) at bit %d",A,B,cI,l);
            error = error + 1;
        end
    end
   
    if(co !== testCO) begin
        $display("Error in test %d + %d (ci = %d) co value",A,B,cI);
        error = error + 1;
    end
end
endtask

endmodule
