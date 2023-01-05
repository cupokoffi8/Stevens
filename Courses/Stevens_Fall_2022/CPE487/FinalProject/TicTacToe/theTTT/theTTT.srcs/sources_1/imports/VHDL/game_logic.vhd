library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

entity game_logic is
    port (
        -- system clock
        clk_port    :   in std_logic;   -- 25 MHz clock
        -- inputs from external ports/input conditioning circuits
		start_port  :   in std_logic;	-- start a new game
		reset_port  :   in std_logic;	-- clear the board 
		drop_port   :   in std_logic;   -- put a piece on the selected position
        up_port     :   in std_logic;   -- move selecting frame up
        down_port   :   in std_logic;   -- move selecting frame down
        left_port   :   in std_logic;   -- move selecting frame left
        right_port  :   in std_logic;   -- move selecting frame right
        -- output to pixel generation circuit
        p1_port     :   out std_logic_vector(8 downto 0);   -- indicates the blocks that player 1 has dropped a piece
        p2_port     :   out std_logic_vector(8 downto 0);   -- indicates the blocks that player 2 has dropped a piece
        sf_port     :   out std_logic_vector(3 downto 0);   -- indicates the location of the selecting frame
        sf_color_port:  out std_logic;                      -- indicates which player is dropping next
        p1_win_port  :   out std_logic_vector(8 downto 0);  -- indicates the blocks that make player 1 win
        p2_win_port  :   out std_logic_vector(8 downto 0));  -- indicates the blocks that make player 2 win
end game_logic;

architecture behavior of game_logic is

-- finite state machine
type state_type is (sStart, sPick, sTopLeft1, sTopMid1, sTopRight1, 
                                    sCtrLeft1, sCtrMid1, sCtrRight1, 
                                    sBtmLeft1, sBtmMid1, SBtmRight1,
                                   sTopLeft2, sTopMid2, sTopRight2, 
                                    sCtrLeft2, sCtrMid2, sCtrRight2, 
                                    sBtmLeft2, sBtmMid2, SBtmRight2, 
                    sDrop1, sDrop2, sCheck, sTie, sP1_win_0, sP1_win_1, sP1_win_2, sP1_win_3, sP1_win_4, sP1_win_5, sP1_win_6, sP1_win_7,
                                                    sP2_win_0, sP2_win_1, sP2_win_2, sP2_win_3, sP2_win_4, sP2_win_5, sP2_win_6, sP2_win_7);
signal curr_state : state_type := sStart;
signal next_state : state_type;
signal p1_position, p2_position :   unsigned(8 downto 0) := (others => '0');
-- indicates the location of selecting frame
signal sf_position: unsigned(8 downto 0);
-- counter that counts how many frames have been selected 
signal counter: unsigned(3 downto 0);

signal p1_position_update_en: std_logic;   -- enable the update of position of player 1's pieces
signal p2_position_update_en: std_logic;   -- enable the update of position of player 2's pieces
signal position_update_reset: std_logic;    -- reset position of pieces

signal counter_en: std_logic;   -- enable counter to increment
signal counter_reset: std_logic;    -- reset counter
signal counter_pause: std_logic;    -- if player dropped on an occupied block counter would pause

signal sf_position_idx: std_logic_vector(3 downto 0); -- indexing selecting frames, 9 blocks so 4 bits

begin

-- State update:		
StateUpdate: process(clk_port)
begin
	if rising_edge(clk_port) then
		curr_state <= next_state;
	end if;
end process StateUpdate;

