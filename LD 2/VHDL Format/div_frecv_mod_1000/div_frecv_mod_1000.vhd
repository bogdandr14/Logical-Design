----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:22 05/20/2019 
-- Design Name: 
-- Module Name:    div_frecv_mod_1000 - Behavioral 
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

entity div_frecv_mod_1000 is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oCY : out  STD_LOGIC);
end div_frecv_mod_1000;

architecture Behavioral of div_frecv_mod_1000 is
	signal saStarePrezenta, saStareUrmatoare: STD_LOGIC_VECTOR (9 downto 0);
begin
	saStareUrmatoare <= "0000000000" when saStarePrezenta="1111100111" else
							saStarePrezenta+1;
	saStarePrezenta <= "0000000000" when iReset='1' else
							saStareUrmatoare when rising_edge(iClk);
	oCY<='1' when saStarePrezenta="1111100111" else
			'0';

end Behavioral;

