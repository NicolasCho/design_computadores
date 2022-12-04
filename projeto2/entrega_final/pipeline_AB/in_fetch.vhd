library ieee;
use ieee.std_logic_1164.all;

entity in_fetch is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32
  );
  port   (
    CLK : in std_logic;
	 enderecoBEQ: in std_logic_vector(larguraDados-1 downto 0);
	 concatenaImediatoJPC: in std_logic_vector (larguraDados-1 downto 0);
	 Rs_OUT : in std_logic_vector(larguraDados-1 downto 0);
	
    JR : in std_logic; --controle
    selMuxPC_BEQ : in std_logic;    --logica BEQ
	 selMuxPC_BEQ_JMP: in std_logic;  --controle

	 PC_4 : out std_logic_vector(larguraDados-1 downto 0);
    formato_Instrucao : out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;

architecture arquitetura of in_fetch is


    signal EnderecoROM : std_logic_vector (larguraEnderecos-1 downto 0);
    signal saidaIncrementaPC : std_logic_vector (larguraEnderecos-1 downto 0);
    signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);

    signal saidaMuxPC_BEQ : std_logic_vector(larguraDados-1 downto 0);
	 signal saidaMuxPC_BEQ_JMP : std_logic_vector(larguraDados-1 downto 0);
    
    
begin


PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => EnderecoROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => EnderecoROM, saida => saidaIncrementaPC);


ROM : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => EnderecoROM, Dado => formato_Instrucao);

MUX_PC_BEQ : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaIncrementaPC, entradaB_MUX => enderecoBEQ, 
			 seletor_MUX => selMuxPC_BEQ, saida_MUX => saidaMuxPC_BEQ);

MUX_PC_BEQ_JMP : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxPC_BEQ, entradaB_MUX => concatenaImediatoJPC, 
			 seletor_MUX => selMuxPC_BEQ_JMP, saida_MUX => saidaMuxPC_BEQ_JMP);
			 
MUX_PC_BEQ_JMP_JR : entity work.muxGenerico2x1 generic map (larguraDados => 32)
			 port map (entradaA_MUX => saidaMuxPC_BEQ_JMP, entradaB_MUX => Rs_OUT, 
			 seletor_MUX => JR, saida_MUX => proxPC);
			 
PC_4 <= saidaIncrementaPC;

end architecture;
