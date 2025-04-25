`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2025 03:06:53 PM
// Design Name: 
// Module Name: User_Interface
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


module User_Interface(input Clk, input Rst,input [1:0] databack, input [5:0] keys,output reg run,output reg clear,output reg RandMode, output reg [5:0] Row, output reg [6:0] Col, output reg [1:0] data,output reg RW, output reg enable1, output reg mode, output reg step);

reg [3:0] currentstate = 0;
reg [3:0] nextstate = 0;
reg [5:0] rowcount = 0;
reg [6:0] colcount = 0;
reg mainpressed = 0;
reg started;
reg writedata;
reg [1:0] readdata;

reg [5:0] key;
assign key[0]=!keys[0];
assign key[1]=!keys[1];
assign key[2]=!keys[2];
assign key[3]=!keys[3];
assign key[4]=!keys[4];
assign key[5]=!keys[5];

reg pressed;
reg inter;
reg pressyOne;
reg superBanana;

parameter MAIN = 0;
parameter USER = 1;
parameter RANDOM = 2;
parameter UP = 3;
parameter DOWN = 4;
parameter LEFT = 5;
parameter RIGHT = 6;
parameter NONE = 7;
parameter USEREXIT = 8;
parameter WRITEWAIT = 9;
parameter WRITEOFF = 10;
parameter READADDRESS = 11;
parameter READWAIT = 12;
parameter READOFF = 13;

reg [3:0] state;
reg [1:0] datawrite;
reg [1:0] dataread;

reg [5:0] RowCount;
reg [6:0] ColCount;
reg [5:0] oldrow;
reg [6:0] oldcol;
reg modeprev;
reg returning;

parameter START = 0;
parameter WRITEPREVADDRESS = 1;
parameter WRITEPREVWAIT = 2;
parameter WRITEPREVSTOP = 3;
parameter READCURRADDRESS = 4;
parameter READCURRWAIT = 5;
parameter READCURRSTOP = 6;
parameter WRITECURRADDRESS = 7;
parameter WRITECURRWAIT = 8;
parameter WRITECURRSTOP = 9;


/**
//keypress logic. logs keyprev so that the current key can be compared with the previous keys for debouncing
always @(posedge Clk) begin
    keyprev3 = keyprev2;
    keyprev2 = keyprev1;
    keyprev1 = currentkey;
    if(!keys[0] && !(!keys[1]||!keys[2]||!keys[3]||!keys[4]||!keys[5])) currentkey = 0;
    else if(!keys[1] && !(!keys[0]||!keys[2]||!keys[3]||!keys[4]||!keys[5])) currentkey = 1;
    else if(!keys[2] && !(!keys[0]||!keys[1]||!keys[3]||!keys[4]||!keys[5])) currentkey = 2;
    else if(!keys[3] && !(!keys[0]||!keys[1]||!keys[2]||!keys[4]||!keys[5])) currentkey = 3;
    else if(!keys[4] && !(!keys[0]||!keys[1]||!keys[2]||!keys[3]||!keys[5])) currentkey = 4;
    else if(!keys[5] && !(!keys[0]||!keys[1]||!keys[2]||!keys[3]||!keys[4])) currentkey = 5;
    else currentkey = 7;
end


//state memory
always @(posedge Clk) begin
    if(Rst) begin
        currentstate <= MAIN;
    end
    else currentstate <= nextstate;
    
end

//nextstate logic
always @(posedge Clk) begin
    case(currentstate) 
        MAIN: begin
            if(currentkey == 1 && keyprev1 == 1 && keyprev2 == 1 && keyprev3 == 1) nextstate <= READADDRESS;
            else nextstate <= MAIN;
       end
       USER: begin
            if(currentkey == MAIN && !(keyprev1 == MAIN && keyprev2 == MAIN && keyprev3 == MAIN)) nextstate <= MAIN;
            else if(currentkey == UP && !(keyprev1 == UP && keyprev2 == UP && keyprev3 == UP)) nextstate <= UP;
            else if(currentkey == DOWN && !(keyprev1 == DOWN && keyprev2 == DOWN && keyprev3 == DOWN)) nextstate <= DOWN;
            else if(currentkey == LEFT && !(keyprev1 == LEFT && keyprev2 == LEFT && keyprev3 == LEFT)) nextstate <= LEFT;
            else if(currentkey == RIGHT && !(keyprev1 == RIGHT && keyprev2 == RIGHT && keyprev3 == RIGHT)) nextstate <= RIGHT;
            else if(currentkey == NONE && !(keyprev1 == NONE && keyprev2 == NONE && keyprev3 == NONE)) nextstate <= NONE;
            else if(currentkey == USEREXIT && !(keyprev1 == USEREXIT && keyprev2 == USEREXIT && keyprev3 == USEREXIT)) nextstate <= USEREXIT;
            else nextstate <= USER;
       end
       UP: nextstate <= WRITEWAIT;
       DOWN: nextstate <= WRITEWAIT;
       LEFT: nextstate <= WRITEWAIT;
       RIGHT: nextstate <= WRITEWAIT;
       NONE: nextstate <= WRITEWAIT;
       USEREXIT: nextstate <= WRITEWAIT;
       WRITEWAIT: nextstate <= WRITEOFF;
       WRITEOFF: begin
            if(mainpressed) nextstate <= MAIN;
            else nextstate <= READADDRESS;
       end
       READADDRESS: nextstate <= READWAIT;
       READWAIT: nextstate <= READOFF;
       READOFF: nextstate <= USER;
       default: nextstate <= MAIN;
       endcase
 end     
       
//output logic

always @(posedge Clk) begin
    case(currentstate) 
        MAIN: begin
            usermode <= 0;
            mainpressed <= 0;
            rowcount <= 0;
            colcount <= 0;
            RW <= 1;
            enable1 <= 0;
            clear <= (currentkey == 5) ? 1: 0;
            if(currentkey == 0 && keyprev1 != 0) start = 1;
            else start <= start;
            if(currentkey == 4 && keyprev1 != 4) start = 0;
            else start = start;
       end
       USER: begin
            usermode <= 1;
            if(currentkey == 2 && keyprev1 != 2) writedata = writedata + 1;
            else start = start;
       end
       UP: begin
            row <= rowcount;
            col <= colcount;
            data <= writedata;
            RW <= 0;
            enable1 <= 1;
            if(rowcount == 0) rowcount <= 59;
            else rowcount <= rowcount + 1;
       end
       DOWN: begin
            row <= rowcount;
            col <= colcount;
            data <= writedata;
            RW <= 0;
            enable1 <= 1;
            if(rowcount == 59) rowcount <= 0;
            else rowcount <= rowcount + 1;
       end
       LEFT: begin
            row <= rowcount;
            col <= colcount;
            data <= writedata;
            RW <= 0;
            enable1 <= 1;
            if(colcount == 0) rowcount <= 79;
            else colcount <= colcount + 1;
       end
       RIGHT: begin
            row <= rowcount;
            col <= colcount;
            data <= writedata;
            RW <= 0;
            enable1 <= 1;
            if(colcount == 79) colcount = 0;
            else colcount <= colcount + 1;
       end
       NONE: begin
            row <= rowcount;
            col <= colcount;
            data <= 2'b10 + writedata;
            RW <= 0;
            enable1 <= 1;
       end
       USEREXIT: begin
            mainpressed <= 1;
            row <= rowcount;
            col <= colcount;
            data <= writedata;
            RW <= 0;
            enable1 <= 1;
       end
       WRITEWAIT: RW <= RW;
       WRITEOFF: begin
            writedata <= 0;
            RW <= 1;
            enable1 <= 0;
       end
       READADDRESS: begin
           row <= rowcount;
           col <= colcount;
           enable1 <= 1;
       end 
       READWAIT: enable1 = enable1;
       READOFF: begin
            readdata <= databack;
            enable1 <= 0;
       end
       default: begin
            usermode <= 0;
            mainpressed <= 0;
            rowcount <= 0;
            colcount <= 0;
            RW <= 1;
            enable1 <= 0;
      end
    endcase
end
assign RandMode = (currentkey == 3) ? 1 : 0;           
**/


always @(posedge Clk) begin
    if(key == 0) begin
        pressed <= 0;
        pressyOne <= 0;
        RandMode <=0;
        clear <= 0;
        if(returning == 1) mode <=0;
    end
    else begin
        if(pressed == 0) begin 
            if(key[0] == 1) begin
                if(mode) begin
                ;
                end
                else run <=0;
            end
            else if(key[1] == 1)begin
                if(mode) begin
                    if(RowCount==0) RowCount<= 59;
                    else RowCount<=RowCount-1;
                    pressyOne <= 1;
                end
                else mode <= 1;
            end
            else if(key[2] == 1)begin
            if(mode) begin
                ;
                end
                else step <= 1;
            end
            else if(key[3] == 1)begin
                if(mode) begin
                    if(ColCount==0) ColCount<= 79;
                    else ColCount<=ColCount-1;
                    pressyOne <= 1;
                end
                else RandMode <= 1;
            end
            else if(key[4] == 1)begin
                if(mode) begin
                    if(RowCount==59) RowCount<= 0;
                    else RowCount<=RowCount+1;
                    pressyOne <= 1;
                end
                else run <= 1;
            end
            else if(key[5] == 1)begin
                if(mode) begin
                    if(ColCount==79) ColCount<= 0;
                    else ColCount<=ColCount+1;
                    pressyOne <= 1;
                end
                else begin
                clear <= 1;
                RandMode <= 1;
                end
            end
        end
        else step <= 0;
        pressed <= 1;
        pressyOne <= 0;
    end
end

always @ (posedge Clk) begin	
	if(mode) begin
	case(state) 
		WRITEPREVADDRESS: begin
			Row <= oldrow;
			Col <= oldcol;
			data[1] <= 0;
			data[0] <= writedata;
			enable1 <= 1;
			RW <= 0;
			state <= WRITEPREVWAIT;
		end
		WRITEPREVWAIT: state <= WRITEPREVSTOP;
		WRITEPREVSTOP: begin
			RW <= 1;
			enable1 <= 0;
			state <= READCURRADDRESS;
		end
		READCURRADDRESS: begin
			Row <= RowCount;
			Col <= ColCount;
			enable1 <= 1;
			state <= READCURRWAIT;
		end
		READCURRWAIT: state <= READCURRSTOP;
		READCURRSTOP: begin
			readdata <= databack;
			enable1 <= 0;
		end
		WRITECURRADDRESS: begin
			Row <= RowCount;
			Col <= ColCount;
			data[1] <= 1;
			if(inter) begin
			data[0] <= !readdata[0];
			readdata[0] <= !readdata[0];
			writedata = !readdata[0];
			end
			else data[0] <= readdata[0];
			inter <=0;
			enable1 <= 1;
			RW <= 0;
			state <= WRITECURRWAIT;
		end
		WRITECURRWAIT: state = WRITECURRSTOP;
		WRITECURRSTOP: begin
			RW <= 1;
			oldrow <= RowCount;
			oldcol <= ColCount;
			enable1 <= 0;
			if(superBanana) returning <= 1;
			state <= START;
		end
		START: begin
			superBanana <= 0;
			if(key[0] && !pressed) begin
				state <= WRITECURRADDRESS;
				superBanana <= 1;
				
			end
			else if(key[2] && !pressed) begin
			 inter <=1;
			 state <= WRITECURRADDRESS;
			end
			else if(pressyOne) state <= WRITEPREVADDRESS;
			else state <= START;
		end
		default: state = START;
        endcase
     end
	else returning <= 0;
end


endmodule
