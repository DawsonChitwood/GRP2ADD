`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 12:10:28 PM
// Design Name: 
// Module Name: frame_counter
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


module frame_counter(input Clk, input Rst, output [6:0] hc, output [6:0] vc , output fs);

reg [6:0] HC = 0;
reg [6:0] HCN = 1;
reg [6:0] VCN = 1;
reg [6:0] VC = 0;
reg [6:0]hcountor = 0;
reg [6:0]vcountor = 0;
reg FS = 0;

always @(posedge Clk) begin
    if (Rst) begin
        HC = 0;
        VC = 0;
    end
    else begin        
        HC = HCN;
        VC = VCN;
    end       
end

// This controls the HC count. It ensures that HC will only increment when 8 clocks have been processed. 
// It also ensures that vcountor will increase by one whenever the hcounter rolls over.
// 
always @(posedge Clk) begin
    hcountor <= hcountor + 1;
    if (hcountor > 80) begin 
        HCN <= 0;
        hcountor <= 0;
        vcountor <= vcountor + 1;
    end
    else if (hcountor % 8 == 0 ) begin
        HCN <= HC + 1;
    end
    
     if (vcountor > 60) begin
        VCN <= 0;
        vcountor <= 0;
    end
    else if ((vcountor % 8 == 0) && hcountor == 0) VCN <= VC + 1;
end


// Controls Frame Selector
always @(posedge Clk) begin
    if (vcountor == 0 && hcountor == 0) begin
        FS = !FS;
    end
end
        

assign hc = HC;
assign vc = VC;
assign fs = FS;

   
endmodule
