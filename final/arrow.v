`timescale 1ns / 1ps

module arrow
(
    // outputs
    arrow0, arrow1, arrow2, arrow3,
    // inputs
    clk, metronome_clk, next_arrow, state);

input clk;
input metronome_clk;
input [NUM_ARROWS_BITS:0] next_arrow;
input [STATE_BITS:0] state;
output [NUM_ARROWS_BITS:0] arrow0;
output [NUM_ARROWS_BITS:0] arrow1;
output [NUM_ARROWS_BITS:0] arrow2;
output [NUM_ARROWS_BITS:0] arrow3;

parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
//HIHI
reg [NUM_ARROWS_BITS:0] arrow0_reg = ARROW_NONE;
reg [NUM_ARROWS_BITS:0] arrow1_reg = ARROW_NONE;
reg [NUM_ARROWS_BITS:0] arrow2_reg = ARROW_NONE;
reg [NUM_ARROWS_BITS:0] arrow3_reg = ARROW_NONE;

// =====================
// Posedge Metronome_clk
// =====================
reg [2:0] posedge_metronome_clk = 0;
reg is_posedge_metronome_clk = 0;
    
always @ (posedge clk) begin
    posedge_metronome_clk <= {metronome_clk, posedge_metronome_clk[2:1]};
    
    is_posedge_metronome_clk <= ~posedge_metronome_clk[0] & posedge_metronome_clk[1];
end


// this module buffers the current arrows and passes them into the 
// display and collision modules

// note that arrows_reg[3] is the one that the user should be hitting
always @ (posedge clk) begin
    case(state) 
        STATE_GAME: begin
            if(is_posedge_metronome_clk) begin
            arrow3_reg = arrow2_reg;
            arrow2_reg = arrow1_reg;
            arrow1_reg = arrow0_reg;
            arrow0_reg = next_arrow;
            end
        end
        STATE_RESET: begin
            arrow3_reg = ARROW_NONE;
            arrow2_reg = ARROW_NONE;
            arrow1_reg = ARROW_NONE;
            arrow0_reg = ARROW_NONE;
        end
    endcase
end

assign arrow0 = arrow0_reg;
assign arrow1 = arrow1_reg;
assign arrow2 = arrow2_reg;
assign arrow3 = arrow3_reg;

endmodule
