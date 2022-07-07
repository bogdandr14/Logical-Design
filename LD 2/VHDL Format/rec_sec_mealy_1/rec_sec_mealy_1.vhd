----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:15 05/20/2019 
-- Design Name: 
-- Module Name:    rec_sec_mealy_1 - Behavioral 
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

entity rec_sec_mealy_1 is
    Port ( iClk : in  STD_LOGIC;
           iData : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           oRec : out  STD_LOGIC);
end rec_sec_mealy_1;
-- secventa utila 0111
architecture Behavioral of rec_sec_mealy_1 is
	signal saStareUrmatoare, saStarePrezenta: STD_LOGIC_VECTOR(1 downto 0);--stari Gray/Johnson(00,01,11,10)
begin
	saStareUrmatoare <= "01" when  saStarePrezenta="00" and iData='0' else
								"00" when  saStarePrezenta="00" and iData='1' else
								"00" when  saStarePrezenta="01" and iData='0' else
								"11" when  saStarePrezenta="01" and iData='1' else
								"01" when  saStarePrezenta="11" and iData='0' else
								"10" when  saStarePrezenta="11" and iData='1' else
								"01" when  saStarePrezenta="10" and iData='0' else
								"00" when  saStarePrezenta="10" and iData='1' else
								"00";
	saStarePrezenta <= "00" when iINIT='1' else
							saStareUrmatoare when rising_edge(iClk);
	oRec <= '1' when saStarePrezenta ="10" and iData='1' else
				'0';
end Behavioral;

