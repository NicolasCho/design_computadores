library IEEE;
use ieee.std_logic_1164.all;

entity bancoRegistradores is
	 generic(
		larguraDados : natural := 8
	 );
    port
    (	 DIN : in std_logic_vector(larguraDados-1 downto 0);
       DOUT : out std_logic_vector(larguraDados-1 downto 0);
		 ENDERECO_REGISTRADOR : in std_logic_vector(1 downto 0);
       ENABLE : in std_logic;
       CLK,RST : in std_logic
    );
end entity;

architecture comportamento of bancoRegistradores is
  signal habR0, habR1, habR2, habR3: std_logic;

  signal saida_reg0: std_logic_vector(larguraDados-1 downto 0);
  signal saida_reg1: std_logic_vector(larguraDados-1 downto 0); 
  signal saida_reg2: std_logic_vector(larguraDados-1 downto 0);
  signal saida_reg3: std_logic_vector(larguraDados-1 downto 0);
  
begin
habR0 <= '1' when (ENDERECO_REGISTRADOR = "00" and ENABLE = '1') else '0';
habR1 <= '1' when (ENDERECO_REGISTRADOR = "01" and ENABLE = '1') else '0';
habR2 <= '1' when (ENDERECO_REGISTRADOR = "10" and ENABLE = '1') else '0';
habR3 <= '1' when (ENDERECO_REGISTRADOR = "11" and ENABLE = '1') else '0';


R0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN, DOUT => saida_reg0, ENABLE => habR0, CLK => CLK, RST => '0'); 
	
	
R1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN, DOUT => saida_reg1, ENABLE => habR1, CLK => CLK, RST => '0'); 
			 
			 
R2 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN, DOUT => saida_reg2, ENABLE => habR2, CLK => CLK, RST => '0'); 
			

R3 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN, DOUT => saida_reg3, ENABLE => habR3, CLK => CLK, RST => '0');
			
DOUT <= saida_reg0 when (	ENDERECO_REGISTRADOR = "00") else
			saida_reg1 when (	ENDERECO_REGISTRADOR = "01") else
			saida_reg2 when (	ENDERECO_REGISTRADOR = "10") else
			saida_reg3 when (	ENDERECO_REGISTRADOR = "11") else
			"00000000";
	

end architecture;