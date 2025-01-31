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
    wire [9:0] NumberChecked_tb ;
    wire [7:0] NumberofPrimesFound_tb;
    
    reg Result;
    
    integer i;
    integer Primes [167:0];
    integer TotalClocks=0;   
    
    PrimeFinder PF(NumMax_tb,Reset_tb,SysClk_tb,Prime_tb,NumberChecked_tb,NumberofPrimesFound_tb);
    
    initial begin   
         Reset_tb = 0;
         Primes[0]= 2;
         Primes[1]= 3;
         Primes[2]= 5;
         Primes[3]= 7;
         Primes[4]= 11;
         Primes[5]= 13;
         Primes[6]= 17;
         Primes[7]= 19;
         Primes[8]= 23;
         Primes[9]= 29;
         Primes[10]= 31;
         Primes[11]= 37;
         Primes[12]= 41;
         Primes[13]= 43;
         Primes[14]= 47;
         Primes[15]= 53;
         Primes[16]= 59;
         Primes[17]= 61;
         Primes[18]= 67;
         Primes[19]= 71;
         Primes[20]= 73;
         Primes[21]= 79;
         Primes[22]= 83;
         Primes[23]= 89;
         Primes[24]= 97;
         Primes[25]= 101;
         Primes[26]= 103;
         Primes[27]= 107;
         Primes[28]= 109;
         Primes[29]= 113;
         Primes[30]= 127;
         Primes[31]= 131;
         Primes[32]= 137;
         Primes[33]= 139;
         Primes[34]= 149;
         Primes[35]= 151;
         Primes[36]= 157;
         Primes[37]= 163;
         Primes[38]= 167;
         Primes[39]= 173;
         Primes[40]= 179;
         Primes[41]= 181;
         Primes[42]= 191;
         Primes[43]= 193;
         Primes[44]= 197;
         Primes[45]= 199;
         Primes[46]= 211;
         Primes[47]= 223;
         Primes[48]= 227;
         Primes[49]= 229;
         Primes[50]= 233;
         Primes[51]= 239;
         Primes[52]= 241;
         Primes[53]= 251;
         Primes[54]= 257;
         Primes[55]= 263;
         Primes[56]= 269;
         Primes[57]= 271;
         Primes[58]= 277;
         Primes[59]= 281;
         Primes[60]= 283;
         Primes[61]= 293;
         Primes[62]= 307;
         Primes[63]= 311;
         Primes[64]= 313;
         Primes[65]= 317;
         Primes[66]= 331;
         Primes[67]= 337;
         Primes[68]= 347;
         Primes[69]= 349;
         Primes[70]= 353;
         Primes[71]= 359;
         Primes[72]= 367;
         Primes[73]= 373;
         Primes[74]= 379;
         Primes[75]= 383;
         Primes[76]= 389;
         Primes[77]= 397;
         Primes[78]= 401;
         Primes[79]= 409;
         Primes[80]= 419;
         Primes[81]= 421;
         Primes[82]= 431;
         Primes[83]= 433;
         Primes[84]= 439;
         Primes[85]= 443;
         Primes[86]= 449;
         Primes[87]= 457;
         Primes[88]= 461;
         Primes[89]= 463;
         Primes[90]= 467;
         Primes[91]= 479;
         Primes[92]= 487;
         Primes[93]= 491;
         Primes[94]= 499;
         Primes[95]= 503;
         Primes[96]= 509;
         Primes[97]= 521;
         Primes[98]= 523;
         Primes[99]= 541;
         Primes[100]= 547;
         Primes[101]= 557;
         Primes[102]= 563;
         Primes[103]= 569;
         Primes[104]= 571;
         Primes[105]= 577;
         Primes[106]= 587;
         Primes[107]= 593;
         Primes[108]= 599;
         Primes[109]= 601;
         Primes[110]= 607;
         Primes[111]= 613;
         Primes[112]= 617;
         Primes[113]= 619;
         Primes[114]= 631;
         Primes[115]= 641;
         Primes[116]= 643;
         Primes[117]= 647;
         Primes[118]= 653;
         Primes[119]= 659;
         Primes[120]= 661;
         Primes[121]= 673;
         Primes[122]= 677;
         Primes[123]= 683;
         Primes[124]= 691;
         Primes[125]= 701;
         Primes[126]= 709;
         Primes[127]= 719;
         Primes[128]= 727;
         Primes[129]= 733;
         Primes[130]= 739;
         Primes[131]= 743;
         Primes[132]= 751;
         Primes[133]= 757;
         Primes[134]= 761;
         Primes[135]= 769;
         Primes[136]= 773;
         Primes[137]= 787;
         Primes[138]= 797;
         Primes[139]= 809;
         Primes[140]= 811;
         Primes[141]= 821;
         Primes[142]= 823;
         Primes[143]= 827;
         Primes[144]= 829;
         Primes[145]= 839;
         Primes[146]= 853;
         Primes[147]= 857;
         Primes[148]= 859;
         Primes[149]= 863;
         Primes[150]= 877;
         Primes[151]= 881;
         Primes[152]= 883;
         Primes[153]= 887;
         Primes[154]= 907;
         Primes[155]= 911;
         Primes[156]= 919;
         Primes[157]= 929;
         Primes[158]= 937;
         Primes[159]= 941;
         Primes[160]= 947;
         Primes[161]= 953;
         Primes[162]= 967;
         Primes[163]= 971;
         Primes[164]= 977;
         Primes[165]= 983;
         Primes[166]= 991;
         Primes[167]= 997;
         
        //specific num max
        /*    
        NumMax_tb=499;
        for(i = 0; i < NumMax_tb + 1; i=i+1) begin
            @(posedge SysClk_tb);
            if(Prime_tb===1) begin
            if(NumberChecked_tb !== Primes[(NumberofPrimesFound_tb - 1)]) 
                $display("Error on %d", NumberChecked_tb);
            end         
            
        end
        */
        //full 
        for(NumMax_tb=0; NumMax_tb < 1001;NumMax_tb=NumMax_tb+1)begin       
             Reset_tb=1;
             @(posedge SysClk_tb);
             
             Reset_tb=0;
             for(i = 0; i < NumMax_tb + 1; i=i+1) begin
                
                @(posedge SysClk_tb);
                if(Prime_tb===1) begin
                if(NumberChecked_tb !== Primes[(NumberofPrimesFound_tb - 1)]) 
                $display("Error on %d", NumberChecked_tb);
                end 
                
             end
         end
         $display("Clocks To Compile %d", TotalClocks); 
   end
       
      
    
    always begin
        SysClk_tb =0;
        #2;
        SysClk_tb =1;
        #2;
        TotalClocks=TotalClocks+1;
    end
        
    
endmodule
