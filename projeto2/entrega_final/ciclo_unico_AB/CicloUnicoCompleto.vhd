library ieee;
use ieee.std_logic_1164.all;

entity CicloUnicoCompleto is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 KEY   : in  std_logic_vector(3 downto 0);
	 SW    : in  std_logic_vector(9 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0);
	 HEX0  : out std_logic_vector(6 downto 0);
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of CicloUnicoCompleto is

  signal CLK : std_logic;
  signal EnderecoROM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal saidaIncrementaPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  
  
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal signalBEQ : std_logic;
  signal saidaMUX_BEQ_BNE : std_logic;
  signal saidaExtensor : std_logic_vector (larguraDados-1 downto 0);
  signal saidaLUI :  std_logic_vector (larguraDados-1 downto 0);
  signal saidaRAM :  std_logic_vector (larguraDados-1 downto 0);
  signal saidaShifter :  std_logic_vector (larguraDados-1 downto 0);
  signal saidaSomador : std_logic_vector (larguraDados-1 downto 0);
  signal concatenaImediatoJPC : std_logic_vector (larguraDados-1 downto 0);
  
  signal saidaMuxRtRd : std_logic_vector (4 downto 0);
  signal saidaMuxRtImediato : std_logic_vector (larguraDados-1 downto 0);
  signal saidaMuxULARAM : std_logic_vector (larguraDados-1 downto 0);
  signal saidaMuxImediatoPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal saidaMuxPCULA : std_logic_vector(larguraDados-1 downto 0);
  signal saidaMuxPC_BEQ_JMP : std_logic_vector(larguraDados-1 downto 0);
  
  
  signal Rs_OUT : std_logic_vector (larguraDados-1 downto 0);
  signal Rt_OUT : std_logic_vector (larguraDados-1 downto 0);
 
  
  signal formato_Instrucao : std_logic_vector (larguraInstrucao-1 downto 0);
  --Instrucao
  signal opCode : std_logic_vector (5 downto 0);
  signal Rs_IN : std_logic_vector (4 downto 0);
  signal Rt_IN : std_logic_vector (4 downto 0);
  signal Rd_IN : std_logic_vector (4 downto 0);
  signal imediato: std_logic_vector(15 downto 0);
  signal imediatoJ : std_logic_vector(25 downto 0); 
  signal funct : std_logic_vector (5 downto 0);
  
  signal controle: std_logic_vector(12 downto 0);
  --controle
  signal JR : std_logic;
  signal muxPC_BEQ_JMP : std_logic;
  signal muxControleRtRd : std_logic;
  signal controleORI_ANDI : std_logic;
  signal habEscritaReg : std_logic;
  signal muxControleRtImediato : std_logic;
  signal controleTipoR : std_logic;
  signal muxControleULARAM : std_logic_vector(1 downto 0);	
  signal habilitaBEQ : std_logic;
  signal habilitaBNE : std_logic;
  signal habLeituraRAM: std_logic;
  signal habilitaEscritaRAM: std_logic;
  
  signal PCSelectorMUX : std_logic;
  signal ULACtrl : std_logic_vector (2 downto 0);
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

				 
-- Manipulando a instrucao
opCode    <= formato_Instrucao (31 downto 26);
Rs_IN     <= formato_Instrucao (25 downto 21);
Rt_IN     <= formato_Instrucao (20 downto 16);
Rd_IN     <= formato_Instrucao (15 downto 11);
imediatoJ <= formato_Instrucao (25 downto 0); 
imediato  <= formato_Instrucao (15 downto 0);
funct     <= formato_Instrucao (5 downto 0);
		
-- Pontos de controle
JR                <= controle(12);
muxPC_BEQ_JMP     <= controle(11);
muxControleRtRd   <= controle(10);
controleORI_ANDI  <= controle(9);
habEscritaReg     <= controle(8);
muxControleRtImediato <= controle(7);
controleTipoR     <= controle(6);
muxControleULARAM <= controle(5 downto 4);
habilitaBEQ       <= controle(3);
habilitaBNE       <= controle(2);
habLeituraRAM		<= controle(1);
habilitaEscritaRAM<= controle(0);

PCSelectorMUX <= (habilitaBEQ or habilitaBNE) and saidaMUX_BEQ_BNE;
concatenaImediatoJPC <= saidaIncrementaPC(31 downto 28) & imediatoJ & "00";
																								
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => EnderecoROM, saida => saidaIncrementaPC);


ROM : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => EnderecoROM, Dado => formato_Instrucao);
			 
	
MUX_RT_RD : entity work.muxGenerico2x1		generic map	(larguraDados => 5)
			 port map (entradaA_MUX => Rt_IN, entradaB_MUX => Rd_IN, seletor_MUX => muxControleRtRd,
							saida_MUX => saidaMuxRtRd);
	
