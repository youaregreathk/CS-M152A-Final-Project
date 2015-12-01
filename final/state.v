module stateGenerator 
(output_state, display_combo_en,Right, clk, Left, pauseSwitch,combo
	);

output [STATE_BITS:0] output_state;
output display_combo_en;
input combo,Right,Left,pauseSwitch,clk;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
//HIHI
wire Reset_press;
reg display_combo_reg = 0;
reg [STATE_BITS:0] state = STATE_RESET;
reg is_paused = 0;
wire 			Reset;         
reg [1:0]	 Reset_tmp_reg;
assign Reset_press = Right;
assign Reset = Reset_tmp_reg[0];
wire 			ShowCombo;
wire			ShowCombotmp;
reg [1:0]	ShowComboReg;

always @ (posedge clk or posedge Reset_press)             //Asynchronous Reset
	if (Reset_press)
   begin
		Reset_tmp_reg<= 2'b11;
	end
	else begin
		Reset_tmp_reg <= {1'b0, Reset_tmp_reg[1]};
   end
                                                    //End of Reset

assign ShowCombotmp = combo;
assign ShowCombo = ShowComboReg[0];

always @ (posedge clk or posedge ShowCombotmp)    // Asynchronous Display Combo 
	if (ShowCombotmp)
	begin
		ShowComboReg <= 2'b11;
	end
	else begin
		ShowComboReg <= {1'b0, ShowComboReg[1]};
   end
always @ (posedge clk) //reset mode
    begin
        if (!pauseSwitch)                                 //if the pasue button not pressed
            begin
                state <= STATE_GAME;                          //state change to start game
            end
        else
		       begin
                if (Reset)                                //If the reset button is also presses with the pause button
                    state <= STATE_RESET;                  //state change to reset
                else
                    state <= STATE_PAUSE;                  //state change to pause
             end
   
        
        if (pauseSwitch && ShowCombo)                      //if pause and show combo are both presses
            display_combo_reg <= 1;                               //set to true
        else 
            display_combo_reg <= 0;                              //set to false
    end   
    

		
assign output_state = state;
assign display_combo_en = display_combo_reg;
endmodule 

