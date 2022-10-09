library ieee;
use ieee.std_logic_1164.all;

entity Aula07 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucao : natural := 13;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK : in std_logic;
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;

architecture arquitetura of Aula07 is
  signal CLK : std_logic;
  
  --sinais de I/0 da CPU
  signal saidaROM : std_logic_vector (larguraInstrucao-1 downto 0);
  signal saidaRAM : std_logic_vector (larguraDados-1 downto 0);
  signal saidaDadosCPU : std_logic_vector (larguraDados-1 downto 0);
  signal saidaEnderecosCPU : std_logic_vector (larguraEnderecos-1 downto 0);
  signal entradaROM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal RD : std_logic;
  signal WR : std_logic;
  
  --RAM
  signal enderecoRAM : std_logic_vector (5 downto 0); 
  
  --sinais dos decoders de endereços e blocos
  signal entradaDecoderBlocos : std_logic_vector (2 downto 0);
  signal saidaDecoderBlocos : std_logic_vector (7 downto 0);
  signal entradaDecoderEnderecos : std_logic_vector (2 downto 0);
  signal saidaDecoderEnderecos : std_logic_vector (7 downto 0);
  
  --LEDS
  signal saidaLEDR : std_logic_vector(9 downto 0);

begin
CLK <= CLOCK;

--Fragmentando os enderecos
entradaDecoderBlocos <= saidaEnderecosCPU (8 downto 6);
entradaDecoderEnderecos <= saidaEnderecosCPU (2 downto 0);
enderecoRAM <= saidaEnderecosCPU (5 downto 0);

-- O port map completo da CPU.
CPU :  entity work.CPU  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos, larguraInstrucao => larguraInstrucao)
        port map( CLOCK_50 => CLK,
					 Instruction_IN => saidaROM,
					 Data_IN => saidaRAM,
					 Data_OUT => saidaDadosCPU,	
					 ROM_Address => entradaROM,
					 Data_Address => saidaEnderecosCPU,
					 RD => RD,
					 WR => WR);
					 
-- O port map completo da ROM.
ROM : entity work.memoriaROM   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecos)
          port map (Endereco => entradaROM, Dado => saidaROM);

-- O port map completo do decoder de blocos.			 
DECODER_BLOCOS: entity work.decoder3x8   
          port map (entrada => entradaDecoderBlocos, saida => saidaDecoderBlocos);
			 
-- O port map completo do decoder de enderecos.			 
DECODER_ENDERECOS: entity work.decoder3x8   
          port map (entrada => entradaDecoderEnderecos, saida => saidaDecoderEnderecos);

-- O port map completo do decoder da memória RAM.	
RAM : entity work.memoriaRAM  generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos-3)
			 port map (addr => enderecoRAM, we => WR, re => RD, 
							habilita => saidaDecoderBlocos (0), clk => CLK, 
							dado_in => saidaDadosCPU,
							dado_out => saidaRAM);
	
-- O port map completo do decoder da lógica que ativa os LEDS.	
LOGICALEDS : entity work.logicaLED  generic map(larguraDados => larguraDados)
			 port map (WR => WR,
						bloco => saidaDecoderBlocos(4),
						endereco => saidaDecoderEnderecos(2 downto 0),
						dados => saidaDadosCPU,
						saida => saidaLEDR,
						CLK =>CLK);

LEDR <= saidaLEDR;					
end architecture;