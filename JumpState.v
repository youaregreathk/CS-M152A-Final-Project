module stateGenerator 
(
	// Outputs
	output_state, display_combo_en,
	// Inputs
	Right, clk, Left, pauseSwitch
	);

output [STATE_BITS:0] output_state;
output display_combo_en;

input Right; //reset
input Left; //display combo
input pauseSwitch; //pause

input clk;

parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
//HIHI
reg [STATE_BITS:0] state = STATE_RESET;
reg is_paused = 0;
reg display_combo_reg = 0;
// ===============
// Asynchronous Reset
// =================
wire 			rst;
wire			arst_i;
reg [1:0]	arst_ff;

assign arst_i = Right;
assign rst = arst_ff[0];

always @ (posedge clk or posedge arst_i)
	if (arst_i)
		arst_ff <= 2'b11;
	else 
		arst_ff <= {1'b0, arst_ff[1]};

// =================
// END Reset
// =================

// ===============
// Asynchronous Display Combo
// =================
wire 			display_combo_i;
wire			async_displayCombo_i;
reg [1:0]	async_displayCombo_ff;

assign async_displayCombo_i = Left;
assign display_combo_i = async_displayCombo_ff[0];

always @ (posedge clk or posedge async_displayCombo_i)
	if (async_displayCombo_i)
		async_displayCombo_ff <= 2'b11;
	else 
		async_displayCombo_ff <= {1'b0, async_displayCombo_ff[1]};

// =================
// END Display Combo
// =================





always @ (posedge clk) //reset mode
    begin
        if (pauseSwitch) //if is paused
            begin
                if (rst)
                    state <= STATE_RESET;
                else
                    state <= STATE_PAUSE;
            end
        else//
            begin
                state <= STATE_GAME;
            end
        
        if (pauseSwitch && display_combo_i)
            display_combo_reg <= 1;
        else 
            display_combo_reg <= 0;
    end   
    

		
assign output_state = state;
assign display_combo_en = display_combo_reg;
endmodule 

