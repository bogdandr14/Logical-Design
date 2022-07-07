----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:21 05/20/2019 
-- Design Name: 
-- Module Name:    num_john_8_biti - Behavioral 
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

entity num_john_8_biti is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end num_john_8_biti;

architecture Behavioral of num_john_8_biti is
	signal saD, saQ : STD_LOGIC_VECTOR(7 downto 0);
begin
	saD <= saQ(6 downto 0)&(not saQ(7));
	saQ <= X"00" when iClear='1' else
			saD when rising_edge(iClk);
	oaQ <= saQ;

end Behavioral;

