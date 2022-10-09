library ieee;
use ieee.std_logic_1164.all;

entity logicaKey is
  port ( key0, key1, key2, key3, FPGA_reset : in std_logic;
         RD : in std_logic;
			bloco : in std_logic;
			endereco : in std_logic_vector (4 downto 0);
			sw_ou_key : in std_logic;
         saida : out std_logic_vector (7 downto 0)
  );
end entity;

architecture comportamento of logicaKey is
  signal habilitaKey0 : std_logic;
  signal habilitaKey1 : std_logic;
  signal habilitaKey2 : std_logic;
  signal habilitaKey3 : std_logic;
  signal habilitaKeyFPGAReset : std_logic;
  
  signal saidaKey0: std_logic;
  signal saidaKey1: std_logic;
  signal saidaKey2: std_logic;
  signal saidaKey3: std_logic;
  signal saidaFPGAReset: std_logic;
  
begin
habilitaKey0 <= (RD and bloco and endereco(0) and sw_ou_key);
habilitaKey1 <= (RD and bloco and endereco(1) and sw_ou_key);
habilitaKey2 <= (RD and bloco and endereco(2) and sw_ou_key);
habilitaKey3 <= (RD and bloco and endereco(3) and sw_ou_key);
habilitaKeyFPGAReset <= (RD and bloco and endereco(4) and sw_ou_key);

BUFFER3STATEKEY0 : entity work.buffer_3_state
          port map (entrada => key0, 
						habilita => habilitaKey0, 
						saida => saidaKey0); 	
						
BUFFER3STATEKEY1 : entity work.buffer_3_state
          port map (entrada => key1, 
						habilita => habilitaKey1, 
						saida => saidaKey1);
						
BUFFER3STATEKEY2 : entity work.buffer_3_state
          port map (entrada => key2, 
						habilita => habilitaKey2, 
						saida => saidaKey2);
						
BUFFER3STATEKEY3 : entity work.buffer_3_state
          port map (entrada => key3, 
						habilita => habilitaKey3, 
						saida => saidaKey3);
						
BUFFER3STATEFPGARESET : entity work.buffer_3_state
          port map (entrada => FPGA_reset, 
						habilita => habilitaKeyFPGAReset, 
						saida => saidaFPGAReset);						

saida(0) <= saidaKey0;
saida(0) <= saidaKey1;
saida(0) <= saidaKey2;
saida(0) <= saidaKey3;
saida(0) <= saidaFPGAReset;
saida(7 downto 1) <= "ZZZZZZZ";

			 
end architecture;