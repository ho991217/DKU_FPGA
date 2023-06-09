-- 8 to 3 Encoder
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HB_ENCODER IS
PORT (
	I: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	O: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
);
END HB_ENCODER;

ARCHITECTURE HB OF HB_ENCODER IS

BEGIN

PROCESS(I)
BEGIN
	CASE I IS
		WHEN "00000001" => O <= "000";
		WHEN "00000010" => O <= "001";
		WHEN "00000100" => O <= "010";
		WHEN "00001000" => O <= "011";
		WHEN "00010000" => O <= "100";
		WHEN "00100000" => O <= "101";
		WHEN "01000000" => O <= "110";
		WHEN "10000000" => O <= "111";
		WHEN OTHERS => NULL;
	END CASE;
END PROCESS;

END HB;