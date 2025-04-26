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


module Auto_Control(input Clk, input Reset, input FrameSelector, input Start, input [1:0] DataBack, output RW, output reg [5:0] Row, output reg [6:0] Col, output reg [1:0] data, output reg enable1, output reg  enable2);
//State Machine Variables
reg [3:0] CurrentState = 0;
reg [3:0] NextState = 0;
reg [2:0] ClockCounter = 0;    //Used to make sure transitions to states relying on storage feedback give enough time for 
// storage to respond
//reg [2:0] CornerCounter = 0;   //Used to keep track of which corner is being read from storage
//reg [2:0] CornerBlock = 0;     //Used to keep track of which pixel is being read from storage while reading a particular corner
//reg [1:0][1:0] CornerCache = 0; //Used to keep track of the values of all pixels used for processing for a particular corner
//reg [1:0] SideCounter = 0;      // Used to keep track of which side is currently being traversed
reg [3:0] PixelCount = 0; // Used to keep track of which particular peripheral pixel is currently being processed
//reg [2:0] SideBlock = 0;        // Used to keep track of which pixel is being read while processing a particular pixel along a line
//reg [2:0][1:0] SideCache = 0;   // Used to hold the pixel information for processing a certain pixel on a line
reg [5:0] RowCountStart = 0;
reg [6:0] ColCountStart = 0;
reg [5:0] RowCount = RowCountStart;        //Used to keep track of which row is being processed in the MIDDLE section. 1 is the default position
reg [6:0] ColCount = ColCountStart;        //Used to keep track of which column is being processed in the MIDDLE section. 1 is the default position
reg  CurrentPixelValue = 0; //Used to hold the pixels currently being processed in the MIDDLE section
reg [3:0] Live_Counter; //Used to count how many of the pixels in the cache are living





//Names of the states
parameter FRAMEDONE = 0;
parameter PIXELDONE = 1;
parameter WaitState = 2;
parameter WaitStateTwo = 3;
//parameter CORNERREQUEST = 1;
//parameter CORNERREAD = 2;
//parameter CORNERWRITE = 3;
//parameter SIDEREQUEST = 4;
//parameter SIDEREAD = 5;
//parameter SIDEWRITE = 6;
parameter REQUEST = 7;
parameter READ = 8;
parameter WRITE = 9;
//parameter CORNERPROCESS = 10;
//parameter SIDEPROCESS = 11;
parameter PROCESS = 12;


// Register for the Read/Write output
reg RW_reg = 1;

// This register keeps up with how many clocks have elapsed to make sure we allow adequate time for the storage module to process
// our read commands and send out the data we need
reg [2:0] Clock_Counter = 0;
reg [4:0] Clocks_To_Wait = 3;

// Register to tell module that it is done writing the current frame
reg Frame_Done = 1 ;


reg FrameSelectorPrev = 0;

//Registers holding the max rows and columns
reg [5:0]Max_Row = 60; //4 for simulation  60 for application
reg [6:0]Max_Col = 80; //4 for simulation  80 for application

//Registers for color parameters
reg [1:0] Live_Color = 1;
reg [1:0] Dead_Color = 0;

reg CurrentStorageModule = 0; //keeps track of which storage module is currently being written to



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
            if(!Frame_Done) NextState <= PIXELDONE;
            else NextState <= FRAMEDONE;
        end
        WaitState: NextState <= PIXELDONE;
        PIXELDONE: NextState <= REQUEST;
        //REQUEST moves to READ as long as 3 Clocks have passed. This gives The storage time to process the data request
        REQUEST: NextState <= WaitStateTwo;
        //READ moves back to REQUEST until all blocks (9 per pixel including the pixel of interest) have been read. It then moves to PROCESS
        //The timing works because the NextState logic will only register PixelCount as being 8 once the data from the 8th peripheral pixel has been fetched
        WaitStateTwo:NextState <= READ;
        READ: begin
        //ClockCounter has to be used for Read so that the Pixels have time to proprogate from the storage module
           if(ClockCounter!=1) NextState <= READ; 
          else if(PixelCount != 8) NextState <= REQUEST;
            else NextState <= PROCESS;
        end
        //PROCESS sets the enables for writing to the other storage module before moving on to the WRITE
        PROCESS:NextState <= WRITE;
        
        
        //WRITE will move back to REQUEST unless all middle pixels have been processed in which case it will set FrameDone and move to FRAMEDONE
        WRITE: begin
            if(!((RowCount == (Max_Row - 1))&(ColCount == (Max_Col - 1)))) NextState <= WaitState;
            else begin  
                NextState <= FRAMEDONE;
            end
        end
        default: NextState <= FRAMEDONE;
        endcase
end


always @(FrameSelector) CurrentStorageModule = FrameSelector;

