----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:18 05/20/2019 
-- Design Name: 
-- Module Name:    reg_4_regimuri - Behavioral 
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

entity reg_4_regimuri is
    Port ( iClk : in  STD_LOGIC;
           iSRL0 : in  STD_LOGIC;-- 00 stergere sincrona, 01 deplasare dr, 10 deplasare st, 11 setare sincrona
           iSRL1 : in  STD_LOGIC;
           iSDD : in  STD_LOGIC;
           iSDS : in  STD_LOGIC;
           iaD : in  STD_LOGIC_VECTOR (7 downto 0);
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end reg_4_regimuri;

architecture Behavioral of reg_4_regimuri is
	signal saD, saQ : STD_LOGIC_VECTOR (7 downto 0);
begin
	saD <= X"00" when iSRL0='0' and iSRL1='0' else
			iSDD&saQ(7 downto 1) when iSRL0='0' and iSRL1='1' else
			saQ(6 downto 0)&iSDS when iSRL0='1' and iSRL1='0' else
			X"FF";
	saQ <= saD when rising_edge(iClk);
	oaQ <= saQ;
end Behavioral;

