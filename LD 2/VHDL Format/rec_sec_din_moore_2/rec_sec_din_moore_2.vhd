----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:35 05/20/2019 
-- Design Name: 
-- Module Name:    rec_sec_din_moore_2 - Behavioral 
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

entity rec_sec_din_moore_2 is
    Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iData : in  STD_LOGIC;
           oRec : out  STD_LOGIC);
end rec_sec_din_moore_2;

architecture Behavioral of rec_sec_din_moore_2 is
type tStare is (S0, S1, S2, S3, S4);
signal saStareUrmatoare, saStarePrezenta: tStare;--stari Johnson(000,01,011,111)
begin
	saStareUrmatoare <= S1 when  saStarePrezenta=S0 and iData='0' else
								S0 when  saStarePrezenta=S0 and iData='1' else
								S1 when  saStarePrezenta=S1 and iData='0' else
								S2 when  saStarePrezenta=S1 and iData='1' else
								S1 when  saStarePrezenta=S2 and iData='0' else
								S3 when  saStarePrezenta=S2 and iData='1' else
								S1 when  saStarePrezenta=S3 and iData='0' else
								S4 when  saStarePrezenta=S3 and iData='1' else
								S1 when  saStarePrezenta=S4 and iData='0' else
								S0;
	saStarePrezenta <= S0 when iINIT='1' else
							saStareUrmatoare when rising_edge(iClk);
	oRec <= '1' when saStarePrezenta =S4 else
				'0';

end Behavioral;

