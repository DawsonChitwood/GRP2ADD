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


module PWM (input [15:0] Period, input [7:0] Duty,input BurstMode,input BurstType, input SysClk,
            input Reset, 
            output pwm);
            
 reg [15:0] Counter;          //Variable to keep track of when the period has ended for the signal
 reg [15:0] TransitionTime;   //Variable to keep track of when the signal needs to transition from high to low
 reg [15:0] BurstCounter;     //Variable to keep track of when the burst division period needs to end
 reg [15:0] BurstPeriod;      //The period of an individual burst within the signal's high cycle
 reg [15:0] BurstTransitionTime;  //Variable to keep track of when the signal needs to transition from high to low within a burst division
 reg Out;                          //Variable used to indirectly assign values to the pwm output
 reg [2:0] CurrentState = START, NextState = START;   //State variables
 
 parameter START = 0, ON = 1, OFF = 2, BURSTON = 3, BURSTOFF = 4, BURSTSWITCH = 5, SWITCH = 6;  //State parameters
 
 assign pwm = Out;  //Indirect assignment of output value
 
 
 //Variable Initialization ~ mainly for calculating the appropriate burst-relevant values based on BurstType
 initial begin
    TransitionTime = (Period * Duty)/100;
    if(BurstType) begin
        BurstPeriod = TransitionTime >> 4;
        BurstTransitionTime = TransitionTime >> 5;
   end else begin
        BurstPeriod = TransitionTime >> 3;
        BurstTransitionTime = TransitionTime >> 4;
   end
 end
    
 
 // State Memory
 always @ (posedge SysClk) begin
    if(Reset) CurrentState <= START;
    else CurrentState <= NextState;
 end
 
 
 //Next State Logic
 always @ (CurrentState,Counter) begin
    case (CurrentState) 
        START:                                         //FSM starts off at this stage and moves on based on BurstMode
                if(BurstMode) NextState = BURSTON;
                else NextState = ON;
        ON:                                           //The PWM-High state for non-burstmode operation
                if(Counter >= Period - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else NextState = ON;
        OFF:                                          //The common off state of the FSM
                if(Counter >= Period - 1) NextState = SWITCH;
                else NextState = OFF;
        BURSTON:                                     //The on state for when burst mode is activated
                if(Counter >= Period - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else if (BurstCounter >= BurstTransitionTime - 1) NextState = BURSTOFF;
                else NextState = BURSTON;
        BURSTOFF:                                   //The off state for when burst mode is activated
                if(Counter >= Period - 1 ) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else if(BurstCounter >= BurstPeriod - 1) NextState = BURSTSWITCH;
                else NextState = BURSTOFF;
        BURSTSWITCH:                                //The state used to transition back to BURSTON from BURSTOFF while the overall 
                                                    //transition threshold has not yet been reached
                if(Counter >= Period - 1 ) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else NextState = BURSTON;
        SWITCH:                                     //The state used to transition from OFF to the next mode (based on BurstMode)
                if(BurstMode) NextState = BURSTON;
                else NextState = ON;
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
            BurstCounter = 0;
            Out = 0;
     end
     ON:  begin
            Counter = Counter + 1;
            BurstCounter = 0;
            Out = 1;
     end
     OFF: begin
            Counter = Counter + 1;
            BurstCounter = 0;
            Out = 0;
     end
     BURSTON: begin
            Counter = Counter + 1;
            BurstCounter = BurstCounter + 1;
            Out = 1;
     end
     BURSTOFF: begin
            Counter = Counter + 1;
            BurstCounter = BurstCounter + 1;
            Out = 0;
     end
     BURSTSWITCH: begin
            Counter = Counter + 1;
            BurstCounter = 1;
            Out = 1;
     end
     SWITCH: begin
            Counter = 0;
            BurstCounter = 0;
            Out = 1;
     end
     default: begin
            Counter = 0;
            BurstCounter = 0;
            Out = 0;
     end
     
     endcase
     end
            
 
    
   
endmodule
