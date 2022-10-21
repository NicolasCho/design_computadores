library ieee;
use ieee.std_logic_1164.all;

entity logicaKey is
  port ( CLK : in std_logic;
         KEY : in std_logic_vector(3 downto 0); 
			FPGA_reset : in std_logic;
         RD, WR : in std_logic;
			bloco : in std_logic;
			endereco : in std_logic_vector (4 downto 0);
			endereco_reset : in std_logic_vector (8 downto 0);
			sw_ou_key : in std_logic;
         saida : out std_logic
  );
end entity;

architecture comportamento of logicaKey is
  signal saidaDiscriminador : std_logic;
  signal saidaDiscriminadorKey1 : std_logic;
  
  signal saidaFlipFlop : std_logic;
  signal saidaFlipFlopKey1 : std_logic;
  
  signal resetFlipFlop : std_logic;
  signal resetFlipFlopKey1 : std_logic;

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

resetFlipFlop <= (endereco_reset(8) and endereco_reset(7) and endereco_reset(6) and endereco_reset(5) and
                  endereco_reset(4) and endereco_reset(3) and endereco_reset(2) and endereco_reset(1) and
						endereco_reset(0) and WR);
						
resetFlipFlopKey1 <= (endereco_reset(8) and endereco_reset(7) and endereco_reset(6) and endereco_reset(5) and
                  endereco_reset(4) and endereco_reset(3) and endereco_reset(2) and endereco_reset(1) and
						(not endereco_reset(0)) and WR);

						
DISCRIMINADORBORDA : entity work.edgeDetector(bordaSubida)
          port map(clk => CLK,
			         entrada => KEY(0),
						saida => saidaDiscriminador);
						
DISCRIMINADORBORDA1 : entity work.edgeDetector(bordaSubida)
          port map(clk => CLK,
			         entrada => KEY(1),
						saida => saidaDiscriminadorKey1);
						
FF : entity work.flipFlop
		    port map (DIN => '1', DOUT => saidaFlipFlop, ENABLE => '1', CLK => saidaDiscriminador, RST => resetFlipFlop);

FF1 : entity work.flipFlop
		    port map (DIN => '1', DOUT => saidaFlipFlopKey1, ENABLE => '1', CLK => saidaDiscriminadorKey1, RST => resetFlipFlopKey1);

BUFFER3STATEKEY0 : entity work.buffer_3_state
          port map (entrada => saidaFlipFlop, 
						habilita => habilitaKey0, 
						saida => saidaKey0); 	 	

			
BUFFER3STATEKEY1 : entity work.buffer_3_state
          port map (entrada => saidaFlipFlopKey1, 
						habilita => habilitaKey1, 
						saida => saidaKey1);

						
BUFFER3STATEKEY2 : entity work.buffer_3_state
          port map (entrada => KEY(2), 
						habilita => habilitaKey2, 
						saida => saidaKey2);
						
BUFFER3STATEKEY3 : entity work.buffer_3_state
          port map (entrada => KEY(3), 
						habilita => habilitaKey3, 
						saida => saidaKey3);
						
BUFFER3STATEFPGARESET : entity work.buffer_3_state
          port map (entrada => FPGA_reset, 
						habilita => habilitaKeyFPGAReset, 
						saida => saidaFPGAReset);						

saida <= saidaKey0;
saida <= saidaKey1;
saida <= saidaKey2;
saida <= saidaKey3;
saida <= saidaFPGAReset;
			 
end architecture;