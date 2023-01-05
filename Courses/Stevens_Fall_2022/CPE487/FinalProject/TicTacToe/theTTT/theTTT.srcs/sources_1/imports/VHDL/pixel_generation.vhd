library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

entity pixel_generation is
    port (
        -- inputs from VGA_driver
        pixel_x_port    :   in std_logic_vector(9 downto 0);    -- current pixel's x coordinate
        pixel_y_port    :   in std_logic_vector(9 downto 0);    -- current pixel's y coordinate
        video_on_port   :   in std_logic;   -- accomplish blanking. 1 when inside display area. 0 when outside display area
        -- inputs from game_logic
        p1_port         :   in std_logic_vector(8 downto 0);    -- indicates the blocks that player 1 has dropped a piece
        p2_port         :   in std_logic_vector(8 downto 0);    -- indicates the blocks that player 2 has dropped a piece
        sf_port         :   in std_logic_vector(3 downto 0);    -- indicates the location of the selecting frame
        sf_color_port   :   in std_logic;                       -- indicates which player is dropping next
        p1_win_port     :   in std_logic_vector(8 downto 0);    -- indicates the blocks that make player 1 win
        p2_win_port     :   in std_logic_vector(8 downto 0);    -- indicates the blocks that make player 2 win
        -- output to VGA monitor
        color_port      :   out std_logic_vector(11 downto 0)); -- 12 bits for color coding, 4 for each of RGB
end pixel_generation;

architecture behavior of pixel_generation is

-- Predefined 12-bit colors
constant BLACK  :   std_logic_vector(11 downto 0) := "000000000000";    -- 100% black
constant RED75  :   std_logic_vector(11 downto 0) := "100000000000";    -- 75% red
constant BLUE75 :   std_logic_vector(11 downto 0) := "000000001000";    -- 75% blue
constant GREEN75:   std_logic_vector(11 downto 0) := "000010000000";    -- 75% green
constant WHITE75:   std_logic_vector(11 downto 0) := "110011001100";    -- 50% white

-- coordinates of centers in each block
constant x_center_0 : integer := 106;
constant y_center_0 : integer := 80;
constant x_center_1 : integer := 319;
constant y_center_1 : integer := 240;
constant x_center_2 : integer := 533;
constant y_center_2 : integer := 400;

signal row, column  :   unsigned(9 downto 0);

begin
row <= unsigned(pixel_y_port);
column <= unsigned(pixel_x_port);

