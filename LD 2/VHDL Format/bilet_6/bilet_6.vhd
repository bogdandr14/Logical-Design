----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:12 05/22/2019 
-- Design Name: 
-- Module Name:    bilet_6 - Behavioral 
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

entity bilet_6 is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0);
           oCY : out  STD_LOGIC);
end bilet_6;

architecture Behavioral of bilet_6 is
	signal saD, saQ: STD_LOGIC_VECTOR(3 downto 0);
begin
	saD <= saQ+1;
	saQ <= "0000" when iClear='1' else
			saD when rising_edge(iClk);
	oaQ <= saQ;
	oCY <= '1' when saQ="1011" else
				'0';

end Behavioral;

