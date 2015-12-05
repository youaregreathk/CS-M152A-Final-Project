`timescale 1ns / 1ps 

module score
(clk, correctHit, incorrectHit, state,score, comboCount, multiplier);

input [1:0] state;
input correctHit,incorrectHit,clk;
parameter BeginState = 0;
parameter ResetState = 2;
output [13:0] score;
output [13:0] comboCount;
output [3:0] multiplier;


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
       
        if (combos >= 6)
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
        BeginState: begin 
            score_reg = score_reg + (isHit * multiplier_reg);
            combos = combos + isHit;
            
        end
		  ResetState: begin                                                   //If the state is reset game
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