-- Next state logic:
NextStateLogic: process(curr_state, start_port, reset_port, drop_port, up_port, down_port, left_port, right_port, p1_position, p2_position, counter, counter_pause)
begin
	next_state <= curr_state;
	case curr_state is
        when sStart =>
            if reset_port = '0' then
                if start_port = '1' then
                    next_state <= sPick;
                end if;
            end if;
        when sPick =>
            if reset_port = '1' then
                next_state <= sStart;
            elsif counter = "0000" or counter = "0010" or counter = "0100" or counter = "0110" or counter = "1000" then	--player 1's round
                next_state <= sCtrMid1;
            elsif counter = "0001" or counter = "0011" or counter = "0101" or counter = "0111" then	--player 2's round 
                next_state <= sCtrMid2;
            else
                next_state <= sStart;   -- counter only goes from 0 to 9 so should never happen
            end if;
        when sCtrMid1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sTopMid1;
                    elsif down_port = '1' then
                        next_state <= sBtmMid1;
                    elsif left_port = '1' then
                        next_state <= sCtrLeft1;
                    elsif right_port = '1' then
                        next_state <= sCtrRight1;
                    end if;
                end if;
            end if;
        when sCtrMid2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sTopMid2;
                    elsif down_port = '1' then
                        next_state <= sBtmMid2;
                    elsif left_port = '1' then
                        next_state <= sCtrLeft2;
                    elsif right_port = '1' then
                        next_state <= sCtrRight2;
                    end if;
                end if;
            end if;
        when sCtrLeft1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sTopLeft1;
                    elsif down_port = '1' then
                        next_state <= sBtmLeft1;
                    elsif right_port = '1' then
                        next_state <= sCtrMid1;
                    end if;
                end if;
            end if;
        when sCtrLeft2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sTopLeft2;
                    elsif down_port = '1' then
                        next_state <= sBtmLeft2;
                    elsif right_port = '1' then
                        next_state <= sCtrMid2;
                    end if;
                end if;
            end if;    
        when sCtrRight1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sTopRight1;
                    elsif down_port = '1' then
                        next_state <= sBtmRight1;
                    elsif left_port = '1' then
                        next_state <= sCtrMid1;
                    end if;
                end if;
            end if;
        when sCtrRight2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sTopRight2;
                    elsif down_port = '1' then
                        next_state <= sBtmRight2;
                    elsif left_port = '1' then
                        next_state <= sCtrMid2;
                    end if;
                end if;
            end if;
        when sTopMid1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if down_port = '1' then
                        next_state <= sCtrMid1;
                    elsif left_port = '1' then
                        next_state <= sTopLeft1;
                    elsif right_port = '1' then
                        next_state <= sTopRight1;
                    end if;
                end if;
            end if;
        when sTopMid2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if down_port = '1' then
                        next_state <= sCtrMid2;
                    elsif left_port = '1' then
                        next_state <= sTopLeft2;
                    elsif right_port = '1' then
                        next_state <= sTopRight2;
                    end if;
                end if;
            end if;
        when sTopLeft1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if down_port = '1' then
                        next_state <= sCtrLeft1;
                    elsif right_port = '1' then
                        next_state <= sTopMid1;
                    end if;
                end if;
            end if;
        when sTopLeft2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if down_port = '1' then
                        next_state <= sCtrLeft2;
                    elsif right_port = '1' then
                        next_state <= sTopMid2;
                    end if;
                end if;
            end if;
        when sTopRight1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if down_port = '1' then
                        next_state <= sCtrRight1;
                    elsif left_port = '1' then
                        next_state <= sTopMid1;
                    end if;
                end if;
            end if;
        when sTopRight2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if down_port = '1' then
                        next_state <= sCtrRight2;
                    elsif left_port = '1' then
                        next_state <= sTopMid2;
                    end if;
                end if;
            end if;
        when sBtmMid1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sCtrMid1;
                    elsif left_port = '1' then
                        next_state <= sBtmLeft1;
                    elsif right_port = '1' then
                        next_state <= sBtmRight1;
                    end if;
                end if;
            end if;
        when sBtmMid2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sCtrMid2;
                    elsif left_port = '1' then
                        next_state <= sBtmLeft2;
                    elsif right_port = '1' then
                        next_state <= sBtmRight2;
                    end if;
                end if;
            end if;
        when sBtmLeft1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sCtrLeft1;
                    elsif right_port = '1' then
                        next_state <= sBtmMid1;
                    end if;
                end if;
            end if;
        when sBtmLeft2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sCtrLeft2;
                    elsif right_port = '1' then
                        next_state <= sBtmMid2;
                    end if;
                end if;
            end if;
        when sBtmRight1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop1;
                else
                    if up_port = '1' then
                        next_state <= sCtrRight1;
                    elsif left_port = '1' then
                        next_state <= sBtmMid1;
                    end if;
                end if;
            end if;
        when sBtmRight2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                if drop_port = '1' then
                    next_state <= sDrop2;
                else
                    if up_port = '1' then
                        next_state <= sCtrRight2;
                    elsif left_port = '1' then
                        next_state <= sBtmMid2;
                    end if;
                end if;
            end if;    
        When sDrop1 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                next_state <= sCheck;
            end if;
        when sDrop2 =>
            if reset_port = '1' then
                next_state <= sStart;
            else
                next_state <= sCheck;
            end if;
        when sCheck =>
            if (p1_position(0) = '1' and p1_position(1) = '1' and p1_position(2) = '1') then
                next_state <= sP1_win_0;
            elsif (p1_position(3) = '1' and p1_position(4) = '1' and p1_position(5) = '1') then
                next_state <= sP1_win_1;
            elsif (p1_position(6) = '1' and p1_position(7) = '1' and p1_position(8) = '1') then
                next_state <= sP1_win_2;
            elsif (p1_position(0) = '1' and p1_position(3) = '1' and p1_position(6) = '1') then
                next_state <= sP1_win_3;
            elsif (p1_position(1) = '1' and p1_position(4) = '1' and p1_position(7) = '1') then
                next_state <= sP1_win_4;
            elsif (p1_position(2) = '1' and p1_position(5) = '1' and p1_position(8) = '1') then
                next_state <= sP1_win_5;
            elsif (p1_position(0) = '1' and p1_position(4) = '1' and p1_position(8) = '1') then
                next_state <= sP1_win_6;
            elsif (p1_position(2) = '1' and p1_position(4) = '1' and p1_position(6) = '1') then
                next_state <= sP1_win_7;
            elsif (p2_position(0) = '1' and p2_position(1) = '1' and p2_position(2) = '1') then
                next_state <= sP2_win_0;
            elsif (p2_position(3) = '1' and p2_position(4) = '1' and p2_position(5) = '1') then
                next_state <= sP2_win_1;
            elsif (p2_position(6) = '1' and p2_position(7) = '1' and p2_position(8) = '1') then
                next_state <= sP2_win_2;
            elsif (p2_position(0) = '1' and p2_position(3) = '1' and p2_position(6) = '1') then
                next_state <= sP2_win_3;
            elsif (p2_position(1) = '1' and p2_position(4) = '1' and p2_position(7) = '1') then
                next_state <= sP2_win_4;
            elsif (p2_position(2) = '1' and p2_position(5) = '1' and p2_position(8) = '1') then
                next_state <= sP2_win_5;
            elsif (p2_position(0) = '1' and p2_position(4) = '1' and p2_position(8) = '1') then
                next_state <= sP2_win_6;
            elsif (p2_position(2) = '1' and p2_position(4) = '1' and p2_position(6) = '1') then
                next_state <= sP2_win_7;
            elsif counter = "1001" then	-- if counter goes to 9, meaning there is no free space on the chessboard
                next_state <= sTie;
            else
                next_state <= sPick;
            end if;
        when others =>
            if reset_port = '1' then
                next_state <= sStart;
            end if;
    end case;
