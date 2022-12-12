`timescale 1ns / 1ps

module verify_positions(
    input  wire [9:1] i_player_1_square_pos,
    input  wire [9:1] i_player_2_square_pos,
    output wire i_player_1_win, 
    output wire i_player_2_win
    );


    wire p1_win_pos_1, p1_win_pos_2, p1_win_pos_3, p1_win_pos_4, p1_win_pos_5, p1_win_pos_6, p1_win_pos_7, p1_win_pos_8;
    wire p2_win_pos_1, p2_win_pos_2, p2_win_pos_3, p2_win_pos_4, p2_win_pos_5, p2_win_pos_6, p2_win_pos_7, p2_win_pos_8;

    assign p1_win_pos_1 = (i_player_1_square_pos[1] &  i_player_1_square_pos[2] &  i_player_1_square_pos[3]);
    assign p1_win_pos_2 = (i_player_1_square_pos[4] &  i_player_1_square_pos[5] &  i_player_1_square_pos[6]);
    assign p1_win_pos_3 = (i_player_1_square_pos[7] &  i_player_1_square_pos[8] &  i_player_1_square_pos[9]);
    assign p1_win_pos_4 = (i_player_1_square_pos[1] &  i_player_1_square_pos[4] &  i_player_1_square_pos[7]);
    assign p1_win_pos_5 = (i_player_1_square_pos[2] &  i_player_1_square_pos[5] &  i_player_1_square_pos[8]);
    assign p1_win_pos_6 = (i_player_1_square_pos[3] &  i_player_1_square_pos[6] &  i_player_1_square_pos[9]);
    assign p1_win_pos_7 = (i_player_1_square_pos[1] &  i_player_1_square_pos[5] &  i_player_1_square_pos[9]);
    assign p1_win_pos_8 = (i_player_1_square_pos[3] &  i_player_1_square_pos[5] &  i_player_1_square_pos[7]);
    assign i_player_1_win =  ( p1_win_pos_1 |  p1_win_pos_2 |  p1_win_pos_3 |  p1_win_pos_4 |  p1_win_pos_5 |  p1_win_pos_6 |  p1_win_pos_7 |  p1_win_pos_8 );
    
    assign p2_win_pos_1 = (i_player_2_square_pos[1] &  i_player_2_square_pos[2] &  i_player_2_square_pos[3]);
    assign p2_win_pos_2 = (i_player_2_square_pos[4] &  i_player_2_square_pos[5] &  i_player_2_square_pos[6]);
    assign p2_win_pos_3 = (i_player_2_square_pos[7] &  i_player_2_square_pos[8] &  i_player_2_square_pos[9]);
    assign p2_win_pos_4 = (i_player_2_square_pos[1] &  i_player_2_square_pos[4] &  i_player_2_square_pos[7]);
    assign p2_win_pos_5 = (i_player_2_square_pos[2] &  i_player_2_square_pos[5] &  i_player_2_square_pos[8]);
    assign p2_win_pos_6 = (i_player_2_square_pos[3] &  i_player_2_square_pos[6] &  i_player_2_square_pos[9]);
    assign p2_win_pos_7 = (i_player_2_square_pos[1] &  i_player_2_square_pos[5] &  i_player_2_square_pos[9]);
    assign p2_win_pos_8 = (i_player_2_square_pos[3] &  i_player_2_square_pos[5] &  i_player_2_square_pos[7]);
    assign i_player_2_win =  ( p2_win_pos_1 |  p2_win_pos_2 |  p2_win_pos_3 |  p2_win_pos_4 |  p2_win_pos_5 |  p2_win_pos_6 |  p2_win_pos_7 |  p2_win_pos_8 );
    
endmodule