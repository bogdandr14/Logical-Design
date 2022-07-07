----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:09 05/20/2019 
-- Design Name: 
-- Module Name:    mem_afisor_anod - Behavioral 
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

entity mem_afisor_anod is
    Port ( iaAdresa : in  STD_LOGIC_VECTOR (3 downto 0);
           oaData : out  STD_LOGIC_VECTOR (6 downto 0));
end mem_afisor_anod;

architecture Behavioral of mem_afisor_anod is
	
	type taRom_tabel is array (0 to 15) of std_logic_vector (6 downto 0);
	constant cRom : taRom_tabel:= ("0000001","1001111","0010010", "0000110",
											"1001100","0100100","0100000","0001111",
											"0000000","0000100","0001000","1100000",
											"0110001","1000010","0110000","0111000");
begin
	oaData <=cRom(conv_integer(iaAdresa));

end Behavioral;

