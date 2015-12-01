module color(
	input clk, 
    input [10:0] x_pos,
    input [10:0] y_pos,
    input [2:0] snake,
    output reg [2:0] red,
    output reg [2:0] green,
    output reg [1:0] blue
    );
	 
	 always @ (posedge clk) begin
		if (snake == 'b000) begin
			red = 'b000;
			green = 'b000;
			blue = 'b00;
		end
		
		else if (snake == 'b001) begin
			red = 'b111;
			green = 'b000;
			blue = 'b00;
		end
		
		else if (snake == 'b010) begin
			red = 'b001;
			green = 'b000;
			blue = 'b11;
		end
		
		else if (snake == 'b011) begin
			red = 'b111;
			green = 'b111;
			blue = 'b00;
		end
		
		else if (snake == 'b100) begin
			red = 'b000;
			green = 'b111;
			blue = 'b00;
			end
	end


endmodule

