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


// Our PWM module for the PWM driver for RGB
module PWM (input [7:0] Duty, input SysClk,input Reset,output pwm);
 
 
 parameter START = 0, ON = 1, OFF = 2, SWITCHON = 3, SWITCHOFF = 4;  //State parameters
 //Switch ON and Switch OFF are the states for when switching from off to a new period.
 // Switch OFF is used if the duty cycle is zero and Switch ON is used otherwise        
 reg [15:0] Counter = 0;          //Variable to keep track of when the period has ended for the signal
 reg [15:0] Per = 255;                  //Variable that determines how many clocks are in a period
 reg Out = 0;                          //Variable used to indirectly assign values to the pwm output
 reg [2:0] CurrentState = START;        // The variable that the current state is stored in
 reg [2:0] NextState = START;   // The variable that the next state is stored in


 
 
 
 assign pwm = Out;  //Indirect assignment of output value
     
     
     
     
     
 // State Memory
 always @ (posedge SysClk) begin
    if(Reset) CurrentState <= START;
    else CurrentState <= NextState;
    
    if(CurrentState == START | CurrentState == SWITCHON | CurrentState == SWITCHOFF) Counter <= 0;
    else Counter <= Counter + 2;    //Coutner incremented by 2 because changes are only on clock POSEDGE
 end
 
 
 
 
 
 
 //Next State Logic
 always @(Counter) begin
    case (CurrentState) 
        START: begin
            if(Duty == 0) NextState = OFF;                                         //FSM starts off at this stage and moves on based on BurstMode
            else NextState = ON;
        end
        ON:  begin                                         //The PWM-High state for non-burstmode operation
                if(Counter >= Per & Duty != 0) NextState = SWITCHON;
                else if (Counter >= Per & Duty == 0) NextState = SWITCHOFF;
                else if(Counter >= Duty ) NextState = OFF;
                else NextState = ON;
             end
        OFF:   begin                                       //The common off state of the FSM
                if(Counter >= Per & Duty != 0) NextState = SWITCHON;
                else if(Counter >= Per & Duty == 0) NextState = SWITCHOFF;
                else NextState = OFF;
                end
        SWITCHON: begin                               //The state used to transition from OFF to the next mode when duty is zero
                if(Duty == 0) NextState = OFF;
                else NextState = ON;
                end
        SWITCHOFF: begin                               //The state used to transition from OFF to the next mode when duty is not zero
                if(Duty == 0) NextState = OFF;
                else NextState = ON;
                end
        default:
                NextState = START;                  //Default to a next state of start
     endcase
     end        
   
   
   
   
   
   
   
   //Output Logic  
  always @(CurrentState) begin
    case(CurrentState) 
    START: begin
            Out = 0;
     end
     ON:  begin
            Out = 1;
     end
     OFF: begin
            Out = 0;
     end
     SWITCHON: begin
            Out = 1;
     end
     SWITCHOFF: begin
            Out = 0;
     end
     default: begin
            Out = 0;
     end
     
     endcase
     end
            
 
    
   
endmodule
