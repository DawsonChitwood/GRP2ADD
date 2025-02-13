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
            
 reg [15:0] Counter=0;          //Variable to keep track of when the period has ended for the signal
 reg [7:0] TransitionTime;   //Variable to keep track of when the signal needs to transition from high to low
 reg [15:0] Per;                  //Variable for Period processing.
 reg Out = 0;                          //Variable used to indirectly assign values to the pwm output
 reg [2:0] CurrentState;
 reg [2:0] NextState;   //State variables
 
 
 parameter START = 0, ONA = 1,ONB = 2, OFFA = 3,OFFB = 4, SWITCH = 5, BOOT = 6;  //State parameters

 
 assign pwm = Out;  //Indirect assignment of output value
 
 
 //Variable Initialization ~ mainly for calculating the appropriate burst-relevant values based on BurstType
 initial begin
    Counter = 0;
    Per = 255;    // Period is 255 so that 255 clock cycles will correspond to a full cycle of the PWM signal
    CurrentState = BOOT;
    NextState = START;
    TransitionTime = Duty;
 end
    
    
 
 // State Memory
 always @ (posedge SysClk) begin
    if(Reset) CurrentState <= BOOT;
    else CurrentState <= NextState;
    TransitionTime <= Duty;
 end
 
 
 //Next State Logic
 always @(Counter, Out,CurrentState) begin
    case (CurrentState) 
        START: begin
            if(Duty === 0) NextState = OFFB;                                         //FSM starts off at this stage and moves on based on BurstMode
            else NextState = ONA;
        end
        ONA:  begin                                         //The PWM-High state for non-burstmode operation
                if(Counter >= Per - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFFA;
                else NextState = ONB;
             end
        OFFA:   begin                                       //The common off state of the FSM
                if(Counter >= Per - 1) NextState = SWITCH;
                else NextState = OFFB;
                end
        ONB:    begin                                       //The PWM-High state for non-burstmode operation
                if(Counter >= Per - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFFA;
                else NextState = ONA;
                end
        OFFB:    begin                                      //The common off state of the FSM
                if(Counter >= Per - 1) NextState = SWITCH;
                else NextState = OFFA;
                end
        SWITCH: begin                               //The state used to transition from OFF to the next mode (based on BurstMode)
             
                if(Duty === 0) NextState = OFFA;
                else NextState = ONA;
                end
        BOOT:
            NextState = START;
        default:
                NextState = BOOT;
     endcase
     end        
   
   
   
   //Output Logic  ~ Noteworthy - The SWITCH states are used rather than simply reverting back to the start state
   // because this would cause the high part of the signal to be low for one clock cycle (since start sets PWM to 0)
  always @(CurrentState) begin
    case(CurrentState) 
    START: begin
            Counter = 0;
            Out = 0;
     end
     ONA:  begin
             Counter = Counter + 2;
            Out = 1;
     end
     OFFA: begin
            Counter = Counter + 2;
            Out = 0;
     end
     ONB:  begin
         Counter = Counter + 2;
            Out = 1;
     end
     OFFB: begin
         Counter = Counter + 2;
            Out = 0;
     end
     SWITCH: begin
            Counter = 0;
            Out = 0;
     end
     default: begin
      Counter = 0;
            Out = 0;
     end
     
     endcase
     end
            
 
    
   
endmodule
