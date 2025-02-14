`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 04:59:20 PM
// Design Name: 
// Module Name: switch_to_duty
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


module switch_to_duty(input clk, input [7:0] switch, output [7:0] dut, input [2:0] bits);

reg [7:0] duty;

assign dut = duty;

always @(posedge clk) begin
    if(bits == 6) begin
        case (switch) 
        (7'h0): duty = 0;
        (7'h1): duty = 4;
        (7'h2): duty = 8;
        (7'h3): duty = 12;
        (7'h4): duty = 16;
        (7'h5): duty = 20;
        (7'h6): duty = 24;
        (7'h7): duty = 28;
        (7'h8): duty = 32;
        (7'h9): duty = 36;
        (7'ha): duty = 40;
        (7'hb): duty = 44;
        (7'hc): duty = 48;
        (7'hd): duty = 52;
        (7'he): duty = 56;
        (7'hf): duty = 60;
        (7'h10): duty = 64;
        (7'h11): duty = 68;
        (7'h12): duty = 72;
        (7'h13): duty = 76;
        (7'h14): duty = 80;
        (7'h15): duty = 84;
        (7'h16): duty = 88;
        (7'h17): duty = 92;
        (7'h18): duty = 96;
        (7'h19): duty = 100;
        (7'h1a): duty = 104;
        (7'h1b): duty = 108;
        (7'h1c): duty = 112;
        (7'h1d): duty = 116;
        (7'h1e): duty = 120;
        (7'h1f): duty = 124;
        (7'h20): duty = 128;
        (7'h21): duty = 132;
        (7'h22): duty = 136;
        (7'h23): duty = 140;
        (7'h24): duty = 144;
        (7'h25): duty = 148;
        (7'h26): duty = 152;
        (7'h27): duty = 156;
        (7'h28): duty = 160;
        (7'h29): duty = 164;
        (7'h2a): duty = 168;
        (7'h2b): duty = 172;
        (7'h2c): duty = 176;
        (7'h2d): duty = 180;
        (7'h2e): duty = 184;
        (7'h2f): duty = 188;
        (7'h30): duty = 192;
        (7'h31): duty = 196;
        (7'h32): duty = 200;
        (7'h33): duty = 204;
        (7'h34): duty = 208;
        (7'h35): duty = 212;
        (7'h36): duty = 216;
        (7'h37): duty = 220;
        (7'h38): duty = 224;
        (7'h39): duty = 228;
        (7'h3a): duty = 232;
        (7'h3b): duty = 236;
        (7'h3c): duty = 240;
        (7'h3d): duty = 244;
        (7'h3e): duty = 248;
        (7'h3f): duty = 255;   
        default: duty = 0;
        endcase
    end else if (bits == 5) begin
        case (switch) 
        (7'h0): duty = 0;
        (7'h1): duty = 8;
        (7'h2): duty = 16;
        (7'h3): duty = 24;
        (7'h4): duty = 32;
        (7'h5): duty = 40;
        (7'h6): duty = 48;
        (7'h7): duty = 56;
        (7'h8): duty = 64;
        (7'h9): duty = 72;
        (7'ha): duty = 80;
        (7'hb): duty = 88;
        (7'hc): duty = 96;
        (7'hd): duty = 104;
        (7'he): duty = 112;
        (7'hf): duty = 120;
        (7'h10): duty = 128;
        (7'h11): duty = 136;
        (7'h12): duty = 144;
        (7'h13): duty = 152;
        (7'h14): duty = 160;
        (7'h15): duty = 168;
        (7'h16): duty = 176;
        (7'h17): duty = 184;
        (7'h18): duty = 192;
        (7'h19): duty = 200;
        (7'h1a): duty = 208;
        (7'h1b): duty = 216;
        (7'h1c): duty = 232;
        (7'h1d): duty = 240;
        (7'h1e): duty = 248;
        (7'h1f): duty = 255;
        default: duty = 0;
        endcase
     end else  duty = 0;
 end
endmodule
