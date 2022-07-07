----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:47 05/20/2019 
-- Design Name: 
-- Module Name:    reg_tamp_tristate - Behavioral 
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

entity reg_tamp_tristate is
    Port ( iClk : in  STD_LOGIC;
           iaD : in  STD_LOGIC_VECTOR (7 downto 0);
           iOC : in  STD_LOGIC;
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end reg_tamp_tristate;

architecture Behavioral of reg_tamp_tristate is
	signal saQ : STD_LOGIC_VECTOR (7 downto 0);
begin
	saQ <= iaD when rising_edge(iClk);
	oaQ <= saQ when iOC = '1' else "ZZZZZZZZ";

end Behavioral;

