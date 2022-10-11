library ieee;
use ieee.std_logic_1164.all;

entity Aula08 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraInstrucao : natural := 13;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK : in std_logic;
	 SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW8, SW9 : in std_logic;
	 KEY0, KEY1, KEY2, KEY3, FPGA_RESET : in std_logic;
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0  : out std_logic_vector(6 downto 0);
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0);
	 PC    : out std_logic_vector(larguraEnderecos-1 downto 0) --verificar instrucao
  );
end entity;

architecture arquitetura of Aula08 is
  signal CLK : std_logic;
  
  signal barramentoLeitura : std_logic_vector(larguraDados-1 downto 0);
  
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
  
  --Saida de A5
  signal divisor: std_logic;
  
  --LEDS
  signal saidaLEDR : std_logic_vector(9 downto 0);
  
  --Displays 7 seg
  signal saidaHex0 : std_logic_vector(6 downto 0);
  signal saidaHex1 : std_logic_vector(6 downto 0);
  signal saidaHex2 : std_logic_vector(6 downto 0);
  signal saidaHex3 : std_logic_vector(6 downto 0);
  signal saidaHex4 : std_logic_vector(6 downto 0);
  signal saidaHex5 : std_logic_vector(6 downto 0);
  
  --SW
  signal saidaSW: std_logic_vector(larguraDados-1 downto 0);
  
  --KEY
  signal saidaKEY: std_logic_vector(larguraDados-1 downto 0);

begin
CLK <= CLOCK;

--Fragmentando os enderecos
entradaDecoderBlocos <= saidaEnderecosCPU (8 downto 6);
entradaDecoderEnderecos <= saidaEnderecosCPU (2 downto 0);
divisor <= saidaEnderecosCPU (5);
enderecoRAM <= saidaEnderecosCPU (5 downto 0);

--Barramento de leitura
barramentoLeitura <= saidaRAM;
barramentoLeitura <= saidaSW;
barramentoLeitura <= saidaKEY;

-- O port map completo da CPU.
CPU :  entity work.CPU  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos, larguraInstrucao => larguraInstrucao)
        port map( CLOCK_50 => CLK,
					 Instruction_IN => saidaROM,
					 Data_IN => barramentoLeitura,
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
	
-- O port map completo da lógica que ativa os LEDS.	
LOGICALEDS : entity work.logicaLED  generic map(larguraDados => larguraDados)
			 port map (WR => WR,
						bloco => saidaDecoderBlocos(4),
						endereco => saidaDecoderEnderecos(2 downto 0),
						dados => saidaDadosCPU,
						led_ou_display => divisor,
						saida => saidaLEDR,
						CLK =>CLK);
						
-- O port map completo da lógica que ativa os displays 7 segmentos.	
LOGICADISPLAYS : entity work.logicaDisplay  generic map(larguraDados => larguraDados-4)
			 port map (CLK => CLK,
						WR => WR,
						bloco => saidaDecoderBlocos(4),
						endereco => saidaDecoderEnderecos(5 downto 0),
						dados => saidaDadosCPU(3 downto 0),
						led_ou_display => divisor,
						hex0 => saidaHex0,
						hex1 => saidaHex1,
						hex2 => saidaHex2,
						hex3 => saidaHex3,
						hex4 => saidaHex4,
						hex5 => saidaHex5);

LOGICASW : entity work.logicaSW 
			 port map (sw0 => SW0, sw1 => SW1, sw2 => SW2, sw3 => SW3, sw4 => SW4, sw5 => SW5, sw6 => SW6, sw7 => SW7, sw8 => SW8, sw9 => SW9,
						RD => RD,
						bloco => saidaDecoderBlocos(5),
						endereco => saidaDecoderEnderecos(2 downto 0),
						sw_ou_key => divisor,
						saida => saidaSW);
						
LOGICAKEY : entity work.logicaKey
			 port map (CLK => CLK,
			         key0 => KEY0, key1 => KEY1, key2 => KEY2, key3 => KEY3, FPGA_reset => FPGA_RESET,
						RD => RD,
						WR => WR,
						bloco => saidaDecoderBlocos(5),
						endereco => saidaDecoderEnderecos(4 downto 0),
						endereco_reset => saidaEnderecosCPU,
						sw_ou_key => divisor,
						saida => saidaKEY);
						
LEDR <= saidaLEDR;					
HEX0 <= saidaHex0;
HEX1 <= saidaHex1;
HEX2 <= saidaHex2;
HEX3 <= saidaHex3;
HEX4 <= saidaHex4;
HEX5 <= saidaHex5;
PC   <= entradaROM;
end architecture;