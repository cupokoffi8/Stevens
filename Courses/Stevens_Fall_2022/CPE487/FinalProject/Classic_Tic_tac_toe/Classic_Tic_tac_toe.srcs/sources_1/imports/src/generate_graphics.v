`timescale 1ns / 1ps

module generate_graphics(
    input wire [3:0] i_VGA_R,
    input wire [3:0] i_VGA_G,
    input wire [3:0] i_VGA_B,
    input wire [9:1] i_selected_square_pos,
    input wire [9:1] i_player_1_square_pos,
    input wire [9:1] i_player_2_square_pos,
    input wire [9:0] i_x, // current pixel x position: 10-bit value: 0-1023 for xmax=640
    input wire [8:0] i_y  // current pixel y position:  9-bit value: 0-511  for ymax=480
    );
     
    // the values for the squares of player 1
    wire display_sq_1_p1, display_sq_2_p1, display_sq_3_p1, display_sq_4_p1, display_sq_5_p1, display_sq_6_p1, display_sq_7_p1, display_sq_8_p1, display_sq_9_p1;
    // the values for the squares of player 2
    wire display_sq_1_p2, display_sq_2_p2, display_sq_3_p2, display_sq_4_p2, display_sq_5_p2, display_sq_6_p2, display_sq_7_p2, display_sq_8_p2, display_sq_9_p2;
    // the values of the currently selected square
    wire select_sq_1, select_sq_2, select_sq_3, select_sq_4, select_sq_5, select_sq_6, select_sq_7, select_sq_8, select_sq_9; 
    // displays the squares on the Tic Tac Toe board
    wire display_selected_square;  //the value of the  currently selected square
    wire display_player_1_square;  //the values of the squares placed by player 1
    wire display_player_2_square;  //the values of the squares placed by player 2
    // generating the Tic Tac Toe board
    wire board_vertical_line_1;    // vertical   line 1 of the board
    wire board_vertical_line_2;    // vertical   line 2 of the board
    wire board_horizontal_line_1;  // horizontal line 1 of the board
    wire board_horizontal_line_2;  // horizontal line 2 of the board
    wire display_board;            // displays the full board
    
    parameter square_offset = 10; // offset used for calculating the position of the currently selected square

    assign select_sq_1  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_selected_square_pos[1] : 0;
    assign select_sq_2  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_selected_square_pos[2] : 0;
    assign select_sq_3  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_selected_square_pos[3] : 0;
    assign select_sq_4  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_selected_square_pos[4] : 0;
    assign select_sq_5  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_selected_square_pos[5] : 0;
    assign select_sq_6  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_selected_square_pos[6] : 0;
    assign select_sq_7  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_selected_square_pos[7] : 0;
    assign select_sq_8  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_selected_square_pos[8] : 0;
    assign select_sq_9  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_selected_square_pos[9] : 0;
    assign display_selected_square = select_sq_1 | select_sq_2 | select_sq_3 | select_sq_4 | select_sq_5 | select_sq_6 | select_sq_7 | select_sq_8 | select_sq_9;
    
    // generating the squares that will be displayed on the screen
    assign display_sq_1_p1  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_1_square_pos[1] : 0;
    assign display_sq_2_p1  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_1_square_pos[2] : 0;
    assign display_sq_3_p1  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_1_square_pos[3] : 0;
    assign display_sq_4_p1  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_1_square_pos[4] : 0;
    assign display_sq_5_p1  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_1_square_pos[5] : 0;
    assign display_sq_6_p1  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_1_square_pos[6] : 0;
    assign display_sq_7_p1  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_1_square_pos[7] : 0;
    assign display_sq_8_p1  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_1_square_pos[8] : 0;
    assign display_sq_9_p1  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_1_square_pos[9] : 0;
    assign display_player_1_square = display_sq_1_p1 | display_sq_2_p1 | display_sq_3_p1 | display_sq_4_p1 | display_sq_5_p1 | display_sq_6_p1 | display_sq_7_p1 | display_sq_8_p1 | display_sq_9_p1;
    
    assign display_sq_1_p2  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_2_square_pos[1] : 0;
    assign display_sq_2_p2  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_2_square_pos[2] : 0;
    assign display_sq_3_p2  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y >  0  + square_offset) & (i_y < 155 - square_offset)) ? i_player_2_square_pos[3] : 0;
    assign display_sq_4_p2  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_2_square_pos[4] : 0;
    assign display_sq_5_p2  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_2_square_pos[5] : 0;
    assign display_sq_6_p2  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 165 + square_offset) & (i_y < 315 - square_offset)) ? i_player_2_square_pos[6] : 0;
    assign display_sq_7_p2  = ((i_x >  0  + square_offset) & (i_x < 208 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_2_square_pos[7] : 0;
    assign display_sq_8_p2  = ((i_x > 218 + square_offset) & (i_x < 411 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_2_square_pos[8] : 0;
    assign display_sq_9_p2  = ((i_x > 421 + square_offset) & (i_x < 640 - square_offset) & (i_y > 325 + square_offset) & (i_y < 480 - square_offset)) ? i_player_2_square_pos[9] : 0;
    assign display_player_2_square = display_sq_1_p2 | display_sq_2_p2 | display_sq_3_p2 | display_sq_4_p2 | display_sq_5_p2 | display_sq_6_p2 | display_sq_7_p2 | display_sq_8_p2 | display_sq_9_p2;

    assign board_vertical_line_1 = ((i_x > 208) & (i_y >  0)   & (i_x < 218) & (i_y < 480)) ? 1 : 0;
    assign board_vertical_line_2 = ((i_x > 411) & (i_y >  0)   & (i_x < 421) & (i_y < 480)) ? 1 : 0;
    assign board_horizontal_line_1 = ((i_x > 0)   & (i_y >  155) & (i_x < 640) & (i_y < 165)) ? 1 : 0;
    assign board_horizontal_line_2 = ((i_x > 0)   & (i_y >  315) & (i_x < 640) & (i_y < 325)) ? 1 : 0;
    assign display_board = board_vertical_line_1 | board_vertical_line_2 | board_horizontal_line_1 | board_horizontal_line_2;
    
    assign i_VGA_R[3] = display_board;
    assign i_VGA_G[3] = display_board;
    assign i_VGA_B[3] = display_board;
    assign i_VGA_B[2] = display_player_1_square;
    assign i_VGA_R[2] = display_player_2_square;
    assign i_VGA_B[1] = display_selected_square;
    assign i_VGA_R[1] = display_selected_square; 
    assign i_VGA_G[1] = display_selected_square; 
    
endmodule
