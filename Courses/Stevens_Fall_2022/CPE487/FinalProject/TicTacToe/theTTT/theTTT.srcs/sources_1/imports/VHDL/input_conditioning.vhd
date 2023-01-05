library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

entity button_interface is
    Port( clk_port            : in  std_logic;
		  button_port         : in  std_logic;
		  button_db_port      : out std_logic;
		  button_mp_port      : out std_logic);	
end button_interface;

architecture Behavioral of button_interface is
signal double_flop_synchronizer   : std_logic_vector(1 downto 0) := "00";
signal synchronized_button_press  : std_logic := '0';
type state_type is (BUTTON_OUTPUT_LOW,  LOW_TO_HIGH_TRANSITION, 
					BUTTON_OUTPUT_HIGH, HIGH_TO_LOW_TRANSITION);
signal current_state     : state_type := BUTTON_OUTPUT_LOW;
signal next_state        : state_type;
signal timeout_counter   : unsigned(8 downto 0) := (others => '0');
signal reset             : std_logic := '0';
signal timeout           : std_logic := '0';
constant MAXCOUNT        : integer := 500;
signal debounced_input   : std_logic := '0';
signal mp_delay_register : std_logic := '0';

begin

synchronize: process(clk_port, double_flop_synchronizer)
begin
    if rising_edge(clk_port) then
        double_flop_synchronizer(1) <= button_port;
		double_flop_synchronizer(0) <= double_flop_synchronizer(1);
    end if;
    synchronized_button_press <= double_flop_synchronizer(0);
end process;

--State Update Logic
state_update: process(clk_port)
begin
    if rising_edge(clk_port) then
        current_state <= next_state;
    end if;
end process;

--Next State Logic
next_state_logic: process(current_state, synchronized_button_press, timeout)
begin
    next_state <= current_state;
    case current_state is
        when BUTTON_OUTPUT_LOW =>
            if synchronized_button_press = '1' then
                next_state <= LOW_TO_HIGH_TRANSITION;
            end if;
        
        when LOW_TO_HIGH_TRANSITION =>
            if synchronized_button_press = '0' then
                next_state <= BUTTON_OUTPUT_LOW;
            elsif timeout = '1' then
                next_state <= BUTTON_OUTPUT_HIGH;
            end if;
            
        when BUTTON_OUTPUT_HIGH =>
            if synchronized_button_press = '0' then
                next_state <= HIGH_TO_LOW_TRANSITION;
            end if;
            
        when HIGH_TO_LOW_TRANSITION =>
            if synchronized_button_press = '1' then
                next_state <= BUTTON_OUTPUT_HIGH;
            elsif timeout = '1' then
                next_state <= BUTTON_OUTPUT_LOW;
            end if;
    end case;
end process;

--Output Logic
output_logic: process(current_state)
begin
    case current_state is
        when BUTTON_OUTPUT_LOW =>
            reset             <= '1';
            debounced_input   <= '0';
            
        when LOW_TO_HIGH_TRANSITION =>
            reset             <= '0';
            debounced_input   <= '0';
            
        when BUTTON_OUTPUT_HIGH =>
            reset       	  <= '1';
            debounced_input   <= '1';
        
        when HIGH_TO_LOW_TRANSITION =>
            reset       	  <= '0';
            debounced_input   <= '1';
    end case;
end process;
button_db_port <= debounced_input;

--Timer Subroutine
timer: process(clk_port)
begin
    if rising_edge(clk_port) then
        if reset = '1' then
            timeout_counter <= (others => '0'); 
        else
            timeout_counter <= timeout_counter + 1;
        end if;
    end if;
end process;

--Timeout Flag
timeout_flag: process(timeout_counter)
begin
    if timeout_counter = MAXCOUNT - 1 then
        timeout <= '1';
    else
        timeout <= '0';
    end if;
end process;

monopulser: process(clk_port, debounced_input, mp_delay_register)
begin	
	if rising_edge(clk_port) then	
		mp_delay_register <= debounced_input;
	end if;
	button_mp_port <= debounced_input and not(mp_delay_register);
end process monopulser;
end Behavioral;
