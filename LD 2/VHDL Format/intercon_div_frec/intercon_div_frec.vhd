----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:37 05/20/2019 
-- Design Name: 
-- Module Name:    intercon_div_frec - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity intercon_div_frec is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           iE : in  STD_LOGIC;
           oCY : out  STD_LOGIC);
end intercon_div_frec;

architecture Behavioral of intercon_div_frec is
signal saD3, saD4, saQ3, saQ4: STD_LOGIC_VECTOR(1 downto 0);
	signal saD7, saQ7: STD_LOGIC_VECTOR(2 downto 0);
	signal sCY3, sCY4, sCY7, sE3, sE4, sE7: STD_LOGIC;
begin
	sE3 <= iE;
	saD3 <= "00" when saQ3="10" and sE3='1' else
				saQ3+1 when sE3='1' else
				saQ3;
	saQ3 <= "00" when iReset='1' else
				saD3 when rising_edge(iClk);
	sCY3 <= '1' when saQ3="10" else '0';
	
	sE4 <= iE and sCY3;
	saD4 <= "00" when saQ4="11" and sE4='1' else
				saQ4+1 when sE4='1' else
				saQ4;
	saQ4 <= "00" when iReset='1' else
				saD4 when rising_edge(iClk);
	sCY4 <= '1' when saQ4="11" and sCY3='1' else '0';
	
	sE7 <= iE and sCY3 and sCY4;
	saD7 <= "000" when saQ7="110" and sE7='1' else
				saQ7+1 when sE7='1' else
				saQ7;
	saQ7 <= "000" when iReset='1' else
				saD7 when rising_edge(iClk);
	sCY7<= '1' when saQ7="110" and sCY3='1' and sCY4='1' else '0';
	oCY <= sCY7;

end Behavioral;

