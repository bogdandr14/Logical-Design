----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:32 05/20/2019 
-- Design Name: 
-- Module Name:    num_mod_10_8421_val_tran - Behavioral 
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

entity num_mod_10_8421_val_tran is
    Port ( iClk : in  STD_LOGIC;
           iEnable : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           oCY : out  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end num_mod_10_8421_val_tran;

architecture Behavioral of num_mod_10_8421_val_tran is
	signal saD, saQ: STD_LOGIC_VECTOR(7 downto 0);
begin

saD <= saQ when iEnable='0' else
			saQ(7 downto 4)+1&"0000" when saQ(3 downto 0)="1001" else
			saQ+1;
	saQ <= X"00" when iClear='1' else
			saD when rising_edge(iClk);
	oCY <= '1' when saQ(3 downto 0)="1001" else '0';
	oaQ <= saQ;

end Behavioral;

