`timescale 1ns / 1ps            //1ns

module clock 
( clk, state,oneHz_CLK,display_CLK);
input clk;
input [1:0] state;
parameter ResetState = 2;


parameter val=390625;   //YOLO
wire [21:0] Cscreen;
output oneHz_CLK;
output display_CLK;

wire [8:0]  CountOneHz;
reg [7:0]   DividOneHz;
reg   OneHz_reg;   
reg   Screen_reg; 
reg [20:0] ScreenDivid;
assign CountOneHz= DividOneHz+ 1;
assign Cscreen = ScreenDivid + 1;


always @ (posedge clk)
    if (state == ResetState)    //If state is equal to reset
		begin
			Screen_reg <= 0;ScreenDivid<= 0;DividOneHz<= 0;OneHz_reg<= 0;				
        end
    else                         //If state is equal to start
		begin
			if(ScreenDivid== val)      //If the Display divider is 390625 changed here
				begin
				  Screen_reg <= 1;ScreenDivid<= 0;           
				end
			else
				begin
					ScreenDivid<= Cscreen[20:0];Screen_reg <= 0; 
				end
			
			if( Screen_reg)               
				begin
					DividOneHz<= CountOneHz[7:0];OneHz_reg<= ~CountOneHz[8];
				end
		end

assign oneHz_CLK = OneHz_reg;
assign display_CLK =  Screen_reg;



endmodule