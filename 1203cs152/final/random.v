`timescale 1ns / 1ps

module random
(clk, sw, state,random_num,random_arrow);

input clk;
input [STATE_BITS:0] state;
input [RANDOM_BITS:0] sw;
output [RANDOM_BITS:0] random_num;
output [NUM_ARROWS_BITS:0] random_arrow;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
//HIHI
reg [6:0] RandomR;
reg Re;

always @ (posedge clk)
begin
    if(state == STATE_RESET)
        RandomR <= sw;
    else begin
        //generate new number
        Re <= random_num[6] + RandomR[6-1] + 1;
       RandomR <= {Re, RandomR[6:1]};
    end
end


assign random_num = RandomR;
assign random_arrow = (RandomR % NUM_ARROWS) + 10;

endmodule
