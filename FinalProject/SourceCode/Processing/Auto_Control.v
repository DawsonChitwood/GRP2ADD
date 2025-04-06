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


module Auto_Control(input Clk, input Reset, input FrameSelector, input Start, input [1:0] DataBack, output RW, output reg [5:0] Row, output reg [6:0] Col, output reg [1:0] Data, output reg enable1, output reg  enable2);
//State Machine Variables
reg [3:0] CurrentState = 0;
reg [3:0] NextState = 0;
reg [2:0] ClockCounter = 0;    //Used to make sure transitions to states relying on storage feedback give enough time for 
// storage to respond
reg [2:0] CornerCounter = 0;   //Used to keep track of which corner is being read from storage
reg [2:0] CornerBlock = 0;     //Used to keep track of which pixel is being read from storage while reading a particular corner
reg [1:0][1:0] CornerCache = 0; //Used to keep track of the values of all pixels used for processing for a particular corner
reg [1:0] SideCounter = 0;      // Used to keep track of which side is currently being traversed
reg [6:0] PixelCount = 0; // Used to keep track of which particular pixel on a line is being processed
reg [2:0] SideBlock = 0;        // Used to keep track of which pixel is being read while processing a particular pixel along a line
reg [2:0][1:0] SideCache = 0;   // Used to hold the pixel information for processing a certain pixel on a line
reg [5:0] RowCount = 1;        //Used to keep track of which row is being processed in the MIDDLE section. 1 is the default position
reg [6:0] ColCount = 1;        //Used to keep track of which column is being processed in the MIDDLE section. 1 is the default position
reg [8:0][1:0] MiddleCache = 0; //Used to hold the pixels currently being processed in the MIDDLE section



