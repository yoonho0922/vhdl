LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY decoder4to16 IS
	PORT (	A,B,C,D : IN 	STD_LOGIC ;
		En : IN 	STD_LOGIC;
		F : OUT 	STD_LOGIC ) ;
END decoder4to16 ;
ARCHITECTURE Behavior OF decoder4to16 IS	
  signal Enw : std_logic_vector(4 downto 0);
  signal T : std_logic_vector(0to 15);
BEGIN
	Enw <= En & A&B&C&D;
	WITH Enw SELECT
				T <= 	"1000000000000000" WHEN "10000",
			"0100000000000000" WHEN "10001",
			"0010000000000000" WHEN "10010",
			"0001000000000000" when "10011",
			"0000100000000000" WHEN "10100",
			"0000010000000000" WHEN "10101",
			"0000001000000000" WHEN "10110",
			"0000000100000000" when "10111",
			"0000000010000000" WHEN "11000",
			"0000000001000000" WHEN "11001",
			"0000000000100000" WHEN "11010",
			"0000000000010000" when "11011",
			"0000000000001000" WHEN "11100",
			"0000000000000100" WHEN "11101",
			"0000000000000010" WHEN "11110",
			"0000000000000001" when "11111",
			"0000000000000000" when OTHERS;
		F <= T(0)OR T(2)OR T(3)OR T(8)OR T(10)OR T(11)OR T(12)OR T(14)OR T(15);
END Behavior ;

