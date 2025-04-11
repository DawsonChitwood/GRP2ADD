`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2025 11:23:20 AM
// Design Name: 
// Module Name: Top
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

module Top(input CLK100MHZ, input RESET, input [1:0] SW, output h_sync, output v_sync, output logic [3:0] R, output logic [3:0] G,output logic [3:0] B);
wire [1:0] colors;
wire [5:0] VC;
wire [6:0] HC;
reg [5:0] currentRow;
reg [6:0] currentCol;
reg [1:0] dataIn;
reg enableData1;
reg [5:0] Write;
wire CLK;

Clk_Divider_25MHZ CD(CLK100MHZ,CLK);
Memory mem(currentRow,currentCol,VC,HC,SW[0],enableData1,enableData2,readWrite,CLK100MHZ,RESET,dataIn,dataBack,colors);
VGA_Out vga(CLK,RESET,colors, h_sync, v_sync,R,G, B, HC, VC);

always @(posedge CLK100MHZ) begin
    if(Write==0) begin
       currentRow=0;
       currentCol=0;
       dataIn=3;
       Write=1;
    end
    else if(Write==1) begin       
       enableData1=1;
       Write=2;
    end
    else if(Write==2) begin       
       enableData1=0;
       Write=3;
    end
     else if(Write==3) begin
       currentRow=1;
       currentCol=0;
       dataIn=1;
       Write=4;
    end
    else if(Write==4) begin       
       enableData1=1;
       Write=5;
    end
    else if(Write==5) begin       
       enableData1=0;
       Write=6;
    end
     else if(Write==6) begin
       currentRow=59;
       currentCol=79;
       dataIn=2;
       Write=7;
    end
    else if(Write==7) begin       
       enableData1=1;
       Write=8;
    end
    else if(Write==8) begin       
       enableData1=0;
       Write=9;
    end
       else if(Write==9) begin
       currentRow=0;
       currentCol=1;
       dataIn=2;
       Write=10;
    end
    else if(Write==10) begin       
       enableData1=1;
       Write=11;
    end
    else if(Write==11) begin       
       enableData1=0;
       Write=12;
    end
          else if(Write==12) begin
       currentRow=49;
       currentCol=79;
       dataIn=1;
       Write=13;
    end
    else if(Write==13) begin       
       enableData1=1;
       Write=14;
    end
    else if(Write==14) begin       
       enableData1=0;
       Write=15;
    end
    else
    Write=Write;
end

endmodule
