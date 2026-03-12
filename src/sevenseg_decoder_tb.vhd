----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2026 02:51:33 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder
    port(
         i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
         o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    --input
    signal w_Hex : STD_LOGIC_VECTOR(3 downto 0);
    --output
    signal w_seg_n : STD_LOGIC_VECTOR(6 downto 0);
    
  
        
begin
-- test all inputs 0-F
    uut: sevenseg_decoder port map (
        i_Hex => w_Hex,
        o_seg_n => w_seg_n
    );
    process
    begin
        w_Hex <= x"0"; 
            wait for 10 ns;
            assert w_seg_n = "1000000" report "error x0" severity failure;
        w_Hex <= x"1"; 
            wait for 10 ns;    
            assert w_seg_n = "1111001" report "error x1" severity failure;        
        w_Hex <= x"2"; 
            wait for 10 ns;
            assert w_seg_n = "0100100" report "error x2" severity failure;          
        w_Hex <= x"3"; 
            wait for 10 ns;
            assert w_seg_n = "0110000" report "error x3" severity failure;          
        w_Hex <= x"4"; 
            wait for 10 ns;
            assert w_seg_n = "0011001" report "error x4" severity failure;         
        w_Hex <= x"5"; 
            wait for 10 ns;
            assert w_seg_n = "0010010" report "error x5" severity failure;          
        w_Hex <= x"6"; 
            wait for 10 ns;   
            assert w_seg_n = "0000010" report "error x6" severity failure;               
        w_Hex <= x"7"; 
            wait for 10 ns;  
            assert w_seg_n = "1111000" report "error x7" severity failure;          
        w_Hex <= x"8"; 
            wait for 10 ns;
            assert w_seg_n = "0000000" report "error x8" severity failure;          
        w_Hex <= x"9"; 
            wait for 10 ns; 
            assert w_seg_n = "0011000" report "error x9" severity failure;          
        w_Hex <= x"A"; 
            wait for 10 ns;
            assert w_seg_n = "0001000" report "error xA" severity failure;          
        w_Hex <= x"B"; 
            wait for 10 ns;
            assert w_seg_n = "0000011" report "error xB" severity failure;          
        w_Hex <= x"C"; 
            wait for 10 ns; 
            assert w_seg_n = "0100111" report "error xC" severity failure;          
        w_Hex <= x"D"; 
            wait for 10 ns;
            assert w_seg_n = "0100001" report "error xD" severity failure;          
        w_Hex <= x"E"; 
            wait for 10 ns; 
            assert w_seg_n = "0000110" report "error xE" severity failure;           
        w_Hex <= x"F"; 
            wait for 10 ns;
            assert w_seg_n = "0001110" report "error xF" severity failure;          
        
        wait;

end process;                                           

end Behavioral;
