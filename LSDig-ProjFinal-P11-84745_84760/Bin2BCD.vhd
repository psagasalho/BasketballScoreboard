library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD is
	port(binIn : in  std_logic_vector(7 downto 0);
		  bcdMS : out std_logic_vector(3 downto 0);
		  bcdLS : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
	
	signal s_bcdMS : std_logic_vector(7 downto 0); -- Most significant bit
	signal s_bcdLS : std_logic_vector(7 downto 0); -- Least significant bit
	
begin

	s_bcdMS <= std_logic_vector(unsigned(binIn(7 downto 0))/10);
	s_bcdLS <= std_logic_vector(unsigned(binIn(7 downto 0))rem 10);
	bcdMS <= s_bcdMS(3 downto 0);
	bcdLS <= s_bcdLS(3 downto 0);
end Behavioral;