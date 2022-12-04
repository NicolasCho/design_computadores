library ieee;
use ieee.std_logic_1164.all;

entity ex is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLK : in std_logic;
    opCode : in std_logic_vector (5 downto 0);
    funct: in std_logic_vector (5 downto 0);
    Rt_IN : in std_logic_vector (4 downto 0);
    Rd_IN : in std_logic_vector (4 downto 0);
    saidaExtensor : in std_logic_vector(larguraDados-1 downto 0);
    Rs_OUT : in std_logic_vector(larguraDados-1 downto 0);
    Rt_OUT : in std_logic_vector(larguraDados-1 downto 0);
    saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
    saidaSomador : out std_logic_vector(larguraDados-1 downto 0);
    Saida_ULA : out std_logic_vector(larguraDados-1 downto 0);
    signalBEQ : out std_logic;
    saidaMuxRtRd : out std_logic_vector (4 downto 0);

    muxControleRtImediato: in std_logic;
    controleTipoR        : in std_logic
  );
end entity;

architecture arquitetura of ex is


  signal ULACtrl : std_logic_vector (2 downto 0);
  signal saidaMuxRtImediato : std_logic_vector (larguraDados-1 downto 0);
  signal saidaShifter :  std_logic_vector (larguraDados-1 downto 0);

    
    
  begin
  
  -- Instanciando os componentes:
  
  -- Para simular, fica mais simples tirar o edgeDetector
  
  gravar:  if simulacao generate
  CLK <= KEY(0);
  else generate
  detectorSub0: work.edgeDetector(bordaSubida)
          port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
  end generate;

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
