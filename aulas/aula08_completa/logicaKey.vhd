library ieee;
use ieee.std_logic_1164.all;

entity logicaKey is
  port ( CLK : in std_logic;
         key0, key1, key2, key3, FPGA_reset : in std_logic;
         RD, WR : in std_logic;
			bloco : in std_logic;
			endereco : in std_logic_vector (4 downto 0);
			endereco_reset : in std_logic_vector (8 downto 0);
			sw_ou_key : in std_logic;
         saida : out std_logic_vector (7 downto 0)
  );
end entity;

architecture comportamento of logicaKey is
  signal saidaDiscriminador : std_logic;
  signal saidaFlipFlop : std_logic;
  signal resetFlipFlop : std_logic;

  signal habilitaKey0 : std_logic;
  signal habilitaKey1 : std_logic;
  signal habilitaKey2 : std_logic;
  signal habilitaKey3 : std_logic;
  signal habilitaKeyFPGAReset : std_logic;
  
  signal saidaKey0: std_logic;
  signal saidaKey0Restante: std_logic_vector(6 downto 0);
  signal saidaKey1: std_logic;
  signal saidaKey1Restante: std_logic_vector(6 downto 0);
  signal saidaKey2: std_logic;
  signal saidaKey3: std_logic;
  signal saidaFPGAReset: std_logic;
  
begin
habilitaKey0 <= (RD and bloco and endereco(0) and sw_ou_key);
habilitaKey1 <= (RD and bloco and endereco(1) and sw_ou_key);
habilitaKey2 <= (RD and bloco and endereco(2) and sw_ou_key);
habilitaKey3 <= (RD and bloco and endereco(3) and sw_ou_key);
habilitaKeyFPGAReset <= (RD and bloco and endereco(4) and sw_ou_key);

resetFlipFlop <= (endereco_reset(8) and endereco_reset(7) and endereco_reset(6) and endereco_reset(5) and
                  endereco_reset(4) and endereco_reset(3) and endereco_reset(2) and endereco_reset(1) and
						endereco_reset(0) and WR);

DISCRIMINADORBORDA : entity work.edgeDetector(bordaSubida)
          port map(clk => CLK,
			         entrada => key0,
						saida => saidaDiscriminador);
						
FF : entity work.flipFlop
		    port map (DIN => '1', DOUT => saidaFlipFlop, ENABLE => '1', CLK => saidaDiscriminador, RST => resetFlipFlop);

--
BUFFER3STATEKEY0 : entity work.buffer_3_state
          port map (entrada => saidaFlipFlop, 
						habilita => habilitaKey0, 
						saida => saidaKey0); 	
			
BUFFER3STATEKEY0RESTANTE : entity work.buffer_3_state_7portas
          port map (entrada => "0000000", 
						habilita => habilitaKey0, 
						saida => saidaKey0Restante); 	
--
			
BUFFER3STATEKEY1 : entity work.buffer_3_state
          port map (entrada => key1, 
						habilita => habilitaKey1, 
						saida => saidaKey1);
						
BUFFER3STATEKEY1RESTANTE : entity work.buffer_3_state_7portas
          port map (entrada => "0000000", 
						habilita => habilitaKey1, 
						saida => saidaKey1Restante); 	
--
						
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
saida(7 downto 1) <= saidaKey0Restante;
saida(7 downto 1) <= saidaKey1Restante;

			 
end architecture;