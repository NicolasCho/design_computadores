library ieee;
use ieee.std_logic_1164.all;

entity MIPS is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
		  larguraInstrucao : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
	 KEY   : in  std_logic_vector(3 downto 0);
	 SW    : in  std_logic_vector(9 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0);
	 HEX0  : out std_logic_vector(6 downto 0);
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0)
  );
end entity;

architecture arquitetura of MIPS is

	signal CLK : std_logic;
	
--signals
	signal concatenaImediatoJPC_signal : std_logic_vector(larguraDados-1 downto 0);
	signal JR_signal : std_logic;
	signal muxPC_BEQ_JMP_signal : std_logic;
	signal Rs_OUT_signal : std_logic_vector(larguraDados-1 downto 0);
	signal selMuxPC_BEQ_signal : std_logic;
	signal saidaSomador_PASSA_signal : std_logic_vector(larguraDados-1 downto 0); 
	signal saidaMuxULARAM_signal : std_logic_vector(larguraDados-1 downto 0);
	signal habEscritaReg_PASSA_signal : std_logic;
	signal saidaMuxRtRd_PASSA_signal : std_logic_vector (4 downto 0);
	
--registradores
	signal saidaIF : std_logic_vector(63 downto 0);
	signal entradaID : std_logic_vector(63 downto 0);
	
	signal saidaID : std_logic_vector(191 downto 0);
	signal entradaEX : std_logic_vector(191 downto 0);
	
	signal saidaEX : std_logic_vector(172 downto 0);
	signal entradaMEM: std_logic_vector(172 downto 0);
    
	signal saidaMEM : std_logic_vector(134 downto 0);
	signal entradaWB : std_logic_vector(134 downto 0);
    
begin
  
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
		  port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

INSTRUCTION_FETCH : entity work.in_fetch  
          port map (CLK => CLK,
						 enderecoBEQ =>saidaSomador_PASSA_signal,
						 concatenaImediatoJPC => concatenaImediatoJPC_signal,
						 Rs_OUT => Rs_OUT_signal,
						
						 JR =>JR_signal,
						 selMuxPC_BEQ =>selMuxPC_BEQ_signal,
						 selMuxPC_BEQ_JMP =>muxPC_BEQ_JMP_signal,

						 PC_4 => saidaIF(63 downto 32),
						 formato_Instrucao => saidaIF(31 downto 0)
					  );
					 
REG_IF_ID : entity work.registradorGenerico generic(larguraDados => 64)
				port map(DIN => saidaIF, DOUT => entradaID, ENABLE => '1', CLK => CLK, RST => '0');
						 
INSTRUCTION_DECODE : entity work.id
			 port map (CLK  => CLK,
						 WB =>habEscritaReg_PASSA_signal,
						 saidaMuxRtRd =>saidaMuxRtRd_PASSA_signal,
						 saidaMuxULARAM =>saidaMuxULARAM_signal,
						 formato_Instrucao =>entradaID(31 downto 0),
						 saidaIncrementaPC => entradaID(63 downto 32),
						 
						 concatenaImediatoJPC =>concatenaImediatoJPC_signal, 
						 
						 JR  =>JR_signal,
						 muxPC_BEQ_JMP =>muxPC_BEQ_JMP_signal,
						 muxControleRtRd =>saidaID(191),
						 habEscritaReg =>saidaID(190),
						 muxControleRtImediato =>saidaID(189),
						 controleTipoR =>saidaID(188),
						 muxControleULARAM  =>saidaID(187 downto 186),
						 habilitaBEQ =>saidaID(185),
						 habilitaBNE =>saidaID(184),
						 habLeituraRAM =>saidaID(183),
						 habilitaEscritaRAM =>saidaID(182),
						 
						 saidaOpcode =>saidaID(181 downto 176),
						 saidaFunct =>saidaID(175 downto 170),
						 
						 saidaIncrementaPC_PASSA =>saidaID(169 downto 138),
						 Rs_OUT => Rs_OUT_signal,
						 Rt_OUT =>saidaID(105 downto 74),
						 saidaExtensor =>saidaID(73 downto 42),
						 saidaLUI  => saidaID(41 downto 10),
						 Rt_IN_Reg => saidaID(9 downto 5),
						 Rd_IN_Reg => saidaID(4 downto 0)
						  );

saidaID(137 downto 106) <= Rs_OUT_signal;
						  
REG_ID_EX : entity work.registradorGenerico generic(larguraDados => 192)
				port map(DIN => saidaID, DOUT => entradaEX, ENABLE => '1', CLK => CLK, RST => '0');

