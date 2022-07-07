----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:46 05/20/2019 
-- Design Name: 
-- Module Name:    num_mod_10_valid_transp - Behavioral 
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

entity num_mod_10_valid_transp is
    Port ( iClk : in  STD_LOGIC;
           iE : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0);
           oCY : out  STD_LOGIC);
end num_mod_10_valid_transp;

architecture Behavioral of num_mod_10_valid_transp is
	signal saD, saQ: STD_LOGIC_VECTOR(3 downto 0);
begin
	saD <= saQ when iE='0' else
			"0000" when saQ="1001" else
			saQ+1;
	saQ <= "0000" when iClear='1' else
			saD when rising_edge(iClk);
	oCY <='1' when saQ = "1001" else '0';
	oaQ <= saQ;

end Behavioral;

