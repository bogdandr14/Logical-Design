----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:25 05/20/2019 
-- Design Name: 
-- Module Name:    num_mod_8_asinc - Behavioral 
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

entity num_mod_8_asinc is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (2 downto 0));
end num_mod_8_asinc;

architecture Behavioral of num_mod_8_asinc is
	signal saD, saQ: STD_LOGIC_VECTOR (2 downto 0);
begin
	saD <= saQ + 1;
	saQ <= "000" when iClear='1' else
			saD when rising_edge(iClk);
	oaQ <=saQ;

end Behavioral;

