library ieee;
use ieee.std_logic_1164.all;

entity if is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLK : in std_logic;
    JR : in std_logic;
    muxPC_BEQ_JMP : in std_logic;
    Rs_OUT : in std_logic_vector(larguraDados-1 downto 0);
    concatenaImediatoJPC: in std_logic_vector (larguraDados-1 downto 0);
    saidaMuxImediatoPC : in std_logic_vector(larguraDados-1 downto 0);
    formato_Instrucao : out std_logic_vector(larguraDados-1 downto 0);
    PC_4 : out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;

architecture arquitetura of if is


    signal EnderecoROM : std_logic_vector (larguraEnderecos-1 downto 0);
    signal saidaIncrementaPC : std_logic_vector (larguraEnderecos-1 downto 0);
    signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);

    signal saidaMuxPC_BEQ_JMP : std_logic_vector(larguraDados-1 downto 0);
    
    
  begin
  
  -- Instanciando os componentes:
  
  -- Para simular, fica mais simples tirar o edgeDetector
  
  gravar:  if simulacao generate
  CLK <= KEY(0);
  else generate
  detectorSub0: work.edgeDetector(bordaSubida)
          port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
  end generate;

  concatenaImediatoJPC <= saidaIncrementaPC(31 downto 28) & imediatoJ & "00";


PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => EnderecoROM, saida => saidaIncrementaPC);


ROM : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => EnderecoROM, Dado => formato_Instrucao);

MUX_PC_JR : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxPC_BEQ_JMP, entradaB_MUX => Rs_OUT, 
			 seletor_MUX => JR, saida_MUX => proxPC);

MUX_PC_BEQ_JMP : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxImediatoPC, entradaB_MUX => concatenaImediatoJPC, 
			 seletor_MUX => muxPC_BEQ_JMP, saida_MUX => saidaMuxPC_BEQ_JMP);

PC_4 <= saidaIncrementaPC;

end architecture;
