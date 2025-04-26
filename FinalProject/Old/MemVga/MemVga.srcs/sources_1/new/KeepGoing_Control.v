`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2025 10:15:23 AM
// Design Name: 
// Module Name: KeepGoing_Control
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


module KeepGoing_Control(input Clk, input Reset, input key, output keepgoing);
reg key_prev = 0;
reg [2:0] kg_counter = 0;
reg kg_reg = 0;

assign keepgoing = kg_reg;


always @(posedge Clk) begin
    if (Reset) kg_reg = 0;
    else begin  
        if(key_prev == 0 && key == 1) begin
        kg_counter = kg_counter + 1;
        if(kg_counter >= 5) begin
            kg_reg = !kg_reg;
            key_prev = 1'b1;
            kg_counter = 0;
        end
        else begin
            key_prev = key_prev;
   end 
   end
   else if (key_prev == 1 && key == 0) begin   
        kg_counter = kg_counter + 1;
        if(kg_counter >= 5) begin
            key_prev = 1'b0;
            kg_counter = 0;
        end
        else kg_reg = kg_reg;
  end 
  else begin
    kg_reg = kg_reg;
    kg_counter = 0;
  end
    end
end
endmodule
