library ieee;
use ieee.std_logic_1164.all;

entity Aula14 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 KEY: in std_logic_vector(3 downto 0);
    EntradaA_ULA	 : out std_logic_vector (larguraDados-1 downto 0);
	 EntradaB_ULA	 : out std_logic_vector (larguraDados-1 downto 0);
	 Saida_ULA_leitura	 : out std_logic_vector (larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of Aula14 is

-- Faltam alguns sinais:
  --signal SaidaMUX : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal EnderecoROM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK : std_logic;
  
  signal Rs_OUT : std_logic_vector (larguraDados-1 downto 0);
  signal Rt_OUT : std_logic_vector (larguraDados-1 downto 0);
  
  signal saidaExtensor : std_logic_vector (larguraDados-1 downto 0);
  signal saidaRAM :  std_logic_vector (larguraDados-1 downto 0);

  
  signal formato_Instrucao : std_logic_vector (larguraInstrucao-1 downto 0);
  --Instrucao
  signal opCode : std_logic_vector (5 downto 0);
  signal Rs_IN : std_logic_vector (4 downto 0);
  signal Rt_IN : std_logic_vector (4 downto 0);
  --signal Rd_IN : std_logic_vector (4 downto 0);
  signal imediato: std_logic_vector(15 downto 0);
  signal funct : std_logic_vector (5 downto 0);
  
  
  signal controle: std_logic_vector(6 downto 0);
  --controle
  signal HabilitaRd : std_logic;
  signal Operacao_ULA : std_logic_vector(2 downto 0);
  signal habilitaRAM : std_logic;
  signal habLeituraRAM: std_logic;
  signal habilitaEscritaRAM: std_logic;
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;
																									
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => EnderecoROM, saida => proxPC);


ROM : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => EnderecoROM, Dado => formato_Instrucao);
			 
	
BANCO_REGISTRADORES : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
			port map (clk   	=> CLK,
					  enderecoA => Rs_IN,
					  enderecoB => Rt_IN,
					  enderecoC => Rt_IN,
					  dadoEscritaC  => saidaRAM,
					  escreveC => HabilitaRd,
					  saidaA   => Rs_OUT,
					  saidaB   => Rt_OUT);
	
-- O port map completo da ULA:
ULA : entity work.ULA  generic map(larguraDados => larguraDados)
          port map (entradaA => Rs_OUT, entradaB => saidaExtensor, saida => Saida_ULA, 
							seletor => Operacao_ULA);

			 
UNIDADE_CONTROLE : entity work.unidadeControle  
          port map (opCode => opCode, funct => funct, saida => controle);
			 
			 
EXTENSOR_SINAL : entity work.estendeSinalGenerico generic map(larguraDadoEntrada => 16, larguraDadoSaida => 32)
			 port map (estendeSinal_IN => imediato,
							estendeSinal_OUT => saidaExtensor)
							
RAM : entity work.RAMMIPS generic map(dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
			 port map (clk      => CLK,
						  Endereco => Saida_ULA,
						  Dado_in  => Rt_OUT,
						  Dado_out => saidaRAM,
						  we       => habilitaEscritaRAM,
						  re       => habLeituraRAM,
						  habilita => habilitaRAM
					    );

		
-- Manipulando a instrucao
opCode <= formato_Instrucao (31 downto 26);
Rs_IN  <= formato_Instrucao (25 downto 21);
Rt_IN  <= formato_Instrucao (20 downto 16);
--Rd_IN  <= formato_Instrucao (15 downto 11);
imediato <= formato_Instrucao (15 downto 0);
funct  <= formato_Instrucao (5 downto 0);
		
-- Pontos de controle
HabilitaRd    		<= controle(6);
Operacao_ULA  		<= controle(5 downto 3);
habilitaRAM			<= controle(2);
habLeituraRAM		<= controle(1);
habilitaEscritaRAM<= controle(0);


PC_OUT <= EnderecoROM;
EntradaA_ULA <= Rs_OUT;
EntradaB_ULA <= Rt_OUT;
Saida_ULA_leitura	<=Saida_ULA;

end architecture;