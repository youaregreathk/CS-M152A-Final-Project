
// MUSICAL STATE MACHINE FOR "PODMOSKOVNYE VECHERA"
// ������ "������������ ������"!

module music(
	input wire nrst,	//reset signal / ������ ������
	input wire clk,		//source clock 5Mhz / ������� ������� ������� 5 �������� 

	output reg [3:0]note, //index of musical note currently being played / ����� ���� ������� ������ ������ 
	output wire speak	//sound enable / ���� �� ����, �� ������� �������
);

//enable sound if current note is not zero index
//�������� ������� ���� ������ ������ �� ���� ����� "����"
assign speak = (note !=0);

//one musical step clock counters / �������� �������� ������������ ����� 
reg [20:0]counter;
reg one_step;

//define length of musical step
//���� ������� ���������� ������������ ������������ �����
//��� ������� ������� 5 ��� ������ ������������ ����� - �������� �������
always @(posedge clk)
begin
	if(counter==5000000/4)
		begin counter <= 0; one_step <= 1'b1; end
	else
		begin counter <= counter + 1'b1; one_step <= 1'b0; end
end

//musical time register
//���� ������� ���������� ����� ����������� ���� ������ ��������
reg [4:0]music_time;

always @(posedge clk or negedge nrst)
begin
	if(nrst==1'b0)
	begin
		//reset / ����� ����� � �������� ���������
		music_time <= 0;
		note <= 0;
	end
	else
	begin
		//play music here, move musical step forward every music time step
		//������ ������, �������� ���� ������ ����������� ���� 
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
				//����� �������!
				begin note <= 0; music_time <= music_time; end
			endcase
		end
	end
end

endmodule
