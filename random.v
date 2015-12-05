`timescale 1ns / 1ps

module random
(clk, sw, state,random_num,random_arrow);

input clk;
input [1:0] state;
input [6:0] sw;
output [6:0] random_num;
output [4:0] random_arrow;
parameter Resetstate = 2;
//HIHI
reg [6:0] RandomR;
reg Re;

always @ (posedge clk)
begin
    if(state == Resetstate)
        RandomR <= sw;
    else begin
        //generate new number
        Re <= random_num[6] + RandomR[6-1] + 1;
       RandomR <= {Re, RandomR[6:1]};
    end
end


assign random_num = RandomR;
assign random_arrow = (RandomR % 11) + 10;

endmodule
