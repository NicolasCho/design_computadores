library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opCode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is
  constant SOMA  : std_logic_vector(5 downto 0) := 6x"20";
  constant SUB   : std_logic_vector(5 downto 0) := 6x"22";
  constant ANDOP : std_logic_vector(5 downto 0) := 6x"24";
  constant OROP  : std_logic_vector(5 downto 0) := 6x"25";
  constant NOROP : std_logic_vector(5 downto 0) := 6x"27";
  
  
  constant R_TYPE: std_logic_vector(5 downto 0) := 6x"0";

  begin
saida <= '1'&"001" when (funct = SOMA and opCode = R_TYPE) else
         '1'&"000" when (funct = SUB and opCode = R_TYPE) else
         '1'&"011" when (funct = ANDOP and opCode = R_TYPE) else
			'1'&"100" when (funct = OROP and opCode = R_TYPE) else
			'1'&"010" when (funct = NOROP and opCode = R_TYPE) else
         '0'&"000";  
end architecture;