----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:09 05/20/2019 
-- Design Name: 
-- Module Name:    rec_sec_moore_1 - Behavioral 
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

entity rec_sec_moore_1 is
    Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iData : in  STD_LOGIC;
           oRec : out  STD_LOGIC);
end rec_sec_moore_1;
--asignare johnson pe 3 biti
-- secventa utila 0111
architecture Behavioral of rec_sec_moore_1 is

signal saStareUrmatoare, saStarePrezenta: STD_LOGIC_VECTOR(2 downto 0);--stari Johnson(000,01,011,111)
begin
	saStareUrmatoare <= "001" when  saStarePrezenta="000" and iData='0' else
								"000" when  saStarePrezenta="000" and iData='1' else
								"001" when  saStarePrezenta="001" and iData='0' else
								"011" when  saStarePrezenta="001" and iData='1' else
								"001" when  saStarePrezenta="011" and iData='0' else
								"111" when  saStarePrezenta="011" and iData='1' else
								"001" when  saStarePrezenta="111" and iData='0' else
								"110" when  saStarePrezenta="111" and iData='1' else
								"001" when  saStarePrezenta="110" and iData='0' else
								"000";
	saStarePrezenta <= "000" when iINIT='1' else
							saStareUrmatoare when rising_edge(iClk);
	oRec <= '1' when saStarePrezenta ="110" else
				'0';
end Behavioral;

