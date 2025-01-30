`timescale 1ns / 1ns


// Self-Checking Testbench for the Sixteen-Bit Adder
module Sixteen_Bit_Adder_tb();

reg [15:0] A; //A Input
reg [15:0] B; //B Input
wire[15:0] S; //S Output
reg cI;       //Carry In Input
wire co;      //Carry Out Output


// The following lines are used in the task "check" to do calculations 
// of the expected behavior of the module. 
reg [15:0] testA = 16'b0000000000000000;
reg [15:0] testB = 16'b0000000000000000;
reg testCI;
reg [16:0] testS;    // An extra bit is used to store the carry
reg testCO;
integer error = 0;
integer i,j,k,l;




// Parameters used to customize the range of testing in simulations
parameter TWOTOSIXTEEN = 65535; // 2^16
parameter aStart = 0;
parameter aFinish = TWOTOSIXTEEN ;
parameter bStart = 0;
parameter bFinish = TWOTOSIXTEEN;
parameter ciFinish = 1; // 1 means it will just calculate for 0, 2 means it calcultes for 0 and 1

// Instantiation of the Module
Sixteen_Bit_Adder FBA(A,B,S,co,cI);


// This block takes care of moving through the test inputs.
// The For loop structure is as follows
// For 1 - Carry Input
// For 2 - A Input
// For 3 - B Input
initial begin
    error = 0;
    assign testS = testA + testB + testCI;
    assign testCO = testS[16];

    for(k = 0; k < ciFinish; k = k + 1)begin
       assign cI = k;
       assign testCI = k;
       for (i = aStart; i < aFinish; i = i + 1) begin
            assign A = i;
            assign testA = i;
        for(j = bStart; j < bFinish; j = j + 16'h1000 )begin
            if(j == 16'h7000 & i == 0) 
                assign B = 16'h4563;              //These lines are used to insert error
            else 
                assign B = j;
            #1 assign testB = j;
            check;
        end
       end
     end
    $display("Test Complete: %d errors",error); // Prints out errors when the testing is done
                
end


// task used to check each test scenario. It calculates the expected
// behavior of the module for each test and compares this to the actual
// output of the module. Upon finding an error, it will print out 
// where the error occured.
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
