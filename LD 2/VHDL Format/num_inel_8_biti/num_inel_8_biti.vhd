----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:22 05/20/2019 
-- Design Name: 
-- Module Name:    num_inel_8_biti - Behavioral 
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

entity num_inel_8_biti is
    Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end num_inel_8_biti;

architecture Behavioral of num_inel_8_biti is
	signal saD, saQ: STD_LOGIC_VECTOR(7 downto 0);
begin
	saD <= saQ(0)&saQ(7 downto 1);
	saQ <= X"80" when iINIT='1' else
			saD when rising_edge(iClk);
	oaQ <= saQ;

end Behavioral;

