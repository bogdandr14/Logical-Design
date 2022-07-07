----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:00:48 05/22/2019 
-- Design Name: 
-- Module Name:    bilet_10 - Behavioral 
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

entity bilet_10 is
	Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iData : in  STD_LOGIC;
           oRec : out  STD_LOGIC);
end bilet_10;

architecture Behavioral of bilet_10 is
type tStare is (S0, S1, S2, S3, S4);
	signal saD, saQ: tStare;
begin
	saD <= S0 when saQ=S0 and iData='0' else
			S1 when saQ=S0 and iData='1' else
			S2 when saQ=S1 and iData='0' else
			S1 when saQ=S1 and iData='1' else
			S0 when saQ=S2 and iData='0' else
			S3 when saQ=S2 and iData='1' else
			S4 when saQ=S3 and iData='0' else
			S1 when saQ=S3 and iData='1' else
			S0 when saQ=S4 and iData='0' else
			S3 when saQ=S4 and iData='1' else
			S0;
	saQ <= S0 when iINIT='1' else
			saD when rising_edge(iClk);
	oRec <= '1' when saQ =S4 else
				'0';

end Behavioral;