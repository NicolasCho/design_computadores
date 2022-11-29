library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  port ( opCode : in std_logic_vector(5 downto 0);
			funct  : in std_logic_vector(5 downto 0);
         saida  : out std_logic_vector(12 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is
  constant R_TYPE: std_logic_vector(5 downto 0) := 6x"0";
  constant JR_Funct: std_logic_vector(5 downto 0) := 6x"08";
  
  constant LW    : std_logic_vector(5 downto 0) := 6x"23";
  constant SW    : std_logic_vector(5 downto 0) := 6x"2b";
  constant BEQ   : std_logic_vector(5 downto 0) := 6x"04";
  constant BNE   : std_logic_vector(5 downto 0) := 6x"05";
  constant LUI   : std_logic_vector(5 downto 0) := 6x"0f";
  constant ADDI   : std_logic_vector(5 downto 0) := 6x"08";
  constant ANDI   : std_logic_vector(5 downto 0) := 6x"0c";
  constant ORI   : std_logic_vector(5 downto 0) := 6x"0d";
  constant SLTI   : std_logic_vector(5 downto 0) := 6x"0a";
  
  
  constant JMP   : std_logic_vector(5 downto 0) := 6x"02";
  constant JAL   : std_logic_vector(5 downto 0) := 6x"03";

  
begin

saida(12) <= '1' when (opCode = R_Type and funct = JR_Funct) else '0';		--JR
saida(11) <= '1' when (opCode = JMP or opCode = JAL) else '0';					--MuxPCBeqJmp
saida(10) <= '1' when (opCode = R_TYPE) else '0';									--MuxRtRd
saida(9)	 <= '1' when (opCode = ANDI or opCode = ORI) else'0';					--ORI_ANDI

saida(8)	 <= '1' when (opCode = R_TYPE or opCode = LW or opCode= LUI 
							  or opCode = ADDI or opCode = ANDI or opCode = ORI	--habRegEscrita
							  or opCode = SLTI or opCode = JAL) else '0';					
							  
saida(7)  <= '1' when (opCode = LW or opCode = SW or opCode = ADDI or 
							  opCode = ANDI or opCode = ORI or opCode = SLTI) 		--MuxRtImediato
							  else '0';				
							  
saida(6)  <= '1' when (opCode = R_TYPE) else '0';									--TipoR

saida(5 downto 4)  <= "01" when (opCode = LW)  else
							 "10" when (opCode = JAL) else
							 "11" when (opCode = LUI) else								--MuxUlaMem	
							 "00";				
							 
saida(3)  <= '1' when (opCode = BEQ) else '0'; 									   --BEQ
saida(2)  <= '1' when (opCode = BNE) else '0';										--BNE
saida(1)  <= '1' when (opCode = LW) else '0';  										--habLeituraMem
saida(0)	 <= '1' when (opCode = SW) else '0';  										--habEscritaMem
	
end architecture;