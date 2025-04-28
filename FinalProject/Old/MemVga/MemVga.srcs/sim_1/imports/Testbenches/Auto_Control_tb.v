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
reg Clk = 0;     //The Clock
reg Reset = 0;   // The Reset Signal
reg FrameSelector = 0;   //The Signal for the Frame Select
reg Start = 0;           // The Start Signal
reg [1:0] DataBack = 0;  // The Data signal FROM the memory module
reg RW = 1;              // The Read/Write signal (0 is write and 1 is read)
reg [5:0] Row;           // The Row data line for memory
reg [6:0] Col;          // The Column data line for memory
reg [1:0] Data;         // The data line going TO memoryre
reg enable1 = 1;            // The enable line for the first dual-port module in the Memory module
wire enable2 = 0;            // The enable line for the second dual-port module in the Memory module
reg [5:0] vCount;      // vertical count (not used here because we are not outputing anything to VGA)
reg [6:0] hCount;      // horizontal count (not used here because we are not outputing anything to VGA)


wire [1:0] colorData;  //The color data output of the memory module
reg  comparegrid [3:0][3:0]; //the grid with which to compare the processed grid within the memory
reg [9:0]  i = 0;    // The i variable for For loops
reg [9:0] j = 0;     // the j variable for For loops
reg [3:0] MaxRow = 4;   //Max rows (4 for testbench)
reg [3:0] MaxCol = 4;   //Max cols (4 for testbench)
reg [3:0][3:0] outputgrid; //grid for storing output of storage module
reg [4:0] errors = 0;

initial begin
	Row = 0;
	Col = 1;
	Data = 1;
	RW = 0;
	@(posedge Clk);
	Row = 1;
	Col = 2;
	@(posedge Clk);
	Row = 2;
	Col = 2;
	@(posedge Clk);
	Row = 2;
	Col = 1;
	@(posedge Clk);
	Row = 2;
	Col = 0;
	@(posedge Clk);
	RW = 1;
	enable1 = 0;
	comparegrid[1][0] = 1;
	comparegrid[1][2] = 1;
	comparegrid[2][1] = 1;
	comparegrid[2][2] = 1;
	comparegrid[3][1] = 1;
	FrameSelector = 1;

	for(i = 0; i < 1000; i = i + 1) begin
		@(posedge Clk);
	end

	@(posedge Clk);
	RW = 0;
	
	for (i = 0; i < 4; i = i + 1) begin
		for (j = 0; j < 4; j = j + 1) begin
			Row = i;
			Col = j;
			@(posedge Clk) 
			if (outputgrid[i][j] != DataBack) begin
				errors = errors + 1;
				$display("error at row %d, col %d",i,j);
			end 
			else errors = errors;	
		end
	end
	RW = 1;
	
	$display("Test finished with %d errors",errors);
	
	end
	


always begin
	#1 Clk = 1;
	#1 Clk = 0;
end



Auto_Control actb(Clk,Reset,FrameSelector,Start,DataBack,RW,Row,Col,Data,enable1,enable2);
Memory memory(Row,Col,vCount,hCount,enableVisual,enable1,enable2,RW,Clk,Reset,Data,DataBack,colorData);

endmodule