----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:16 05/20/2019 
-- Design Name: 
-- Module Name:    reg_8biti_dep_dr - Behavioral 
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

entity reg_8biti_dep_dr is
    Port ( iClk : in  STD_LOGIC;
           iISDD : in  STD_LOGIC;-- intrare serie 
           oQDD : out  STD_LOGIC);-- iesire serie
end reg_8biti_dep_dr;

architecture Behavioral of reg_8biti_dep_dr is
	signal saD, saQ : STD_LOGIC_VECTOR(7 downto 0);

begin
	saD <= iISDD&saQ(7 downto 1);
	saQ <= saD when rising_edge(iClk);
	oQDD <= saQ(0);

end Behavioral;

