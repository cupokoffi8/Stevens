library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

entity system_clock_generator is
    generic (CLOCK_DIVIDER_RATIO : integer);
	port (
        input_clk_port		: in std_logic;
        system_clk_port	    : out std_logic;
		fwd_clk_port		: out std_logic);
end system_clock_generator;

architecture behavioral_architecture of system_clock_generator is

constant CLOCK_DIVIDER_TC: integer := CLOCK_DIVIDER_RATIO/2;

--Automatic register sizing:
constant COUNT_LEN					: integer := integer(ceil( log2( real(CLOCK_DIVIDER_TC) ) ));
signal system_clk_divider_counter	: unsigned(COUNT_LEN-1 downto 0) := (others => '0');
signal system_clk_tog				: std_logic := '0';  
signal system_clk                   : std_logic := '0';                      				

begin

Clock_divider: process(input_clk_port)
begin
	if rising_edge(input_clk_port) then
	   	if system_clk_divider_counter = CLOCK_DIVIDER_TC-1 then 	  -- Counts to 1/2 clk period
	   		system_clk_tog <= NOT(system_clk_tog);        		      -- T flip flop
			system_clk_divider_counter <= (others => '0');			  -- Reset
		else
			system_clk_divider_counter <= system_clk_divider_counter + 1; -- Count up
		end if;
	end if;
end process Clock_divider;

-- The BUFG component puts the system clock onto the FPGA clocking network
system_clock_buffer: BUFG
    port map (
		I => system_clk_tog,
        O => system_clk);
	system_clk_port <= system_clk;
					
clock_forwarding_ODDR : ODDR
generic map(
	DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"
	INIT => '0', -- Initial value for Q port ('1' or '0')
	SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
port map (
	Q => fwd_clk_port, -- 1-bit DDR output
	C => system_clk, -- 1-bit clock input
	CE => '1', -- 1-bit clock enable input
	D1 => '1', -- 1-bit data input (positive edge)
	D2 => '0', -- 1-bit data input (negative edge)
	R => '0', -- 1-bit reset input
	S => '0' -- 1-bit set input
);	
				
end behavioral_architecture;