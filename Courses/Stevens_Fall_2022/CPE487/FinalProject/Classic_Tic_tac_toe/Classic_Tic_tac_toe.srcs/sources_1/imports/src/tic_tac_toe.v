`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//      tic_tac_toe.v
//
// This is the top module of the design, it is used to implement the logic
// of the game as well as displaying the scores on the board.
// The module contains 4 other submodules:
// -- vga640x480: used for interfacing with the VGA port at a 640x480 resolution,
// using a 25MHz clock
// -- keyboard_controller: used for reading keyboard inputs from the PS/2 port
// -- graphics_display: used for displaying the Tic tac toe game board
// as well as the squares placed on the screen
// -- check_winner: used for checking whether a player has won the game
//////////////////////////////////////////////////////////////////////////////////

module tic_tac_toe(
    input  wire CLK,                 // 100 MHz Clock
    input  wire PS2_CLK,             // 1-bit PS2_CLK pin
    input  wire PS2_DATA,            // 1-bit PS2_DATA pin
    input  wire RST_BTN,             // reset button
    output wire VGA_HS_O,            // horizontal sync output
    output wire VGA_VS_O,            // vertical sync output
    output wire [3:0] VGA_R,         // 4-bit VGA red output
    output wire [3:0] VGA_G,         // 4-bit VGA green output
    output wire [3:0] VGA_B,         // 4-bit VGA blue output
    output wire [3:0] led_score_p1,  // 4-bit LED output
    output reg  [3:0] led_score_p2   // 4-bit LED output
    );
      
    wire reset = ~RST_BTN;  // reset (Active on low)     
    wire [7:0] key_code;    // stores the make code (DATA) received from the keyboard
    //make codes for the keys of the keyboard
    parameter [7:0] ARROW_UP = 8'h75;	  // make code for arrow up key
	parameter [7:0] ARROW_DOWN = 8'h72;   // make code for arrow down key
	parameter [7:0] ARROW_LEFT = 8'h6B;   // make code for arrow left key
    parameter [7:0] ARROW_RIGHT = 8'h74;  // make code for arrow right key
    parameter [7:0] ENTER = 8'h5A;        // make code for enter key
    parameter [7:0] SPACE = 8'h29;        // make code for space key
    parameter [7:0] ESCAPE = 8'h76;       // make code for escape key
	
    // values used for assigning the graphics on the VGA screen
    reg  [9:1] player_1_square_pos = 0;             // stores the positions of player 1's squares on the board (also used for preventing invalid move)
    reg  [9:1] player_2_square_pos = 0;             // stores the positions of player 2's squares on the board (also used for preventing invalid move)
    reg  [9:1] selected_square_pos = 9'b000010000;  // stores the position of the currently selected square
    wire [9:0] x;                                   // current pixel x position: 10-bit value: 0-1023 for xmax=640
    wire [8:0] y;                                   // current pixel y position:  9-bit value: 0-511  for ymax=480
    
    // values used for implementing the game logic
    reg [2:0] selected_row    = 3'b010;  // keeps track of the currently selected position
    reg [2:0] selected_column = 3'b010;  // keeps track of the currently selected position
    reg player_nr = 0;                   // keeps track of current player's turn ( 0 - player 1, 1 - player 2) to prevent invalid moves when placing squares
    wire player_1_win, player_2_win;     // tests if either player 1 or player 2 has won the game
    reg [3:0] player_1_score = 0;        // stores the score for player 1 (up to 15 points)
    reg [3:0] player_2_score = 0;        // stores the score for player 2 (up to 15 points)
    reg game_over = 0;                   // tests if the game is over either due to one of the players winning or due to there being no space left

    // module that implements the VGA Controller for 640x480 resolution
    vga640x480 display (
        .i_clk(CLK),
        .i_rst(reset),
        .o_hs(VGA_HS_O), 
        .o_vs(VGA_VS_O), 
        .o_x(x), 
        .o_y(y)
    );
    
    // module that implements the Keyboard Controller
    keyboard_controller keyboard_input(
	    .i_clk(CLK),	        //board clock
        .i_ps2_clk(PS2_CLK),    //keyboard clock and data signals
        .i_ps2_data(PS2_DATA),    
	    .o_key_code(key_code)
   );
    
   // module that displays the game board and the squares placed on the board as well as the currently selected square
   generate_graphics graphics_display(
        .i_VGA_R(VGA_R),
        .i_VGA_B(VGA_B),
        .i_VGA_G(VGA_G),
        .i_selected_square_pos(selected_square_pos),  
        .i_player_1_square_pos(player_1_square_pos),
        .i_player_2_square_pos(player_2_square_pos),
        .i_x(x),                            // current pixel x position: 10-bit value: 0-1023 for xmax=640
        .i_y(y)                             // current pixel y position:  9-bit value: 0-511  for ymax=480
    );
    
    // module that checks whether either player has won the game
    verify_positions check_winner(
        .i_player_1_square_pos(player_1_square_pos),
        .i_player_2_square_pos(player_2_square_pos),
        .i_player_1_win(player_1_win),
        .i_player_2_win(player_2_win)
    );

    always @ (posedge(CLK)) 
    begin
        // resets the starting position of the selected square if ESC or the restart button is pressed
        if(reset | key_code == ESCAPE)
        begin
            selected_row <= 3'b010;
            selected_column <= 3'b010;
        end
            // checks if any arrow key was pressed on the keyboard, if so it changes the position
            // of the currently selected square on the board
            if (!game_over)
            begin    
                if (key_code == ARROW_UP)
                    if (selected_row > 1)
                        selected_row <= selected_row - 1;
                          
                if (key_code == ARROW_DOWN)
                    if (selected_row < 3)
                        selected_row <= selected_row + 1;  
                    
                if (key_code == ARROW_LEFT)
                    if (selected_column > 1)
                        selected_column <= selected_column - 1;
                          
                if (key_code == ARROW_RIGHT)
                    if (selected_column < 3)
                        selected_column <= selected_column + 1;        
                              
                if(selected_column == 1 & selected_row == 1)
                    selected_square_pos <= 9'b000000001;
                if(selected_column == 2 & selected_row == 1)
                    selected_square_pos <= 9'b000000010;
                if(selected_column == 3 & selected_row == 1)
                    selected_square_pos <= 9'b000000100;
                if(selected_column == 1 & selected_row == 2)
                    selected_square_pos <= 9'b000001000;
                if(selected_column == 2 & selected_row == 2)
                    selected_square_pos <= 9'b000010000;
                if(selected_column == 3 & selected_row == 2)
                    selected_square_pos <= 9'b000100000;
                if(selected_column == 1 & selected_row == 3)
                    selected_square_pos <= 9'b001000000;
                if(selected_column == 2 & selected_row == 3)
                    selected_square_pos <= 9'b010000000;
                if(selected_column == 3 & selected_row == 3)
                    selected_square_pos <= 9'b100000000;           
            end   
    end
    
    always @ (posedge(CLK)) 
    begin
        // clears the squares placed on the board and sets the turn to the first player if ESC or the restart button is pressed
        if (reset | key_code == ESCAPE)
        begin
            player_2_square_pos <= 9'b000000000;
            player_1_square_pos <= 9'b000000000;
            player_nr <= 0;
        end
        
        // if the game isn't over checks the currently selected column and row and places a square
        // on the board on that spot when ENTER or SPACE is read from the keyboard
        // if that spot isn't already occupied
        if (!game_over)
        begin
            if (selected_row == 1)
            begin
                if (selected_column == 1 & (key_code == ENTER | key_code == SPACE))
                begin 
                    if (!player_2_square_pos[1] & player_nr == 0) 
                    begin
                        player_1_square_pos[1] <= 1;
                        player_nr <= player_nr+1;
                    end 
                    else
                    if (!player_1_square_pos[1] & player_nr == 1) 
                    begin
                        player_2_square_pos[1] <= 1;
                        player_nr <= player_nr+1; 
                    end
                end
            
                if (selected_column == 2 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[2] & player_nr == 0)
                    begin
                        player_1_square_pos[2] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[2] & player_nr == 1)
                    begin
                        player_2_square_pos[2] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            
                if (selected_column == 3 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[3] & player_nr == 0)
                    begin
                        player_1_square_pos[3] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[3] & player_nr == 1)
                    begin
                        player_2_square_pos[3] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            end
            
            if (selected_row == 2)
            begin
                if (selected_column == 1 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[4] & player_nr == 0)
                    begin
                        player_1_square_pos[4] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[4] & player_nr == 1)
                    begin
                        player_2_square_pos[4] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            
                if (selected_column == 2 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[5] & player_nr == 0)
                    begin
                        player_1_square_pos[5] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[5] & player_nr == 1)
                    begin
                        player_2_square_pos[5] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            
                if (selected_column == 3 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[6] & player_nr == 0)
                    begin
                        player_1_square_pos[6] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[6] & player_nr == 1)
                    begin
                        player_2_square_pos[6] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            end
            
            if (selected_row == 3)
            begin
                if (selected_column == 1 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[7] & player_nr == 0)
                    begin
                        player_1_square_pos[7] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else
                    if (!player_1_square_pos[7] & player_nr == 1)
                    begin
                        player_2_square_pos[7] <= 1; 
                        player_nr <= player_nr+1;
                    end
                end
            
                if (selected_column == 2 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[8] & player_nr == 0)
                    begin
                        player_1_square_pos[8] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else             
                    if (!player_1_square_pos[8] & player_nr == 1)
                    begin
                        player_2_square_pos[8] <= 1;
                        player_nr <= player_nr+1;
                    end
                end
            
                if (selected_column == 3 & (key_code == ENTER | key_code == SPACE))
                begin
                    if (!player_2_square_pos[9] & player_nr == 0)
                    begin
                        player_1_square_pos[9] <= 1;
                        player_nr <= player_nr+1;
                    end
                    else    
                    if (!player_1_square_pos[9] & player_nr == 1)
                    begin
                        player_2_square_pos[9] <= 1;            
                        player_nr <= player_nr+1;
                    end
                end
            end
        end
    end
    
    reg [1:0] player_win = 0;  // stores 2b'00 if neither player won the game, stores 2'b10 if player 1 has won the game, stores 2b'11 if player 2 has won the game

    always @ (posedge(CLK)) 
    begin
        // removes the game over state if ESC or the restart button is pressed
        if (reset | key_code == ESCAPE)
        begin
            game_over<=0;       
            player_win <= 2'b00;
        end
        
        // resets the score only if the reset button was pressed on the board (ESC doesn't reset score)
        if (reset)
        begin
            player_1_score <= 0;
            player_2_score <= 0;
        end
        
        // checks if all the board spots are occupied, if so the game over state is set as true
        if ((9'b111111111 & (player_1_square_pos | player_2_square_pos)) == 9'b111111111)
            game_over <= 1;
        else
            game_over <= 0;
            
        // checks if any player has won, if so the game over state is set as true
        if(player_1_win | player_2_win)
            game_over <= 1;
        
        // if a player has won the game increments the score registers for that player
        if (player_win != 2'b10 & player_win != 2'b11)
        begin
            if (player_1_win)
            begin
                player_1_score <= player_1_score +1;
                player_win <= 2'b10;
            end
    
            if (player_2_win)
            begin
                player_2_score <= player_2_score +1;
                player_win <= 2'b11;
            end   
        end 
    end
    
    // used to dim the green LED used from Arty's RGB LEDs
    reg [7:0] counter = 0;
    reg [7:0] duty_led = 8'b00000010;
    
    // dims the green led from the RGB LEDs used for displaying the score for player 2
    always @ (posedge(CLK))
    begin       
    counter <= counter + 1;
        if (counter < duty_led)
        begin
            led_score_p2 <= player_2_score;
        end
        else
        begin
            led_score_p2 <= 4'b0000;
        end
    end
    
    // displays the score for player 1 on the LEDs
    assign led_score_p1 = player_1_score;
    
endmodule