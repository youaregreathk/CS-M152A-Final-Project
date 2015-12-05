 module music(
	input clk,
	output reg speaker
);


//clock_25MHZ( . clk(clk),.clkout25MHz(clkout25MHz));
/*
wire [1:0] q = 0;
;
always @(posedge clk)
begin 
    q <= q+1
end
assign clk25MHz = q[1];

*/


//wire clk25MHz = 0;

wire clk25MHz ;
//wire clk25MHzW;
//assign clk25MHzW = clk25MHz;
reg [32:0] counter25Mz = 0;      //the counter for the blink



reg [1:0] q = 0;

always @(posedge clk)
begin 
    q <= q+1;
end
assign clk25MHz = q[1];

        
/*   if (counter25Mz == 4)	//50000000             //If the we hit the max for the 1Hz
				begin                                
				clk25MHz <= !clk25MHz;
				counter25Mz <= 0;                    //once the maximum count is reached, 
				                                    //the clock goes from 1 to 0 or 0 to 1. 
				end                         //100000000/(2*2)=25000000
         else begin
                counter25Mz <= counter25Mz + 1;
                end */
      
reg [30:0] tone;

always @(posedge clk25MHz) tone <= tone+31'd1;

wire [7:0] fullnote;
music_ROM get_fullnote(.clk(clk), .address(tone[29:22]), .note(fullnote));

wire [2:0] octave;
wire [3:0] note;
divide_by12 get_octave_and_note(.numerator(fullnote[5:0]), .quotient(octave), .remainder(note));

reg [8:0] clkdivider;
always @*
case(note)
	 0: clkdivider = 9'd511;//A
	 1: clkdivider = 9'd482;// A#/Bb
	 2: clkdivider = 9'd455;//B
	 3: clkdivider = 9'd430;//C
	 4: clkdivider = 9'd405;// C#/Db
	 5: clkdivider = 9'd383;//D
	 6: clkdivider = 9'd361;// D#/Eb
	 7: clkdivider = 9'd341;//E
	 8: clkdivider = 9'd322;//F
	 9: clkdivider = 9'd303;// F#/Gb
	10: clkdivider = 9'd286;//G
	11: clkdivider = 9'd270;// G#/Ab
	default: clkdivider = 9'd0;
endcase

reg [8:0] counter_note;
reg [7:0] counter_octave;
always @(posedge clk) counter_note <= counter_note==0 ? clkdivider : counter_note-9'd1;
always @(posedge clk) if(counter_note==0) counter_octave <= counter_octave==0 ? 8'd255 >> octave : counter_octave-8'd1;
always @(posedge clk) if(counter_note==0 && counter_octave==0 && fullnote!=0 && tone[21:18]!=0) speaker <= ~speaker;
endmodule
