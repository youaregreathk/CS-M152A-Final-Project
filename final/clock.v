`timescale 1ns / 1ps            //1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:59 11/13/2014 
// Design Name: 
// Module Name:    clk 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock 
( clk, state,oneHz_CLK,display_CLK);
input clk;
input [1:0] state;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
parameter val=390625;   //YOLO
wire [21:0] Cscreen;
output oneHz_CLK;
output display_CLK;

wire [8:0]  CountOneHz;
reg [7:0]   DividOneHz;
reg   OneHz_reg;   
reg   Screen_reg; 
reg [20:0] ScreenDivid;
assign CountOneHz= DividOneHz+ 1;
assign Cscreen = ScreenDivid + 1;


always @ (posedge clk)
    if (state == STATE_RESET)    //If state is equal to reset
		begin
			Screen_reg <= 0;ScreenDivid<= 0;DividOneHz<= 0;OneHz_reg<= 0;				
        end
    else                         //If state is equal to start
		begin
			if(ScreenDivid== val)      //If the Display divider is 390625 changed here
				begin
				  Screen_reg <= 1;ScreenDivid<= 0;           
				end
			else
				begin
					ScreenDivid<= Cscreen[20:0];Screen_reg <= 0; 
				end
			
			if( Screen_reg)               
				begin
					DividOneHz<= CountOneHz[7:0];OneHz_reg<= ~CountOneHz[8];
				end
		end

assign oneHz_CLK = OneHz_reg;
assign display_CLK =  Screen_reg;



endmodule