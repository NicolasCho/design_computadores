library ieee;
use ieee.std_logic_1164.all;

entity mem is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLK : in std_logic;
    signalBEQ : in std_logic;
    Saida_ULA : in std_logic_vector(larguraDados-1 downto 0);
    saidaSomador : in std_logic_vector(larguraDados-1 downto 0);
    saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
    Rt_OUT : in std_logic_vector(larguraDados-1 downto 0);
    saidaRAM : out std_logic_vector(larguraDados-1 downto 0);
    saidaMuxImediatoPC : out std_logic_vector(larguraDados-1 downto 0);

    muxPC_BEQ_JMP        : in std_logic;
    habilitaEscritaRAM   : in std_logic;
    habLeituraRAM        : in std_logic;
    habilitaBEQ          : in std_logic;
    habilitaBNE          : in std_logic
  );
end entity;

architecture arquitetura of mem is



  signal saidaMUX_BEQ_BNE : std_logic;
  signal PCSelectorMUX : std_logic;

    
    
  begin
  
  -- Instanciando os componentes:
  
  -- Para simular, fica mais simples tirar o edgeDetector
  
  gravar:  if simulacao generate
  CLK <= KEY(0);
  else generate
  detectorSub0: work.edgeDetector(bordaSubida)
          port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
  end generate;

PCSelectorMUX <= (habilitaBEQ or habilitaBNE) and saidaMUX_BEQ_BNE;

RAM : entity work.RAMMIPS generic map(dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
			 port map (clk      => CLK,
						  Endereco => Saida_ULA,
						  Dado_in  => Rt_OUT,
						  Dado_out => saidaRAM,
						  we       => habilitaEscritaRAM,
						  re       => habLeituraRAM
					    );

MUX_BEQ_BNE :  entity work.muxGenerico2x1_1bit
				port map (entradaA_MUX => not signalBEQ, entradaB_MUX => signalBEQ, seletor_MUX => habilitaBEQ,
								saida_MUX => saidaMUX_BEQ_BNE);

MUXPC : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaIncrementaPC, entradaB_MUX => saidaSomador, seletor_MUX => PCSelectorMUX,
							saida_MUX => saidaMuxImediatoPC);

end architecture;
