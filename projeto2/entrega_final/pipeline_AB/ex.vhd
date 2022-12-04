library ieee;
use ieee.std_logic_1164.all;

entity ex is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32       
  );
  port   (
    CLK : in std_logic;
	 
    muxControleRtRd      : in std_logic_vector(1 downto 0);
    habEscritaReg        : in std_logic;  
    muxControleRtImediato: in std_logic;  --
    controleTipoR        : in std_logic;  --
    muxControleULARAM    : in std_logic_vector(1 downto 0);
    habilitaBEQ          : in std_logic;
    habilitaBNE          : in std_logic;
    habLeituraRAM        : in std_logic;
    habilitaEscritaRAM   : in std_logic;
	
    opCode : in std_logic_vector (5 downto 0); --
    funct: in std_logic_vector (5 downto 0);   --
	 
	 saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);	 Rs_OUT : in std_logic_vector(larguraDados-1 downto 0);
    Rt_OUT : in std_logic_vector(larguraDados-1 downto 0);
	 saidaExtensor : in std_logic_vector(larguraDados-1 downto 0);
	 saidaLUI : in std_logic_vector(larguraDados-1 downto 0);
    Rt_IN : in std_logic_vector (4 downto 0);
    Rd_IN : in std_logic_vector (4 downto 0);
	 
	 habEscritaReg_PASSA        : out std_logic;
	 muxControleULARAM_PASSA    : out std_logic_vector(1 downto 0);
    habilitaBEQ_PASSA          : out std_logic;
    habilitaBNE_PASSA          : out std_logic;
    habLeituraRAM_PASSA        : out std_logic;
    habilitaEscritaRAM_PASSA   : out std_logic;
	
	 saidaIncrementaPC_PASSA : out std_logic_vector(larguraDados-1 downto 0);
    saidaSomador : out std_logic_vector(larguraDados-1 downto 0);             
	 signalBEQ : out std_logic;
    Saida_ULA : out std_logic_vector(larguraDados-1 downto 0);
	 Rt_OUT_PASSA : out std_logic_vector(larguraDados-1 downto 0);
	 saidaLUI_PASSA : out std_logic_vector(larguraDados-1 downto 0);
    saidaMuxRtRd : out std_logic_vector (4 downto 0)
  );
end entity;

architecture arquitetura of ex is


  signal ULACtrl : std_logic_vector (2 downto 0);
  signal saidaMuxRtImediato : std_logic_vector (larguraDados-1 downto 0);
  signal saidaShifter :  std_logic_vector (larguraDados-1 downto 0);

    
    
begin

--PASSA
habEscritaReg_PASSA        <= habEscritaReg;
muxControleULARAM_PASSA    <= muxControleULARAM;
habilitaBEQ_PASSA          <= habilitaBEQ;
habilitaBNE_PASSA          <= habilitaBNE;
habLeituraRAM_PASSA        <= habLeituraRAM;
habilitaEscritaRAM_PASSA   <= habilitaEscritaRAM;

saidaIncrementaPC_PASSA    <= saidaIncrementaPC;
saidaLUI_PASSA             <= saidaLUI;
Rt_OUT_PASSA               <= Rt_OUT;


MUX_RT_IMEDIATO : entity work.muxGenerico2x1  generic map (larguraDados => 32)
			 port map (entradaA_MUX => Rt_OUT, entradaB_MUX => saidaExtensor, seletor_MUX => muxControleRtImediato,
							saida_MUX => saidaMuxRtImediato);
                        
ULA : entity work.ULA  generic map(larguraDados => larguraDados)
          port map (entradaA => Rs_OUT, entradaB => saidaMuxRtImediato, 
							Seletor => ULACtrl(1 downto 0), InverteB => ULACtrl(2),
							saida => Saida_ULA, signalBEQ => signalBEQ);

UNIDADE_CONTROLE_ULA : entity work.unidadeControleULA  
          port map (opCode => opCode, funct => funct, tipoR => controleTipoR, saida => ULACtrl);

SHIFTER : entity work.shifter generic map(larguraDado => 32)
			 port map (shifter_IN => saidaExtensor,
							shifter_OUT => saidaShifter);

SOMADOR: entity work.somadorGenerico generic map (	larguraDados => 32)
			 port map (entradaA => saidaIncrementaPC, entradaB => saidaShifter, saida => saidaSomador);

MUX_RT_RD : entity work.muxGenerico4x1		generic map	(larguraDados => 5)
			 port map (entradaA_MUX => Rt_IN, entradaB_MUX => Rd_IN, 
							entradaC_MUX => "11111", entradaD_MUX => "00000",
							seletor_MUX => muxControleRtRd, saida_MUX => saidaMuxRtRd);

             
end architecture;
