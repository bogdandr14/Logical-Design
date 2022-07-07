----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:28 05/20/2019 
-- Design Name: 
-- Module Name:    reg_2_regimuri - Behavioral 
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

entity reg_2_regimuri is
    Port ( iClk : in  STD_LOGIC;--semnal tact
           iSDD : in  STD_LOGIC;-- intrare serie deplasare dreapta
           iSRL : in  STD_LOGIC;-- intrare selectie regim lucru: 0 deplasare dreapta, 1 incarcare paralel
           iaD : in  STD_LOGIC_VECTOR (7 downto 0);--intrare paralela
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end reg_2_regimuri;

architecture Behavioral of reg_2_regimuri is
	signal saD, saQ : STD_LOGIC_VECTOR (7 downto 0);
begin
	saD <= iaD when iSRL = '1' else
			iSDD&saQ(7 downto 1);
	saQ <= saD when rising_edge(iClk);
	oaQ <= saQ;
end Behavioral;

