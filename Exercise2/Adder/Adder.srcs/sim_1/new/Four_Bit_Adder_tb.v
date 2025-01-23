`timescale 1ns / 1ns


// Self-Testing Checkbench for the 4-Bit Adder
module Four_Bit_Adder_tb();

reg [3:0] A; // A Input
reg [3:0] B; // B Input
wire[3:0] S; // S Output
reg ci;      // Carry In Input
wire co;     // Carry Out Output


// The following lines are used in the task "check" to do calculations 
// of the expected behavior of the module.
reg [3:0] testA = 4'b0000;
reg [3:0] testB = 4'b0000;
reg testCI;
reg [4:0] testS;    // An extra bit is used to store the carry
reg testCO;
integer error = 0;
integer i,j,k,l; // counter variables for the for loops

// Instantiation of the Module
Four_Bit_Adder FBA(A,B,ci,S,co);

// This block takes care of moving through the test inputs.
// The For loop structure is as follows
// For 1 - Carry Input
// For 2 - A Input
// For 3 - B Input
initial begin
    error = 0;
    assign testS = testA + testB +testCI;
    assign testCO = testS[4];
    for(k = 0; k < 2; k = k + 1)begin
       assign ci = k;
       assign testCI = k;
        for(i = 0; i < 16; i = i + 1) begin
            assign A = i;
            assign testA = i;
                 for(j = 0; j < 16; j = j + 1)begin
                   // if(j == 7 & i == 3)
                     //   assign B = 2;      // These lines are used to implement an error
                    //else 
                        assign B = j;
                    #1 assign testB = j;
                    check;
                  
                 end
        end
     end
    $display("Test Complete: %d errors",error); // Prints out errors when testing is done
                
end


// task used to check each test scenario. It calculates the expected
// behavior of the module for each test and compares this to the actual
// output of the module. Upon finding an error, it will print out 
// where the error occured.
task check; begin
    for(l = 0; l < 4; l = l + 1)  begin
        if (S[l] !== testS[l]) begin
            $display("Error in test %d + %d (ci = %d) at bit %d",A,B,ci,l);
            error = error + 1;
        end
    end
   
    if(co !== testCO) begin
        $display("Error in test %d + %d (ci = %d) co value",A,B,ci);
        error = error + 1;
    end
end
endtask

endmodule
