library ieee;
use ieee.std_logic_1164.all;

entity mem is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        
  );
  port   (
    CLK : in std_logic;

    habEscritaReg        : in std_logic;                 
    muxControleULARAM    : in std_logic_vector(1 downto 0);
    habilitaBEQ          : in std_logic; -- 
    habilitaBNE          : in std_logic; --
    habLeituraRAM        : in std_logic; --
    habilitaEscritaRAM   : in std_logic; --
	 
	 saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
	 saidaSomador : in std_logic_vector(larguraDados-1 downto 0);  --
    signalBEQ : in std_logic;                                     --
    Saida_ULA : in std_logic_vector(larguraDados-1 downto 0);     --
    Rt_OUT : in std_logic_vector(larguraDados-1 downto 0);        --
	 saidaLUI  : in std_logic_vector(larguraDados-1 downto 0);     
	 saidaMuxRtRd : in std_logic_vector (4 downto 0);              
	 
	 selMuxPC_BEQ : out std_logic;
	 saidaSomador_PASSA : out std_logic_vector(larguraDados-1 downto 0); 
	 
	 habEscritaReg_PASSA        : out std_logic;                
    muxControleULARAM_PASSA    : out std_logic_vector(1 downto 0);
	 
	 saidaIncrementaPC_PASSA : out std_logic_vector(larguraDados-1 downto 0);
    saidaRAM : out std_logic_vector(larguraDados-1 downto 0);                            --
	 Saida_ULA_PASSA : out std_logic_vector(larguraDados-1 downto 0);
	 saidaLUI_PASSA : out std_logic_vector(larguraDados-1 downto 0);
    saidaMuxRtRd_PASSA : out std_logic_vector (4 downto 0)
  );
end entity;

architecture arquitetura of mem is

  signal saidaMUX_BEQ_BNE : std_logic;
    
begin
  
--PASSA
Saida_ULA_PASSA <= Saida_ULA;
saidaIncrementaPC_PASSA <= saidaIncrementaPC;
saidaLUI_PASSA <= saidaLUI;
saidaMuxRtRd_PASSA <= saidaMuxRtRd;

saidaSomador_PASSA <= saidaSomador;
selMuxPC_BEQ <= (habilitaBEQ or habilitaBNE) and saidaMUX_BEQ_BNE;

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


end architecture;
