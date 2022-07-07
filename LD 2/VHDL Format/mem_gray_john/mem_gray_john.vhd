----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:52 05/20/2019 
-- Design Name: 
-- Module Name:    mem_gray_john - Behavioral 
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

entity mem_gray_john is
    Port ( iaGray : in  STD_LOGIC_VECTOR (3 downto 0);
           oaJohnson : out  STD_LOGIC_VECTOR (4 downto 0));
end mem_gray_john;

architecture Behavioral of mem_gray_john is
type taRom_tabel is array (0 to 15) of std_logic_vector (4 downto 0);
	constant cRom : taRom_tabel:= ("00000","00001","00111","00011",
											"11100","11110","01111","11111",
											"11000","10000","ZZZZZ","ZZZZZ",
											"ZZZZZ","ZZZZZ","ZZZZZ","ZZZZZ");
begin

	
	oaJohnson <=cRom(conv_integer(iaGray));

end Behavioral;

