library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucao : natural := 15
  );
  port   (
    CLOCK_50 : in std_logic;
    Instruction_IN: in std_logic_vector (larguraInstrucao-1 downto 0);
	 Data_IN: in std_logic_vector (larguraDados-1 downto 0);    
	 Data_OUT: out std_logic_vector (larguraDados-1 downto 0);	
	 ROM_Address: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Data_Address: out std_logic_vector (larguraEnderecos-1 downto 0);
	 RD: out std_logic;
	 WR: out std_logic
  );
end entity;


architecture arquitetura of CPU is
  signal SaidaMUX : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal EnderecoROM : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal CLK : std_logic;
  signal Reset_A : std_logic;
  signal saidaMUXDestino: std_logic_vector (8 downto 0);
  
  --Logica de desvio
  signal entradaFlag: std_logic;
  signal saidaFlag: std_logic;
  signal seletorMUXDestino : std_logic_vector (1 downto 0);
  signal saidaEndRet : std_logic_vector (8 downto 0);
  
  --Instrucao
  signal opCode : std_logic_vector (3 downto 0);
  signal enderecoRegistrador : std_logic_vector (1 downto 0);
  signal Imediato : std_logic_vector (7 downto 0);
  signal EnderecoJMP : std_logic_vector (8 downto 0);
  
  
  signal controle: std_logic_vector(11 downto 0);
  --controle
  signal habEscritaRetorno : std_logic;
  signal JMP : std_logic;
  signal RET : std_logic;
  signal JSR : std_logic;
  signal JEQ: std_logic;
  signal SelMUX : std_logic;
  signal Habilita_regs : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal HabFlagIgual: std_logic;
  signal habLeituraRAM : std_logic;
  signal habEscritaRAM : std_logic;
  
begin

-- Instanciando os componentes:
CLK <= CLOCK_50;


-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Data_IN,
                 entradaB_MUX =>  Imediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => SaidaMUX);
					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecos)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  EnderecoJMP,
					  entradaC_MUX => saidaEndRet,
                 seletor_MUX => seletorMUXDestino,
                 saida_MUX => saidaMUXDestino);


-- O port map completo do banco de registradores da arquitetura registrador-memoria.			 
REGISTRADORES : entity work.bancoRegistradores   generic map (larguraDados => larguraDados)
			 port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENDERECO_REGISTRADOR => enderecoRegistrador,
							ENABLE => Habilita_regs, CLK => CLK, RST => '0'); 


-- O port map completo do End. Retorno.
ENDRET : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => saidaEndRet, ENABLE => habEscritaRetorno, CLK => CLK, RST => '0'); 
			 --RST sempre desligado;	
	
FLAG: entity work.flipFlop
          port map (DIN => entradaFlag, DOUT => saidaFlag, ENABLE => HabFlagIgual, CLK => CLK, RST => '0');
																										
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => saidaMUXDestino, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => EnderecoROM, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => SaidaMUX, saida => Saida_ULA, seletor => Operacao_ULA, entradaFlag => entradaFlag);

			 
DECODER : entity work.decoderGeneric  
          port map (entrada => opCode, saida => controle);

							
logicaDesvio: entity work.logicaDesvio
			port map (Flag => saidaFlag, JMP => JMP, JEQ => JEQ, JSR => JSR, RET => RET, saidaDesvio => seletorMUXDestino);
			
-- Manipulando a instrucao
opCode <= Instruction_IN (14 downto 11);
enderecoRegistrador <= Instruction_IN (10 downto 9);
Imediato <= Instruction_IN (7 downto 0);
EnderecoJMP <= Instruction_IN (8 downto 0);

							
-- Pontos de controle
habEscritaRetorno <= controle(11);
JMP			  		<= controle(10);
RET			  		<= controle(9);
JSR			  		<= controle(8);
JEQ			  		<= controle(7);
selMUX        		<= controle(6);
Habilita_regs   	<= controle(5);
Operacao_ULA  		<= controle(4 downto 3);
HabFlagIgual  		<= controle(2);
habLeituraRAM 		<= controle(1); 
habEscritaRAM 		<= controle(0);

-- I/O
ROM_Address <= EnderecoROM;
RD <= habLeituraRAM;
WR <= habEscritaRAM;
Data_OUT <= REG1_ULA_A;
Data_Address <= Instruction_IN (8 downto 0);


end architecture;