//Names of the states
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
    Frame_Done <= 0;
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
            if(!Frame_Done) NextState <= CORNERREQUEST;
            else NextState <= FRAMEDONE;
        end
        //CORNERREQUEST will only transition to CORNERREAD when the ClockCounter has reached 3, this allows the storage module to process
        CORNERREQUEST: begin
            if(ClockCounter == 3) NextState <= CORNERREAD;
            else NextState <= CORNERREQUEST;
        end
        //CORNERREAD will go to CORNERPROCESS if it has read all of the blocks for a specific corner, it goes back to CORNERWRITE otherwise
        CORNERREAD: begin
            if(!(CornerBlock >= 3) ) NextState <= CORNERWRITE;
            else NextState <= CORNERPROCESS;
        end
        //CORNERPROCESS immediately goes to CornerWrite because it is not waiting for storage before it makes this state transition
        CORNERPROCESS: NextState <= CORNERWRITE;
            
        //CORNERWRITE goes to SIDEREQUEST once it has reached all corners and their peripheral blocks
        CORNERWRITE: begin
            if(CornerCounter != 4) NextState <= CORNERREQUEST;
            else NextState <= SIDEREQUEST;
        end
        //SIDEREQUEST goes to SIDEREAD if the ClockCounter has reached 3. This allows time for the Storage to process the information
        SIDEREQUEST: begin
            if(ClockCounter == 3) NextState <= SIDEREAD;
            else NextState <= SIDEREQUEST;
        end
        //SIDEREAD continues going back to SIDEREQUEST unless all the sideblocks have been read for a particular pixel in which case it goes on to SIDEPROCESS
        SIDEREAD: begin
            if(!(SideBlock >= 4)) NextState <= SIDEREQUEST;
            else NextState <= SIDEPROCESS;
        end
        //SIDEPROCESS sets up the enable signals for writing to the other storage block
        SIDEPROCESS: NextState <= SIDEWRITE;
        //SIDEWRITE increments the LineCounter if all the pixels within a line have been processed
        SIDEWRITE: begin
            if(SideCounter != 3) NextState <= SIDEREQUEST;
            else NextState <= MIDDLEREQUEST;
        end
        //MIDDLEREQUEST moves to MIDDLEREAD as long as 3 Clocks have passed. This gives The storage time to process the data request
        MIDDLEREQUEST: begin
            if(ClockCounter == 3) NextState <= MIDDLEREAD;
            else NextState <= MIDDLEREQUEST;
        end
        //MIDDLEREAD moves back to MIDDLEREQUEST until all blocks (9 per pixel including the pixel of interest) have been read. It then moves to MIDDLEPROCESS
        MIDDLEREAD: begin
            if(PixelCount != 8) NextState <= MIDDLEREQUEST;
            else NextState <= MIDDLEPROCESS;
        end
        //MIDDLEPROCESS sets the enables for writing to the other storage module before moving on to the MIDDLEWRITE
        MIDDLEPROCESS: NextState <= MIDDLEWRITE;
        
        //MIDDLEWRITE will move back to MIDDLEREQUEST unless all middle pixels have been processed in which case it will set FrameDone and move to FRAMEDONE
        MIDDLEWRITE: begin
            if(!((RowCount == 58)&&(ColCount == 78))) NextState <= MIDDLEREQUEST;
            else begin  
                Frame_Done <= 1;
                NextState <= FRAMEDONE;
            end
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
          //Might need to include a part that sets the line to High-Z once we start working with the Joystick Controller
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
                        Row <= 0;
                        Col <= 1;
                    end
                    2: begin
                        Row <= 1;
                        Col <= 1;
                    end
                    3: begin
                        Row <= 1;
                        Col <= 0;
                    end
                    default:;
                endcase
           end
           else if(CornerCounter == 1) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 0;
                        Col <= 79;
                    end
                    1: begin
                        Row <= 0;
                        Col <= 78;
                    end
                    2: begin
                        Row <= 1;
                        Col <= 78;
                    end
                    3: begin
                        Row <= 1;
                        Col <= 79;
                    end
                    default:;
                endcase
           end 
           else if(CornerCounter == 2) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 59;
                        Col <= 0;
                    end
                    1: begin
                        Row <= 58;
                        Col <= 0;
                    end
                    2: begin
                        Row <= 58;
                        Col <= 1;
                    end
                    3: begin
                        Row <= 59;
                        Col <= 1;
                    end
                    default:;
                endcase
           end 
           else if(CornerCounter == 3) begin
                case(CornerBlock) 
                    0: begin
                        Row <= 59;
                        Col <= 79;
                    end
                    1: begin
                        Row <= 58;
                        Col <= 79;
                    end
                    2: begin
                        Row <= 58;
                        Col <= 78;
                    end
                    3: begin
                        Row <= 59;
                        Col <= 78;
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
     //sets the appropriate enable bit to allow writing to the appropriate memory.
     
     // IN PROGRESS!!!!!!!!!!!!!!!
     
     
     CORNERPROCESS: begin
        CornerBlock <= 0;
             //Might need to include a part that sets the line to High-Z once we start working with the Joystick Controller
        if(RW) begin
            enable1 <= 1;
            enable2 <= 0;
          end
          else begin
            enable1 <= 0;
            enable2 <= 1;
          end
     end
     // The CornerCounter is incremented, and I will add
     // a note about that here. The transistion from reading the corner pixels to reading the side pixels is governed by what CornerCounter
     // is on. That being said, the value of CornerCounter at which this transistion takes place may need to be altered if the number of 
     // corners written to is below the actual corner value or if the whole process runs through an extra cycle.
     CORNERWRITE: begin
        CornerCounter <= CornerCounter + 1;
     end
     //SIDEREQUEST sets the output row and column buses to the correct values for when the state transistions to SIDEREAD. 
     //It uses PixelCount to set the correct index values for the rows and columns based upon which Side segment is being processed.
     // The numbering goes like this: 0 is the left 1 is the top 2 is the right and 3 is the bottom. Each pixel has 6 pixels associated with processing:
     // itself, and the 5 pixels surrounding it. 
     SIDEREQUEST: begin 
        ClockCounter <= ClockCounter + 1;
        case (SideCounter) 
            0: begin
                case (SideBlock)
                    0: begin
                        Row = PixelCount + 1;
                        Col = 0;
                    end
                    1: begin
                        Row = PixelCount;
                        Col = 0;
                    end
                    2: begin
                        Row = PixelCount + 2;
                        Col = 0;
                    end
                    3: begin
                        Row = PixelCount + 1;
                        Col =  1;
                    end
                    4: begin
                        Row = PixelCount;
                        Col =  1;
                    end
                    5: begin
                        Row = PixelCount + 2;
                        Col =  1;
                    end
                    default: ;
            endcase
        end
        1: begin
                case (SideBlock)
                    0: begin
                        Row = 0;
                        Col = PixelCount + 1;
                    end
                    1: begin
                        Row = 0;
                        Col = PixelCount;
                    end
                    2: begin
                        Row = 0;
                        Col = PixelCount + 2;
                    end
                    3: begin
                        Row = 1;
                        Col = PixelCount;
                    end
                    4: begin
                        Row = 1;
                        Col = PixelCount + 1;
                    end
                    5: begin
                        Row = 1;
                        Col = PixelCount + 2;
                    end
                    default: ;
            endcase
        end   
        2: begin
             case (SideBlock)
                    0: begin
                        Row = PixelCount + 1;
                        Col = 79;
                    end
                    1: begin
                        Row = PixelCount;
                        Col = 79;
                    end
                    2: begin
                        Row = PixelCount + 2;
                        Col = 79;
                    end
                    3: begin
                        Row = PixelCount + 1;
                        Col = 78;
                    end
                    4: begin
                        Row = PixelCount;
                        Col = 78;
                    end
                    5: begin
                        Row = PixelCount + 2;
                        Col = 78;
                    end
                    default: ;
            endcase
        end   
        3: begin
                case (SideBlock)
                    0: begin
                        Row = 59;
                        Col = PixelCount + 1;
                    end
                    1: begin
                        Row = 59;
                        Col = PixelCount;
                    end
                    2: begin
                        Row = 59;
                        Col = PixelCount + 2;
                    end
                    3: begin
                        Row = 58;
                        Col = PixelCount;
                    end
                    4: begin
                        Row = 58;
                        Col = PixelCount + 1;
                    end
                    5: begin
                        Row = 58;
                        Col = PixelCount + 2;
                    end
                    default: ;
            endcase
            end
            default: ;
      endcase
      end   
      
      //Side read stores the data sent from storage into the SideCache for when the state goes to SIDEPROCESS. Side block is also incremented here so that 
      //SIDEREQUEST can send the right row and column on the next go round
      SIDEREAD: begin
        ClockCounter <= 0;
        //Might need to change the way SideBlock is incremented or how it is used to transistion into the next state from SIDEREAD
        //It may go into an extra loop through SIDEREQUEST or may not go through enough loops if these conditions are set incorrectly
        if(SideBlock <= 5) SideCache[SideBlock] <= DataBack;
        SideBlock <= SideBlock + 1;
     end
     
     //Need to include the processing part of this
     SIDEPROCESS: begin
        SideBlock <= 0;
             //Might need to include a part that sets the line to High-Z once we start working with the Joystick Controller
        if(RW) begin
            enable1 <= 1;
            enable2 <= 0;
          end
          else begin
            enable1 <= 0;
            enable2 <= 1;
          end     
     end
     
     //May need to change the way that SideCounter increments if there is an extra loop or not enough loops for the lines
    // This state essentially allows a clock to run so that the storage module can take in the write command. It also increments SideCounter if a side has been completed.
     SIDEWRITE: begin
        PixelCount <= PixelCount + 1;
        case(SideCounter) 
            0: begin
                if(PixelCount == 60) begin
                    PixelCount <= 0;
                    SideCounter <= SideCounter + 1;
                end
            end
            1: begin
                if(PixelCount == 80) begin
                    PixelCount <= 0;
                    SideCounter <= SideCounter + 1;
                end
            end
            2: begin
                 if(PixelCount == 60) begin
                    PixelCount <= 0;
                    SideCounter <= SideCounter + 1;
                end
            end 
            3: begin
                 if(PixelCount == 80) begin
                    PixelCount <= 0;
                    SideCounter <= SideCounter + 1;
                end
            end
            default:PixelCount <= 0 ;
        endcase                                
     end
     MIDDLEREQUEST: begin
        ClockCounter <= ClockCounter + 1;
        case(PixelCount)
            0: begin
                Row <= RowCount;
                Col <= ColCount;
            end
            1: begin
                Row <= RowCount - 1;
                Col <= ColCount;
            end
            2: begin
                Row <= RowCount - 1;
                Col <= ColCount - 1;
            end
            3: begin
                Row <= RowCount;
                Col <= ColCount - 1;
            end
            4: begin
                Row <= RowCount + 1;
                Col <= ColCount - 1;
            end
            5: begin
                Row <= RowCount + 1;
                Col <= ColCount;
            end
            6: begin
                Row <= RowCount + 1;
                Col <= ColCount + 1;
            end
            7: begin
                Row <= RowCount;
                Col <= ColCount + 1;
            end
            8: begin
                Row <= RowCount - 1;
                Col <= ColCount + 1;
            end
            default: ;
            endcase
     end
     MIDDLEREAD: begin
        ClockCounter <= 0;
        if(PixelCount <= 8) MiddleCache[PixelCount] <= DataBack;
        PixelCount <= PixelCount + 1;
     end
     MIDDLEPROCESS: begin
         PixelCount <= 0;
      //Might need to include a part that sets the line to High-Z once we start working with the Joystick Controller
        if(RW) begin
            enable1 <= 1;
            enable2 <= 0;
          end
          else begin
            enable1 <= 0;
            enable2 <= 1;
          end     
     end
     //MIDDLE WRITE will continue to increment col count and row count accordingly until it has reached the limit in which case it will no longer increment
     MIDDLEWRITE: begin
        if(!(RowCount >= 58)) begin
            if(ColCount >= 78) begin
                ColCount <= 0;
                RowCount <= RowCount + 1;
            end
            else ColCount <= ColCount + 1;
        end 
        end
     default: ;
 endcase;
 end       

        
                       
                    
        
                        
                        

assign RW = RW_reg;




endmodule
