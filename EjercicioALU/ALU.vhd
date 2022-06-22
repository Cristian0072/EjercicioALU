----------------------------------------------------------------------------------
--Nombre: Cristian Armijos
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
           operacion : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(a, b, operacion)
	begin
		case operacion is
			when "0000"=> salida <= a;
			when "0001"=> salida <= b;
			when "0010"=> salida <= not a;
			when "0011"=> salida <= not b;
			when "0100"=> salida <= a and b;
			when "0101"=> salida <= a nand b;
			when "0110"=> salida <= a or b;
			when "0111"=> salida <= a nor b;
			when "1000"=> salida <= a xor b;
			when "1001"=> salida <= a xnor b;
			when "1010"=> salida <= std_logic_vector(unsigned(a) + unsigned(b));
			when "1011"=> salida <= std_logic_vector(unsigned(a) - unsigned(b));
			when others => salida <= "00000000";
		end case;
	end process;

end Behavioral;