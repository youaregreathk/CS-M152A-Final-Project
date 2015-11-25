
//NOTE FREQUENCY SYNTEZATOR
//синтезатор музыкальных нот

module note_synt(
	input wire clk,		//source clock 5Mhz / вход опорной частоты 5 мегагерц
	input wire [3:0]note, //ID of note / вход: номер ноты, которую нужно играть
	
						//output freq grid
						//basic freq is note A = 440Hz
						//every next note differs by 2^(-1/12)
						//C		523,2511306 Hz
						//C#	554,3652620 Hz
						//D		587,3295358 Hz
						//D#	622,2539674 Hz
						//E		659,2551138 Hz
						//F		698,4564629 Hz
						//F#	739,9888454 Hz
						//G		783,9908720 Hz
						//G#	830,6093952 Hz
						//A		880 Hz
						//A#	932,327523  Hz
						//H		987,7666025 Hz
						//C		1046,502261 Hz
	output reg note_clock, 		//generated note clock / выходной сигнал звуковой частоты
	output reg [7:0]note_leds	//blink LEDs / зажигаем светодиод соответствующей ноты
);

//divide coeff / делитель
reg [13:0]factor;

//select divide coefficient according to current note being played
//выбор коэффициента деления частоты согласно номеру ноты, который нужно играть
always @*
begin
	case(note)
		1:  begin factor = 9560; note_leds = 8'b00000001; end	//C
		2:  begin factor = 9025; note_leds = 8'b00000011; end	//C#
		3:  begin factor = 8518; note_leds = 8'b00000010; end	//D
		4:  begin factor = 8039; note_leds = 8'b00000110; end	//D#
		5:  begin factor = 7587; note_leds = 8'b00000100; end	//E
		6:  begin factor = 7163; note_leds = 8'b00001000; end	//F
		7:  begin factor = 6766; note_leds = 8'b00011000; end	//F#
		8:  begin factor = 6378; note_leds = 8'b00010000; end	//G
		9:  begin factor = 6017; note_leds = 8'b00110000; end	//G#
		10: begin factor = 5682; note_leds = 8'b00100000; end	//A
		11: begin factor = 5364; note_leds = 8'b01100000; end	//A#
		12: begin factor = 5066; note_leds = 8'b01000000; end	//B
	default: begin factor = 1;   note_leds = 8'b00000000; end	//nothing / тишина
	endcase
end

reg eocnt; 
always @(posedge clk)
	eocnt <= (cnt == factor);
	
reg [13:0]cnt;
always @(posedge clk or posedge eocnt)
begin
	if(eocnt)
		cnt <= 0;
	else
		cnt <= cnt + 1'b1;
end

//output sound frequency / генерация выходной звуковой частоты 
always @(posedge eocnt)
	note_clock <= note_clock ^ 1'b1;

endmodule
