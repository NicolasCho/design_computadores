library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opCode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is
  constant R_TYPE: std_logic_vector(5 downto 0) := 6x"0";
  
  constant LW    : std_logic_vector(5 downto 0) := 6x"23";
  constant SW    : std_logic_vector(5 downto 0) := 6x"2b";
  constant BEQ   : std_logic_vector(5 downto 0) := 6x"04";
  
  constant JMP   : std_logic_vector(5 downto 0) := 6x"02";
  
begin

saida(8)	 <= '1' when (opCode = JMP) else '0';
saida(7)  <= '1' when (opCode = R_TYPE) else '0';
saida(6)	 <= '1' when (opCode = R_TYPE or opCode = LW) else '0';
saida(5)  <= '1' when (opCode = LW or opCode = SW) else '0';
saida(4)  <= '1' when (opCode = R_TYPE) else '0';
saida(3)  <= '1' when (opCode = LW) else '0';
saida(2)  <= '1' when (opCode = BEQ) else '0';
saida(1)  <= '1' when (opCode = LW) else '0';
saida(0)	 <= '1' when (opCode = SW) else '0';
	
end architecture;