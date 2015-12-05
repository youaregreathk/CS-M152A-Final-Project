`timescale 1ns / 1ps
module main
(clk, JA,Left, Right,Up, Down,  sw,led, seg, an );

input clk,Up,Down,Left,Right;
input [7:0] sw;


parameter BeginState = 0;
parameter Upp = 10;
parameter Downn = 11;
parameter Leftt = 12;
parameter Rightt = 13;
parameter UpandDown = 14;
parameter UpandLeft = 15; 
parameter upandRight = 16;
parameter DownandLeft = 17;
parameter DownandRight = 18;
parameter LeftandRight = 19;
parameter NO = 20;

output [7:0] JA;
output [7:0] led;
output [6:0] seg;
output [3:0] an;


 
    
reg reset;
wire oneHz;
wire display;
wire combo_en;
wire [13:0] score;
wire [13:0] comboCount;
wire [6:0] randomNum;
wire [4:0] randomArrow;
wire [1:0] state;
wire [4:0] curArrow0;
wire [4:0] curArrow1;
wire [4:0] curArrow2;
wire [4:0] curArrow3;
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
assign led[7] = correctHit;assign led[6] = incorrectHit;assign led[5] = state[1];assign led[4] = state[0];assign led[3] = multiplier[3];assign led[2] = multiplier[2];assign led[1] = multiplier[1];assign led[0] = multiplier[0];

endmodule
