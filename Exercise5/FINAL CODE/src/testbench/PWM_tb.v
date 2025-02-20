`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 10:02:53 AM
// Design Name: 
// Module Name: PWM_tb
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

//PWM testbench
module PWM_tb();
reg [7:0] duty;  //duty cycle input
reg SysClk;     //clock signal
reg Reset;      //reset signal
wire pwm;      //pwm output signal

//parameters for easy duty cycle encoding
parameter FIFTY = 128;   
parameter TWENTYFIVE = 64;
parameter  SEVENTYFIVE = 192;




//module instantiation
PWM pwmtb(duty,SysClk,Reset,pwm);


//initialization of variables
initial begin
    $dumpvars(0,test);
    SysClk = 0;
    Reset = 0;
    duty = 0;
end


//always block for toggling the clock
always begin
    #1 SysClk = 1;
    #1 SysClk = 0;
end



endmodule
