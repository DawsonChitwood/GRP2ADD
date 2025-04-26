`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2025 02:35:40 PM
// Design Name: 
// Module Name: Starting_Pixels
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


module Starting_Pixels(input Clk,output reg [5:0] currentRow, output reg [6:0] currentCol, output reg [1:0] dataIn, output reg enableData1,input keepGoing,input clear);
reg [13:0] Write = 0;
wire data;

LFSR lfsr(Clk,data);
always @(posedge Clk) begin
    if(Write==0) begin
        if(keepGoing ==1)  Write=1;
        else Write <= 0;
    end
    else if(Write == 14401) begin
     Write <= 0;
     currentRow<=0;
     currentCol<=0;
    end
    else if(Write % 3 == 1) begin
        if(currentCol == 79) begin
        currentCol <= 0;
        currentRow <= currentRow+1;
        end
        else currentCol <= currentCol+1;  
        if(clear) dataIn <= 0;
        else dataIn <= data;
        Write <= Write + 1;
    end
    else if(Write % 3 == 2) begin
        enableData1<=1;
        Write <= Write + 1;
    end
    else if(Write % 3 == 0) begin
        enableData1<=0;
        Write <= Write + 1;
    end
    /**
    if(Write==0) begin
       currentRow<=29;
       currentCol<=38;
       dataIn<=1;
       Write<=1;
    end
    else if(Write==1) begin       
       enableData1<=1;
       Write<=2;
    end
    else if(Write==2) begin       
       enableData1<=0;
       Write<=3;
    end
     else if(Write==3) begin
       currentRow<=29;
       currentCol<=39;
       dataIn<=1;
       
       Write<=4;
    end
    else if(Write==4) begin       
       enableData1<=1;
       Write<=5;
    end
    else if(Write==5) begin       
       enableData1<=0;
       Write<=6;
    end
     else if(Write==6) begin
       currentRow<=29;
       currentCol<=40;
       dataIn<=1;
       Write<=7;
    end
    else if(Write==7) begin       
       enableData1<=1;
       Write<=8;
    end
    else if(Write==8) begin       
       enableData1<=0;
       Write<=9;
    end
       else if(Write==9) begin
       currentRow<=28;
       currentCol<=40;
       dataIn<=1;
       Write<=10;
    end
    else if(Write==10) begin       
       enableData1<=1;
       Write<=11;
    end
    else if(Write==11) begin       
       enableData1<=0;
       Write<=12;
    end
        else if(Write==12) begin
       currentRow<=27;
       currentCol<=39;
       dataIn<=1;
       Write<=13;
    end
    else if(Write==13) begin       
       enableData1<=1;
       Write<=14;
    end
    else if(Write==14) begin       
       enableData1<=0;
       Write<=15;
    end
    else begin
        currentRow=5'bz;
        currentCol=6'bz;
        dataIn=2'bz;
        enableData1=1'bz;
        
        if(keepGoing) Write=0;
        else Write=Write;
    end
    **/
end
endmodule
