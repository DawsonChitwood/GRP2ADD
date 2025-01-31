`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 03:32:08 PM
// Design Name: 
// Module Name: PrimeFinder
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


module PrimeFinder(NumMax,Reset,SysClk,Prime,NumberChecked,NumberofPrimesFound);
input [9:0] NumMax;
input Reset,SysClk;
reg [1:0] Sreg = 0,Snext = 0;
parameter [1:0] IDLE = 0,
    CHECKING =  1,
    DONE = 2;
reg [9:0] NumberNext=0;
output reg Prime;
output reg [9:0] NumberChecked=0;
output reg [7:0] NumberofPrimesFound=0;

   always @(NumberChecked, Sreg, Reset) begin    
    case(Sreg)
    IDLE: begin
        Snext <= CHECKING;
        NumberofPrimesFound <= 0;
        NumberChecked <= 0;
        NumberNext <= 0;
        Prime <= 0;
    end
    CHECKING: begin
        if(NumberChecked === 0|| NumberChecked === 1|| NumberChecked === 2)
              NumberNext <= NumberChecked + 1;
        else
                NumberNext <= NumberChecked + 2;              
        if(NumMax <= NumberNext)
            Snext <= DONE;
        else
            Snext <= CHECKING;
        case(NumberChecked)
            2: begin 
                  Prime <= 1; 
                  NumberofPrimesFound <= NumberofPrimesFound+1;
                end
               
            3: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            5: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            7: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            11: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            13: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            17: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            19: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            23: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            29: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            31: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            37: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            41: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            43: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            47: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            53: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            59: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            61: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            67: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            71: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            73: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            79: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end   
         83: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
    89: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
97: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end

            101: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            103: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            107: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            109: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            113: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            127: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            131: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            137: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            139: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            149: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            151: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            157: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            163: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            167: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            173: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            179: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            181: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            191: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            193: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            197: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            199: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            211: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            223: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            227: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            229: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            233: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            239: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            241: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            251: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            257: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            263: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            269: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            271: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            277: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            281: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            283: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            293: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            307: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            311: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            313: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            317: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            331: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            337: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            347: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            349: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            353: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            359: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            367: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            373: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            379: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            383: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            389: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            397: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            401: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            409: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            419: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            421: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            431: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            433: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            439: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            443: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            449: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            457: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            461: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            463: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            467: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            479: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            487: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            491: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            499: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            503: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            509: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            521: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            523: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            541: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            547: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            557: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            563: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            569: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            571: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            577: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            587: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            593: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            599: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            601: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            607: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            613: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            617: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            619: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            631: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            641: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            643: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            647: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            653: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            659: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            661: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            673: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            677: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            683: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            691: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            701: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            709: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            719: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            727: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            733: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            739: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            743: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            751: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            757: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            761: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            769: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            773: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            787: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            797: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            809: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            811: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            821: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            823: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            827: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            829: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            839: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            853: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            857: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            859: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            863: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            877: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            881: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            883: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            887: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            907: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            911: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            919: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            929: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            937: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            941: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            947: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            953: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            967: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            971: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            977: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            983: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            991: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            997: begin
Prime <= 1;
NumberofPrimesFound
<= NumberofPrimesFound+1;
end
            default Prime <= 0;
           endcase
         
         
        

    end
    DONE:
        Snext <= DONE;
    default:
        Snext <= IDLE;
    endcase
    
    
        
   end
   
   always @(posedge SysClk) begin
        if(Reset)
            Sreg <= 0;
        else begin
           if(Snext===CHECKING)
           NumberChecked = NumberNext;
           Sreg = Snext; 
           end 
   end
endmodule

