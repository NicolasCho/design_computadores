library ieee;
use ieee.std_logic_1164.all;

entity unidadeControleULA is
	
	port (
		opCode : in std_logic_vector (5 downto 0);
		funct : in std_logic_vector (5 downto 0);
		tipoR : in std_logic;
		saida : out std_logic_vector (2 downto 0)
	);
end entity;

architecture comportamento of unidadeControleULA is
	signal saidaDecoderOpCode: std_logic_vector (2 downto 0);
	signal saidaDecoderFunct: std_logic_vector (2 downto 0);

begin
	DECODER_OPCODE :	entity work.decoderOpCodeULA
		port map (opCode => opCode, saida => saidaDecoderOpCode);
		
	DECODER_FUNCT  :	entity work.decoderFunctULA
		port map (funct => funct, saida => saidaDecoderFunct);

	MUX2_1 : entity work.muxGenerico2x1  generic map (larguraDados => 3)
		port map (entradaA_MUX => saidaDecoderOpCode, entradaB_MUX => saidaDecoderFunct, seletor_MUX => tipoR,
						saida_MUX => saida);

end architecture;