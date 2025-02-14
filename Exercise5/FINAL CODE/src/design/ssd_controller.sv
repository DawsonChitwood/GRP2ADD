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

// Module for our SSD controller
module ssd_controller(
    input wire                         clk,   //clock signal
    input wire                         reset, // active high reset
    input wire [7:0] red,          //red switch signal
    input wire [7:0] green,        //green switch signal
    input wire [7:0] blue,         //blue switch signal
    output reg [7:0]    anode,     //anode output for the SSDs
    output reg [7:0]                 cathode     //cathode output for the SSDs
    );
     
   parameter INTERVAL = 10000;  // The interval before the anode is switched

    reg [13:0]        refresh_count;    //the counter used to gauge when the next anode needs to be set
    reg [2:0]    anode_count;           //keeps track of which anode is currently being set
    reg [3:0] cathode_passthrough;      //a variable used to pass the output of cathode_top to the cathode control module
    
    
    //module instantiations
    cathodeControl cathctrl(red [7:4],red [3:0],green [7:4],green [3:0],blue [7:4],blue [3:0], anode_count,cathode_passthrough);
    
    cathode_top ct(clk,cathode_passthrough,1,cathode);
    
    
    
    
    // initializations of the refresh and anode counts
    initial begin
        refresh_count = 0;
        anode_count   = 0;
    end
    
    
    // Flip flop used control the switching of anodes
   always @(posedge clk) begin
        if (refresh_count == INTERVAL) begin
          refresh_count          <= 0;
          anode_count            <= anode_count + 1;
        end else refresh_count <= refresh_count + 1;
        anode                    <= '1;
        if(anode_count != 6 && anode_count != 7)
            anode[anode_count]       <= '0;
        if (reset) begin
          refresh_count          <= '0;
          anode_count            <= '0;
        end
      end
  
endmodule
