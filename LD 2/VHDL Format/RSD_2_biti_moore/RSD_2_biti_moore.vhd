----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:23:46 05/20/2019 
-- Design Name: 
-- Module Name:    RSD_2_biti_moore - Behavioral 
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

entity RSD_2_biti_moore is
    Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iData : in  STD_LOGIC_VECTOR (1 downto 0);
           oRec : out  STD_LOGIC);
end RSD_2_biti_moore;

architecture Behavioral of RSD_2_biti_moore is
-- secventa utila 03120
type tStare is (S0, S1, S2, S3, S4, S5);
signal saStareUrmatoare, saStarePrezenta: tStare;
begin
	saStareUrmatoare <= S1 when  saStarePrezenta=S0 and iData="00" else
								S0 when  saStarePrezenta=S0 and (not iData="00") else
								S1 when  saStarePrezenta=S1 and iData="00" else
								S0 when  saStarePrezenta=S1 and (iData="01" or iData="10") else
								S2 when  saStarePrezenta=S1 and iData="11" else
								S1 when  saStarePrezenta=S2 and iData="00" else
								S3 when  saStarePrezenta=S2 and iData="01" else
								S0 when  saStarePrezenta=S2 and (iData="10" or iData="11") else
								S1 when  saStarePrezenta=S3 and iData="00" else
								S0 when  saStarePrezenta=S3 and (iData="01" or iData="11")else
								S4 when  saStarePrezenta=S3 and iData="10" else
								S5 when  saStarePrezenta=S4 and iData="00" else
								S0 when  saStarePrezenta=S4 and (not iData="00") else
								S1 when  saStarePrezenta=S5 and iData="00" else
								S0 when  saStarePrezenta=S4 and (not iData="00") else
								S0;
	saStarePrezenta <= S0 when iINIT='1' else
							saStareUrmatoare when rising_edge(iClk);
	oRec <= '1' when saStarePrezenta=S5 else
				'0';

end Behavioral;

