`timescale 1ns / 1ps

module test_music(
    );

reg [30:0] tone;
always@(posedge clk) tone <= tone + 1;

wire [7:0] fullnote;
music_rom rom(.inclock(clk), .outclock(clk), .address(tone[29:22]), .q(fullnote));  

endmodule
