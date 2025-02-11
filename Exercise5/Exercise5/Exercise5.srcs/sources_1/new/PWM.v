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

module PWM (input [7:0] Duty, input SysClk,input Reset,output pwm);
            
 reg [15:0] Counter;          //Variable to keep track of when the period has ended for the signal
 reg [7:0] TransitionTime;   //Variable to keep track of when the signal needs to transition from high to low
 reg [15:0] Per;                  //Variable for Period processing.
 reg Out;                          //Variable used to indirectly assign values to the pwm output
 reg [2:0] CurrentState, NextState;   //State variables
 
 parameter START = 0, ON = 1, OFF = 2, SWITCH = 3;  //State parameters
 
 
 assign pwm = Out;  //Indirect assignment of output value
 
 
 //Variable Initialization ~ mainly for calculating the appropriate burst-relevant values based on BurstType
 initial begin
    Per = 255;    // Period is 255 so that 255 clock cycles will correspond to a full cycle of the PWM signal
    CurrentState = START;
    NextState = START;
 end
    
 
 // State Memory
 always @ (posedge SysClk) begin
    if(Reset) CurrentState <= START;
    else CurrentState <= NextState;
    TransitionTime <= Duty;
 end
 
 
 //Next State Logic
 always @ (CurrentState,Counter) begin
    case (CurrentState) 
        START:                                         //FSM starts off at this stage and moves on based on BurstMode
                NextState = ON;
        ON:                                           //The PWM-High state for non-burstmode operation
                if(Counter >= Per - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else NextState = ON;
        OFF:                                          //The common off state of the FSM
                if(Counter >= Per - 1) NextState = SWITCH;
                else NextState = OFF;
        SWITCH:                                     //The state used to transition from OFF to the next mode (based on BurstMode)
                NextState = ON;
        default:
                NextState <= START;
     endcase
     end        
   
   
   
   //Output Logic  ~ Noteworthy - The SWITCH states are used rather than simply reverting back to the start state
   // because this would cause the high part of the signal to be low for one clock cycle (since start sets PWM to 0)
  always @(SysClk) begin
    case(CurrentState) 
    START: begin
            Counter = 0;
            Out = 0;
     end
     ON:  begin
            Counter = Counter + 1;
            Out = 1;
     end
     OFF: begin
            Counter = Counter + 1;
            Out = 0;
     end
     SWITCH: begin
            Counter = 0;
            Out = 1;
     end
     default: begin
            Counter = 0;
            Out = 0;
     end
     
     endcase
     end
            
 
    
   
endmodule
