library ieee;
use ieee.std_logic_1164.all;

entity id is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32
  );
  port   (
    CLK : in std_logic;
    WB : in std_logic; --habReg
	 saidaMuxRtRd : in std_logic_vector(4 downto 0);
    saidaMuxULARAM : in std_logic_vector(larguraDados-1 downto 0);
    formato_Instrucao: in std_logic_vector (larguraDados-1 downto 0);
    saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
	 
	 concatenaImediatoJPC : out std_logic_vector(larguraDados-1 downto 0);  --USA NA ETAPA ANTERIOR (IF): jump
	 
	 JR                   : out std_logic;  --USA NA ETAPA ANTERIOR (IF): jump
    muxPC_BEQ_JMP        : out std_logic;  --USA NA ETAPA ANTERIOR (IF): jump
    muxControleRtRd      : out std_logic_vector(1 downto 0);
    habEscritaReg        : out std_logic;
    muxControleRtImediato: out std_logic;
    controleTipoR        : out std_logic;
    muxControleULARAM    : out std_logic_vector(1 downto 0);
    habilitaBEQ          : out std_logic;
    habilitaBNE          : out std_logic;
    habLeituraRAM        : out std_logic;
    habilitaEscritaRAM   : out std_logic;
	 
	 saidaOpcode : out std_logic_vector (5 downto 0);
    saidaFunct : out std_logic_vector (5 downto 0);
	 
	 saidaIncrementaPC_PASSA : out std_logic_vector(larguraDados-1 downto 0);
	 Rs_OUT : out std_logic_vector(larguraDados-1 downto 0);  --USA NA ETAPA ANTERIOR (IF): jump e futura(ex)
	 Rt_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 saidaExtensor : out std_logic_vector(larguraDados-1 downto 0);
    saidaLUI : out std_logic_vector(larguraDados-1 downto 0);
    Rt_IN_Reg : out std_logic_vector (4 downto 0);
    Rd_IN_Reg : out std_logic_vector (4 downto 0)
  );
end entity;

architecture arquitetura of id is    
    --Instrucao
    signal opCode : std_logic_vector (5 downto 0);
    signal Rs_IN : std_logic_vector (4 downto 0);
    signal Rt_IN : std_logic_vector (4 downto 0);
    signal Rd_IN : std_logic_vector (4 downto 0);
    signal imediato: std_logic_vector(15 downto 0);
    signal imediatoJ : std_logic_vector(25 downto 0); 
    signal funct : std_logic_vector (5 downto 0);
    
    signal controle: std_logic_vector(13 downto 0);
    --controle
    signal controleORI_ANDI : std_logic;	

    
    
begin

-- Manipulando a instrucao
opCode    <= formato_Instrucao (31 downto 26);
Rs_IN     <= formato_Instrucao (25 downto 21);
Rt_IN     <= formato_Instrucao (20 downto 16);
Rd_IN     <= formato_Instrucao (15 downto 11);
imediatoJ <= formato_Instrucao (25 downto 0); 
imediato  <= formato_Instrucao (15 downto 0);
funct     <= formato_Instrucao (5 downto 0);
		
-- Pontos de controle
JR                      <= controle(13);
muxPC_BEQ_JMP           <= controle(12);
muxControleRtRd         <= controle(11 downto 10);
controleORI_ANDI        <= controle(9);
habEscritaReg           <= controle(8);
muxControleRtImediato   <= controle(7);
controleTipoR           <= controle(6);
muxControleULARAM       <= controle(5 downto 4);
habilitaBEQ             <= controle(3);
habilitaBNE             <= controle(2);
habLeituraRAM           <= controle(1);
habilitaEscritaRAM      <= controle(0);

concatenaImediatoJPC <= saidaIncrementaPC(31 downto 28) & imediatoJ & "00";
saidaIncrementaPC_PASSA <= saidaIncrementaPC;

BANCO_REGISTRADORES : entity work.bancoReg generic map (larguraDados => larguraDados, larguraEndBancoRegs => 5)
			port map (clk   	=> CLK,
					  enderecoA => Rs_IN,
					  enderecoB => Rt_IN,
					  enderecoC => saidaMuxRtRd,
					  dadoEscritaC  => saidaMuxULARAM,
					  escreveC => WB,
					  saidaA   => Rs_OUT,
					  saidaB   => Rt_OUT);

UNIDADE_CONTROLE : entity work.unidadeControle  
          port map (opCode => opCode, funct => funct,saida => controle);

EXTENSOR_SINAL : entity work.estendeSinalGenerico generic map(larguraDadoEntrada => 16, larguraDadoSaida => 32)
			 port map (estendeSinal_IN => imediato, ORI_ANDI => controleORI_ANDI,
							estendeSinal_OUT => saidaExtensor);
							
UNIDADE_LUI : entity work.LUI generic map(larguraDadoEntrada => 16, larguraDadoSaida => 32)
			 port map (LUI_IN => imediato,
							LUI_OUT => saidaLUI);



saidaOpcode <= opCode;
saidaFunct <= funct;
Rt_IN_Reg <= Rt_IN;
Rd_IN_Reg <= Rd_IN;

end architecture;

