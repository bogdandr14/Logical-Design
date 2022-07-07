----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:12 05/22/2019 
-- Design Name: 
-- Module Name:    bilet_20 - Behavioral 
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

entity bilet_20 is
    Port ( iClk : in  STD_LOGIC;
           iC1 : in  STD_LOGIC;
           iC0 : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end bilet_20;

architecture Behavioral of bilet_20 is
	signal saD, saQ : STD_LOGIC_VECTOR(7 downto 0);
begin
	saD <= x"00" when iC0='0' and iC1='0' else
			saQ(0)&saQ(7 downto 1) when iC0='0' and iC1='1' else
			saQ(6 downto 0)&saQ(7) when iC0='1' and iC1='0' else
			iaData;
	saQ <= saD when rising_edge(iClk);
	oaQ <= saQ;
			

end Behavioral;

