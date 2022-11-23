library ieee;
use ieee.std_logic_1164.all;

entity ULA_bit_final is
	
	port (
		EntradaA : in std_logic;
		EntradaB : in std_logic;
		SLT : in std_logic;
		Seletor : in std_logic_vector (1 downto 0);
		InverteB : in std_logic;
		CarryIn: in std_logic;
		CarryOut : out std_logic;
		Saida : out std_logic
	);
end entity;


architecture comportamento of ULA_bit_final is
	signal saidaMuxEntradaB : std_logic;
	signal saidaSomador : std_logic;
	signal entradaMuxA : std_logic;
	signal entradaMuxB : std_logic;
	signal entradaMuxC : std_logic;
	signal entradaMuxD : std_logic;

begin
	MUX2_1 : entity work.muxGenerico2x1_1bit
	port map (entradaA_MUX => EntradaB, entradaB_MUX => not EntradaB, seletor_MUX => InverteB,
					saida_MUX => saidaMuxEntradaB);

	SOMADOR : entity work.somadorCompleto
	port map (entradaA => EntradaA, entradaB => saidaMuxEntradaB, carryIn => CarryIn, carryOut => carryOut,
					Saida => saidaSomador);

	MUX4_1 : entity work.muxGenerico4x1_1bit
	port map (entradaA_MUX => entradaMuxA, entradaB_MUX => entradaMuxB, entradaC_MUX => entradaMuxC, entradaD_MUX => entradaMuxD,
					seletor_MUX => Seletor,
				saida_MUX => Saida);

	entradaMuxA <= EntradaA and saidaMuxEntradaB;
	entradaMuxB <= EntradaA or saidaMuxEntradaB;
	entradaMuxC <= saidaSomador;
	entradaMuxD <= SLT;

end architecture;
