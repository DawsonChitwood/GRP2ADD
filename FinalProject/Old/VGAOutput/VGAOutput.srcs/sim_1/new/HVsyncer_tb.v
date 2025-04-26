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
parameter Test2 = 56;
parameter Test3 = 743;
parameter Test4 = 400;
parameter Test5 = 1600;

HVsyncer hvs(Clk,Rst,hsync,vsync,HC,VC);

initial begin
$display("Starting test1!");
end


//Test 1 ~ see if hsync and vsync are zero, as well as HC and VC
initial begin

for(i = 0; i < Test1; i = i + 1) begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end

 if (hsync || vsync || (HC != 0) || (VC != 0)) begin
        if (hsync) begin
            $display("error at Test 1 with hsync");
            errors <= errors + 1;
        end else if (vsync) begin
            $display("error at Test 1 with vsync");
            errors <= errors + 1;
        end else ;
        if(HC != 0) begin
            $display("error at Test 1 with HC");
            errors <= errors + 1;
        end else ;
        if(VC != 0) begin
            $display("error at Test 1 with VC");
            errors <= errors + 1;
        end else ;
    end else ;


//Test 2 ~ see if hsync is 1 and vsync is 0, and if
// HC is 1 and VC is 0


for(i = 0; i < Test2; i = i + 1) begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end

 if (!hsync || vsync || (HC != 1) || (VC != 0)) begin
        if (!hsync) begin
            $display("error at Test 1 with hsync");
            errors <= errors + 1;
        end else if (vsync) begin
            $display("error at Test 1 with vsync");
            errors <= errors + 1;
        end else ;
        if(HC != 1) begin
            $display("error at Test 1 with HC");
            errors <= errors + 1;
        end else ;
        if(VC != 0) begin
            $display("error at Test 1 with VC");
            errors <= errors + 1;
        end else ;
    end else ;


//Test 3 ~ see if hsync is 0 and vsync is 1, and if
// HC is 0 and VC is 2


for(i = 0; i < Test3; i = i + 1) begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end

 if (hsync || !vsync || (HC != 0) || (VC != 2)) begin
        if (hsync) begin
            $display("error at Test 1 with hsync");
            errors <= errors + 1;
        end else if (!vsync) begin
            $display("error at Test 1 with vsync");
            errors <= errors + 1;
        end else ;
        if(HC != 0) begin
            $display("error at Test 1 with HC");
            errors <= errors + 1;
        end else ;
        if(VC != 2) begin
            $display("error at Test 1 with VC");
            errors <= errors + 1;
        end else ;
    end else ;


//Test 4 ~ see if hsync is 0 and vsync is 1, and if
// HC is 0 and VC is 3


for(i = 0; i < Test4; i = i + 1) begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end

 if (hsync || !vsync || (HC != 0) || (VC != 2)) begin
        if (hsync) begin
            $display("error at Test 1 with hsync");
            errors <= errors + 1;
        end else if (!vsync) begin
            $display("error at Test 1 with vsync");
            errors <= errors + 1;
        end else ;
        if(HC != 0) begin
            $display("error at Test 1 with HC");
            errors <= errors + 1;
        end else ;
        if(VC != 3) begin
            $display("error at Test 1 with VC");
            errors <= errors + 1;
        end else ;
    end else ;


//Test 5 ~ see if hsync is 0 and vsync is 0, and if
// HC is 0 and VC is 0


for(i = 0; i < Test5; i = i + 1) begin
    #1 Clk <= 1;
    #1 Clk <= 0;
end

 if (hsync || vsync || (HC != 0) || (VC != 0)) begin
        if (hsync) begin
            $display("error at Test 1 with hsync");
            errors <= errors + 1;
        end else if (vsync) begin
            $display("error at Test 1 with vsync");
            errors <= errors + 1;
        end else ;
        if(HC != 0) begin
            $display("error at Test 1 with HC");
            errors <= errors + 1;
        end else ;
        if(VC != 0) begin
            $display("error at Test 1 with VC");
            errors <= errors + 1;
        end else ;
    end else ;








    $display("This test finished with %d errors",errors);
end    
    
  
    


endmodule
