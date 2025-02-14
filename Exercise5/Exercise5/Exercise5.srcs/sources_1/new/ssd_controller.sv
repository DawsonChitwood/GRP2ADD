`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 06:10:09 AM
// Design Name: 
// Module Name: ssd_controller
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


module ssd_controller(
    input wire                         clk,
    input wire                         reset, // active high reset
    input wire [7:0] red,
    input wire [7:0] green,
    input wire [7:0] blue,
    output reg [8:0]    anode,
    output reg [7:0]                 cathode
    );
     
   parameter NUM_SEGMENTS = 8;
   parameter CLK_PER      = 10;  // Clock period in ns
   parameter REFR_RATE    = 1000; // Refresh rate in Hz
   parameter INTERVAL = 10000;

    reg [$clog2(INTERVAL)-1:0]        refresh_count;
    reg [3:0]    anode_count;
    reg cathode_passthrough;
    
    cathodeControl cathctrl(red [7:4],red [3:0],green [7:4],green [3:0],blue [7:4],blue [3:0], anode_count,cathode_passthrough);
    
    cathode_top ct(clk,cathode_passthrough,0,cathode);
    
    initial begin
        refresh_count = 0;
        anode_count   = 0;
    end
    
   always @(posedge clk) begin
        if (refresh_count == INTERVAL) begin
          refresh_count          <= 0;
          anode_count            <= anode_count + 1;
        end else refresh_count <= refresh_count + 1;
        anode                    <= '1;
        anode[anode_count]       <= '0;
        if (reset) begin
          refresh_count          <= '0;
          anode_count            <= '0;
        end
      end
    
endmodule
