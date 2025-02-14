`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 10:21:02 AM
// Design Name: 
// Module Name: rgb_controller_tb
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

//rgb controller testbench
module rgb_controller_tb();
reg clk = 0;  //clock signal
reg rst = 0;  //reset signal
reg [7:0] rin;  //red signal
reg [7:0] gin;  //green signal
reg [7:0] bin;  //blue signal
wire  rout ;   //red output signal
wire  gout ;  //green output signal
wire  bout ;  //blue output signal


//rgb_controller module instantiation
rgb_controller rgb(clk,rst,rin,gin,bin,rout,gout,bout);


// initialization of variables. The input values for the test are set here
initial begin
    clk = 0;
    rst = 0;
    rin = 32;
    gin = 0;
    bin = 0;
end


//clock incrementer
always begin
    #1 clk = 1;
    #1 clk = 0;
end

endmodule
