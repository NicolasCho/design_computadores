library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( opCode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(11 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is
  constant SOMA  : std_logic_vector(3 downto 0) := '0'&x"20";
  constant SUB   : std_logic_vector(3 downto 0) := '0'&x"22";
  constant ANDOP : std_logic_vector(3 downto 0) := '0'&x"24";
  constant OROP  : std_logic_vector(3 downto 0) := '0'&x"25";
  constant NOROP : std_logic_vector(3 downto 0) := '0'&x"27";

  begin
saida <= '1'&"001" when entrada = SOMA else
         '1'&"000" when entrada = SUB else
         '1'&"011" when entrada = ANDOP else
			'1'&"100" when entrada = OROP else
			'1'&"010"when entrada = NOROP else
         '0'&"000";  
end architecture;