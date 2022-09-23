library ieee;
use ieee.std_logic_1164.all;

entity Aula5_1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucao : natural := 13;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    --SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(14 downto 0)
  );
end entity;


architecture arquitetura of Aula5_1 is

-- Faltam alguns sinais:
  --signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal SaidaRAM : std_logic_vector (larguraDados-1 downto 0);
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
  signal seletorMUXDestino : std_logic;
  
  
  signal formato_Instrucao : std_logic_vector (12 downto 0);
  --Instrucao
  signal opCode : std_logic_vector (12 downto 9);
  signal HabilitaRAM :std_logic;
  signal EnderecoRAM : std_logic_vector (8 downto 0);
  signal Imediato : std_logic_vector (7 downto 0);
  
  
  signal controle: std_logic_vector(8 downto 0);
  --controle
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal habLeituraRAM : std_logic;
  signal habEscritaRAM : std_logic;
  signal JMP: std_logic;
  signal JEQ: std_logic;
  signal HabFlagIgual: std_logic;
  
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => SaidaRAM,
                 entradaB_MUX =>  Imediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => SaidaMUX);
					  
MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecos)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  EnderecoRAM,
                 seletor_MUX => seletorMUXDestino,
                 saida_MUX => SaidaMUXDestino);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0'); 
			 --RST sempre desligado;
			 
FLAG: entity work.flipFlop
          port map (DIN => entradaFlag, DOUT => saidaFlag, ENABLE => HabFlagIgual, CLK => CLK, RST => '0');
																										
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => SaidaMUXDestino, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => EnderecoROM, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => SaidaMUX, saida => Saida_ULA, seletor => Operacao_ULA, entradaFlag => entradaFlag);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => EnderecoROM, Dado => formato_Instrucao);
			 
DECODER : entity work.decoderGeneric  
          port map (entrada => opCode, saida => controle);

RAM1 : entity work.memoriaRAM  generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos)
			 port map (addr => EnderecoRAM, we => habEscritaRAM, re => habLeituraRAM, 
							habilita => HabilitaRAM, clk => CLK, 
							dado_in => REG1_ULA_A,
							dado_out => SaidaRAM);
							
logicaDesvio: entity work.logicaDesvio
			port map (Flag => saidaFlag, JMP => JMP, JEQ => JEQ, saidaDesvio => seletorMUXDestino);
			
-- Manipulando a instrucao
opCode <= formato_Instrucao (12 downto 9);
HabilitaRAM <=formato_Instrucao(8);
EnderecoRAM <= formato_Instrucao (8 downto 0);
Imediato <= formato_Instrucao (7 downto 0);

							
-- Pontos de controle

JMP			  <= controle(8);
JEQ			  <= controle(7);
selMUX        <= controle(6);
Habilita_A    <= controle(5);
Operacao_ULA  <= controle(4 downto 3);
HabFlagIgual  <= controle(2);
habLeituraRAM <= controle(1); 
habEscritaRAM <= controle(0);

-- I/O
--chavesY_MUX_A <= SW(3 downto 0);
--chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
LEDR (14) <= JMP;
LEDR (13) <= SelMUX;
LEDR (12) <= Habilita_A;
LEDR (11 downto 10) <= Operacao_ULA;
LEDR (9) <= habLeituraRAM;
LEDR (8) <= habEscritaRAM;
--LEDR (7) <= Reset_A;
--LEDR (6 downto 5) <= Operacao_ULA;
--LEDR (5) <= '0';    -- Apagado.
--LEDR (4) <= '0';    -- Apagado.
LEDR (7 downto 0) <= REG1_ULA_A;

PC_OUT <= EnderecoROM;

end architecture;