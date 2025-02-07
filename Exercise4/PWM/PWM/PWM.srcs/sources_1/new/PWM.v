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
            
 reg [15:0] Counter;
 reg [15:0] TransitionTime;
 reg [15:0] BurstCounter;
 reg [15:0] BurstPeriod;
 reg [15:0] BurstTransitionTime;
 reg Out;
 reg [2:0] CurrentState = START, NextState = START;
 
 parameter START = 0, ON = 1, OFF = 2, BURSTON = 3, BURSTOFF = 4, BURSTSWITCH = 5, SWITCH = 6;
 
 assign pwm = Out;
 
 
 //Variable Initialization
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
        START:  
                if(BurstMode) NextState = BURSTON;
                else NextState = ON;
        ON:     
                if(Counter >= Period - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else NextState = ON;
        OFF:    
                if(Counter >= Period - 1) NextState = SWITCH;
                else NextState = OFF;
        BURSTON:
                if(Counter >= Period - 1) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else if (BurstCounter >= BurstTransitionTime - 1) NextState = BURSTOFF;
                else NextState = BURSTON;
        BURSTOFF:
                if(Counter >= Period - 1 ) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else if(BurstCounter >= BurstPeriod - 1) NextState = BURSTSWITCH;
                else NextState = BURSTOFF;
        BURSTSWITCH:
                if(Counter >= Period - 1 ) NextState = SWITCH;
                else if(Counter >= TransitionTime - 1) NextState = OFF;
                else NextState = BURSTON;
        SWITCH: 
                if(BurstMode) NextState = BURSTON;
                else NextState = ON;
        default:
                NextState <= START;
     endcase
     end        
   
   
   
   //Output Logic
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
