`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 06:05:15 PM
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
parameter ONEMHZ = 500, TWOMHZ = 1000, FIFTYMHZ = 5; 
reg [15:0] period_tb = ONEMHZ;
reg [7:0] duty_tb = 50;
reg burstmode_tb = 1;
reg bursttype_tb = 1;
reg sysclk_tb = 0;
reg reset_tb = 0;
wire pwm_tb;


PWM p(period_tb,duty_tb,burstmode_tb,bursttype_tb,sysclk_tb,reset_tb,pwm_tb);

always begin
    #1 sysclk_tb <= 1;
    #1 sysclk_tb <= 0;
end

endmodule