EXECUTE: entity work.ex
			port map(CLK => CLK,
						 
					 muxControleRtRd => entradaEX(191),
					 habEscritaReg  => entradaEX(190),
					 muxControleRtImediato =>entradaEX(189),
					 controleTipoR =>entradaEX(188),
					 muxControleULARAM  =>entradaEX(187 downto 186),
					 habilitaBEQ =>entradaEX(185),
					 habilitaBNE =>entradaEX(184),
					 habLeituraRAM =>entradaEX(183),
					 habilitaEscritaRAM  =>entradaEX(182),
					
					 opCode =>entradaEX(181 downto 176),
					 funct =>entradaEX(175 downto 170),
					 
					 saidaIncrementaPC =>entradaEX(169 downto 138),
					 Rs_OUT =>entradaEX(137 downto 106),
					 Rt_OUT =>entradaEX(105 downto 74),
					 saidaExtensor =>entradaEX(73 downto 42),
					 saidaLUI =>entradaEX(41 downto 10),
					 Rt_IN =>entradaEX(9 downto 5),
					 Rd_IN =>entradaEX(4 downto 0),
					 
					 habEscritaReg_PASSA =>saidaEX(172),
					 muxControleULARAM_PASSA  =>saidaEX(171 downto 170),
					 habilitaBEQ_PASSA =>saidaEX(169),
					 habilitaBNE_PASSA =>saidaEX(168),
					 habLeituraRAM_PASSA =>saidaEX(167),
					 habilitaEscritaRAM_PASSA  =>saidaEX(166),
					
					 saidaIncrementaPC_PASSA =>saidaEX(165 downto 134),
					 saidaSomador =>saidaEX(133 downto 102),         
					 signalBEQ =>saidaEX(101),
					 Saida_ULA =>saidaEX(100 downto 69),
					 Rt_OUT_PASSA  =>saidaEX(68 downto 37),
					 saidaLUI_PASSA =>saidaEX(36 downto 5),
					 saidaMuxRtRd => saidaEX(4 downto 0)
					 );

REG_EX_MEM : entity work.registradorGenerico generic(larguraDados => 173)
				port map(DIN => saidaEX, DOUT => entradaMEM, ENABLE => '1', CLK => CLK, RST => '0');	
	
MEMORY_ACCESS: entity work.mem
			port map(CLK => CLK,

					 habEscritaReg =>entradaMEM(172),                 
					 muxControleULARAM =>entradaMEM(171 downto 170),
					 habilitaBEQ =>entradaMEM(169),
					 habilitaBNE =>entradaMEM(168),
					 habLeituraRAM =>entradaMEM(167),
					 habilitaEscritaRAM =>entradaMEM(166),
					 
					 saidaIncrementaPC =>entradaMEM(165 downto 134),
					 saidaSomador =>entradaMEM(133 downto 102),  
					 signalBEQ  =>entradaMEM(101),
					 Saida_ULA =>entradaMEM(100 downto 69),
					 Rt_OUT =>entradaMEM(68 downto 37),
					 saidaLUI =>entradaMEM(36 downto 5),
					 saidaMuxRtRd  =>entradaMEM(4 downto 0) 
					 
					 selMuxPC_BEQ =>selMuxPC_BEQ_signal, 
					 saidaSomador_PASSA  =>saidaSomador_PASSA_signal,
					 
					 habEscritaReg_PASSA  =>saidaMEM(134),         
					 muxControleULARAM_PASSA  =>saidaMEM(133),
					 
					 saidaIncrementaPC_PASSA  =>saidaMEM(132 downto 101),
					 saidaRAM  =>saidaMEM(100 downto 69),          
					 Saida_ULA_PASSA  =>saidaMEM(68 downto 37),				
					 saidaLUI_PASSA  =>saidaMEM(36 downto 5),
					 saidaMuxRtRd_PASSA => saidaMEM(4 downto 0)
				  );
				  
REG_ID_EX : entity work.registradorGenerico generic(larguraDados => 135)
				port map(DIN => saidaMEM, DOUT => entradaWB, ENABLE => '1', CLK => CLK, RST => '0');

					  
WRITE_BACK : entity work.wb
			port map( CLK : in std_logic;
	 
					 habEscritaReg  => entradaWB(134),       
					 muxControleULARAM  => entradaWB(133),
					 
					 saidaIncrementaPC  =>entradaWB(132 downto 101),
					 saidaRAM  =>entradaWB(100 downto 69),
					 Saida_ULA  =>entradaWB(68 downto 37),
					 saidaLUI   =>entradaWB(36 downto 5),
					 saidaMuxRtRd  =>entradaWB(4 downto 0),    
					 
					 saidaMuxULARAM  =>saidaMuxULARAM_signal,
					 habEscritaReg_PASSA  =>habEscritaReg_PASSA_signal,
					 saidaMuxRtRd_PASSA =>saidaMuxRtRd_PASSA_signal
				  );
             
end architecture;
