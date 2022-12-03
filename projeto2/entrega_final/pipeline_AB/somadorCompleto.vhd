library ieee;
use ieee.std_logic_1164.all;

entity somadorCompleto is
  -- Total de bits das entradas e saidas
  port (
    entradaA, entradaB : in std_logic;
    carryIn : in std_logic;
    carryOut, Saida : out std_logic
  );
end entity;

architecture comportamento of somadorCompleto is
  begin
    Saida <= carryIn xor (entradaA xor entradaB);
    carryOut <= ((entradaA xor entradaB) and carryIn) or (entradaA and entradaB);
end architecture;