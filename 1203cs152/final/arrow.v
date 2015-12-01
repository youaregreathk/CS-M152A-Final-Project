`timescale 1ns / 1ps

module arrow
(arrow0, arrow1, arrow2, arrow3,clk, metronome_clk, next_arrow, state);

input clk;
input metronome_clk;
input [4:0] next_arrow;
input [STATE_BITS:0] state;
output [4:0] arrow0;
output [4:0] arrow1;
output [4:0] arrow2;
output [4:0] arrow3;
reg [4:0] Regtmp = 20;
reg [4:0] Reg1tmp= 20;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
reg [4:0] Reg2tmp = 20;
reg [4:0] Reg3tmp = 20;
reg [2:0] clockReg = 0;
reg Isposclock = 0;
    
always @ (posedge clk) begin                            // Posedge Metronome_clk
    clockReg <= {metronome_clk, clockReg[2:1]};
    Isposclock <= ~clockReg[0] & clockReg[1];
end

always @ (posedge clk) begin
    case(state)                              //It buffer the current arrows and then we pass it into the display module and the collision module
        STATE_GAME: begin
            if(Isposclock) begin
            Reg3tmp = Reg2tmp;Reg2tmp = Reg1tmp;Reg1tmp = Regtmp;Regtmp = next_arrow;
            end
        end
        STATE_RESET: begin
            Reg3tmp = 20;Reg2tmp = 20;Reg1tmp = 20;Regtmp = 20;
        end
    endcase
end

assign arrow0 = Regtmp;
assign arrow1 = Reg1tmp;
assign arrow2 = Reg2tmp;
assign arrow3 = Reg3tmp;

endmodule
