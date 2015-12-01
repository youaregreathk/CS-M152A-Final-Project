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
(clk, metronome_clk, Up, Down, Left, Right, arrow, state,correctHit, incorrectHit, partialArrow);



input clk;
input metronome_clk;
input Up,Down,Left,Right;
input [STATE_BITS:0] state;
input [NUM_ARROWS_BITS:0] arrow;
output correctHit;
output incorrectHit;
output partialArrow;
parameter STATE_GAME = 0, STATE_PAUSE = 1,STATE_RESET = 2,STATE_BITS = 1,RANDOM_BITS = 6;
parameter NUM_ARROWS = 11,NUM_ARROWS_BITS = 4,ARROW_UP = 10,ARROW_DOWN = 11,ARROW_LEFT = 12,ARROW_RIGHT = 13,ARROW_UP_DOWN = 14,ARROW_UP_LEFT = 15,ARROW_UP_RIGHT = 16,ARROW_DOWN_LEFT = 17,ARROW_DOWN_RIGHT = 18,ARROW_LEFT_RIGHT = 19,ARROW_NONE = 20;
parameter SEG_ARROW_UP = 7'b1111110,SEG_ARROW_DOWN = 7'b1110111,SEG_ARROW_LEFT = 7'b1001111,SEG_ARROW_RIGHT = 7'b1111001,SEG_ARROW_UP_DOWN = SEG_ARROW_UP & SEG_ARROW_DOWN,SEG_ARROW_UP_LEFT = SEG_ARROW_UP & SEG_ARROW_LEFT,SEG_ARROW_UP_RIGHT = SEG_ARROW_UP & SEG_ARROW_RIGHT,SEG_ARROW_DOWN_LEFT = SEG_ARROW_DOWN & SEG_ARROW_LEFT,SEG_ARROW_DOWN_RIGHT = SEG_ARROW_DOWN & SEG_ARROW_RIGHT,SEG_ARROW_LEFT_RIGHT = SEG_ARROW_LEFT & SEG_ARROW_RIGHT,SEG_ARROW_NONE = 7'b1111111;
parameter SEG_ZERO = 7'b1000000,SEG_ONE = 7'b1111001,SEG_TWO = 7'b0100100,SEG_THREE = 7'b0110000, SEG_FOUR = 7'b0011001,SEG_FIVE = 7'b0010010, SEG_SIX = 7'b0000010,SEG_SEVEN = 7'b1111000, SEG_EIGHT = 7'b0000000,SEG_NINE = 7'b0011000;
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
reg [NUM_ARROWS_BITS:0] keysPressed = ARROW_NONE;
reg correctHit_reg = 0;
reg incorrectHit_reg = 0;
//The following module detect if the up,down ,left,right button is presses
always @ (posedge clk) begin                   
    posedge_up <= {Up, posedge_up[2:1]};                  //set up async up presses
    is_posedge_up <= ~posedge_up[0] & posedge_up[1];
end
    
always @ (posedge clk) begin
    posedge_down <= {Down, posedge_down[2:1]};                  //set up async down press
    is_posedge_down <= ~posedge_down[0] & posedge_down[1];
end

always @ (posedge clk) begin
    posedge_left <= {Left, posedge_left[2:1]};                  //set up async left
    is_posedge_left <= ~posedge_left[0] & posedge_left[1];
end
    
always @ (posedge clk) begin
    posedge_right <= {Right, posedge_right[2:1]};                 //set up async right
    
    is_posedge_right <= ~posedge_right[0] & posedge_right[1];
end

always @ (posedge clk) begin          
    posedge_metronome_clk <= {metronome_clk, posedge_metronome_clk[2:1]};    //set up positive 
    is_posedge_metronome_clk <= ~posedge_metronome_clk[0] & posedge_metronome_clk[1];
end

