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

reg [3:0] A;
reg [3:0] B;
wire[3:0] S;
reg ci;
wire co;

reg [3:0] testA = 4'b0000;
reg [3:0] testB = 4'b0000;
reg testCI;
reg [4:0] testS;
reg testCO;
integer error = 0;
integer i,j,k,l;

Four_Bit_Adder FBA(A,B,ci,S,co);

initial begin
    error = 0;
    assign testS = testA + testB;
    assign testCO = testS[4];
    for(k = 0; k < 2; k = k + 1)begin
       assign ci = k;
       assign testCI = k;
        for(i = 0; i < 16; i = i + 1) begin
            assign A = i;
            assign testA = i;
                 for(j = 0; j < 16; j = j + 1)begin
                    assign B = j;
                     #10 assign testB = j;
                  
                 end
        end
     end
    $display("Test Complete: %d errors",error);
                
end

always @(co) begin
    for(l = 0; l < 4; l = l + 1) 
        if (S[l] !== testS[l]) begin
            $display("Error in test %d + %d (ci = %d) at bit %d",A,B,ci,l);
            error = error + 1;
        end

   
    if(co !== testCO) begin
        $display("Error in test %d + %d (ci = %d) co value",A,B,ci);
        error = error + 1;
    end
            

end
endmodule
