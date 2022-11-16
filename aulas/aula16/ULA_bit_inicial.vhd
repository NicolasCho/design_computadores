library ieee;
use ieee.std_logic_1164.all;

entity ULA_bit_inicial is
	
	port (
		EntradaA : in std_logic;
		EntradaB : in std_logic;
		Seletor : in std_logic_vector (1 downto 0);
		InverteB : in std_logic;
		CarryIn: in std_logic;
		SLT : out std_logic;
		Saida : out std_logic
	);
end entity;


architecture comportamento of ULA_bit_inicial is
	signal saidaMuxEntradaB : std_logic;
	signal saidaSomador : std_logic;
	signal entradaMuxA : std_logic;
	signal entradaMuxB : std_logic;
	signal entradaMuxC : std_logic;
	signal entradaMuxD : std_logic;
	signal CarryOut : std_logic;

begin
	MUX2_1 : entity work.muxGenerico2x1
	port map (entradaA_MUX => EntradaB, entradaB_MUX => not EntradaB, seletor_MUX => InverteB,
					saida_MUX => saidaMuxEntradaB);

	SOMADOR : entity work.somadorCompleto
	port map (entradaA => EntradaA, entradaB => saidaMuxEntradaB, carryIn => CarryIn, carryOut => CarryOut,
					Saida => saidaSomador);

	MUX4_1 : entity work.muxGenerico4x1
	port map (entradaA_MUX => entradaMuxA, entradaB_MUX => entradaMuxB, entradaC_MUX => entradaMuxC, entradaD_MUX => entradaMuxD,
	 			seletor_MUX => Seletor,
				saida_MUX => saidaMuxEntradaB);
				

	entradaMuxA <= EntradaA and saidaMuxEntradaB;
	entradaMuxB <= EntradaA or saidaMuxEntradaB;
	entradaMuxC <= saidaSomador;
	entradaMuxD <= '0';
	SLT <= (CarryOut xor CarryIn) xor saidaSomador;

end architecture;
