library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDOP: std_logic_vector(3 downto 0) := "1011";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Inicializa os endereços:
		  tmp(0)   := STA&"00"&'1'&x"ff";
		  tmp(1)   := LDI&"00"&'0'&x"00";   
        tmp(2)   := STA&"00"&'0'&x"00";
        tmp(3)   := STA&"00"&'0'&x"02";
        tmp(4)   := LDI&"00"&'0'&x"01";
        tmp(5)   := STA&"00"&'0'&x"01";
		  
        tmp(6)   := NOP&"00"&'0'&x"00";
		  
		  tmp(7)   := LDA&"01"&'0'&x"02";  --Carrega o reg1 com a leitura do contador
		  tmp(8)   := STA&"01"&'1'&x"21";  --Armazena o valor de reg1 em HEX1
		  
        tmp(9)   := LDA&"00"&'1'&x"60";  --Carrega o reg0 com leitura de key0
		  tmp(10)  := STA&"00"&'1'&x"20";  --Armazena o valor de reg0 em HEX0
		  tmp(11)  := CEQ&"00"&'0'&x"00";
		  tmp(12)  := JEQ&"00"&'0'&x"0e";
		  tmp(13)  := JSR&"00"&'0'&x"20";
		  tmp(14)  := NOP&"00"&'0'&x"00";
		  tmp(15)  := JMP&"00"&'0'&x"06";
		  
		  tmp(32)  := STA&"00"&'1'&x"ff";
		  tmp(33)  := LDA&"01"&'0'&x"02";
		  tmp(34)  := SOMA&"01"&'0'&x"01";
		  tmp(35)  := STA&"01"&'0'&x"02";
		  tmp(36)  := STA&"01"&'1'&x"02";
		  tmp(37)  := RET&"00"&'0'&x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;