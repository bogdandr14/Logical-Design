----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:28 05/20/2019 
-- Design Name: 
-- Module Name:    num_mod_6_sinc_reversibil - Behavioral 
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

entity num_mod_6_sinc_reversibil is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           iSens : in  STD_LOGIC;--0 numarare directa, 1 numarare inversa
           oaQ : out  STD_LOGIC_VECTOR (2 downto 0));
end num_mod_6_sinc_reversibil;

architecture Behavioral of num_mod_6_sinc_reversibil is
	signal saD, saQ : STD_LOGIC_VECTOR(2 downto 0);
begin
	saD <= "000" when iSens='0' and saQ="101" else
			saQ+1 when iSens='0' else 
			"101" when iSens='1' and saQ="000" else
			saQ-1;
	saQ <= "000" when iClear='1' else
			saD when rising_edge(iClk);
	oaQ <= saQ;
end Behavioral;

