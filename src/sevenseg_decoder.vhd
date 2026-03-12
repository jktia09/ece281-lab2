----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2026 11:02:52 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is
begin

--design by active LOW (its on when its 0)
-- do this for A-E
with i_Hex select
o_seg_n <=  -- 0 --left seven bits(OUTPUT) --right 4 bits(INPUT)
            --0111111 THIS IS ALR REVERSED (bc G is the MSB) BUT YOU NEED TO FLIP IT BC ITS FLIPPED IN THE TOPBASYS
            "1000000" when "0000",
            -- 1 : 0000110
            "1111001" when "0001",
            -- 2 : 1011011
            "0100100" when "0010",
            -- 3 : 1001111
            "0110000" when "0011",
            -- 4 : 1100110
            "0011001" when "0100",
            -- 5 : 1101101
            "0010010" when "0101",
            -- 6 : 1111101
            "0000010" when "0110",
            -- 7 : 0000111
            "1111000" when "0111",
            -- 8 : 1111111
            "0000000" when "1000",
            -- 9 : 1100111
            "0011000" when "1001",
            -- A : 1110111
            "0001000" when "1010",
            -- B : 1111100
            "0000011" when "1011",
            -- C : 1011000
            "0100111" when "1100",
            -- D : 1011110
            "0100001" when "1101",
            -- E : 1111001
            "0000110" when "1110",
            -- F (15) go all the way from 0 to F  : 1110001
            "0001110" when "1111",
            
            "1111111" when others;
            --write 16 values...
        
-- G is MSB
-- A is LSB

end Behavioral;
