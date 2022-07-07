----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:05 05/20/2019 
-- Design Name: 
-- Module Name:    div_frec_mod_10_ump_30 - Behavioral 
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

entity div_frec_mod_10_ump_30 is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end div_frec_mod_10_ump_30;

architecture Behavioral of div_frec_mod_10_ump_30 is
signal saD, saQ: STD_LOGIC_VECTOR(3 downto 0);
begin
	saD <= "0000" when saQ="1001" else
			saQ+1;
	saQ <= "0000" when iReset='1' else
			saD when rising_edge(iClk);
	oQ <= '1' when saQ(1 downto 0)="00" else 
			'0';

end Behavioral;

