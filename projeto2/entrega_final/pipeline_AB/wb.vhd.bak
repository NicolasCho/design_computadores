library ieee;
use ieee.std_logic_1164.all;

entity wb is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLK : in std_logic;
    Saida_ULA : in std_logic_vector(larguraDados-1 downto 0);
    saidaRAM : in std_logic_vector(larguraDados-1 downto 0);
    saidaIncrementaPC : in std_logic_vector(larguraDados-1 downto 0);
    saidaLUI : in std_logic_vector(larguraDados-1 downto 0);
    saidaMuxULARAM : out std_logic_vector(larguraDados-1 downto 0);

    muxControleULARAM    : in std_logic_vector(1 downto 0)
  );
end entity;

architecture arquitetura of wb is
    
    
  begin
  
  -- Instanciando os componentes:
  
  -- Para simular, fica mais simples tirar o edgeDetector
  
  gravar:  if simulacao generate
  CLK <= KEY(0);
  else generate
  detectorSub0: work.edgeDetector(bordaSubida)
          port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
  end generate;

MUX_ULA_RAM : entity work.muxGenerico4x1  generic map (larguraDados => 32)
			 port map (entradaA_MUX => Saida_ULA, entradaB_MUX => saidaRAM,
							entradaC_MUX => saidaIncrementaPC, entradaD_MUX => saidaLUI,
							seletor_MUX => muxControleULARAM, saida_MUX => saidaMuxULARAM);


end architecture;
