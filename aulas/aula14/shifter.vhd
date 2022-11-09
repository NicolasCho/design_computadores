library ieee; 
use ieee.std_logic_1164.all;

entity shifter is
    generic
    (
        larguraDado   : natural  :=    32
    );
    port
    (
        -- Input ports
        shifter_IN : in  std_logic_vector(larguraDado-1 downto 0);
        -- Output ports
        shifter_OUT: out std_logic_vector(larguraDado-1 downto 0)
    );
end entity;

architecture comportamento of shifter is
begin

    shifter_OUT <= shifter_IN(29 downto 0) & "00";

end architecture;