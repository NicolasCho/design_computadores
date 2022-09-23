library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logicaDesvio is
		port (
			Flag:	in std_logic;
			JMP : in std_logic;
			JEQ : in std_logic;
			saidaDesvio: out std_logic
		);
end entity;

architecture comportamento of logicaDesvio is
		begin
		saidaDesvio <= ((not JMP) and JEQ and Flag) or (JMP and (not JEQ) and (not Flag)) or (JMP and (not JEQ) and Flag);
		
end architecture;