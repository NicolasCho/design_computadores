library ieee;
use ieee.std_logic_1164.all;

entity ULA is
	
	generic ( 
			larguraDados : natural := 32
			);
	
	port (
		EntradaA : in std_logic_vector (larguraDados-1 downto 0);
		EntradaB : in std_logic_vector (larguraDados-1 downto 0);
		Seletor : in std_logic_vector (1 downto 0);
		InverteB : in std_logic;
		
		signalBEQ : out std_logic;
		Saida : out std_logic_vector (larguraDados-1 downto 0)
	);
end entity;

architecture arquitetura of ULA is

	signal carry_out_0 : std_logic;
	signal carry_out_1 : std_logic;
	signal carry_out_2 : std_logic;
	signal carry_out_3 : std_logic;
	signal carry_out_4 : std_logic;
	signal carry_out_5 : std_logic;
	signal carry_out_6 : std_logic;
	signal carry_out_7 : std_logic;
	signal carry_out_8 : std_logic;
	signal carry_out_9 : std_logic;
	signal carry_out_10 : std_logic;
	signal carry_out_11 : std_logic;
	signal carry_out_12 : std_logic;
	signal carry_out_13 : std_logic;
	signal carry_out_14 : std_logic;
	signal carry_out_15 : std_logic;
	signal carry_out_16 : std_logic;
	signal carry_out_17 : std_logic;
	signal carry_out_18 : std_logic;
	signal carry_out_19 : std_logic;
	signal carry_out_20 : std_logic;
	signal carry_out_21 : std_logic;
	signal carry_out_22 : std_logic;
	signal carry_out_23 : std_logic;
	signal carry_out_24 : std_logic;
	signal carry_out_25 : std_logic;
	signal carry_out_26 : std_logic;
	signal carry_out_27 : std_logic;
	signal carry_out_28 : std_logic;
	signal carry_out_29 : std_logic;
	signal carry_out_30 : std_logic;
	signal carry_out_31 : std_logic;
	signal SLT : std_logic;
	
begin
	BIT0 : entity work.ULA_bit_final
		port map (EntradaA => EntradaA(0), EntradaB => EntradaB(0), Seletor => Seletor,
				InverteB => InverteB, CarryIn => InverteB, SLT => SLT, CarryOut => carry_out_0, Saida => Saida(0));

	BIT1 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(1), EntradaB => EntradaB(1), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_0, CarryOut => carry_out_1, Saida => Saida(1));

	BIT2 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(2), EntradaB => EntradaB(2), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_1, CarryOut => carry_out_2, Saida => Saida(2));

	BIT3 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(3), EntradaB => EntradaB(3), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_2, CarryOut => carry_out_3, Saida => Saida(3));

	BIT4 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(4), EntradaB => EntradaB(4), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_3, CarryOut => carry_out_4, Saida => Saida(4));

	BIT5 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(5), EntradaB => EntradaB(5), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_4, CarryOut => carry_out_5, Saida => Saida(5));

	BIT6 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(6), EntradaB => EntradaB(6), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_5, CarryOut => carry_out_6, Saida => Saida(6));

	BIT7 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(7), EntradaB => EntradaB(7), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_6, CarryOut => carry_out_7, Saida => Saida(7));

	BIT8 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(8), EntradaB => EntradaB(8), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_7, CarryOut => carry_out_8, Saida => Saida(8));

	BIT9 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(9), EntradaB => EntradaB(9), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_8, CarryOut => carry_out_9, Saida => Saida(9));

	BIT10 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(10), EntradaB => EntradaB(10), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_9, CarryOut => carry_out_10, Saida => Saida(10));

	BIT11 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(11), EntradaB => EntradaB(11), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_10, CarryOut => carry_out_11, Saida => Saida(11));

	BIT12 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(12), EntradaB => EntradaB(12), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_11, CarryOut => carry_out_12, Saida => Saida(12));

	BIT13 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(13), EntradaB => EntradaB(13), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_12, CarryOut => carry_out_13, Saida => Saida(13));

	BIT14 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(14), EntradaB => EntradaB(14), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_13, CarryOut => carry_out_14, Saida => Saida(14));

	BIT15 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(15), EntradaB => EntradaB(15), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_14, CarryOut => carry_out_15, Saida => Saida(15));

	BIT16 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(16), EntradaB => EntradaB(16), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_15, CarryOut => carry_out_16, Saida => Saida(16));

	BIT17 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(17), EntradaB => EntradaB(17), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_16, CarryOut => carry_out_17, Saida => Saida(17));

	BIT18 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(18), EntradaB => EntradaB(18), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_17, CarryOut => carry_out_18, Saida => Saida(18));

	BIT19 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(19), EntradaB => EntradaB(19), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_18, CarryOut => carry_out_19, Saida => Saida(19));

	BIT20 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(20), EntradaB => EntradaB(20), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_19, CarryOut => carry_out_20, Saida => Saida(20));

	BIT21 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(21), EntradaB => EntradaB(21), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_20, CarryOut => carry_out_21, Saida => Saida(21));

	BIT22 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(22), EntradaB => EntradaB(22), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_21, CarryOut => carry_out_22, Saida => Saida(22));

	BIT23 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(23), EntradaB => EntradaB(23), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_22, CarryOut => carry_out_23, Saida => Saida(23));

	BIT24 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(24), EntradaB => EntradaB(24), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_23, CarryOut => carry_out_24, Saida => Saida(24));

	BIT25 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(25), EntradaB => EntradaB(25), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_24, CarryOut => carry_out_25, Saida => Saida(25));

	BIT26 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(26), EntradaB => EntradaB(26), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_25, CarryOut => carry_out_26, Saida => Saida(26));

	BIT27 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(27), EntradaB => EntradaB(27), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_26, CarryOut => carry_out_27, Saida => Saida(27));

	BIT28 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(28), EntradaB => EntradaB(28), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_27, CarryOut => carry_out_28, Saida => Saida(28));

	BIT29 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(29), EntradaB => EntradaB(29), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_28, CarryOut => carry_out_29, Saida => Saida(29));

	BIT30 : entity work.ULA_1_bit
		port map (EntradaA => EntradaA(30), EntradaB => EntradaB(30), Seletor => Seletor,
			InverteB => InverteB, CarryIn => carry_out_29, CarryOut => carry_out_30, Saida => Saida(30));

	BIT31 : entity work.ULA_bit_inicial
	port map (EntradaA => EntradaA(31), EntradaB => EntradaB(31), Seletor => Seletor,
		InverteB => InverteB, CarryIn => carry_out_30, SLT => SLT, Saida => Saida(31));
	
signalBEQ <= not(Saida(31) and Saida(30) and Saida(29) and Saida(28) 
				 and Saida(27) and Saida(26) and Saida(25) and Saida(24)
				 and Saida(23) and Saida(22) and Saida(21) and Saida(20)
				 and Saida(19) and Saida(18) and Saida(17) and Saida(16)
				 and Saida(15) and Saida(14) and Saida(13) and Saida(12)
				 and Saida(11) and Saida(10) and Saida(9) and Saida(8)
				 and Saida(7) and Saida(6) and Saida(5) and Saida(4)
				 and Saida(3) and Saida(2) and Saida(1) and Saida(0));
	
end architecture;
