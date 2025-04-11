`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2025 04:02:09 PM
// Design Name: 
// Module Name: Auto_Control_tb
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


module Auto_Control_tb();
reg Clk = 0;
reg Reset = 0;
reg FrameSelector = 0;
reg Start = 0; 
reg [1:0] DataBack = 0;
reg RW = 0;
wire[5:0] Row;
wire [6:0] Col;
wire [1:0] Data;
wire enable1;
wire enable2;
reg [5:0] vCount;
reg [6:0] hCount;
reg enableVisual;



wire [1:0] colorData;
reg [31:0] seed;
reg  startgrid [3:0][3:0];
reg  finishgrid [3:0][3:0];
reg retrievegrid [3:0][3:0];
reg [3:0]  i = 0;
reg [3:0] j = 0;
reg [8:0] LiveCounter = 0;
reg [3:0] MaxRow = 4;
reg [3:0] MaxCol = 4;



//I left off at AHHHHHHH, where I implemented the logic for the testbench to deposit what the game output is supposed to be within a register.
// After this we will write to the first storage module. We may want to do the storage of the current game grid in the same area of code that the storage module
// is being fed values

initial begin
for(i = 0; i < MaxRow; i = i + 1) begin
    for(j = 0; j < MaxCol; j = j + 1) startgrid[i][j] = $random(seed) % 2;
end



//AHHHHHHH
for(i = 0; i < MaxRow; i = i + 1) begin
    LiveCounter = 0;
    for(j = 0; j < MaxCol; j = j + 1) begin
    
        //Middle Pixel
        if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
        else ;
        
        //Pixel Above Middle Pixel
        if((i - 1) < 0 ) begin
            if(finishgrid[MaxRow - 1][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
        else ;
        
        //Upper left corner pixel
        if(!(i-1 < 0) && !(j-1 < 0)) begin
            if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end 
        else if ((i-1 < 0) && (j-1 < 0)) begin
            if(finishgrid[MaxRow - 1][MaxCol - 1] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((i-1 < 0)) begin
            if(finishgrid[MaxRow - 1][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((j-1 < 0)) begin
            if(finishgrid[i][MaxCol - 1] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else ;
        
        //left pixel
        if((j - 1) < 0 ) begin
            if(finishgrid[i][MaxCol - 1] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
        else ;
        
        //bottom left pixel
         if(!(i + 1 > (MaxRow - 1)) && !(j - 1 < 0)) begin
            if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end 
        else if ((i + 1 > (MaxRow - 1)) && (j - 1 < 0)) begin
            if(finishgrid[0][MaxCol - 1] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((i + 1 > (MaxRow - 1))) begin
            if(finishgrid[0][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((j - 1 < 0)) begin
            if(finishgrid[i][MaxCol - 1] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else ;
        
        //bottom pixel
        if((i + 1) > (MaxRow - 1) ) begin
            if(finishgrid[MaxRow - 1][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
        else ;
        
        //bottom right pixel
        if(!(i + 1 > (MaxRow - 1)) && !(j + 1 > (MaxCol - 1))) begin
            if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end 
        else if ((i + 1 > (MaxRow - 1)) && !(j + 1 > (MaxCol - 1))) begin
            if(finishgrid[0][0] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((i + 1 > (MaxRow - 1))) begin
            if(finishgrid[0][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((j + 1 > (MaxCol - 1))) begin
            if(finishgrid[i][0] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else ;
     
     //right pixel
        if((j + 1) > (MaxCol - 1) ) begin
            if(finishgrid[i][0] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
        else ; 
        
    //upper right corner
       if(!(i - 1 < 0) && !(j + 1 > (MaxCol - 1))) begin
            if(finishgrid[i][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end 
        else if ((i - 1 < 0) && !(j + 1 > (MaxCol - 1))) begin
            if(finishgrid[MaxRow - 1][0] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((i - 1 < 0)) begin
            if(finishgrid[MaxRow - 1][j] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else if((j + 1 > (MaxCol - 1))) begin
            if(finishgrid[i][0] == 1) LiveCounter = LiveCounter + 1;
            else ;
        end
        else ;
end
        
                
        
        
        
end



end


AutoClk actb(Clk,Reset,FrameSelector,Start,DataBack,RW,Row,Col,Data,enable1,enable2);
Memory(Row,Col,vCount,hCount,enableVisual,enable1,enable2,RW,Clk,Reset,Data,DataBack,colorData);

endmodule
