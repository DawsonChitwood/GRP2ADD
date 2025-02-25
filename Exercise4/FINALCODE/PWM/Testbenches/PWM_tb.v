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
parameter ONEMHZ = 2048, TWOMHZ = 1024, FIFTYMHZ = 40; 
reg [15:0] period_tb = FIFTYMHZ;
reg [7:0] duty_tb = 90;
reg burstmode_tb = 1;
reg bursttype_tb = 1;
reg sysclk_tb = 0;
reg reset_tb = 0;
wire pwm_tb;


PWM p(period_tb,duty_tb,burstmode_tb,bursttype_tb,sysclk_tb,reset_tb,pwm_tb);

always begin
       if(TESTRST) reset_tb <= 1;
       else reset_tb <= 0;
       #0.5 sysclk_tb <= 1;
       #0.5 sysclk_tb <= 0;
    
end

endmodule