//Output Logic
always @(posedge Clk) begin
    case(CurrentState) 
    //This will set all of the corner tracking variables to zero
        FRAMEDONE: begin
            ClockCounter <= 0;
            PixelCount <= 0;
            RowCount <= RowCountStart;
            ColCount <= ColCountStart;
            Live_Counter <= 0;
            CurrentPixelValue <= 0; 
            if(FrameSelector != FrameSelectorPrev) begin
                Frame_Done <= 0;
                FrameSelectorPrev <= FrameSelector;
            end
            else ;
        end
        WaitState: begin
            if(CurrentStorageModule) begin
                enable1 = 0;
                enable2 = 1;
              end
              else begin
                enable1 = 1;
                enable2 = 0;
              end
            end
        WaitStateTwo: begin
        ;
        end
        PIXELDONE: begin
            CurrentPixelValue <= 0;
            Live_Counter <= 0;
            ClockCounter <= 0;
            enable1 <= 0;
            enable2 <= 0;
            RW_reg <= 1;
        end
   //This is the state in which the row and column to be requested will be specified. The clock counter is present to give some delay 
   //allowing for the  module to process
     REQUEST: begin
     ClockCounter <= 0;
    
        case(PixelCount)
            0: begin
                Row <= RowCount;
                Col <= ColCount;
            end
            1: begin
               if((RowCount != 0)) Row <= RowCount - 1;
               else Row <= (Max_Row - 1);
                Col <= ColCount;
            end
            2: begin
               if((RowCount != 0))  Row <= RowCount - 1;
               else Row <= (Max_Row - 1);
               if((ColCount != 0)) Col <= ColCount - 1;
               else Col <= (Max_Col - 1);
            end
            3: begin
                Row <= RowCount;
               if((ColCount != 0)) Col <= ColCount - 1;
               else Col <= (Max_Col - 1);
            end
            4: begin
               if((RowCount != (Max_Row - 1)))  Row <= RowCount + 1;
               else Row <= 0;
               if((ColCount != 0)) Col <= ColCount - 1;
               else Col <= (Max_Col - 1);
            end
            5: begin
               if((RowCount != (Max_Row - 1)))  Row <= RowCount + 1;
               else Row <= 0;
                Col <= ColCount;
            end
            6: begin
               if((RowCount != (Max_Row - 1)))  Row <= RowCount + 1;
               else Row <= 0;
               if((ColCount != (Max_Col - 1))) Col <= ColCount + 1;
               else Col <= 0;
            end
            7: begin
                Row <= RowCount;
               if((ColCount != (Max_Col - 1))) Col <= ColCount + 1;
               else Col <= 0;
            end
            8: begin
               if((RowCount != 0))  Row <= RowCount - 1;
               else Row <= (Max_Row - 1);
               if((ColCount != (Max_Col - 1))) Col <= ColCount + 1;
               else Col <= 0;
            end
            default: ;
            endcase
        if(CurrentStorageModule) begin
            enable1 <= 1;
            enable2 <= 0;
        end 
        else begin
            enable1 <= 0;
            enable2 <= 1;
         end
     end
     //Reads the data sent from storage. It will move to processing as soon as the the Pixel count reaches 8 (see NextState Logic)
     READ: begin
     ClockCounter <= ClockCounter + 1;
     
     if(ClockCounter ==1)begin
     /*
        case(PixelCount) 
            0: Cache[1:0] <= DataBack;
            1: Cache[3:2] <= DataBack;   
            2: Cache[5:4] <= DataBack;
            3: Cache[7:6] <= DataBack;
            4: Cache[9:8] <= DataBack;  
            5: Cache[11:10] <= DataBack;  
            6: Cache[13:12] <= DataBack;
            7: Cache[15:14] <= DataBack;
            8: Cache[17:16] <= DataBack;
            default: ;
        endcase
        */
        
        //If the PixelCount is 0, store DataBack into CurrentPixelValue. Else (as long as Pixel count is not greater than 8)
        // Add whatever DataBack is into Live_Counter. This keeps track of how many live pixels are around the current pixel
        if(PixelCount == 0) CurrentPixelValue <= DataBack;
        else if (PixelCount <= 8) Live_Counter <= Live_Counter + DataBack[0];
        else ;
        PixelCount <= PixelCount + 1;
        enable1 <= 0;
        enable2 <= 0;
      end
      else
      ; 
      end
     
     
     //Middle Process merely sets up the enable lines for the write state, essentially allowing a clock pulse for this to happen. 
     //Oh yeah... and it also implements the game logic. I guess that is a pretty important part of it...
     PROCESS: begin 
         PixelCount <= 0;
         //GAME LOGIC!!!
         //Counts all of the live cells in cache and then uses that information to determine what the output data will be
         /*
         if(Cache[2] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[4] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[6] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[8] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[10] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[12] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[14] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         if(Cache[16] == Live_Color) Live_Counter <= Live_Counter + 1;
         else ;
         
         if(Cache[0] == Live_Color) begin
            if((Live_Counter > 3) || (Live_Counter < 2)) data <= 0; 
            else data <= 1;
         end 
         else if(Live_Counter == 3) data <= 1;
         else data <= 0;
         */
         if(CurrentPixelValue == Live_Color) begin
            if((Live_Counter > 3) || (Live_Counter < 2)) data <= 0; 
            else data <= 1;
         end 
         else if(Live_Counter == 3) data <= 1;
         else data <= 0;
         
         Row = RowCount;
         Col = ColCount;
         
      //Might need to include a part that sets the line to High-Z once we start working with the Joystick Controller
      enable1 <= 0;
      enable2 <= 0;
        
         
     end
     //MIDDLE WRITE will continue to increment col count and row count accordingly until it has reached the limit in which case it will no longer increment
     //In which it sets Frame_Done High
     WRITE: begin
        Live_Counter <= 0;
        RW_reg <= 0;
        Frame_Done <= 1;
        if(!(RowCount >= (Max_Row))) begin
            if(ColCount >= (Max_Col - 1)) begin
                ColCount <= 0;
                RowCount <= RowCount + 1;
            end
            else ColCount <= ColCount + 1;
        end 
        end
     default: ;
 endcase;
 end       
 
 

//Assigning RW_reg to the RW output
assign RW = RW_reg;




endmodule
