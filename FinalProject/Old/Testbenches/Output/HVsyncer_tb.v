`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:24:42 PM
// Design Name: 
// Module Name: HVsyncer_tb
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


module HVsyncer_tb();
reg Clk = 0;
reg Rst = 0;
wire hsync;
wire vsync;
wire [6:0] HC;
wire [6:0] VC;
reg k = 0;
reg [4:0] errors = 0;
reg [6:0] i = 0;

parameter Test1 = 1;
parameter Test2 = 66;
parameter Test3 = 267;
parameter Test4 = 535;
parameter Test5 = 1533;

HVsyncer hvs(Clk,Rst,hsync,vsync,HC,VC);

initial begin
$display("Starting test1!");

//Test 1 ~ see if hsync and vsync are zero
for(i = 0; i < Test1; i = i + 1) begin
    #1 Clk = 1;
    #1 Clk = 0;
end

 if (hsync || vsync) begin
        if (hsync) begin
            $display("error at Test 1 with hsync");
            errors = errors + 1;
        end else if (vsync) begin
            $display("error at Test 1 with vsync");
            errors = errors + 1;
        end else ;
    end else ;
end
    
initial begin
    //Test 2 ~ see if hsync will be high while vsync is low after the 
    // counter has reached HRT + HBP
    for (i = 0; i < Test2; i = i + 1) begin
        #1 Clk = 1;
        #1 Clk = 0;
    end
    
    if (!hsync || vsync) begin
        if (!hsync) begin
            $display("error at Test 2 with hsync");
            errors = errors + 1;
        end
        else if (vsync) begin
            $display("error at Test 2 with vsync");
            errors = errors + 1;
        end else ;
    end else ;
 end

initial begin
    //Test 3 ~ see if hsync will go back to zero while vsync is still zero
    for (i = 0; i < Test3; i = i + 1) begin
        #1 Clk = 1;
        #1 Clk = 0;
    end
    
    if (hsync || vsync) begin
        if (hsync) begin
            $display("error at Test 3 with hsync");
            errors = errors + 1;
        end
        else if (vsync) begin
            $display("error at Test 3 with vsync");
            errors = errors + 1;
        end else ;
    end else ;
end


initial begin
    //Test 4 ~ see if vsync will go high after two hsyncs have passed
    for (i = 0; i < Test4; i = i + 1) begin
        #1 Clk = 1;
        #1 Clk = 0;
    end
    
    if (hsync || !vsync) begin
        if (hsync) begin
            $display("error at Test 4 with hsync");
            errors = errors + 1;
        end
        else if (!vsync) begin
            $display("error at Test 4 with vsync");
            errors = errors + 1;
        end else ;
    end else ;
end

initial begin
    //Test 5 ~ see if vsync will reset when it is supposed to 
    for (i = 0; i < Test5; i = i + 1) begin
        #1 Clk = 1;
        #1 Clk = 0;
    end
    
    if (hsync || vsync) begin
        if (hsync) begin
            $display("error at Test 5 with hsync");
            errors = errors + 1;
        end
        else if (vsync) begin
            $display("error at Test 5 with vsync");
            errors = errors + 1;
        end else ;
    end else ;
end

initial begin
    $display("This test finished with %d errors",errors);
end    
    
  
    


endmodule
