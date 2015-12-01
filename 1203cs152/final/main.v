`timescale 1ns / 1ps
module main
(clk, Up, Down, Left, Right, sw,led, seg, an ,JA);

input clk,Up,Down,Left,Right;
input [7:0] sw;
parameter STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
output [7:0] led;
output [6:0] seg;
output [3:0] an;

output [7:0] JA;
 
    
reg reset;
wire oneHz;
wire display;
wire combo_en;
wire [13:0] score;
wire [13:0] comboCount;
wire [RANDOM_BITS:0] randomNum;
wire [NUM_ARROWS_BITS:0] randomArrow;
wire [STATE_BITS:0] state;
wire [NUM_ARROWS_BITS:0] curArrow0;
wire [NUM_ARROWS_BITS:0] curArrow1;
wire [NUM_ARROWS_BITS:0] curArrow2;
wire [NUM_ARROWS_BITS:0] curArrow3;
wire correctHit;
wire incorrectHit;
wire [3:0] multiplier;
wire partialArrow;

wire left_key_press,right_key_press,up_key_press,down_key_press;

//**************************************************************************************************
//Clock	
clock firstclock ( 
.clk(clk),
 .state(state),
 .oneHz_CLK(oneHz),
 .display_CLK(display)
 );
 
 //***************************************************************************************************
 //FindState
stateGenerator Findstate (
.output_state(state), 
.display_combo_en(combo_en), 
.clk(clk), .pauseSwitch(sw[6]), 
.Right(Right), 
.Left(Left),
.combo(sw[7]));

//*****************************************************************************************************
random Numberrandom(
.clk(oneHz), 
.sw(sw[7:1]), 
.random_num(randomNum), 
.random_arrow(randomArrow), 
.state(state));

//****************************************************************************************************
score Findscore (
.clk(clk), 
.state(state), 
.multiplier(multiplier), 
.comboCount(comboCount),
 .score(score),
 .correctHit(correctHit),
 .incorrectHit(incorrectHit));
 //******************************************************************************************************
arrow Calarrow(
.state(state),
 .clk(clk),
 .metronome_clk(oneHz),
 .next_arrow(randomArrow),
 .arrow0(curArrow0),
 .arrow1(curArrow1),
 .arrow2(curArrow2),
 .arrow3(curArrow3));
 //*********************************************************************************************************
display Display (
.seg(seg),
 .an(an),
 .clk(display),
 .metronome_clk(oneHz),
 .state(state),
 .cur_arrow0(curArrow0),
 .cur_arrow1(curArrow1),
 .cur_arrow2(curArrow2),
 .cur_arrow3(curArrow3),
 .score(score),
 .comboCount(comboCount)
 , .combo_enable(combo_en));
 //**********************************************************************************************************
collision Calmatch(
.partialArrow(partialArrow),
 .clk(clk),
 .state(state),
 .metronome_clk(oneHz),
 .Up(Up),
 .Down(Down),
 .Left(Left),
 .Right(Right),
 .arrow(curArrow3),
 .correctHit(correctHit),
 .incorrectHit(incorrectHit));
//*********************************************************************************************************
music music(.clk(clk),
    .speaker(JA[0]));
assign JA[4] = 0;
//**************************************************************************************************************
assign led[7] = correctHit;
assign led[6] = incorrectHit;
assign led[5] = state[1];
assign led[4] = state[0];
assign led[3] = multiplier[3];
assign led[2] = multiplier[2];
assign led[1] = multiplier[1];
assign led[0] = multiplier[0];

endmodule