end process NextStateLogic;

-- Output logic:
OutputLogic: process(curr_state)
begin
    -- default values
    p1_win_port <= (others => '0');
    p2_win_port <= (others => '0');
    p1_position_update_en <= '0';
    p2_position_update_en <= '0';
    position_update_reset <= '0';
    counter_en <= '0';
    counter_reset <= '0';
    sf_position_idx <= "1001";
    sf_color_port <= '0';
    -- output in each state
	case curr_state is
		when sStart =>
            position_update_reset <= '1';
            counter_reset <= '1';
        When sPick =>
        When sTopLeft1 =>
            sf_position_idx <= "0000";
        When sTopMid1 =>
            sf_position_idx <= "0001";
        When sTopRight1 =>
            sf_position_idx <= "0010";
        When sCtrLeft1 =>
            sf_position_idx <= "0011";
        When sCtrMid1 =>
            sf_position_idx <= "0100";
        When sCtrRight1 =>
            sf_position_idx <= "0101";
        When sBtmLeft1 =>
            sf_position_idx <= "0110";
        When sBtmMid1 =>
            sf_position_idx <= "0111";
        When SBtmRight1 =>
            sf_position_idx <= "1000";
         When sTopLeft2 =>
            sf_position_idx <= "0000";
            sf_color_port <= '1';
        When sTopMid2 =>
            sf_position_idx <= "0001";
            sf_color_port <= '1';
        When sTopRight2 =>
            sf_position_idx <= "0010";
            sf_color_port <= '1';
        When sCtrLeft2 =>
            sf_position_idx <= "0011";
            sf_color_port <= '1';
        When sCtrMid2 =>
            sf_position_idx <= "0100";
            sf_color_port <= '1';
        When sCtrRight2 =>
            sf_position_idx <= "0101";
            sf_color_port <= '1';
        When sBtmLeft2 =>
            sf_position_idx <= "0110";
            sf_color_port <= '1';
        When sBtmMid2 =>
            sf_position_idx <= "0111";
            sf_color_port <= '1';
        When sBtmRight2 =>
            sf_position_idx <= "1000";
            sf_color_port <= '1';
        When sDrop1 =>
            p1_position_update_en <= '1';
            counter_en <= '1';
        when sDrop2 =>
            p2_position_update_en <= '1';
            counter_en <= '1';
        when sCheck =>
        when sP1_win_0 =>
            p1_win_port <= "000000111";
        when sP1_win_1 =>
            p1_win_port <= "000111000";
        when sP1_win_2 =>
            p1_win_port <= "111000000";
        when sP1_win_3 =>
            p1_win_port <= "001001001";
        when sP1_win_4 =>
            p1_win_port <= "010010010";
        when sP1_win_5 =>
            p1_win_port <= "100100100";
        when sP1_win_6 =>
            p1_win_port <= "100010001";
        when sP1_win_7 =>
            p1_win_port <= "001010100";
        when sP2_win_0 =>
            p2_win_port <= "000000111";
        when sP2_win_1 =>
            p2_win_port <= "000111000";
        when sP2_win_2 =>
            p2_win_port <= "111000000";
        when sP2_win_3 =>
            p2_win_port <= "001001001";
        when sP2_win_4 =>
            p2_win_port <= "010010010";
        when sP2_win_5 =>
            p2_win_port <= "100100100";
        when sP2_win_6 =>
            p2_win_port <= "100010001";
        when sP2_win_7 =>
            p2_win_port <= "001010100";
        when others => null;
	end case;
