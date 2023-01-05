library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;


entity button_interface_tb is
end entity;

architecture testbench of button_interface_tb is

component button_interface is
    Port( clk_port            : in  std_logic;
		  button_port         : in  std_logic;
		  button_db_port      : out std_logic;
		  button_mp_port      : out std_logic);
end component;

signal system_clk				    : std_logic := '0';
signal button_input 			    : std_logic := '0';

--On scope:
signal debounced_input_on_scope     : std_logic := '0';
signal monopulsed_input_on_scope 	: std_logic := '0';

constant clk_period: time := 10 ns;	-- 100 MHz

begin

uut: button_interface port map(		
		clk_port 			=> system_clk,		
        button_port 		=> button_input,
        button_db_port	 	=> debounced_input_on_scope,
        button_mp_port	 	=> monopulsed_input_on_scope );


clkgen_proc: process
begin
	system_clk <= not(system_clk);		-- toggle clk signal
    wait for clk_period/2;	-- OK to use "wait" in testbench
end process clkgen_proc;

stim_proc: process
begin				
	wait for 10*clk_period;
	--LOW to HIGH Transition (button is pressed)
	--Bounce:
	for index in 0 to 7 loop
        button_input <= '0'; wait for clk_period;
        button_input <= '1'; wait for clk_period;
	end loop;
	button_input <= '0'; wait for 10*clk_period;
	button_input <= '1'; wait for clk_period;
	button_input <= '0'; wait for clk_period;
	
	--Settle out at HIGH:
	button_input <= '1'; wait for 570*clk_period;
	
	--Bounce:
	for index in 0 to 7 loop
        button_input <= '0'; wait for clk_period;
        button_input <= '1'; wait for clk_period;
	end loop;
	--Settle out at LOW:
	button_input <= '0'; wait for 570*clk_period;
    wait;
end process stim_proc;

end testbench;