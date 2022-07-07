----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:57 05/21/2019 
-- Design Name: 
-- Module Name:    bilet_1 - Behavioral 
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

entity bilet_1 is
    Port ( iaGray : in  STD_LOGIC_VECTOR (3 downto 0);
           oaExces3 : out  STD_LOGIC_VECTOR (3 downto 0));
end bilet_1;

architecture Behavioral of bilet_1 is

type taRom_tabel is array (0 to 15) of std_logic_vector (3 downto 0);
	constant cRom : taRom_tabel:= ("0011","0100","0110","0101",
												"1010","1001","0111","1000",
												"ZZZZ","ZZZZ","ZZZZ","ZZZZ",
												"1011","1100","ZZZZ","ZZZZ");
begin	
	oaExces3 <=cRom(conv_integer(iaGray));

end Behavioral;

