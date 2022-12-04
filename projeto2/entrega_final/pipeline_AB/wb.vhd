library ieee;
use ieee.std_logic_1164.all;

entity wb is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32
  );
  port   (
    CLK : in std_logic;
	 
	 habEscritaReg        : in std_logic;                    --       
    muxControleULARAM    : in std_logic_vector(1 downto 0); --
	 
	 saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
	 saidaRAM : in std_logic_vector(larguraDados-1 downto 0);
	 Saida_ULA : in std_logic_vector(larguraDados-1 downto 0);
	 saidaLUI  : in std_logic_vector(larguraDados-1 downto 0);  
	 saidaMuxRtRd : in std_logic_vector (4 downto 0);     
	 
    saidaMuxULARAM : out std_logic_vector(larguraDados-1 downto 0);
	 habEscritaReg_PASSA  : out std_logic;
	 saidaMuxRtRd_PASSA   : out std_logic_vector (4 downto 0)
  );
end entity;

architecture arquitetura of wb is
    
    
begin
 
--PASSA
habEscritaReg_PASSA <= habEscritaReg;
saidaMuxRtRd_PASSA <= saidaMuxRtRd;

MUX_ULA_RAM : entity work.muxGenerico4x1  generic map (larguraDados => 32)
			 port map (entradaA_MUX => Saida_ULA, entradaB_MUX => saidaRAM,
							entradaC_MUX => saidaIncrementaPC, entradaD_MUX => saidaLUI,
							seletor_MUX => muxControleULARAM, saida_MUX => saidaMuxULARAM);


end architecture;