pixel_rendering: process(row, column, p1_port, p2_port, sf_port, sf_color_port, video_on_port, p1_win_port, p2_win_port)
begin
    if video_on_port = '1' then
        if row > 0 and row < 160 and column > 0 and column < 213 then
            if p1_win_port(0) = '1' then
                color_port <= RED75;
            elsif p2_win_port(0) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0000" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 10 and row < 150 and column > 10 and column < 203 then
                        case p1_port(0) is
                            when '1' =>
                                if ((column + y_center_0 = row + x_center_0) or (column + row = x_center_0 + y_center_0)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(0) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(0) is
                        when '1' =>
                            if ((column + y_center_0 = row + x_center_0) or (column + row = x_center_0 + y_center_0)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(0) is
                                when '1' =>
                                if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 0 and row < 160 and column > 213 and column < 426 then
            if p1_win_port(1) = '1' then
                color_port <= RED75;
            elsif p2_win_port(1) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0001" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 10 and row < 150 and column > 223 and column < 416 then
                        case p1_port(1) is
                            when '1' =>
                                if ((column + y_center_0 = row + x_center_1) or (column + row = x_center_1 + y_center_0)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(1) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(1) is
                        when '1' =>
                            if ((column + y_center_0 = row + x_center_1) or (column + row = x_center_1 + y_center_0)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(1) is
                                when '1' =>
                                    if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 0 and row < 160 and column > 426 and column < 640 then
            if p1_win_port(2) = '1' then
                color_port <= RED75;
            elsif p2_win_port(2) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0010" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 10 and row < 150 and column > 436 and column < 630 then
                        case p1_port(2) is
                            when '1' =>
                                if ((column + y_center_0 = row + x_center_2) or (column + row = x_center_2 + y_center_0)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(2) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(2) is
                        when '1' =>
                            if ((column + y_center_0 = row + x_center_2) or (column + row = x_center_2 + y_center_0)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_0 - 50 and row < y_center_0 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(2) is
                                when '1' =>
                                    if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_0)*(to_integer(row) - y_center_0) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 160 and row < 320 and column > 0 and column < 213 then
            if p1_win_port(3) = '1' then
                color_port <= RED75;
            elsif p2_win_port(3) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0011" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 170 and row < 310 and column > 10 and column < 203 then
                        case p1_port(3) is
                            when '1' =>
                                if ((column + y_center_1 = row + x_center_0) or (column + row = x_center_0 + y_center_1)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(3) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(3) is
                        when '1' =>
                            if ((column + y_center_1 = row + x_center_0) or (column + row = x_center_0 + y_center_1)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(3) is
                                when '1' =>
                                    if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 160 and row < 320 and column > 213 and column < 426 then
            if p1_win_port(4) = '1' then
                color_port <= RED75;
            elsif p2_win_port(4) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0100" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 170 and row < 310 and column > 223 and column < 416 then
                        case p1_port(4) is
                            when '1' =>
                                if ((column + y_center_1 = row + x_center_1) or (column + row = x_center_1 + y_center_1)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(4) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(4) is
                        when '1' =>
                            if ((column + y_center_1 = row + x_center_1) or (column + row = x_center_1 + y_center_1)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(4) is
                                when '1' =>
                                    if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 160 and row < 320 and column > 426 and column < 640 then
            if p1_win_port(5) = '1' then
                color_port <= RED75;
            elsif p2_win_port(5) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0101" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 170 and row < 310 and column > 436 and column < 630 then
                        case p1_port(5) is
                            when '1' =>
                                if ((column + y_center_1 = row + x_center_2) or (column + row = x_center_2 + y_center_1)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(5) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(5) is
                        when '1' =>
                            if ((column + y_center_1 = row + x_center_2) or (column + row = x_center_2 + y_center_1)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_1 - 50 and row < y_center_1 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(5) is
                                when '1' =>
                                    if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_1)*(to_integer(row) - y_center_1) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 320 and row < 480 and column > 0 and column < 213 then
            if p1_win_port(6) = '1' then
                color_port <= RED75;
            elsif p2_win_port(6) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0110" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 330 and row < 470 and column > 10 and column < 203 then
                        case p1_port(6) is
                            when '1' =>
                                if ((column + y_center_2 = row + x_center_0) or (column + row = x_center_0 + y_center_2)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(6) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - 0) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(6) is
                        when '1' =>
                            if ((column + y_center_2 = row + x_center_0) or (column + row = x_center_0 + y_center_2)) and column > x_center_0 - 50 and column < x_center_0 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(6) is
                                when '1' =>
                                    if (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_0)*(to_integer(column) - x_center_0) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 320 and row < 480 and column > 213 and column < 426 then
            if p1_win_port(7) = '1' then
                color_port <= RED75;
            elsif p2_win_port(7) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "0111" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 330 and row < 470 and column > 223 and column < 416 then
                        case p1_port(7) is
                            when '1' =>
                                if ((column + y_center_2 = row + x_center_1) or (column + row = x_center_1 + y_center_2)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(7) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(7) is
                        when '1' =>
                            if ((column + y_center_2 = row + x_center_1) or (column + row = x_center_1 + y_center_2)) and column > x_center_1 - 50 and column < x_center_1 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(7) is
                                when '1' =>
                                    if (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_1)*(to_integer(column) - x_center_1) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        elsif row > 320 and row < 480 and column > 426 and column < 640 then
            if p1_win_port(8) = '1' then
                color_port <= RED75;
            elsif p2_win_port(8) = '1' then
                color_port <= BLUE75;
            else
                if sf_port = "1000" then
                    if sf_color_port = '0' then
                        color_port <= RED75;
                    else
                        color_port <= BLUE75;
                    end if;
                    if row > 330 and row < 470 and column > 436 and column < 630 then
                        case p1_port(8) is
                            when '1' =>
                                if ((column + y_center_2 = row + x_center_2) or (column + row = x_center_2 + y_center_2)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                    color_port <= RED75;
                                else 
                                    color_port <= WHITE75;
                                end if;
                            when others =>
                                case p2_port(8) is
                                    when '1' =>
                                        if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                            color_port <= BLUE75;
                                        else
                                            color_port <= WHITE75;
                                        end if;
                                    when others =>
                                        color_port <= WHITE75;
                                end case;
                        end case;
                    end if;
                else
                    case p1_port(8) is
                        when '1' =>
                            if ((column + y_center_2 = row + x_center_2) or (column + row = x_center_2 + y_center_2)) and column > x_center_2 - 50 and column < x_center_2 + 50 and row > y_center_2 - 50 and row < y_center_2 + 50 then
                                color_port <= RED75;
                            else 
                                color_port <= WHITE75;
                            end if;
                        when others =>
                            case p2_port(8) is
                                when '1' =>
                                    if (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) > 49*49 and (to_integer(column) - x_center_2)*(to_integer(column) - x_center_2) + (to_integer(row) - y_center_2)*(to_integer(row) - y_center_2) < 50*50 then
                                        color_port <= BLUE75;
                                    else
                                        color_port <= WHITE75;
                                    end if;
                                when others =>
                                    color_port <= WHITE75;
                            end case;
                    end case;
                end if;
            end if;
        else
            color_port <= BLACK;
        end if;
    else
        color_port <= BLACK;
    end if;
end process pixel_rendering;

end behavior;
