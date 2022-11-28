library ieee;
use ieee.std_logic_1164.all;

entity decoderOpCodeULA is
  port ( opCode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoderOpCodeULA is
	--OPERACOES
  constant SOMA  : std_logic_vector(2 downto 0) := "010";
  constant SUB   : std_logic_vector(2 downto 0) := "110";
  
  --OPCODES 
  constant LW    : std_logic_vector(5 downto 0) := 6x"23";
  constant SW    : std_logic_vector(5 downto 0) := 6x"2b";
  constant BEQ   : std_logic_vector(5 downto 0) := 6x"04";
  
begin

saida <= SOMA  when (opCode = LW or opCode = SW) else 
			SUB   when (opCode = BEQ) else 
			"000";

	
end architecture;