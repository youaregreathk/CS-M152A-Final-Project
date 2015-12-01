`timescale 1ns / 1ps 

module score
(clk, correctHit, incorrectHit, state,score, comboCount, multiplier);


input clk;
input [STATE_BITS:0] state;
input correctHit;
input incorrectHit;

output [13:0] score;
output [13:0] comboCount;
output [3:0] multiplier;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
//HIHI
reg [13:0] score_reg = 0;
reg [3:0] multiplier_reg = 1;
reg [13:0] combos = 0;
reg [2:0] MMissed = 0;
reg is_paused = 0;
reg [2:0] HHit = 0;
reg isHit = 0;
reg isMissed = 0;


always @ (posedge clk) begin                             //To check if it is a missed
    MMissed <= {incorrectHit, MMissed[2:1]};
    isMissed <= ~MMissed[0] & MMissed[1];
end

always @ (posedge clk) begin                             //To check if it is a hit
    HHit <= {correctHit, HHit[2:1]};
    isHit <= ~HHit[0] & HHit[1];
end


always @(posedge clk) begin
    if (isHit) begin                                      //If it is a hit then we need to determind the multiplier
        if (combos >= 15)
            multiplier_reg = 8;
        else if (combos >= 6)
            multiplier_reg = 4;
        else if (combos >= 3)
            multiplier_reg = 2;
        else
            multiplier_reg = 1;
    end
    if (isMissed) begin                                //If it is a missed than we need to reset the mutiplier
        multiplier_reg = 1;   
        combos = 0;
    end
    

    case(state)                                                          //If the state is start_game
        STATE_GAME: begin 
            score_reg = score_reg + (isHit * multiplier_reg);
            combos = combos + isHit;
            
        end
		  STATE_RESET: begin                                                   //If the state is reset game
            multiplier_reg = 1;
				score_reg = 0;
            combos = 0;
            
        end
    endcase
	
end

assign score = score_reg;
assign comboCount = combos;
assign multiplier = multiplier_reg;
endmodule

