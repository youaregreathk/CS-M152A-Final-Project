`timescale 1ns / 1ps

module display
(seg, an,clk, metronome_clk, state, cur_arrow0, cur_arrow1, cur_arrow2, cur_arrow3, score, comboCount, combo_enable);
	
input clk,metronome_clk, combo_enable;
input [1:0] state;
input [4:0] cur_arrow3;
input [4:0] cur_arrow2;
input [4:0] cur_arrow1;
input [4:0] cur_arrow0;
input [13:0] score;
input [13:0] comboCount;

parameter BeginState = 0;
parameter PauseState = 1;
parameter NUM_ARROWS = 11,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;

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
        
        PauseState: begin      //In this modue we convert the score or the combo to 4 degit to display 
            if (!combo_enable)
            begin
	            tmpq = score % 10;tmpx = score / 1000;
	            tmpy = (score % 1000) / 100;tmpz = (score % 100) / 10;
            end
				else
            begin
	            tmpq = comboCount % 10;tmpx = comboCount / 1000;
					tmpz = (comboCount % 100) / 10;tmpy = (comboCount % 1000) / 100;
            end
           
        end
		  BeginState: begin
            if(isPosClock) begin//this is the one that the user should be pressing
                tmpx = cur_arrow0;tmpq = cur_arrow3; 
                tmpz = cur_arrow2;tmpy = cur_arrow1;
            end
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
        0: segToDisplay = 7'b1000000;                      //0
        1: segToDisplay = 7'b1111001;                      //1
        2: segToDisplay = 7'b0100100;                      //2
        3: segToDisplay = 7'b0110000;                      //3
        4: segToDisplay = 7'b0011001;                      //4
        5: segToDisplay = 7'b0010010;                      //5
        6: segToDisplay = 7'b0000010;                      //6
        7: segToDisplay = 7'b1111000;                      //7
        8: segToDisplay = 7'b0000000;                      //8
        9: segToDisplay = 7'b0011000;                      //9
        10: segToDisplay = 7'b1111110;                     //Up
        11: segToDisplay = 7'b1110111;                     //Down
        12: segToDisplay = 7'b1001111;                     //Left
        13: segToDisplay = 7'b1111001;                     //Right
        14: segToDisplay = 7'b1111110 & 7'b1110111;        //Up&Down
        15: segToDisplay = 7'b1111110 & 7'b1001111;        //Up&Left
        16: segToDisplay = 7'b1111110 & 7'b1111001;        //Up&Right
        17: segToDisplay = 7'b1110111 & 7'b1001111;        //Down&Left
        18: segToDisplay = 7'b1110111 & 7'b1111001;        //Down& Right
        19: segToDisplay = 7'b1001111 & 7'b1111001;        //Left & Right
        20: segToDisplay =7'b1111111;                      //None
    endcase
end



assign seg = segToDisplay;
assign an = anToDisplay;
	
endmodule
