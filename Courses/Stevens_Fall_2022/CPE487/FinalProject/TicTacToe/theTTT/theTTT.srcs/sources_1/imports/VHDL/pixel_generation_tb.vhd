library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pixel_generation_tb is
end pixel_generation_tb;


architecture testbench of pixel_generation_tb is


component pixel_generation is
    Port ( 	
		pixel_x_port    :   in std_logic_vector(9 downto 0);    
		pixel_y_port    :   in std_logic_vector(9 downto 0);    
        video_on_port   :   in std_logic;   
        p1_port         :   in std_logic_vector(8 downto 0);
        p2_port         :   in std_logic_vector(8 downto 0);
        color_port      :   out std_logic_vector(11 downto 0)); 
end component;

signal clk: std_logic := '0';
signal pixel_x: in std_logic_vector(9 downto 0) := (others => '0');
signal pixel_y: in std_logic_vector(9 downto 0) := (others => '0');
signal video_on: in std_logic := '0';
signal p1: in std_logic_vector(8 downto 0) := (others => '0');
signal p2: in std_logic_vector(8 downto 0) := (others => '0');
signal color: out std_logic_vector(11 downto 0) := (others => '0');
constant clk_period: time := 40ns; 

begin

clk_process: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

stim_proc: process
begin
    wait for 2*clk_sys_period;   
    video_on <= '1';

    wait;
end process stim_proc;

end testbench;