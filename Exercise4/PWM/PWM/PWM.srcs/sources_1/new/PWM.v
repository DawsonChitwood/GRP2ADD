`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 06:04:49 PM
// Design Name: 
// Module Name: PWM
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


module PWM( input SysClk,
            input Reset, 
            input [15:0] Period,
            input [7:0] Duty,
            input BurstMode,
            input BurstType,
            output PWM
    );
    
    
    reg [16:0] Count;
    
    reg [16:0] POSINTERVAL;
    reg [16:0] NEGINTERVAL;
    

    
endmodule
