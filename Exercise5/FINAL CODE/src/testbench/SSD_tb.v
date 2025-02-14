`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 09:08:08 AM
// Design Name: 
// Module Name: SSD_tb
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

// self checking testbench for the Switches to SSD communication
module SSD_tb();
reg clk;   //clock signal
reg rst;   //reset signal
reg [7:0] R;    //red switch signal
reg [7:0] G;    //green switch signal
reg [7:0] B;    //blue switch signal
reg [15:0] error;    //error counter

//both of these are for loop variables
integer i;           
integer j;

wire [7:0] anode;    //anode output
wire [7:0] cathode;  //cathode output

//variables to hold the current cathode values for each of the anodes
reg [7:0] seg1;
reg [7:0] seg2;
reg [7:0] seg3;
reg [7:0] seg4;
reg [7:0] seg5;
reg [7:0] seg6;
reg [7:0] seg7;
reg [7:0] seg8;

//variables to hold the expected cathode values for each of the anodes
reg [7:0] chk1;
reg [7:0] chk2;
reg [7:0] chk3;
reg [7:0] chk4;
reg [7:0] chk5;
reg [7:0] chk6;
reg [7:0] chk7;
reg [7:0] chk8;

    
     
                    
    
    



//instantiation of the ssd_controller 
ssd_controller ssdc (clk,rst,R,G,B,anode,cathode);



//variable instantiations
initial begin
    clk = 0;    
    rst = 0;
    error = 0;
    R = 0;
    B = 0;
    G = 0;
    seg1 = 0;
    seg2 = 0;
    seg3 = 0;
    seg4 = 0;
    seg5 = 0;
    seg6 = 0;
    seg7 = 0;
    seg8 = 0;
    chk1 = 0;
    chk2 = 0;
    chk3 = 0;
    chk4 = 0;
    chk5 = 0;
    chk6 = 0;
    chk7 = 0;
    chk8 = 0;
 end
             
             
             
 // a block that will change the current cathode signals being checked each time Anode Changes. It also changes
 //the gauge variables being used to check those cathode signals                             
 always @(anode) begin
        case (anode) 
            8'b11011111:
                seg3 = cathode;
            8'b11101111:
                seg4 = cathode;
            8'b11110111:     
                seg5 = cathode;              
            8'b11111011:
                seg6 = cathode;
            8'b11111101:
                seg7 = cathode;
            8'b11111110:
                seg8 = cathode;
            default: begin
                seg2 = 8'b11111111;
                seg1 = 8'b11111111;
                end
            endcase
            
         case (anode) 
            8'b11011111:     begin case (B[3:0])
                      4'h0: chk3 = 8'b11000000;
                      4'h1: chk3 = 8'b11111001;
                      4'h2: chk3 = 8'b10100100;
                      4'h3: chk3 = 8'b10110000;
                      4'h4: chk3 = 8'b10011001;
                      4'h5: chk3 = 8'b10010010;
                      4'h6: chk3 = 8'b10000010;
                      4'h7: chk3 = 8'b11111000;
                      4'h8: chk3 = 8'b10000000;
                      4'h9: chk3 = 8'b10010000;
                      4'hA: chk3 = 8'b10001000;
                      4'hB: chk3 = 8'b10000011;
                      4'hC: chk3 = 8'b11000110;
                      4'hD: chk3 = 8'b10100001;
                      4'hE: chk3 = 8'b10000110;
                      4'hF: chk3 = 8'b10001110;
                      default: chk3 = 8'b10000000;
                      endcase
                      end
   8'b11101111:     begin case (B[7:4])
                      4'h0: chk4 = 8'b11000000;
                      4'h1: chk4 = 8'b11111001;
                      4'h2: chk4 = 8'b10100100;
                      4'h3: chk4 = 8'b10110000;
                      4'h4: chk4 = 8'b10011001;
                      4'h5: chk4 = 8'b10010010;
                      4'h6: chk4 = 8'b10000010;
                      4'h7: chk4 = 8'b11111000;
                      4'h8: chk4 = 8'b10000000;
                      4'h9: chk4 = 8'b10010000;
                      4'hA: chk4 = 8'b10001000;
                      4'hB: chk4 = 8'b10000011;
                      4'hC: chk4 = 8'b11000110;
                      4'hD: chk4 = 8'b10100001;
                      4'hE: chk4 = 8'b10000110;
                      4'hF: chk4 = 8'b10001110;
                      default: chk4 = 8'b10000000;
                      endcase
                      end
8'b11110111:      begin case (G[3:0])
                      4'h0: chk5 = 8'b11000000;
                      4'h1: chk5 = 8'b11111001;
                      4'h2: chk5 = 8'b10100100;
                      4'h3: chk5 = 8'b10110000;
                      4'h4: chk5 = 8'b10011001;
                      4'h5: chk5 = 8'b10010010;
                      4'h6: chk5 = 8'b10000010;
                      4'h7: chk5 = 8'b11111000;
                      4'h8: chk5 = 8'b10000000;
                      4'h9: chk5 = 8'b10010000;
                      4'hA: chk5 = 8'b10001000;
                      4'hB: chk5 = 8'b10000011;
                      4'hC: chk5 = 8'b11000110;
                      4'hD: chk5 = 8'b10100001;
                      4'hE: chk5 = 8'b10000110;
                      4'hF: chk5 = 8'b10001110;
                      default: chk5 = 8'b10000000;
                      endcase
                      end                   
8'b11111011:     begin case (G[7:4])
                      4'h0: chk6 = 8'b11000000;
                      4'h1: chk6 = 8'b11111001;
                      4'h2: chk6 = 8'b10100100;
                      4'h3: chk6 = 8'b10110000;
                      4'h4: chk6 = 8'b10011001;
                      4'h5: chk6 = 8'b10010010;
                      4'h6: chk6 = 8'b10000010;
                      4'h7: chk6 = 8'b11111000;
                      4'h8: chk6 = 8'b10000000;
                      4'h9: chk6 = 8'b10010000;
                      4'hA: chk6 = 8'b10001000;
                      4'hB: chk6 = 8'b10000011;
                      4'hC: chk6 = 8'b11000110;
                      4'hD: chk6 = 8'b10100001;
                      4'hE: chk6 = 8'b10000110;
                      4'hF: chk6 = 8'b10001110;
                      default: chk6 = 8'b10000000;
                      endcase
                      end
8'b11111101:      begin case (R[3:0])
                      4'h0: chk7 = 8'b11000000;
                      4'h1: chk7 = 8'b11111001;
                      4'h2: chk7 = 8'b10100100;
                      4'h3: chk7 = 8'b10110000;
                      4'h4: chk7 = 8'b10011001;
                      4'h5: chk7 = 8'b10010010;
                      4'h6: chk7 = 8'b10000010;
                      4'h7: chk7 = 8'b11111000;
                      4'h8: chk7 = 8'b10000000;
                      4'h9: chk7 = 8'b10010000;
                      4'hA: chk7 = 8'b10001000;
                      4'hB: chk7 = 8'b10000011;
                      4'hC: chk7 = 8'b11000110;
                      4'hD: chk7 = 8'b10100001;
                      4'hE: chk7 = 8'b10000110;
                      4'hF: chk7 = 8'b10001110;
                      default: chk7 = 8'b10000000;
                      endcase
                      end
8'b11111110:      begin case (R[7:4])
                      4'h0: chk8 = 8'b11000000;
                      4'h1: chk8 = 8'b11111001;
                      4'h2: chk8 = 8'b10100100;
                      4'h3: chk8 = 8'b10110000;
                      4'h4: chk8 = 8'b10011001;
                      4'h5: chk8 = 8'b10010010;
                      4'h6: chk8 = 8'b10000010;
                      4'h7: chk8 = 8'b11111000;
                      4'h8: chk8 = 8'b10000000;
                      4'h9: chk8 = 8'b10010000;
                      4'hA: chk8 = 8'b10001000;
                      4'hB: chk8 = 8'b10000011;
                      4'hC: chk8 = 8'b11000110;
                      4'hD: chk8 = 8'b10100001;
                      4'hE: chk8 = 8'b10000110;
                      4'hF: chk8 = 8'b10001110;
                      default: chk8 = 8'b10000000;
                      endcase
                      end
default: begin  
chk1 = 8'b11111111;
chk2 = 8'b11111111;
end
endcase
end






// block that will check through all possible switch inputs from each of the switches
// ON THEIR OWN
initial begin
    R = 0;
    G = 0;
    B = 0;
    error = 0;
    seg1 = 0;
    seg2 = 0;
    seg3 = 0;
    seg4 = 0;
    seg5 = 0;
    seg6 = 0;
    seg7 = 0;
    seg8 = 0;
    chk1 = 0;
    chk2 = 0;
    chk3 = 0;
    chk4 = 0;
    chk5 = 0;
    chk6 = 0;
    chk7 = 0;
    chk8 = 0;
    
for(i = 0; i < 32; i = i + 1) begin
    R = i;
    G = 0;
    B = 0;
    for( j=0;j<45; j = j +1)begin 
    @(posedge clk); 
    end
     if(!(seg1 == chk1 & seg2 == chk2 & seg3 == chk3 & seg4 == chk4 & seg5 == chk5 & seg6 == chk6 && seg7 == chk7 && seg8 == chk8)) begin
        error = error + 1;
        $display("Error in Red at test %d",i);
        end
end

for(i = 0; i < 64; i = i + 1) begin
    R = 0;
    G = i;
    B = 0;
    for( j=0;j<45; j = j +1)begin 
    @(posedge clk); 
    end
     if(!(seg1 == chk1 & seg2 == chk2 & seg3 == chk3 & seg4 == chk4 & seg5 == chk5 & seg6 == chk6 && seg7 == chk7 && seg8 == chk8)) begin
        error = error + 1;
        $display("Error in Green at test %d",i);
        end
end

for(i = 0; i < 32; i = i + 1) begin
    R = 0;
    G = 0;
    B = i;
    for( j=0;j<45; j = j +1)begin 
    @(posedge clk); 
    end
     if(!(seg1 == chk1 & seg2 == chk2 & seg3 == chk3 & seg4 == chk4 & seg5 == chk5 & seg6 == chk6 && seg7 == chk7 && seg8 == chk8)) begin
        error = error + 1;
        $display("Error in Blue at test %d",i);
        end
end
$display("Errors found: %d", error);
end

always begin
    #1 clk = 1;
    #1 clk = 0;
end



endmodule
