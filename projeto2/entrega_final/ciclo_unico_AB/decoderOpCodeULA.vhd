library ieee;
use ieee.std_logic_1164.all;

entity decoderOpCodeULA is
  port ( opCode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoderOpCodeULA is
	--OPERACOES
  constant ANDOP : std_logic_vector(2 downto 0) := "000";
  constant OROP  : std_logic_vector(2 downto 0) := "001";
  constant SOMA  : std_logic_vector(2 downto 0) := "010";
  constant SUB   : std_logic_vector(2 downto 0) := "110";
  constant SLT   : std_logic_vector(2 downto 0) := "111";
  
  --OPCODES 
  constant LW    : std_logic_vector(5 downto 0) := 6x"23";
  constant SW    : std_logic_vector(5 downto 0) := 6x"2b";
  constant BEQ   : std_logic_vector(5 downto 0) := 6x"04";
  constant BNE   : std_logic_vector(5 downto 0) := 6x"05";
  constant ADDI  : std_logic_vector(5 downto 0) := 6x"08";
  constant ANDI  : std_logic_vector(5 downto 0) := 6x"0c";
  constant ORI   : std_logic_vector(5 downto 0) := 6x"0d";
  constant SLTI  : std_logic_vector(5 downto 0) := 6x"0a";
  
begin

saida <= SOMA  when (opCode = LW or opCode = SW or opCode = ADDI) else 
			SUB   when (opCode = BEQ or opCode = BNE) else 
			ANDOP when (opCode = ANDI) else
			OROP  when (opCode = ORI) else
			SLT   when (opCode = SLTI) else
			"000";

	
end architecture;