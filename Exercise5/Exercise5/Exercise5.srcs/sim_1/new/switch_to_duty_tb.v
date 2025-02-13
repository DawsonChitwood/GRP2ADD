`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 04:57:17 PM
// Design Name: 
// Module Name: switch_to_duty_tb
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


module switch_to_duty_tb();
reg [7:0] switch;
wire [7:0] dut;
reg [7:0] duty;
reg [6:0] error = 0;
integer i;

switch_to_duty std(switch,dut);

 initial begin
 for (i = 0; i < 64; i = i + 1) begin
    assign switch = i;
    case (i) 
    (0): duty = 0;
    (1): duty = 4;
    (2): duty = 8;
    (3): duty = 12;
    (4): duty = 16;
    (5): duty = 20;
    (6): duty = 24;
    (7): duty = 28;
    (8): duty = 32;
    (9): duty = 36;
    (10): duty = 40;
    (11): duty = 44;
    (12): duty = 48;
    (13): duty = 52;
    (14): duty = 56;
    (15): duty = 60;
    (16): duty = 64;
    (17): duty = 68;
    (18): duty = 72;
    (19): duty = 76;
    (20): duty = 80;
    (21): duty = 84;
    (22): duty = 88;
    (23): duty = 92;
    (24): duty = 96;
    (25): duty = 100;
    (26): duty = 104;
    (27): duty = 108;
    (28): duty = 112;
    (29): duty = 116;
    (30): duty = 120;
    (31): duty = 124;
    (32): duty = 128;
    (33): duty = 132;
    (34): duty = 136;
    (35): duty = 140;
    (36): duty = 144;
    (37): duty = 148;
    (38): duty = 152;
    (39): duty = 156;
    (40): duty = 160;
    (41): duty = 164;
    (42): duty = 168;
    (43): duty = 172;
    (44): duty = 176;
    (45): duty = 180;
    (46): duty = 184;
    (47): duty = 188;
    (48): duty = 192;
    (49): duty = 196;
    (50): duty = 200;
    (51): duty = 204;
    (52): duty = 208;
    (53): duty = 212;
    (54): duty = 216;
    (55): duty = 220;
    (56): duty = 224;
    (57): duty = 228;
    (58): duty = 232;
    (59): duty = 236;
    (60): duty = 240;
    (61): duty = 244;
    (62): duty = 248;
    (63): duty = 255;   
    default: duty = 0;
    endcase
   #1 if(dut !== duty[i]) begin
        $display("ERROR FOUND AT I OF %d",i);
        error = error + 1; 
    end
end
$display("%d ERRORS FOUND", error);
end
 
endmodule
