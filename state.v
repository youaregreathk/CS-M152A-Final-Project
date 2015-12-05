module stateGenerator 
(output_state, display_combo_en,Right, clk, Left, pauseSwitch,combo
	);

output [1:0] output_state;
output display_combo_en;
input combo,Right,Left,pauseSwitch,clk;
parameter BeginState = 0;
parameter PauseState = 1;
parameter ResetState = 2;

//HIHI
wire Reset_press;
reg display_combo_reg = 0;
reg [1:0] state = ResetState;
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
                state <= BeginState;                          //state change to start game
            end
        else
		       begin
                if (Reset)                                //If the reset button is also presses with the pause button
                    state <= ResetState;                  //state change to reset
                else
                    state <= PauseState;                  //state change to pause
             end
   
        
        if (pauseSwitch && ShowCombo)                      //if pause and show combo are both presses
            display_combo_reg <= 1;                               //set to true
        else 
            display_combo_reg <= 0;                              //set to false
    end   
    

		
assign output_state = state;
assign display_combo_en = display_combo_reg;
endmodule 

