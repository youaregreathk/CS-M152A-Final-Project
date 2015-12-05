`timescale 1ns / 1ps

module arrow
(arrow0, arrow1, arrow2, arrow3,clk, metronome_clk, next_arrow, state);

input clk,metronome_clk;
input [4:0] next_arrow;
input [1:0] state;
parameter BeginState = 0;
parameter ResetState = 2;
output [4:0] arrow0;
output [4:0] arrow1;
output [4:0] arrow2;
output [4:0] arrow3;
reg [4:0] Regtmp = 20;
reg [4:0] Reg1tmp= 20;

reg [4:0] Reg2tmp = 20;
reg [4:0] Reg3tmp = 20;
reg [2:0] clockReg = 0;
reg Isposclock = 0;
    
always @ (posedge clk) begin                            // In here we created a Posetive clock always block to determin if it is positive
    clockReg <= {metronome_clk, clockReg[2:1]};
	 Isposclock <= ~clockReg[0] & clockReg[1];
end

always @ (posedge clk) begin
    case(state)                              //It buffer the current arrows and then we pass it into the display module and the collision module
        BeginState: begin
            if(Isposclock) begin
            Reg3tmp = Reg2tmp;Reg2tmp = Reg1tmp;Reg1tmp = Regtmp;Regtmp = next_arrow;
            end
        end
        ResetState: begin
            Reg3tmp = 20;Reg2tmp = 20;Reg1tmp = 20;Regtmp = 20;
        end
    endcase
end
assign arrow0 = Regtmp,arrow1 = Reg1tmp,arrow2 = Reg2tmp,arrow3 = Reg3tmp;

endmodule
