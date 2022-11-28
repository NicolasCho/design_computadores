library IEEE;
use ieee.std_logic_1164.all;

entity display7Seg is
    port
    (
        dadoHex : in  std_logic_vector(3 downto 0);
        saida : out std_logic_vector(6 downto 0) 
    );
end entity;

architecture comportamento of display7Seg is
  signal saidaDecoder7Seg: std_logic_vector (6 downto 0);
  
begin


DECODER7SEG:  entity work.conversorHex7Seg
        port map(dadoHex => dadoHex,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saidaDecoder7Seg);
					  
saida <= saidaDecoder7Seg;

end architecture;