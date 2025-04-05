`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 03:17:07 PM
// Design Name: 
// Module Name: HVsyncer
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


module HVsyncer(input Clk, input BANANAS, output  hsync, output vsync, output [6:0] HC, output [6:0]  VC,output reg pleaseWork);

reg [6:0] HC_reg = 0;     //The register holding the HC Value
reg [6:0] VC_reg = 0;     //The register holding the VC Value
reg [9:0] HCount = 0;     //The count for the hsync
reg [9:0] VCount = 0;     //The count for the vsync
reg [3:0] hcCounter = 0;  //The counter to ensure HC only increments every 8 cycles
reg [3:0] vcCounter = 0;  //The counter to ensure VC only increments every 8 cycles
reg hsync_reg = 1;  
reg vsync_reg = 1;
reg [2:0] Hstate = 0;
reg [2:0] Hnext_state = 5;
reg [2:0] Vstate = 1;
reg [2:0] Vnext_state = 3;
reg HCstate = 0;
reg HCnext_state = 0;
reg VCstate = 0;
reg VCnext_state = 0;



parameter HFP = 8;    //8;
parameter HBP = 19;    //24;
parameter HDT = 320;    //320;
parameter HRT = 48;   //48;
parameter HTOT = 400;  //400;
parameter VFP = 10;   //10;
parameter VBP = 22;   //33;
parameter VDT = 491;   //480;
parameter VRT = 1;   //2;
parameter VTOT = 525;  //525;

parameter HStart = 0;
parameter VStart = 1;
parameter Von = 2;
parameter Voff = 3;
parameter Hon = 4;
parameter Hoff = 5; 

parameter CounterIncrement = 1;
parameter CounterReset = 0;


// State Memory
always @(posedge Clk) begin
    if (BANANAS) begin
        Hstate = HStart;
        Vstate = VStart;
        HCstate = CounterReset;
        VCstate = CounterReset;
    end
    else begin
        Hstate = Hnext_state;
        Vstate = Vnext_state;
        HCstate = HCnext_state;
        VCstate = VCnext_state;
    end
    
    if(vcCounter >= 8) vcCounter = 0;
    else vcCounter = vcCounter;
     
    // HCount increases so long as Hcount has not reached the HCount Max. In this case, HCount goes to zero and VCount increments
    
    if(HCount >= HTOT) begin
        HCount = 0;
        VCount = VCount + 1;
        if (VCount >= 2) vcCounter = vcCounter + 1;    //because we only want this to increase when vsync is high (should really only increase when in visable area i think[matt])
        else vcCounter =0;
    end
    else HCount = HCount + 1;
 
    // VCount goes to zero if it has reached its count max
    if(VCount >= VTOT) begin
        VCount = 0;
    end
    else begin
        VCount = VCount;
    end
end

// Next State Logic for Hsync
always @(posedge Clk) begin
    case(Hstate)
    HStart: begin
        Hnext_state <= Hoff;
    end
    Hoff: begin
        if(HCount >= HRT) Hnext_state = Hon;
        else Hnext_state <= Hoff;
    end
    Hon: begin
        if(HCount >= HRT) Hnext_state = Hon;
        else Hnext_state <= Hoff;
    end
    default: begin
        Hnext_state <= Hon;
    end
    endcase
    
end

//Next State Logic for Vsync
always @(posedge Clk) begin
    case(Vstate) 
    VStart: Vnext_state <= Von;
    Von: begin
        if(VCount >= VRT) Vnext_state = Von;
        else Vnext_state <= Voff;
    end
    Voff: begin
        if(VCount >= VRT) Vnext_state = Von;
        else Vnext_state <= Voff;
    end
    default: Vnext_state <= Voff;
    endcase
end

//Next State Logic for HC
always @(posedge Clk) begin
    case(HCstate) 
    CounterIncrement: begin
        if ((HCount > (HRT+HBP)) && (HCount < (HRT+HBP+HDT))) HCnext_state <= CounterIncrement;
        else HCnext_state <= CounterReset;
    end
    CounterReset: begin
        if ((HCount > (HRT+HBP)) && (HCount < (HRT+HBP+HDT))) HCnext_state <= CounterIncrement;
        else HCnext_state <= CounterReset;
    end
    default: HCnext_state <= CounterReset;
    endcase
end

//Next State Logic for VC
always @(posedge Clk) begin
    case(VCstate) 
    CounterIncrement: begin
        if ((VCount > (VRT+VBP)) && (VCount < (VRT+VBP+VDT))) VCnext_state <= CounterIncrement;
        else VCnext_state <= CounterReset;
    end
    CounterReset: begin
        if ((VCount > (VRT+VBP)) && (VCount < (VRT+VBP+VDT))) VCnext_state <= CounterIncrement;
        else VCnext_state <= CounterReset;
    end
    default: VCnext_state <= CounterReset;
    endcase
end


//Output Logic for Hsync
always @(posedge Clk) begin
    case(Hstate)
    HStart: begin
        hsync_reg = 1;
    end
    Hoff: begin
        hsync_reg = 0;
    end
    Hon: begin
        hsync_reg = 1;
    end
    default: begin
        hsync_reg = 1;
    end
    endcase
    
end

//Output Logic for Vsync
always @(posedge Clk) begin
    case(Vstate)
    VStart: begin
        vsync_reg = 1;
    end
    Voff: begin
        vsync_reg = 0;
    end
    Von: begin
        vsync_reg = 1;
    end
    default: begin
        vsync_reg = 1;
    end
    endcase
    
end

//Output Logic for HC
always @(posedge Clk) begin
    case(HCstate)
    CounterIncrement: begin
        pleaseWork=1;
        hcCounter = hcCounter + 1;
        if (hcCounter >= 4) begin
            hcCounter = 0;
            HC_reg = HC_reg + 1;
        end
    end
    CounterReset: begin
        pleaseWork=0;
        HC_reg = 0;
        hcCounter = 0;
    end
    default: begin
        pleaseWork=0;
        HC_reg = 0;
        hcCounter = 0;
    end
    endcase
    
end

//Output Logic for VC
always @(posedge Clk) begin
    case(VCstate)
    CounterIncrement: begin
        if (vcCounter >= 8) begin
           VC_reg = VC_reg + 1;
        end
    end
    CounterReset: begin
        VC_reg = 0;
    end
    default: begin
        VC_reg = 0;
    end
    endcase
    
end

assign hsync = hsync_reg;
assign vsync = vsync_reg;
//assign HCountOut = HCount;
assign HC = HC_reg;
assign VC = VC_reg;


endmodule
