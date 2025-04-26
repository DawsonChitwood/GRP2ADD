`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2025 10:17:36 AM
// Design Name: 
// Module Name: KeepGoing_Control_tb
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


module KeepGoing_Control_tb();
reg Clk,Rst,key;
reg [2:0] errors;
reg [2:0] test;
wire keepgoing;

initial begin
    Clk = 0;
    Rst = 0;
    key = 0;
    errors = 0;
    test = 0;
    
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 1, is start 0 before 5 clocks have passed?
    
    if(keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
    
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 2, is start 0 when key has been zero for 5 clocks?
    
    if(keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
    
    @ (posedge Clk);
    key = 1;
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 3, is start 0 when key has been 1 for 2 clocks?
    
    if(keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
        
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 4, is start 1 when key has been 1 for 5 clocks?
    
    if(!keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
        
    @ (posedge Clk);
    
    key = 0;
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 5, is start 1 when key has been zero for 2 clocks?
    
    if(!keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
    
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    //Test 6, is start 1 when key has been zero for 5 clocks?
    
    if(!keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
     
    @ (posedge Clk);
    key = 1;
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    @ (posedge Clk);
    Rst = 1;
    @ (posedge Clk);
       //Test 7, is start 0 when Rst is 0
    
    if(keepgoing) begin
        errors = errors + 1;
        $display("error at test %d",test + 1);
    end
    else errors = errors;
    test = test + 1;
    
    
    $display("Test has finished with %d errors", errors);
      
        
end


Start_Control sctb(Clk,Rst,key,keepgoing);




always begin
    #1 Clk = 1;
    #1 Clk = 0;
end
endmodule

