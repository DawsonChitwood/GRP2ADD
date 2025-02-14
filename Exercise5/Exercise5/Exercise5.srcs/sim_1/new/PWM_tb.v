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


module PWM_tb();
reg [7:0] duty;
reg SysClk;
reg Reset;
wire pwm;
parameter FIFTY = 128;
parameter TWENTYFIVE = 64;
parameter  SEVENTYFIVE = 192;

PWM pwmtb(duty,SysClk,Reset,pwm);

initial begin
    SysClk = 0;
    Reset = 0;
    duty = TWENTYFIVE;
end

always begin
    #1 SysClk = 1;
    #1 SysClk = 0;
end



endmodule
