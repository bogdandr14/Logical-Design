----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:08:46 05/21/2019 
-- Design Name: 
-- Module Name:    diag_asm_2 - Behavioral 
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

entity diag_asm_2 is
    Port ( iClk : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iXN : in  STD_LOGIC;
           iY : in  STD_LOGIC;
           iZ : in  STD_LOGIC;
           oC1 : out  STD_LOGIC;
           oC2N : out  STD_LOGIC);
end diag_asm_2;

architecture Behavioral of diag_asm_2 is

	type tStare is (A,B,C);
	signal saStarePrezenta, saStareUrmatoare: tStare;
begin
	saStareUrmatoare <= A when saStarePrezenta= A and iXN='1' else
								A when saStarePrezenta= C and iZ='1' else
								B when saStarePrezenta= A and iXN='0' and iY='0' else
								B when saStarePrezenta= B and iY='0' else
								B when saStarePrezenta= C and iZ='0' else
								C when saStarePrezenta= A and iXN='0' and iY='1' else
								C when saStarePrezenta= B and iY='1' else
								A;
	saStarePrezenta <= A when iINIT='0' else
							saStareUrmatoare when rising_edge(iClk);
	oC1 <= '1' when saStarePrezenta=A  and iXN='0' and iY='0' else
				'1' when saStarePrezenta=B else
				'0';
	oC2N <= '0' when saStarePrezenta=A and iXN='0' and iY='1' else
				'0' when saStarePrezenta=C else
				'1';

end Behavioral;

