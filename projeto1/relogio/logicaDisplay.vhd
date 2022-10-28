library ieee;
use ieee.std_logic_1164.all;

entity logicaDisplay is
  generic (
        larguraDados : natural := 4
  );
  port ( 
         CLK : in std_logic;
			WR : in std_logic;
			bloco : in std_logic;
			endereco : in std_logic_vector (5 downto 0);
			dados: in std_logic_vector (3 downto 0);
			led_ou_display : in std_logic;
         hex0: out std_logic_vector (6 downto 0);
			hex1: out std_logic_vector (6 downto 0);
			hex2: out std_logic_vector (6 downto 0);
			hex3: out std_logic_vector (6 downto 0);
			hex4: out std_logic_vector (6 downto 0);
			hex5: out std_logic_vector (6 downto 0)
  );
end entity;

architecture comportamento of logicaDisplay is
  signal habilitaHex0 : std_logic;
  signal habilitaHex1 : std_logic;
  signal habilitaHex2 : std_logic;
  signal habilitaHex3 : std_logic;
  signal habilitaHex4 : std_logic;
  signal habilitaHex5 : std_logic;
  
  
  signal saidaHex0: std_logic_vector (6 downto 0);
  signal saidaHex1: std_logic_vector (6 downto 0);
  signal saidaHex2: std_logic_vector (6 downto 0);
  signal saidaHex3: std_logic_vector (6 downto 0);
  signal saidaHex4: std_logic_vector (6 downto 0);
  signal saidaHex5: std_logic_vector (6 downto 0);
  
begin
habilitaHex0 <= (WR and bloco and endereco(0) and led_ou_display);
habilitaHex1 <= (WR and bloco and endereco(1) and led_ou_display);
habilitaHex2 <= (WR and bloco and endereco(2) and led_ou_display);
habilitaHex3 <= (WR and bloco and endereco(3) and led_ou_display);
habilitaHex4 <= (WR and bloco and endereco(4) and led_ou_display);
habilitaHex5 <= (WR and bloco and endereco(5) and led_ou_display);

DISPLAY0: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
					  dadoHex => dados,
                 habilita => habilitaHex0,
                 saida => saidaHex0);		 

DISPLAY1: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
		           dadoHex => dados,
                 habilita => habilitaHex1,
                 saida => saidaHex1);	
					  
DISPLAY2: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
		           dadoHex => dados,
                 habilita => habilitaHex2,
                 saida => saidaHex2);	

DISPLAY3: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
		           dadoHex => dados,
                 habilita => habilitaHex3,
                 saida => saidaHex3);	
					  
DISPLAY4: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
		           dadoHex => dados,
                 habilita => habilitaHex4,
                 saida => saidaHex4);	
					  				  
DISPLAY5: entity work.display7Seg      generic map (larguraDados => larguraDados)
        port map(CLK => CLK,
		           dadoHex => dados,
                 habilita => habilitaHex5,
                 saida => saidaHex5);	
	

hex0 <= saidaHex0;
hex1 <= saidaHex1;
hex2 <= saidaHex2;
hex3 <= saidaHex3;
hex4 <= saidaHex4;
hex5 <= saidaHex5;

	
end architecture;