`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:09 11/30/2015 
// Design Name: 
// Module Name:    music 
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
module music(clk, speaker);
input clk;
output speaker;

reg [27:0] tone;
always @(posedge clk) tone <= tone + 1;

wire [5:0] fullnote = tone[27:22];

wire [2:0] octave;
wire [3:0] note;
divide_by12 divby12(.numer(fullnote[5:0]), quotient(octave), .remain(note));

reg [8:0] clkdivider;
always @(note)
case(note)
	0: clkdivider = 512 - 1;	//A
	1: clkdivider = 483 - 1;	//A#/Bb
	2: clkdivider = 456 - 1;	//B
	3: clkdivider = 431 - 1;	//C
	4: clkdivider = 406 - 1;	//C#/Db
	5: clkdivider = 384 - 1;	//D
	6: clkdivider = 362 - 1;	//D#/Eb
	7: clkdivider = 342 - 1;	//E
	8: clkdivider = 323 - 1;	//F
	9: clkdivider = 304 - 1;	//F#/Gb
	10: clkdivider = 287 - 1;	//G
	11: clkdivider = 271 - 1;	//G#/Ab
	12: clkdivider = 0;	//should never happen
	13: clkdivider = 0;	//should never happen
	14: clkdivider = 0;	//should never happen
	15: clkdivider = 0;	//should never happen
endcase

endmodule