BANCO_REGISTRADORES : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
			port map (clk   	=> CLK,
					  enderecoA => Rs_IN,
					  enderecoB => Rt_IN,
					  enderecoC => saidaMuxRtRd,
					  dadoEscritaC  => saidaMuxULARAM,
					  escreveC => habEscritaReg,
					  saidaA   => Rs_OUT,
					  saidaB   => Rt_OUT);
					  
MUX_RT_IMEDIATO : entity work.muxGenerico2x1  generic map (larguraDados => 32)
			 port map (entradaA_MUX => Rt_OUT, entradaB_MUX => saidaExtensor, seletor_MUX => muxControleRtImediato,
							saida_MUX => saidaMuxRtImediato);
	
ULA : entity work.ULA  generic map(larguraDados => larguraDados)
          port map (entradaA => Rs_OUT, entradaB => saidaMuxRtImediato, 
							Seletor => ULACtrl(1 downto 0), InverteB => ULACtrl(2),
							saida => Saida_ULA, signalBEQ => signalBEQ);

MUX_BEQ_BNE :  entity work.muxGenerico2x1_1bit
				port map (entradaA_MUX => not signalBEQ, entradaB_MUX => signalBEQ, seletor_MUX => habilitaBEQ,
								saida_MUX => saidaMUX_BEQ_BNE);

							

MUX_ULA_RAM : entity work.muxGenerico4x1  generic map (larguraDados => 32)
			 port map (entradaA_MUX => Saida_ULA, entradaB_MUX => saidaRAM,
							entradaC_MUX => saidaIncrementaPC, entradaD_MUX => saidaLUI,
							seletor_MUX => muxControleULARAM, saida_MUX => saidaMuxULARAM);
							
			 
UNIDADE_CONTROLE : entity work.unidadeControle  
          port map (opCode => opCode, funct => funct,saida => controle);
			 
UNIDADE_CONTROLE_ULA : entity work.unidadeControleULA  
          port map (opCode => opCode, funct => funct, tipoR => controleTipoR, saida => ULACtrl);
			 
			 
EXTENSOR_SINAL : entity work.estendeSinalGenerico generic map(larguraDadoEntrada => 16, larguraDadoSaida => 32)
			 port map (estendeSinal_IN => imediato, ORI_ANDI => controleORI_ANDI,
							estendeSinal_OUT => saidaExtensor);
							
UNDIADE_LUI : entity work.LUI generic map(larguraDadoEntrada => 16, larguraDadoSaida => 32)
			 port map (LUI_IN => imediato,
							LUI_OUT => saidaLUI);
							
SHIFTER : entity work.shifter generic map(larguraDado => 32)
			 port map (shifter_IN => saidaExtensor,
							shifter_OUT => saidaShifter);
					
							
SOMADOR: entity work.somadorGenerico generic map (	larguraDados => 32)
			 port map (entradaA => saidaIncrementaPC, entradaB => saidaShifter, saida => saidaSomador);

MUXPC : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaIncrementaPC, entradaB_MUX => saidaSomador, seletor_MUX => PCSelectorMUX,
							saida_MUX => saidaMuxImediatoPC);

MUX_PC_BEQ_JMP : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxImediatoPC, entradaB_MUX => concatenaImediatoJPC, 
			 seletor_MUX => muxPC_BEQ_JMP, saida_MUX => saidaMuxPC_BEQ_JMP);
			 
MUX_PC_JR : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxPC_BEQ_JMP, entradaB_MUX => Rs_OUT, 
			 seletor_MUX => JR, saida_MUX => proxPC);
							
RAM : entity work.RAMMIPS generic map(dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
			 port map (clk      => CLK,
						  Endereco => Saida_ULA,
						  Dado_in  => Rt_OUT,
						  Dado_out => saidaRAM,
						  we       => habilitaEscritaRAM,
						  re       => habLeituraRAM
					    );

MUX_PC_ULA : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => EnderecoROM, entradaB_MUX => Saida_ULA, 
			 seletor_MUX => SW(0), saida_MUX => saidaMuxPCULA);
						 
DISPLAY : entity work.logicaDisplay  
			port map(dado => saidaMuxPCULA(23 downto 0),
						hex0 => HEX0,
						hex1 => HEX1,
						hex2 => HEX2,
						hex3 => HEX3,
						hex4 => HEX4,
						hex5 => HEX5);

LEDR(3 downto 0) <= saidaMuxPCULA(27 downto 24);
LEDR(7 downto 4) <= saidaMuxPCULA(31 downto 28);

end architecture;