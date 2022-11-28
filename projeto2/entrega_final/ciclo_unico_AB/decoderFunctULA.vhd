library ieee;
use ieee.std_logic_1164.all;

entity decoderFunctULA is
  port ( funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoderFunctULA is
	--OPERACOES
  constant ANDOP : std_logic_vector(2 downto 0) := "000";
  constant OROP  : std_logic_vector(2 downto 0) := "001";
  constant SOMA  : std_logic_vector(2 downto 0) := "010";
  constant SUB   : std_logic_vector(2 downto 0) := "110";
  constant SLT   : std_logic_vector(2 downto 0) := "111";
  
  --FUNCTS
  constant FUNCT_ANDOP : std_logic_vector(5 downto 0) := 6x"24";
  constant FUNCT_OROP  : std_logic_vector(5 downto 0) := 6x"25";
  constant FUNCT_SOMA  : std_logic_vector(5 downto 0) := 6x"20";
  constant FUNCT_SUB   : std_logic_vector(5 downto 0) := 6x"22";
  constant FUNCT_SLT   : std_logic_vector(5 downto 0) := 6x"2a";
  
begin

saidA <= ANDOP when (funct = FUNCT_ANDOP) else 
			OROP  when (funct = FUNCT_OROP) else 
			SOMA  when (funct = FUNCT_SOMA) else 
			SUB   when (funct = FUNCT_SUB) else 
			SLT   when (funct = FUNCT_SLT) else 
			"000";

	
end architecture;