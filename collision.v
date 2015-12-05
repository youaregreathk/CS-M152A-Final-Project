`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:12 11/25/2014 
// Design Name: 
// Module Name:    collision 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module collision
(clk, metronome_clk, Up,correctHit, Down, Left, Right, arrow,partialArrow, state, incorrectHit);

input clk,metronome_clk,Up,Down,Left,Right;
input [1:0] state;
input [4:0] arrow;
output correctHit,incorrectHit,partialArrow;
parameter BeginState = 0;
parameter Upp = 10;
parameter Downn = 11;
parameter Leftt = 12;
parameter Rightt = 13;
parameter UpandDown = 14;
parameter UpandLeft = 15; 
parameter upandRight = 16;
parameter DownandLeft = 17;
parameter DownandRight = 18;
parameter LeftandRight = 19;
parameter NO = 20;
reg [2:0] posedge_up = 0;
reg is_posedge_up = 0;
reg [2:0] posedge_down = 0;
reg is_posedge_down = 0;
reg [2:0] posedge_left = 0;
reg is_posedge_left = 0;
reg [2:0] posedge_right = 0;
reg is_posedge_right = 0;
reg [2:0] posedge_metronome_clk = 0;
reg is_posedge_metronome_clk = 0;
reg hasPressedPartialArrow = 0;
reg [4:0] keysPressed = 20;
reg correctHit_reg = 0;
reg incorrectHit_reg = 0;
//The following module detect if the left,right, up,down, button is presses
always @ (posedge clk) begin
    posedge_right <= {Right, posedge_right[2:1]};                 //set up async right
    
    is_posedge_right <= ~posedge_right[0] & posedge_right[1];
end

always @ (posedge clk) begin
    posedge_left <= {Left, posedge_left[2:1]};                  //set up async left
    is_posedge_left <= ~posedge_left[0] & posedge_left[1];
end

always @ (posedge clk) begin                   
    posedge_up <= {Up, posedge_up[2:1]};                  //set up async up presses
    is_posedge_up <= ~posedge_up[0] & posedge_up[1];
end
    
always @ (posedge clk) begin
    posedge_down <= {Down, posedge_down[2:1]};                  //set up async down press
    is_posedge_down <= ~posedge_down[0] & posedge_down[1];
end


    


always @ (posedge clk) begin          
    posedge_metronome_clk <= {metronome_clk, posedge_metronome_clk[2:1]};    //set up positive 
    is_posedge_metronome_clk <= ~posedge_metronome_clk[0] & posedge_metronome_clk[1];
end

// end detectors
always @(posedge clk) begin
    if(is_posedge_metronome_clk) begin                 //In here we first initial all the reg to 0
        keysPressed = 20;correctHit_reg = 0;
        hasPressedPartialArrow = 0;incorrectHit_reg = 0;
    end
    if(state == BeginState) begin
        if(metronome_clk && !correctHit_reg && !incorrectHit_reg) begin
             if(is_posedge_left) begin                         //If Left
                case(keysPressed) 
                    NO: keysPressed = Leftt;Rightt: keysPressed = LeftandRight;
                    Upp: keysPressed = UpandLeft;Down: keysPressed = DownandLeft;
                    default: incorrectHit_reg = 1;
                endcase
            end
            if(is_posedge_right) begin
                case(keysPressed)                              //Same here, if it is right
                    NO: keysPressed = Rightt;Leftt: keysPressed = LeftandRight;
                    Upp: keysPressed = upandRight;Down: keysPressed = DownandRight;
                    default: incorrectHit_reg = 1;
                endcase
            end

				if(is_posedge_up) begin 
                case(keysPressed)                              //Same here, if it is up 
                    Leftt: keysPressed = UpandLeft; NO: keysPressed = Upp; 
                    Rightt: keysPressed = upandRight;Down: keysPressed = UpandDown;
                    default: incorrectHit_reg = 1;
                endcase
            end
            if(is_posedge_down) begin                           //Same here, if it is down
                case(keysPressed) 
                    NO: keysPressed = Down;Leftt: keysPressed = DownandLeft;
                    Rightt: keysPressed = DownandRight;Upp: keysPressed = UpandDown;
                    default: incorrectHit_reg = 1;
                endcase
            end
           
            if(keysPressed == arrow) begin      //In here we check if the user pressed the correct arrow and we add points
                correctHit_reg = 1;
                hasPressedPartialArrow = 0;
            end
            
            else if(keysPressed != NO) begin
                
                        hasPressedPartialArrow = 0;
                if(!hasPressedPartialArrow && !correctHit_reg)
                    incorrectHit_reg = 1;

            end  
        end 
        //If the player presses the following key, it aotumatically set to incorrect
        else if(!metronome_clk) begin    
            if(is_posedge_up || is_posedge_down || is_posedge_left || is_posedge_right) begin
                incorrectHit_reg = 1;
            end                      //If the player hasnt press the corrent hit then it is an incorrect hit 
            if(!incorrectHit_reg && !correctHit_reg) begin
                incorrectHit_reg = 1;
            end
        end
    end 
end
assign partialArrow = hasPressedPartialArrow;assign correctHit = correctHit_reg;assign incorrectHit = incorrectHit_reg;
endmodule
