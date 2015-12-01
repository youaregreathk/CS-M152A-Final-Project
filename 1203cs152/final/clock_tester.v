`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:58 12/02/2014 
// Design Name: 
// Module Name:    clock_tester 
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
module clock_tester(
    );
parameter STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
reg clk;
reg btnR;
reg btnL;
reg [1:0] sw;
reg [7:0] led;
reg [6:0] seg;
reg [3:0] an;
reg reset;
wire oneHz;
wire twoHz;
wire fourHz; //4Hz
wire display;
wire combo_en;
wire [3:0] num0;
wire [3:0] num1;
wire [3:0] num2;
wire [3:0] num3;
reg [STATE_BITS:0] state;

initial
    begin
        clk = 0;
        state = STATE_GAME;
        
        #1000000;
    end


always #50 clk = ~clk;



clock clkModule ( .clk(clk), .state(state), .twoHz_CLK(twoHz), .oneHz_CLK(oneHz), .fourHz_CLK(fourHz), .display_CLK(display));
endmodule
