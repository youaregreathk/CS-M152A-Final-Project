
module clock_25MHZ( clk,clkout25MHz
    );
input clk,
output reg clkout25MHz = 0;
reg [32:0] counter25Mz = 0;      //the counter for the blink

always @(posedge clk)          //the main clock
		begin
        if (counter25Mz == 2000000)	//50000000             //If the we hit the max for the 1Hz
				begin                                
				clk25MHz <= !clk25MHz;
				counter25Mz <= 0;                    //once the maximum count is reached, 
				                                    //the clock goes from 1 to 0 or 0 to 1. 
				end                         //100000000/(2*2)=25000000
         else begin
                counter25Mz <= counter25Mz + 1;
                end
         end
endmodule
