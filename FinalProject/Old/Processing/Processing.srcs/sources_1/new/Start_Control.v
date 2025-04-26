`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 10:34:30 AM
// Design Name: 
// Module Name: Start_Control
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


module Start_Control(input Clk, input Reset, input key, output start);

reg key_prev = 0;
reg [2:0] start_counter = 0;
reg start_reg = 0;

assign start = start_reg;


always @(posedge Clk) begin
    if (Reset) start_reg = 0;
    else begin  
        if(key_prev == 0 && key == 1) begin
        start_counter = start_counter + 1;
        if(start_counter >= 5) begin
            start_reg = !start_reg;
            key_prev = 1'b1;
            start_counter = 0;
        end
        else begin
            key_prev = key_prev;
   end 
   end
   else if (key_prev == 1 && key == 0) begin   
        start_counter = start_counter + 1;
        if(start_counter >= 5) begin
            key_prev = 1'b0;
            start_counter = 0;
        end
        else start_reg = start_reg;
  end 
  else begin
    start_reg = start_reg;
    start_counter = 0;
  end
    end
end


endmodule
