`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2025 11:37:48 AM
// Design Name: 
// Module Name: EnableVisual_Control
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


module EnableVisual_Control (input Clk, input Reset, input start, input frameselect, output enablevisual);
reg state = 0;
reg start_reg;

always @(posedge Clk) begin
    if(Reset) begin
        state = 0;
        start_reg = 0;
    end
    else if(~state) begin
        start_reg = 0;
        state = 1;
    end
    else begin
        case (start)
            0: start_reg = 0;
            1: start_reg = 1;
            default: start_reg = start_reg;
        endcase
    end
end 
      


assign enablevisual = (start) ? ~frameselect : 1'b1;

endmodule
