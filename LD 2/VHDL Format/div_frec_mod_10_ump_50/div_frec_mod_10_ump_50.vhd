----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:44:10 05/20/2019 
-- Design Name: 
-- Module Name:    div_frec_mod_10_ump_50 - Behavioral 
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

entity div_frec_mod_10_ump_50 is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end div_frec_mod_10_ump_50;

architecture Behavioral of div_frec_mod_10_ump_50 is
	signal saStarePrezenta, saStareUrmatoare: STD_LOGIC_VECTOR(4 downto 0);
begin
	saStarePrezenta <= saStareUrmatoare(3 downto 0)&(not saStareUrmatoare(4));
	saStareUrmatoare <= "00000" when iReset='1' else
								saStarePrezenta when rising_edge(iClk);
	oQ <= saStarePrezenta(4);

end Behavioral;

