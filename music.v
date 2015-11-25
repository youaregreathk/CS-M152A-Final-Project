
// MUSICAL STATE MACHINE FOR "PODMOSKOVNYE VECHERA"
// Играем "Подмосковные вечера"!

module music(
	input wire nrst,	//reset signal / сигнал сброса
	input wire clk,		//source clock 5Mhz / входная опорная частота 5 мегагерц 

	output reg [3:0]note, //index of musical note currently being played / номер ноты которую сейчас играем 
	output wire speak	//sound enable / если не ноль, то динамик включен
);

//enable sound if current note is not zero index
//включаем динамик если сейчас играем не ноту номер "ноль"
assign speak = (note !=0);

//one musical step clock counters / регистры счетчика музыкального такта 
reg [20:0]counter;
reg one_step;

//define length of musical step
//этот счетчик определяет длительность музыкального такта
//при опорной частоте 5 МГц сейчас длительность такта - четверть секунды
always @(posedge clk)
begin
	if(counter==5000000/4)
		begin counter <= 0; one_step <= 1'b1; end
	else
		begin counter <= counter + 1'b1; one_step <= 1'b0; end
end

//musical time register
//этот регистр определеят какой музыкальный такт сейчас играется
reg [4:0]music_time;

always @(posedge clk or negedge nrst)
begin
	if(nrst==1'b0)
	begin
		//reset / сброс схемы в исходное состояние
		music_time <= 0;
		note <= 0;
	end
	else
	begin
		//play music here, move musical step forward every music time step
		//играем музыку, изменяем ноту каждый музыкальный такт 
		if(one_step)
		begin
			case(music_time)
				0: begin note <=3;  music_time <= music_time+1'b1; end
				1: begin note <=6;  music_time <= music_time+1'b1; end
				2: begin note <=10;  music_time <= music_time+1'b1; end
				3: begin note <=6;  music_time <= music_time+1'b1; end
				
				4: begin note <=8;  music_time <= music_time+1'b1; end
				5: begin note <=8;  music_time <= music_time+1'b1; end
				6: begin note <=6; music_time <= music_time+1'b1; end
				7: begin note <=5; music_time <= music_time+1'b1; end
				
				8: begin note <=10; music_time <= music_time+1'b1; end
				9: begin note <=10; music_time <= music_time+1'b1; end
				10:begin note <=8; music_time <= music_time+1'b1; end
				11:begin note <=8; music_time <= music_time+1'b1; end
				
				12:begin note <=3; music_time <= music_time+1'b1; end
				13:begin note <=3; music_time <= music_time+1'b1; end
				14:begin note <=3; music_time <= music_time+1'b1; end
				15:begin note <=3; music_time <= music_time+1'b1; end
			default:
				//end of music
				//конец мелодии!
				begin note <= 0; music_time <= music_time; end
			endcase
		end
	end
end

endmodule
