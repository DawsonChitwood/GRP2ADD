`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 02:30:07 AM
// Design Name: 
// Module Name: PrimeFinder_tb
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


module PrimeFinder_tb();
    reg [9:0] NumMax_tb;
    reg Reset_tb,SysClk_tb;
    wire Prime_tb;
    wire [9:0] NumberChecked_tb = 0;
    wire [7:0] NumberofPrimesFound_tb = 0;
    
    reg Result;
    reg i;
    
    PrimeFinder PF(NumMax_tb,Reset_tb,SysClk_tb,Prime_tb,NumberChecked_tb,NumberofPrimesFound_tb);
    
    initial begin   
        Reset_tb = 0;
        NumMax_tb = 15;
        
       end
       
        for(int i = 0; i <= NumMax_tb; i++) begin
            NumberChecked_tb <= 0;
            if(check(NumberChecked_tb)!== Prime_tb) 
                $display("Error on %d", NumberChecked);
            
           
       
       function check (input [7:0] Number);
            case(Number)
            2: Result = 1;
            3: Result = 1;
            5: Result = 1;
            7: Result = 1;
            11: Result = 1;
            13: Result = 1;
            17: Result = 1;
            19: Result = 1;
            23: Result = 1;
            29: Result = 1;
            31: Result = 1;
            37: Result = 1;
            41: Result = 1;
            43: Result = 1;
            47: Result = 1;
            53: Result = 1;
            59: Result = 1;
            67: Result = 1;
            71: Result = 1;
            73: Result = 1;
            101: Result = 1;
            103: Result = 1;
            107: Result = 1;
            109: Result = 1;
            113: Result = 1;
            127: Result = 1;
            131: Result = 1;
            137: Result = 1;
            139: Result = 1;
            149: Result = 1;
            151: Result = 1;
            157: Result = 1;
            163: Result = 1;
            167: Result = 1;
            173: Result = 1;
            179: Result = 1;
            181: Result = 1;
            191: Result = 1;
            193: Result = 1;
            197: Result = 1;
            199: Result = 1;
            211: Result = 1;
            223: Result = 1;
            227: Result = 1;
            229: Result = 1;
            233: Result = 1;
            239: Result = 1;
            241: Result = 1;
            251: Result = 1;
            257: Result = 1;
            263: Result = 1;
            269: Result = 1;
            271: Result = 1;
            277: Result = 1;
            281: Result = 1;
            283: Result = 1;
            293: Result = 1;
            307: Result = 1;
            311: Result = 1;
            313: Result = 1;
            317: Result = 1;
            331: Result = 1;
            337: Result = 1;
            347: Result = 1;
            349: Result = 1;
            353: Result = 1;
            359: Result = 1;
            367: Result = 1;
            373: Result = 1;
            379: Result = 1;
            383: Result = 1;
            389: Result = 1;
            397: Result = 1;
            401: Result = 1;
            409: Result = 1;
            419: Result = 1;
            421: Result = 1;
            431: Result = 1;
            433: Result = 1;
            439: Result = 1;
            443: Result = 1;
            449: Result = 1;
            457: Result = 1;
            461: Result = 1;
            463: Result = 1;
            467: Result = 1;
            479: Result = 1;
            487: Result = 1;
            491: Result = 1;
            499: Result = 1;
            503: Result = 1;
            509: Result = 1;
            521: Result = 1;
            523: Result = 1;
            541: Result = 1;
            547: Result = 1;
            557: Result = 1;
            563: Result = 1;
            569: Result = 1;
            571: Result = 1;
            577: Result = 1;
            587: Result = 1;
            593: Result = 1;
            599: Result = 1;
            601: Result = 1;
            607: Result = 1;
            613: Result = 1;
            617: Result = 1;
            619: Result = 1;
            631: Result = 1;
            641: Result = 1;
            643: Result = 1;
            647: Result = 1;
            653: Result = 1;
            659: Result = 1;
            661: Result = 1;
            673: Result = 1;
            677: Result = 1;
            683: Result = 1;
            691: Result = 1;
            701: Result = 1;
            709: Result = 1;
            719: Result = 1;
            727: Result = 1;
            733: Result = 1;
            739: Result = 1;
            743: Result = 1;
            751: Result = 1;
            757: Result = 1;
            761: Result = 1;
            769: Result = 1;
            773: Result = 1;
            787: Result = 1;
            797: Result = 1;
            809: Result = 1;
            811: Result = 1;
            821: Result = 1;
            823: Result = 1;
            827: Result = 1;
            829: Result = 1;
            839: Result = 1;
            853: Result = 1;
            857: Result = 1;
            859: Result = 1;
            863: Result = 1;
            877: Result = 1;
            881: Result = 1;
            883: Result = 1;
            887: Result = 1;
            907: Result = 1;
            911: Result = 1;
            919: Result = 1;
            929: Result = 1;
            937: Result = 1;
            941: Result = 1;
            947: Result = 1;
            953: Result = 1;
            967: Result = 1;
            971: Result = 1;
            977: Result = 1;
            983: Result = 1;
            991: Result = 1;
            997: Result = 1;
            default Result = 0;
           endcase
      endfunction
       
    
    always begin
        SysClk_tb =0;
        #10;
        SysClk_tb =1;
        #10;
    end
        
    
endmodule
