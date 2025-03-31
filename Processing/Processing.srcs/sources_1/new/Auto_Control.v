`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 11:00:05 AM
// Design Name: 
// Module Name: Auto_Control
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


module Auto_Control(input Clk, input Reset, input FrameSelector, input Start, input [1:0] DataBack, output RW, output reg [5:0] Row, output reg [6:0] Col, output reg [1:0] Data, output enable1, output enable2);
//State Machine Variables
reg [3:0] CurrentState = 0;
reg [3:0] NextState = 0;
reg [2:0] ClockCounter = 0;
reg [2:0] CornerCounter = 0;
reg [2:0] CornerBlock = 0;
reg [1:0][1:0] CornerCache = 0;

parameter FRAMEDONE = 0;
parameter CORNERREQUEST = 1;
parameter CORNERREAD = 2;
parameter CORNERWRITE = 3;
parameter SIDEREQUEST = 4;
parameter SIDEREAD = 5;
parameter SIDEWRITE = 6;
parameter MIDDLEREQUEST = 7;
parameter MIDDLEREAD = 8;
parameter MIDDLEWRITE = 9;
parameter CORNERPROCESS = 10;
parameter SIDEPROCESS = 11;
parameter MIDDLEPROCESS = 12;



// These two registers will hold the next row and column that the Auto_Control module is trying to read from memory
reg [6:0] ReadRow = 1;
reg [7:0] ReadCol = 1;

// register for the Read/Write output
reg RW_reg = 0;

// This register keeps up with how many clocks have elapsed to make sure we allow adequate time for the storage module to process
// our read commands and send out the data we need
reg [2:0] Clock_Counter = 0;

// Register to tell module that it is done writing this frame
reg Frame_Done = 0;

//Registers holding the max rows and columns
reg Max_Row = 60;
reg Max_Col = 80;

always @(FrameSelector) begin
    Frame_Done = 0;
    if(FrameSelector) RW_reg = 1;
    else RW_reg = 0;
end

//State Memory
always @(posedge Clk) begin
    if(Reset) CurrentState = FRAMEDONE;
    else CurrentState = NextState;
end

//NextState Logic
always @(posedge Clk) begin
    case(CurrentState) 
    //FRAMEDONE will only transition to start requesting data from memory when Frame_Done is high
        FRAMEDONE: begin
            if(Frame_Done) NextState <= CORNERREQUEST;
            else NextState <= FRAMEDONE;
        end
        //CORNERREQUEST will only transition to CORNERREAD when the ClockCounter has reached 3, this allows the storage module to process
        CORNERREQUEST: begin
            if(ClockCounter == 3) NextState <= CORNERREAD;
            else NextState <= CORNERREQUEST;
        end
        //CORNERREAD will go to CORNERPROCESS if it has read all of the blocks for a specific corner, it goes back to CORNERWRITE otherwise
        CORNERREAD: begin
            if(CornerBlock != 4) NextState <= CORNERWRITE;
            else NextState <= CORNERPROCESS;
        end
        //CORNERPROCESS immediately goes to CornerWrite because it is not waiting for storage before it makes this state transition
        CORNERPROCESS: NextState <= CORNERWRITE;
            
        //CORNERWRITE goes to SIDEREQUEST once it has reached all corners and their peripheral blocks
        CORNERWRITE: begin
            if(CornerCounter != 4) NextState <= CORNERREQUEST;
            else NextState <= SIDEREQUEST;
        end
        default: NextState <= FRAMEDONE;
        endcase
end

//Output Logic
always @(posedge Clk) begin
    case(CurrentState) 
    //This will set all of the corner tracking variables to zero
        FRAMEDONE: begin
            CornerCounter = 0;
            Clock_Counter = 0;
            CornerBlock = 0;
        end
        //CORNERREQUEST will set the enables according to the state of RW. May need to change the orientation of these according
        // to the block diagram. Based on which corner is being processed ,and which of the blocks associated with that corner,
        // the associated row and column will be written to the row and column lines to read from memory. It will also increment 
        // the clock counter used to time the state transistion to CORNERREAD
        CORNERREQUEST: begin
          ClockCounter <= ClockCounter + 1;
          if(RW && ClockCounter == 1) begin
            enable1 <= 0;
            enable2 <= 1;
          end
          else if(ClockCounter == 1)begin
            enable1 <= 1;
            enable2 <= 0;
          end
            if(CornerCounter == 0) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 0;
                        Col <= 0;
                    end
                    1: begin
                        Row <= 1;
                        Col <= 0;
                    end
                    2: begin
                        Row <= 1;
                        Col <= 1;
                    end
                    3: begin
                        Row <= 0;
                        Col <= 1;
                    end
                    default:;
                endcase
           end
           else if(CornerCounter == 1) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 79;
                        Col <= 0;
                    end
                    1: begin
                        Row <= 78;
                        Col <= 0;
                    end
                    2: begin
                        Row <= 78;
                        Col <= 1;
                    end
                    3: begin
                        Row <= 79;
                        Col <= 1;
                    end
                    default:;
                endcase
           end 
           else if(CornerCounter == 2) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 0;
                        Col <= 59;
                    end
                    1: begin
                        Row <= 0;
                        Col <= 58;
                    end
                    2: begin
                        Row <= 1;
                        Col <= 58;
                    end
                    3: begin
                        Row <= 1;
                        Col <= 59;
                    end
                    default:;
                endcase
           end 
           else if(CornerCounter == 3) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 79;
                        Col <= 59;
                    end
                    1: begin
                        Row <= 79;
                        Col <= 58;
                    end
                    2: begin
                        Row <= 78;
                        Col <= 58;
                    end
                    3: begin
                        Row <= 78;
                        Col <= 59;
                    end
                    default:;
                endcase
           end
           else begin
                Row <= 0;
                Col <= 0;
           end
     end
     //CORNERREAD sets the clock counter back to zero for when it goes back to CornerRequest. It will increment CornerBlock all the way up to 4
     // even though the number of corner blocks being counted only goes to 3. This 4th value is to act as a flag that this particular corner is done being 
     // read.
     CORNERREAD: begin
        ClockCounter <= 0;
        
        if(CornerBlock != 4) begin
            CornerCache[CornerBlock] <= DataBack;
        end
        CornerBlock <= CornerBlock + 1;
     end
     //CORNERPROCESS resets CornerBlock and processes what needs to be written to the other memory block (processes using CornerCache)
     CORNERPROCESS: begin
        CornerBlock <= 0;
     end
     //sets the appropriate enable bit to allow writing to the appropriate memory. The CornerCounter is also incremented, and I will add
     // a note about that here. The transistion from reading the corner pixels to reading the side pixels is governed by what CornerCounter
     // is on. That being said, the value of CornerCounter at which this transistion takes place may need to be altered if the number of 
     // corners written to is below the actual corner value or if the whole process runs through an extra cycle.
     CORNERWRITE: begin
     CornerCounter <= CornerCounter + 1;
        if(RW) begin
            enable1 <= 1;
            enable2 <= 0;
          end
          else begin
            enable1 <= 0;
            enable2 <= 1;
          end
     end
                        
                        

assign RW = RW_reg;




endmodule
