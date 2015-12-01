`timescale 1ns / 1ps

module display
(seg, an,clk, metronome_clk, state, cur_arrow0, cur_arrow1, cur_arrow2, cur_arrow3, score, comboCount, combo_enable);
	
input clk;
input metronome_clk;
input [STATE_BITS:0] state;
input [4:0] cur_arrow3;
input [4:0] cur_arrow2;
input [4:0] cur_arrow1;
input [4:0] cur_arrow0;
input [13:0] score;
input [13:0] comboCount;
input combo_enable;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
output [6:0] seg;
output [3:0] an;
reg [1:0] DisReg; //keep track of what number we're displaying.
reg [4:0] NumToBeDis; //copy the digit value to display in here.
reg [3:0] anToDisplay;
reg [6:0] segToDisplay;
reg [4:0] tmpx;
reg [4:0] tmpy;
reg [4:0] tmpz;
reg [4:0] tmpq;
reg [2:0] PosClockReg = 0;
reg isPosClock = 0;
    
always @ (posedge clk) begin
    PosClockReg = {metronome_clk,PosClockReg[2:1]};
    isPosClock = ~PosClockReg[0] & PosClockReg[1];
end


always @(posedge clk) begin
    case(state)
        STATE_GAME: begin
            if(isPosClock) begin
                tmpq = cur_arrow3; //this is the one that the user should be pressing
                tmpz = cur_arrow2;
                tmpy = cur_arrow1;
                tmpx = cur_arrow0;
            end
        end
        STATE_PAUSE:
        begin
            if (combo_enable)
            begin
	            tmpx = comboCount / 1000;tmpy = (comboCount % 1000) / 100;
					tmpz = (comboCount % 100) / 10;tmpq = comboCount % 10;
            end
            else
            begin
            //calculate score
	            tmpx = score / 1000;
	            tmpy = (score % 1000) / 100;
	            tmpz = (score % 100) / 10;
	            tmpq = score % 10;
            end
            // convert nums to binary count
        end
    endcase


	DisReg = DisReg + 1;
	case(DisReg)
		3: begin
			anToDisplay = 4'b1110;NumToBeDis = tmpq;
		end
		2: begin
			anToDisplay = 4'b1101;NumToBeDis = tmpz;
		end
		0: begin
			anToDisplay = 4'b0111;NumToBeDis = tmpx;
		end
		1: begin
			anToDisplay = 4'b1011;NumToBeDis = tmpy;
		end
		
		
	endcase
    
    case(NumToBeDis)
        0: segToDisplay = 7'b1000000;
        1: segToDisplay = 7'b1111001;
        2: segToDisplay = 7'b0100100;
        3: segToDisplay = 7'b0110000;
        4: segToDisplay = 7'b0011001;
        5: segToDisplay = 7'b0010010;
        6: segToDisplay = 7'b0000010;
        7: segToDisplay = 7'b1111000;
        8: segToDisplay = 7'b0000000;
        9: segToDisplay = 7'b0011000;
        10: segToDisplay = SEG_ARROW_UP;
        11: segToDisplay = SEG_ARROW_DOWN;
        12: segToDisplay = SEG_ARROW_LEFT;
        13: segToDisplay = SEG_ARROW_RIGHT;
        14: segToDisplay = SEG_ARROW_UP_DOWN;
        15: segToDisplay = SEG_ARROW_UP_LEFT;
        16: segToDisplay = SEG_ARROW_UP_RIGHT;
        17: segToDisplay = SEG_ARROW_DOWN_LEFT;
        18: segToDisplay = SEG_ARROW_DOWN_RIGHT;
        19: segToDisplay = SEG_ARROW_LEFT_RIGHT;
        20: segToDisplay = SEG_ARROW_NONE;
    endcase
end



assign seg = segToDisplay;
assign an = anToDisplay;
	
endmodule
