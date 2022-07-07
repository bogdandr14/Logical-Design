----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:20 05/20/2019 
-- Design Name: 
-- Module Name:    num_mod_6_transport - Behavioral 
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

entity num_mod_6_transport is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (2 downto 0);
           oCy : out  STD_LOGIC);
end num_mod_6_transport;

architecture Behavioral of num_mod_6_transport is
	signal saD, saQ: STD_LOGIC_VECTOR(2 downto 0);
begin
	saD <= "000" when saQ="101" else
			saQ+1;
	saQ <= "000" when iClear= '1' else
			saD when rising_edge(iClk);
	oaQ <= saQ;
	ocY <= '1' when saQ = "101" else '0';

end Behavioral;

