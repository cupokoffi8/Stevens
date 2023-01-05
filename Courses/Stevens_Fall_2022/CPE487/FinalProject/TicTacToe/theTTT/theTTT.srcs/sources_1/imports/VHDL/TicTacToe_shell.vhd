library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;			
use ieee.math_real.all;				
library UNISIM;						
use UNISIM.Vcomponents.ALL;

entity TicTacToe_shell is
    port (
        clk_ext_port    : in std_logic;                     
        start_ext_port  : in std_logic;                     
        reset_ext_port  : in std_logic;                     
        drop_ext_port   : in std_logic;                     
        btnU_ext_port   : in std_logic;                     
        btnD_ext_port   : in std_logic;                     
        btnL_ext_port   : in std_logic;                     
        btnR_ext_port   : in std_logic;                     
        color_ext_port  : out std_logic_vector(11 downto 0);
        Hsync_ext_port  : out std_logic;                    
        Vsync_ext_port  : out std_logic                     
    );
end TicTacToe_shell;

architecture behavior of TicTacToe_shell is

component system_clock_generator is
	generic (
	   CLOCK_DIVIDER_RATIO : integer);
    port (
        input_clk_port		: in  std_logic;    
        system_clk_port	    : out std_logic;    
		fwd_clk_port		: out std_logic);   
end component;

component button_interface is
    Port( clk_port            : in  std_logic;  
		  button_port         : in  std_logic;  
		  button_db_port      : out std_logic;  
		  button_mp_port      : out std_logic);	
end component;

component VGA_driver is
    port (  vclk_port       :	in	STD_LOGIC;                      
            Vsync_port      : 	out	STD_LOGIC;                      
            Hsync_port      : 	out	STD_LOGIC;                      
            video_on_port   :	out	STD_LOGIC;                       
            pixel_x_port	:	out	STD_LOGIC_VECTOR(9 downto 0);   
            pixel_y_port	:	out	STD_LOGIC_VECTOR(9 downto 0));  
end component;

component game_logic is
    port (  clk_port    :   in std_logic;                       
            start_port  :   in std_logic;	                    
            reset_port  :   in std_logic;	                    
            drop_port   :   in std_logic;                       
            up_port     :   in std_logic;                       
            down_port   :   in std_logic;                       
            left_port   :   in std_logic;                       
            right_port  :   in std_logic;                       
            p1_port     :   out std_logic_vector(8 downto 0);   
            p2_port     :   out std_logic_vector(8 downto 0);   
            sf_port     :   out std_logic_vector(3 downto 0);   
            sf_color_port:  out std_logic;                      
            p1_win_port :   out std_logic_vector(8 downto 0);    
            p2_win_port :   out std_logic_vector(8 downto 0));   
end component;

component pixel_generation is
    port (  pixel_x_port    :   in std_logic_vector(9 downto 0);    
            pixel_y_port    :   in std_logic_vector(9 downto 0);    
            video_on_port   :   in std_logic;   
            p1_port         :   in std_logic_vector(8 downto 0);
            p2_port         :   in std_logic_vector(8 downto 0);
            sf_port         :   in std_logic_vector(3 downto 0);
            sf_color_port   :   in std_logic;                      
            p1_win_port     :   in std_logic_vector(8 downto 0);    
            p2_win_port     :   in std_logic_vector(8 downto 0);    
            color_port      :   out std_logic_vector(11 downto 0)); 
end component;

signal system_clk : std_logic;
signal x: std_logic_vector(9 downto 0);
signal y: std_logic_vector(9 downto 0);
signal video_on: std_logic;
signal drop: std_logic;
signal up: std_logic;
signal down: std_logic;
signal left: std_logic;
signal right: std_logic;
signal p1: std_logic_vector(8 downto 0);
signal p2: std_logic_vector(8 downto 0);
signal sf: std_logic_vector(3 downto 0);
signal sf_color: std_logic;
signal p1_win: std_logic_vector(8 downto 0);
signal p2_win: std_logic_vector(8 downto 0);

begin

clocking: system_clock_generator 
generic map(
	CLOCK_DIVIDER_RATIO => 4)
port map(
	input_clk_port 		=> clk_ext_port,
	system_clk_port 	=> system_clk,
	fwd_clk_port		=> open);

drop_monopulse: button_interface 
port map(
    clk_port            => system_clk, 
    button_port         => drop_ext_port,
    button_db_port      => open,
    button_mp_port      => drop);

up_monopulse: button_interface
port map(
    clk_port            => system_clk, 
    button_port         => btnU_ext_port,
    button_db_port      => open,
    button_mp_port      => up); 

down_monopulse: button_interface 
port map(
    clk_port            => system_clk, 
    button_port         => btnD_ext_port,
    button_db_port      => open,
    button_mp_port      => down);

left_monopulse: button_interface
port map(
    clk_port            => system_clk, 
    button_port         => btnL_ext_port,
    button_db_port      => open,
    button_mp_port      => left); 

right_monopulse: button_interface 
port map(
    clk_port            => system_clk, 
    button_port         => btnR_ext_port,
    button_db_port      => open,
    button_mp_port      => right); 

game_logic_control: game_logic 
port map(
    clk_port            => system_clk,
    start_port          => start_ext_port,
    reset_port          => reset_ext_port,
    drop_port           => drop,
    up_port             => up,
    down_port           => down,
    left_port           => left,
    right_port          => right,
    p1_port             => p1,
    p2_port             => p2,
    sf_port             => sf,
    sf_color_port       => sf_color,
    p1_win_port         => p1_win,
    p2_win_port         => p2_win);

vga_control: VGA_driver 
port map(
    vclk_port       => system_clk,
    Vsync_port      => Vsync_ext_port,
    Hsync_port      => Hsync_ext_port,
    video_on_port   => video_on,
    pixel_x_port	=> x,
    pixel_y_port	=> y);

pixel_generation_datapath: pixel_generation 
port map(
    pixel_x_port    => x,
    pixel_y_port    => y,
    video_on_port   => video_on,
    p1_port         => p1,
    p2_port         => p2,
    sf_port         => sf,
    sf_color_port   => sf_color,
    p1_win_port     => p1_win,
    p2_win_port     => p2_win,
    color_port      => color_ext_port);

end behavior;
