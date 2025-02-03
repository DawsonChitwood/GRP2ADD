`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 06:04:49 PM
// Design Name: 
// Module Name: PWM
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


module PWM (input [15:0] Period, input [7:0] Duty,input BurstMode,input BurstType, input SysClk,
            input Reset, 
            output pwm
    );
    
    reg [15:0] counter = 0;
    reg [15:0] subcounter = 0;
    reg [15:0] substop = 0;
    reg [15:0] subperiod = 0;
    reg [15:0] stop = 0;
    reg out = 0;
    
    assign pwm = out; 
    
   
    initial begin
         stop = Period*Duty/100;
    end
    
    initial begin
    if (BurstMode) begin
        subcounter <= 0;
        if (BurstType) begin
            subperiod <= stop/16;   
        end else
             subperiod = stop/8;
        substop = subperiod/2;
    end
    end


  
   
    always @ (posedge SysClk) begin
    
        if (Reset) begin
            counter <= 0;
            out <= 0;
        end
     if(~BurstMode) begin   
        if (counter < stop) begin
            counter <= counter + 1;
            out <= 1;
        end else if (counter < Period) begin
            counter <= counter + 1;
            out <= 0;
        end else 
            counter <= 1;
    end else 
         if (counter < Period) begin
                if (counter < stop) begin
                    if (subcounter < subperiod) begin
                        if (subcounter < substop) begin
                            counter <= counter + 1;
                            subcounter <= subcounter + 1;
                            out <= 1;
                        end else begin          
                            counter <= counter + 1;
                            subcounter <= subcounter + 1;
                            out <= 0;
                        end                       //end (subcounter < substop)
                     end else begin
                            subcounter <= 0;
                            counter <= counter + 1;
                            out <= 0;
                     end                         //end (subcounter < subperiod)
                 end else begin
                        subcounter <= 0;
                        counter <= counter + 1;
                        out <= 0;
                 end                          // end (counter < stop)
            end else begin
                subcounter <= 0;
                counter <= 0;
                out <= 0;
            end                             // end (counter < Period)
                                 
        
        
            
    end
           

endmodule
