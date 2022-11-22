library ieee;
use ieee.std_logic_1164.all;

entity logicaDisplay is
  port ( 
			dado: in std_logic_vector (23 downto 0);
         hex0: out std_logic_vector (6 downto 0);
			hex1: out std_logic_vector (6 downto 0);
			hex2: out std_logic_vector (6 downto 0);
			hex3: out std_logic_vector (6 downto 0);
			hex4: out std_logic_vector (6 downto 0);
			hex5: out std_logic_vector (6 downto 0)
  );
end entity;

architecture comportamento of logicaDisplay is
  
  signal saidaHex0: std_logic_vector (6 downto 0);
  signal saidaHex1: std_logic_vector (6 downto 0);
  signal saidaHex2: std_logic_vector (6 downto 0);
  signal saidaHex3: std_logic_vector (6 downto 0);
  signal saidaHex4: std_logic_vector (6 downto 0);
  signal saidaHex5: std_logic_vector (6 downto 0);
  
begin

DISPLAY0: entity work.display7Seg      
        port map(dadoHex => dado(3 downto 0),
                 saida => saidaHex0);		 

DISPLAY1: entity work.display7Seg      
        port map(dadoHex => dado(7 downto 4),
                 saida => saidaHex1);	
					  
DISPLAY2: entity work.display7Seg      
        port map(dadoHex => dado(11 downto 8),
                 saida => saidaHex2);	

DISPLAY3: entity work.display7Seg      
        port map(dadoHex => dado(15 downto 12),
                 saida => saidaHex3);	
					  
DISPLAY4: entity work.display7Seg      
        port map(dadoHex => dado(19 downto 16),
                 saida => saidaHex4);	
					  				  
DISPLAY5: entity work.display7Seg      
        port map(dadoHex => dado(23 downto 20),
                 saida => saidaHex5);	
	

hex0 <= saidaHex0;
hex1 <= saidaHex1;
hex2 <= saidaHex2;
hex3 <= saidaHex3;
hex4 <= saidaHex4;
hex5 <= saidaHex5;

	
end architecture;