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
input [9:0] NumMax = 0;
input Reset,SysClk;
parameter [1:0] IDLE = 0,
    CHECKING =  1,
    DONE = 2;
reg [1:0] Sreg = IDLE,Snext = IDLE;
reg [9:0] NumberNext = 0;
output reg Prime;
output reg [9:0] NumberChecked = 0;
output reg [7:0] NumberofPrimesFound = 0;

   always @( posedge SysClk) begin    
    case(Sreg)
    IDLE: begin
        Snext <= CHECKING;
        NumberofPrimesFound <= 0;
        NumberChecked <= 0;
        NumberNext <= 0;
        Prime <= 0;
    end
    CHECKING: begin
        case(NumberChecked)
            2: Prime <= 1;
            3: Prime <= 1;
            5: Prime <= 1;
            7: Prime <= 1;
            11: Prime <= 1;
            13: Prime <= 1;
            17: Prime <= 1;
            19: Prime <= 1;
            23: Prime <= 1;
            29: Prime <= 1;
            31: Prime <= 1;
            37: Prime <= 1;
            41: Prime <= 1;
            43: Prime <= 1;
            47: Prime <= 1;
            53: Prime <= 1;
            59: Prime <= 1;
            67: Prime <= 1;
            71: Prime <= 1;
            73: Prime <= 1;
            101: Prime <= 1;
            103: Prime <= 1;
            107: Prime <= 1;
            109: Prime <= 1;
            113: Prime <= 1;
            127: Prime <= 1;
            131: Prime <= 1;
            137: Prime <= 1;
            139: Prime <= 1;
            149: Prime <= 1;
            151: Prime <= 1;
            157: Prime <= 1;
            163: Prime <= 1;
            167: Prime <= 1;
            173: Prime <= 1;
            179: Prime <= 1;
            181: Prime <= 1;
            191: Prime <= 1;
            193: Prime <= 1;
            197: Prime <= 1;
            199: Prime <= 1;
            211: Prime <= 1;
            223: Prime <= 1;
            227: Prime <= 1;
            229: Prime <= 1;
            233: Prime <= 1;
            239: Prime <= 1;
            241: Prime <= 1;
            251: Prime <= 1;
            257: Prime <= 1;
            263: Prime <= 1;
            269: Prime <= 1;
            271: Prime <= 1;
            277: Prime <= 1;
            281: Prime <= 1;
            283: Prime <= 1;
            293: Prime <= 1;
            307: Prime <= 1;
            311: Prime <= 1;
            313: Prime <= 1;
            317: Prime <= 1;
            331: Prime <= 1;
            337: Prime <= 1;
            347: Prime <= 1;
            349: Prime <= 1;
            353: Prime <= 1;
            359: Prime <= 1;
            367: Prime <= 1;
            373: Prime <= 1;
            379: Prime <= 1;
            383: Prime <= 1;
            389: Prime <= 1;
            397: Prime <= 1;
            401: Prime <= 1;
            409: Prime <= 1;
            419: Prime <= 1;
            421: Prime <= 1;
            431: Prime <= 1;
            433: Prime <= 1;
            439: Prime <= 1;
            443: Prime <= 1;
            449: Prime <= 1;
            457: Prime <= 1;
            461: Prime <= 1;
            463: Prime <= 1;
            467: Prime <= 1;
            479: Prime <= 1;
            487: Prime <= 1;
            491: Prime <= 1;
            499: Prime <= 1;
            503: Prime <= 1;
            509: Prime <= 1;
            521: Prime <= 1;
            523: Prime <= 1;
            541: Prime <= 1;
            547: Prime <= 1;
            557: Prime <= 1;
            563: Prime <= 1;
            569: Prime <= 1;
            571: Prime <= 1;
            577: Prime <= 1;
            587: Prime <= 1;
            593: Prime <= 1;
            599: Prime <= 1;
            601: Prime <= 1;
            607: Prime <= 1;
            613: Prime <= 1;
            617: Prime <= 1;
            619: Prime <= 1;
            631: Prime <= 1;
            641: Prime <= 1;
            643: Prime <= 1;
            647: Prime <= 1;
            653: Prime <= 1;
            659: Prime <= 1;
            661: Prime <= 1;
            673: Prime <= 1;
            677: Prime <= 1;
            683: Prime <= 1;
            691: Prime <= 1;
            701: Prime <= 1;
            709: Prime <= 1;
            719: Prime <= 1;
            727: Prime <= 1;
            733: Prime <= 1;
            739: Prime <= 1;
            743: Prime <= 1;
            751: Prime <= 1;
            757: Prime <= 1;
            761: Prime <= 1;
            769: Prime <= 1;
            773: Prime <= 1;
            787: Prime <= 1;
            797: Prime <= 1;
            809: Prime <= 1;
            811: Prime <= 1;
            821: Prime <= 1;
            823: Prime <= 1;
            827: Prime <= 1;
            829: Prime <= 1;
            839: Prime <= 1;
            853: Prime <= 1;
            857: Prime <= 1;
            859: Prime <= 1;
            863: Prime <= 1;
            877: Prime <= 1;
            881: Prime <= 1;
            883: Prime <= 1;
            887: Prime <= 1;
            907: Prime <= 1;
            911: Prime <= 1;
            919: Prime <= 1;
            929: Prime <= 1;
            937: Prime <= 1;
            941: Prime <= 1;
            947: Prime <= 1;
            953: Prime <= 1;
            967: Prime <= 1;
            971: Prime <= 1;
            977: Prime <= 1;
            983: Prime <= 1;
            991: Prime <= 1;
            997: Prime <= 1;
            default Prime <= 0;
           endcase
         
        if(Prime) 
            NumberofPrimesFound <= NumberofPrimesFound + 1;
        else
            NumberofPrimesFound <= NumberofPrimesFound;   
        if (NumberChecked + 1 <= NumMax) begin
        if(NumberChecked === 0|| NumberChecked === 1|| NumberChecked === 2)
              NumberNext <= NumberChecked + 1;
           else
                NumberNext <= NumberChecked + 2; 
        end             
        if(NumMax === NumberNext)
            Snext <= DONE;
        else
            Snext <= CHECKING;
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
           NumberChecked <= NumberNext;
           Sreg <= Snext; 
           end 
   end
endmodule