end process OutputLogic;

-- Piece positions register file:
PositionUpdate: process(clk_port, position_update_reset, p1_position_update_en, p2_position_update_en, sf_position)
begin
    if rising_edge(clk_port) then
        if position_update_reset = '1' then
            p1_position <= (others => '0');
            p2_position <= (others => '0');
        else
            if (p1_position and sf_position) = "000000000" and (p2_position and sf_position) = "000000000" then -- player 1/2 is not dropping on the spot that has already been dropped
                counter_pause <= '0';
                if p1_position_update_en = '1' then
                    p1_position <= p1_position + sf_position;
                elsif p2_position_update_en = '1' then
                    p2_position <= p2_position + sf_position;
                end if;
            else
                counter_pause <= '1';
            end if;
        end if;
	end if;
end process PositionUpdate;

-- Counter register file:
CounterUpdate: process(clk_port, counter_reset, counter_en, counter_pause)
begin
    if rising_edge(clk_port) then
        if counter_reset = '1' then
            counter <= "0000";
        elsif counter_pause = '0' then
            if counter_en = '1' then
                counter <= counter + 1;
            end if;
        end if;
    end if;
end process CounterUpdate;

-- Selecting frame register file:
SelectingFrameUpdate: process(clk_port, sf_position_idx)
begin
    if rising_edge(clk_port) then
        case sf_position_idx is
            when "0000" =>
                sf_position <= "000000001";
            when "0001" =>
                sf_position <= "000000010";
            when "0010" =>
                sf_position <= "000000100";
            when "0011" =>
                sf_position <= "000001000";
            when "0100" =>
                sf_position <= "000010000";
            when "0101" =>
                sf_position <= "000100000";
            when "0110" =>
                sf_position <= "001000000";
            when "0111" =>
                sf_position <= "010000000";
            when "1000" =>
                sf_position <= "100000000";
            when others =>
                null;
        end case;
    end if;
end process SelectingFrameUpdate;

p1_port <= std_logic_vector(p1_position);
p2_port <= std_logic_vector(p2_position);
sf_port <= sf_position_idx;

end behavior;
