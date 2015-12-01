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
`include "ddr_definitions.v"
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
