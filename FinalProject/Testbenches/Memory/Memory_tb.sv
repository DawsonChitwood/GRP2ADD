`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 01:54:14 PM
// Design Name: 
// Module Name: Memory_tb
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


module Memory_tb(
    );

reg [8:0] errors;   
reg [5:0] currentRow_tb;
reg [6:0] currentCol_tb;
reg [5:0] vCount_tb;
reg [6:0] hCount_tb;
reg enableVisual_tb;
reg enableData1_tb;
reg enableData2_tb;
reg readWrite_tb;
reg clk_tb;
reg reset_tb;
reg [1:0] dataIn_tb;
wire [1:0] dataBack_tb;
wire [1:0] colorData_tb; 

    Memory mem(
currentRow_tb,
currentCol_tb,
vCount_tb,
hCount_tb,
enableVisual_tb,
enableData1_tb,
enableData2_tb,
readWrite_tb,
clk_tb,
reset_tb,
dataIn_tb,
dataBack_tb,
colorData_tb 
);
initial begin
    enableVisual_tb=1;
    enableData1_tb=1;
    enableData2_tb=0;
    readWrite_tb=0;
    dataIn_tb=0;
    errors=0;
     @(posedge clk_tb);
     
     
    for(int i=0; i<60;i = i+1)begin
       currentRow_tb=i;
       for(int j=0; j<80; j=j+1)begin
            currentCol_tb=j;
            enableData1_tb=1;
            @(posedge clk_tb);
            enableData1_tb=0;
            @(posedge clk_tb);
            dataIn_tb= dataIn_tb+1;
                     
            @(posedge clk_tb);
       end 
    end
    enableData2_tb=1;
    for(int i=0; i<60;i = i+1)begin
       currentRow_tb=i;
       for(int j=0; j<80; j=j+1)begin
            currentCol_tb=j;
            @(posedge clk_tb);        
            @(posedge clk_tb);
       end 
    end   
            @(posedge clk_tb);
            @(posedge clk_tb);
            enableData2_tb=0;
            @(posedge clk_tb);
            @(posedge clk_tb);
    readWrite_tb=1;
            @(posedge clk_tb);
    enableData1_tb=1;
    @(posedge clk_tb);
    for(int i=0; i<60;i = i+1)begin
       currentRow_tb=i;
       vCount_tb=i;
       for(int j=0; j<80; j=j+1)begin
            currentCol_tb=j;
            hCount_tb=j;
            @(posedge clk_tb);
            @(posedge clk_tb);
            if(dataBack_tb!=j%4) begin
                $display("error at %d row %d col",i,j);
                errors = errors+1;
          end
            if(colorData_tb!=j%4) begin
                $display("error at %d row %d col",i,j);
                errors = errors+1;       
       end 
       end
    end
    @(posedge clk_tb);
    @(posedge clk_tb);
enableData1_tb=0;
enableData2_tb=1;
enableVisual_tb=0;
@(posedge clk_tb);
@(posedge clk_tb);
for(int i=0; i<60;i = i+1)begin
       currentRow_tb=i;
       vCount_tb=i;
       for(int j=0; j<80; j=j+1)begin
            currentCol_tb=j;
            hCount_tb=j;
            @(posedge clk_tb);
            @(posedge clk_tb);
            if(dataBack_tb!=0) begin
                $display("error at %d row %d col in second mem",i,j);
                errors = errors+1;
          end
            if(colorData_tb!=0) begin
                $display("error at %d row %d col in second mem",i,j);
                errors = errors+1;       
       end 
       end
    end
    
                $display("errors found = %d ",errors);
    end

always begin
    #1 clk_tb = 1;
    #1 clk_tb = 0;
end
endmodule
