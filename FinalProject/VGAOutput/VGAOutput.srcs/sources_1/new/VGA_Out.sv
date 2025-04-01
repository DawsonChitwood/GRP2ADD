`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 01:56:38 PM
// Design Name: 
// Module Name: VGA_Out
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


module VGA_Out(input Clk, input BANANAS, input [1:0] ColorIn, output hsync, output vsync, output logic [3:0] R, output logic [3:0] G, output logic [3:0] B, output [6:0] HC, output [6:0] VC);
reg HS = 0;
reg VS = 0;
reg hc = 0;
reg vc = 0;
reg [1:0] state = 0;
reg [1:0] nstate = 0;

parameter BLACK = 0; 
parameter WHITE = 1;
parameter RED = 2;
parameter BLUE = 3;



always @(posedge Clk) begin
   /*if(BANANAS) begin
        R = 4'b0000;
        G = 4'b0000;
        B = 0;
        HS = 0;
        VS = 0;
        nstate = BLACK;
    end 
    else begin
     */   state = nstate;
    //end
end

always @(posedge Clk) begin
        if(ColorTime==1)    begin 
           
           case (ColorIn) 
            0: nstate = BLACK;
            1: nstate = WHITE;
            2: nstate = RED;
            3: nstate = BLUE;
            default: nstate = state;
            endcase
          
           end
           
        else
            nstate = BLACK;
    end 

always begin
    case(state) 
        BLACK: begin
            R =  4'b0000;
            G =  4'b0000;
            B =  4'b0000;
            end
        WHITE: begin
            R = 4'b1111;
            G = 4'b1111;
            B = 4'b1111;
            end    
        RED: begin
            R = 4'b1111;
            G = 4'b0000;
            B = 4'b0000;
            end
       BLUE: begin
            R = 4'b0000;
            G = 4'b0000;
            B = 4'b1111;
            end
        endcase
        end
        


    


HVsyncer hvs(Clk,BANANAS,hsync,vsync,HC,VC,ColorTime);


    
endmodule
