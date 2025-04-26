`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 12:05:37 PM
// Design Name: 
// Module Name: Control_And_Start
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


module Control_And_Start(input Clk,input Reset,input [5:0] keys, input FrameSelect,output start, input [1:0] dataB,output RW, output [5:0] currentRow, output [6:0] currentCol, output [1:0] dataIn, output enableData1, output enableData2,output keepGoingOut, output [2:0] testing);

  wire [5:0] currentRow_A;         //row output from control and start
  wire [6:0] currentCol_A;         //col output from control and start
  wire [5:0] currentRow_B;         //row output from starting pixels
  wire [6:0] currentCol_B;         //col output from starting pixels
  wire [5:0] currentRow_C;         //row output from User Interface
  wire [6:0] currentCol_C;         //col output from User Interface
  wire [1:0] dataIn_A;             //DataIn from control and start
  wire [1:0] dataIn_B;               //DataIn from starting pixels
  wire [1:0] dataIn_C;               //DataIn from User_Interface
reg start_prev;                      // No longer used
reg start_prev_reg;                  // No longer used
reg start_counter;                   // No longer used
wire keepGoing;                      // The output associated with the Randomization functionality
wire clear;                          // The output associated with the Clearing functionality
wire mode;                           // The output that keeps track of the mode
  
  // The following outputs come from User Interface and they provide a way to debounce key presses outside of the User Interface
  wire [2:0] currentkey;            
wire [2:0] keyprev1;
wire [2:0] keyprev2;
wire [2:0] keyprev3;


//Auto Control controls the Automatic Mode
Auto_Control ac(Clk,Reset,FrameSelect,doesnothing,dataB,RW_A,currentRow_A,currentCol_A,dataIn_A,enableData1_A,enableData2_A);

  // Starting Pixels controls randomization and clearing
Starting_Pixels sp(Clk,currentRow_B,currentCol_B,dataIn_B,enableData1_B,keepGoing,clear);

  //User Interface controls the user input (i.e moving from auto to manual, enabling randomization, enabling clearing, etc.)
User_Interface ui(Clk,Reset,dataB,keys,start,clear,keepGoing,currentRow_C,currentCol_C,dataIn_C,RW_C,enableData1_C,mode,step);

  //The following assignments mux the input lines to the memory module according to what mode the user is in and whether or not the randomization key is pressed
assign currentRow = mode ? currentRow_C:(keepGoing ? currentRow_B:currentRow_A);
assign currentCol = mode ? currentCol_C:(keepGoing ? currentCol_B:currentCol_A);
assign dataIn = mode ? dataIn_C:(keepGoing ? dataIn_B:dataIn_A);
assign enableData1 = mode ? enableData1_C:(keepGoing ? enableData1_B:enableData1_A);
assign enableData2 = mode ? enableData1_C:(keepGoing ? 0:enableData2_A);
assign RW = mode ? RW_C:(keepGoing ? 0:RW_A);

 // enable visual is always turned on for the VGA, control of whether or not something is shown is according to FrameSelect and Clearing
assign enableVisual = 1;
//assign enableVisual = mode ? !FrameSelect: 1;
//assign FrameSelector = mode ? FrameSelect:(!userMode & currentkey == 2 & !(keyprev1 == 2 && keyprev2 == 2 && keyprev3 == 2)) ? !FrameSelect:1; 

  
assign keepGoingOut = keepGoing; // just for buffering, we didn't necesarily need this here
  assign testing[2] = start;     // used for testing purposes
//assign testing2 = currentkey;

endmodule