// end detectors
always @(posedge clk) begin
    if(is_posedge_metronome_clk) begin                 //In here we first initial all the reg to 0
        keysPressed = ARROW_NONE;correctHit_reg = 0;
        hasPressedPartialArrow = 0;incorrectHit_reg = 0;
    end
    if(state == STATE_GAME) begin
        if(metronome_clk && !correctHit_reg && !incorrectHit_reg) begin
            if(is_posedge_up) begin 
                case(keysPressed)                                
                    ARROW_NONE: keysPressed = ARROW_UP; 
                    ARROW_LEFT: keysPressed = ARROW_UP_LEFT;
                    ARROW_RIGHT: keysPressed = ARROW_UP_RIGHT;
                    ARROW_DOWN: keysPressed = ARROW_UP_DOWN;
                    default: incorrectHit_reg = 1;
                endcase
            end
            if(is_posedge_down) begin
                case(keysPressed) 
                    ARROW_NONE: keysPressed = ARROW_DOWN;
                    ARROW_LEFT: keysPressed = ARROW_DOWN_LEFT;
                    ARROW_RIGHT: keysPressed = ARROW_DOWN_RIGHT;
                    ARROW_UP: keysPressed = ARROW_UP_DOWN;
                    default: incorrectHit_reg = 1;
                endcase
            end
            if(is_posedge_left) begin
                case(keysPressed) 
                    ARROW_NONE: keysPressed = ARROW_LEFT;
                    ARROW_RIGHT: keysPressed = ARROW_LEFT_RIGHT;
                    ARROW_UP: keysPressed = ARROW_UP_LEFT;
                    ARROW_DOWN: keysPressed = ARROW_DOWN_LEFT;
                    default: incorrectHit_reg = 1;
                endcase
            end
            if(is_posedge_right) begin
                case(keysPressed) 
                    ARROW_NONE: keysPressed = ARROW_RIGHT;
                    ARROW_LEFT: keysPressed = ARROW_LEFT_RIGHT;
                    ARROW_UP: keysPressed = ARROW_UP_RIGHT;
                    ARROW_DOWN: keysPressed = ARROW_DOWN_RIGHT;
                    default: incorrectHit_reg = 1;
                endcase
            end

            if(keysPressed == arrow) begin      //In here we check if the user pressed the correct arrow and we add points
                correctHit_reg = 1;
                hasPressedPartialArrow = 0;
            end
            
            else if(keysPressed != ARROW_NONE) begin
                
                case(arrow) 
                    ARROW_UP_DOWN: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_UP || keysPressed == ARROW_DOWN);
                    end
                    ARROW_UP_LEFT: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_UP || keysPressed == ARROW_LEFT);
                    end
                    ARROW_UP_RIGHT: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_UP || keysPressed == ARROW_RIGHT); 
                    end
                    ARROW_DOWN_LEFT: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_DOWN || keysPressed == ARROW_LEFT); 
                    end
                    ARROW_DOWN_RIGHT: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_DOWN || keysPressed == ARROW_RIGHT); 
                    end
                    ARROW_LEFT_RIGHT: begin
                        hasPressedPartialArrow = (keysPressed == ARROW_LEFT || keysPressed == ARROW_RIGHT); 
                    end
                    default:
                    
                        hasPressedPartialArrow = 0;
                endcase

               
                if(!hasPressedPartialArrow && !correctHit_reg)
                    incorrectHit_reg = 1;

            end //end else if(keysPressed != ARROW_NONE) 
        end //end if user has chance to score points
        
        else if(!metronome_clk) begin
            //if user has pressed keys here, it is automatically an incorrect hit.
            if(is_posedge_up || is_posedge_down || is_posedge_left || is_posedge_right) begin
                incorrectHit_reg = 1;
            end
            // if user has not made a correct hit yet, they missed the arrow.
            if(!incorrectHit_reg && !correctHit_reg) begin
                incorrectHit_reg = 1;
            end
        end
    end //end if game_mode
end

assign correctHit = correctHit_reg;
assign incorrectHit = incorrectHit_reg;
assign partialArrow = hasPressedPartialArrow;
endmodule
