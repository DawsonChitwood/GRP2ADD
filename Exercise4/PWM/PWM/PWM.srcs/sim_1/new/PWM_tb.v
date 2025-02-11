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
parameter ONEMHZ = 1024, TWOMHZ = 512, FIFTYMHZ = 20, HUNDREDKILO = 10000, FIHUNDREDKILO = 2000, FOURMHZ = 250;
reg [15:0] period_tb = TWOMHZ;
reg [7:0] duty_tb = 90;         //Declare duty-cycle
reg burstmode_tb = 1;           //Declare BurstMode
reg bursttype_tb = 1;           //Declare BurstType
reg sysclk_tb = 0;              //Declare System Clock
reg reset_tb = 0;               // Declare Reset
wire pwm_tb;                    //Declare PWM output


//Instantiating PWM module
PWM p(period_tb,duty_tb,burstmode_tb,bursttype_tb,sysclk_tb,reset_tb,pwm_tb);


//Clock "Block" :)
always begin
       #0.5 sysclk_tb <= 1;
       #0.5 sysclk_tb <= 0;
    
end

endmodule
