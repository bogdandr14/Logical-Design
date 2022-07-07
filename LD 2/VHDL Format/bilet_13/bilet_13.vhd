----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:34:39 05/21/2019 
-- Design Name: 
-- Module Name:    bilet_13 - Behavioral 
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

entity bilet_13 is
    Port ( iaExces3 : in  STD_LOGIC_VECTOR (3 downto 0);
           oa8421 : out  STD_LOGIC_VECTOR (3 downto 0);
           oRed : out  STD_LOGIC);
end bilet_13;

architecture Behavioral of bilet_13 is

type taRom_tabel is array (0 to 15) of std_logic_vector (4 downto 0);
	constant cRom : taRom_tabel:= ("11111","11111","11111","00000",
											"00001","00010","00011","00100",
											"00101","00110","00111","01000",
											"01001","01010","01011","01100");
begin

	
	oa8421 <=cRom(conv_integer(iaExces3))(3 downto 0);
	oRed <=cRom(conv_integer(iaExces3))(4);
end Behavioral;

