library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDOP: std_logic_vector(3 downto 0) := "1011";
  constant ADDI : std_logic_vector(3 downto 0) := "1100";
  constant SUBI : std_logic_vector(3 downto 0) := "1101";
  constant ANDI : std_logic_vector(3 downto 0) := "1110";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Inicializa os endereços:
tmp(0) := LDI&"00"&'0'&x"00";
tmp(1) := STA&"00"&'1'&x"20";
tmp(2) := STA&"00"&'1'&x"21";
tmp(3) := STA&"00"&'1'&x"22";
tmp(4) := STA&"00"&'1'&x"23";
tmp(5) := STA&"00"&'1'&x"24";
tmp(6) := STA&"00"&'1'&x"25";
tmp(7) := STA&"00"&'1'&x"00";
tmp(8) := STA&"00"&'1'&x"01";
tmp(9) := STA&"00"&'1'&x"02";
tmp(10) := STA&"00"&'0'&x"00";
tmp(11) := STA&"00"&'0'&x"01";
tmp(12) := STA&"00"&'0'&x"02";
tmp(13) := STA&"00"&'0'&x"03";
tmp(14) := STA&"00"&'0'&x"04";
tmp(15) := STA&"00"&'0'&x"05";
tmp(16) := STA&"00"&'0'&x"06";
tmp(17) := STA&"00"&'1'&x"ff";
tmp(18) := STA&"00"&'1'&x"fe";
tmp(19) := LDI&"00"&'0'&x"01";
tmp(20) := STA&"00"&'0'&x"0e";
tmp(22) := LDI&"00"&'0'&x"0a";
tmp(23) := STA&"00"&'0'&x"0f";
tmp(25) := LDI&"00"&'0'&x"00";
tmp(26) := STA&"00"&'0'&x"10";
tmp(28) := LDI&"00"&'0'&x"14";
tmp(29) := STA&"00"&'0'&x"08";
tmp(30) := STA&"00"&'0'&x"09";
tmp(31) := STA&"00"&'0'&x"0a";
tmp(32) := STA&"00"&'0'&x"0b";
tmp(33) := STA&"00"&'0'&x"0c";
tmp(34) := STA&"00"&'0'&x"0d";
tmp(39) := JSR&"00"&'0'&x"43";
tmp(41) := LDA&"00"&'1'&x"61";
tmp(42) := ANDOP&"00"&'0'&x"0e";
tmp(43) := CEQ&"00"&'0'&x"06";
tmp(44) := JEQ&"00"&'0'&x"2e";
tmp(45) := JSR&"00"&'0'&x"aa";
tmp(48) := JSR&"00"&'1'&x"0f";
tmp(50) := LDA&"00"&'1'&x"60";
tmp(51) := ANDOP&"00"&'0'&x"0e";
tmp(52) := CEQ&"00"&'0'&x"06";
tmp(53) := JEQ&"00"&'0'&x"37";
tmp(54) := JSR&"00"&'0'&x"58";
tmp(57) := LDA&"00"&'1'&x"64";
tmp(58) := ANDOP&"00"&'0'&x"0e";
tmp(59) := CEQ&"00"&'0'&x"06";
tmp(60) := JEQ&"00"&'0'&x"3e";
tmp(61) := JSR&"00"&'1'&x"46";
tmp(64) := JMP&"00"&'0'&x"25";
tmp(68) := LDA&"10"&'0'&x"00";
tmp(69) := STA&"10"&'1'&x"20";
tmp(70) := NOP&"00"&'0'&x"00";
tmp(71) := LDA&"10"&'0'&x"01";
tmp(72) := STA&"10"&'1'&x"21";
tmp(73) := NOP&"00"&'0'&x"00";
tmp(74) := LDA&"10"&'0'&x"02";
tmp(75) := STA&"10"&'1'&x"22";
tmp(76) := NOP&"00"&'0'&x"00";
tmp(77) := LDA&"10"&'0'&x"03";
tmp(78) := STA&"10"&'1'&x"23";
tmp(79) := NOP&"00"&'0'&x"00";
tmp(80) := LDA&"10"&'0'&x"04";
tmp(81) := STA&"10"&'1'&x"24";
tmp(82) := NOP&"00"&'0'&x"00";
tmp(83) := LDA&"10"&'0'&x"05";
tmp(84) := STA&"10"&'1'&x"25";
tmp(85) := RET&"00"&'0'&x"00";
tmp(89) := STA&"00"&'1'&x"ff";
tmp(90) := LDA&"00"&'0'&x"10";
tmp(91) := CEQ&"00"&'0'&x"0e";
tmp(92) := JEQ&"00"&'0'&x"a6";
tmp(94) := LDA&"00"&'0'&x"00";
tmp(95) := SOMA&"00"&'0'&x"0e";
tmp(96) := STA&"00"&'0'&x"00";
tmp(97) := CEQ&"00"&'0'&x"0f";
tmp(98) := JEQ&"00"&'0'&x"66";
tmp(99) := NOP&"00"&'0'&x"00";
tmp(100) := RET&"00"&'0'&x"00";
tmp(103) := LDI&"00"&'0'&x"00";
tmp(104) := STA&"00"&'0'&x"00";
tmp(105) := LDA&"00"&'0'&x"01";
tmp(106) := SOMA&"00"&'0'&x"0e";
tmp(107) := STA&"00"&'0'&x"01";
tmp(108) := CEQ&"00"&'0'&x"0f";
tmp(109) := JEQ&"00"&'0'&x"71";
tmp(110) := NOP&"00"&'0'&x"00";
tmp(111) := RET&"00"&'0'&x"00";
tmp(114) := LDI&"00"&'0'&x"00";
tmp(115) := STA&"00"&'0'&x"01";
tmp(116) := LDA&"00"&'0'&x"02";
tmp(117) := SOMA&"00"&'0'&x"0e";
tmp(118) := STA&"00"&'0'&x"02";
tmp(119) := CEQ&"00"&'0'&x"0f";
tmp(120) := JEQ&"00"&'0'&x"7c";
tmp(121) := NOP&"00"&'0'&x"00";
tmp(122) := RET&"00"&'0'&x"00";
tmp(125) := LDI&"00"&'0'&x"00";
tmp(126) := STA&"00"&'0'&x"02";
tmp(127) := LDA&"00"&'0'&x"03";
tmp(128) := SOMA&"00"&'0'&x"0e";
tmp(129) := STA&"00"&'0'&x"03";
tmp(130) := CEQ&"00"&'0'&x"0f";
tmp(131) := JEQ&"00"&'0'&x"87";
tmp(132) := NOP&"00"&'0'&x"00";
tmp(133) := RET&"00"&'0'&x"00";
tmp(136) := LDI&"00"&'0'&x"00";
tmp(137) := STA&"00"&'0'&x"03";
tmp(138) := LDA&"00"&'0'&x"04";
tmp(139) := SOMA&"00"&'0'&x"0e";
tmp(140) := STA&"00"&'0'&x"04";
tmp(141) := CEQ&"00"&'0'&x"0f";
tmp(142) := JEQ&"00"&'0'&x"92";
tmp(143) := NOP&"00"&'0'&x"00";
tmp(144) := RET&"00"&'0'&x"00";
tmp(147) := LDI&"00"&'0'&x"00";
tmp(148) := STA&"00"&'0'&x"04";
tmp(149) := LDA&"00"&'0'&x"05";
tmp(150) := SOMA&"00"&'0'&x"0e";
tmp(151) := STA&"00"&'0'&x"05";
tmp(152) := CEQ&"00"&'0'&x"0f";
tmp(153) := JEQ&"00"&'0'&x"9d";
tmp(154) := NOP&"00"&'0'&x"00";
tmp(155) := RET&"00"&'0'&x"00";
tmp(158) := LDI&"00"&'0'&x"00";
tmp(159) := STA&"00"&'0'&x"02";
tmp(161) := LDI&"00"&'0'&x"01";
tmp(162) := STA&"00"&'1'&x"02";
tmp(163) := STA&"00"&'0'&x"10";
tmp(167) := RET&"00"&'0'&x"00";
tmp(171) := STA&"00"&'1'&x"fe";
tmp(173) := LDI&"00"&'0'&x"01";
tmp(174) := STA&"00"&'1'&x"01";
tmp(175) := STA&"00"&'1'&x"02";
tmp(178) := LDI&"00"&'0'&x"01";
tmp(179) := STA&"00"&'1'&x"00";
tmp(180) := LDA&"00"&'1'&x"40";
tmp(181) := STA&"00"&'0'&x"08";
tmp(183) := LDA&"00"&'1'&x"61";
tmp(184) := ANDOP&"00"&'0'&x"0e";
tmp(185) := CEQ&"00"&'0'&x"06";
tmp(186) := JEQ&"00"&'0'&x"b1";
tmp(188) := LDI&"00"&'0'&x"00";
tmp(189) := STA&"00"&'1'&x"00";
tmp(190) := STA&"00"&'1'&x"fe";
tmp(193) := LDI&"00"&'0'&x"02";
tmp(194) := STA&"00"&'1'&x"00";
tmp(195) := LDA&"00"&'1'&x"40";
tmp(196) := STA&"00"&'0'&x"09";
tmp(198) := LDA&"00"&'1'&x"61";
tmp(199) := ANDOP&"00"&'0'&x"0e";
tmp(200) := CEQ&"00"&'0'&x"06";
tmp(201) := JEQ&"00"&'0'&x"c0";
tmp(203) := LDI&"00"&'0'&x"00";
tmp(204) := STA&"00"&'1'&x"00";
tmp(205) := STA&"00"&'1'&x"fe";
tmp(208) := LDI&"00"&'0'&x"04";
tmp(209) := STA&"00"&'1'&x"00";
tmp(210) := LDA&"00"&'1'&x"40";
tmp(211) := STA&"00"&'0'&x"0a";
tmp(213) := LDA&"00"&'1'&x"61";
tmp(214) := ANDOP&"00"&'0'&x"0e";
tmp(215) := CEQ&"00"&'0'&x"06";
tmp(216) := JEQ&"00"&'0'&x"cf";
tmp(218) := LDI&"00"&'0'&x"00";
tmp(219) := STA&"00"&'1'&x"00";
tmp(220) := STA&"00"&'1'&x"fe";
tmp(223) := LDI&"00"&'0'&x"08";
tmp(224) := STA&"00"&'1'&x"00";
tmp(225) := LDA&"00"&'1'&x"40";
tmp(226) := STA&"00"&'0'&x"0b";
tmp(228) := LDA&"00"&'1'&x"61";
tmp(229) := ANDOP&"00"&'0'&x"0e";
tmp(230) := CEQ&"00"&'0'&x"06";
tmp(231) := JEQ&"00"&'0'&x"de";
tmp(233) := LDI&"00"&'0'&x"00";
tmp(234) := STA&"00"&'1'&x"00";
tmp(235) := STA&"00"&'1'&x"fe";
tmp(238) := LDI&"00"&'0'&x"10";
tmp(239) := STA&"00"&'1'&x"00";
tmp(240) := LDA&"00"&'1'&x"40";
tmp(241) := STA&"00"&'0'&x"0c";
tmp(243) := LDA&"00"&'1'&x"61";
tmp(244) := ANDOP&"00"&'0'&x"0e";
tmp(245) := CEQ&"00"&'0'&x"06";
tmp(246) := JEQ&"00"&'0'&x"ed";
tmp(248) := LDI&"00"&'0'&x"00";
tmp(249) := STA&"00"&'1'&x"00";
tmp(250) := STA&"00"&'1'&x"fe";
tmp(253) := LDI&"00"&'0'&x"20";
tmp(254) := STA&"00"&'1'&x"00";
tmp(255) := LDA&"00"&'1'&x"40";
tmp(256) := STA&"00"&'0'&x"0d";
tmp(258) := LDA&"00"&'1'&x"61";
tmp(259) := ANDOP&"00"&'0'&x"0e";
tmp(260) := CEQ&"00"&'0'&x"06";
tmp(261) := JEQ&"00"&'0'&x"fc";
tmp(263) := LDI&"00"&'0'&x"00";
tmp(264) := STA&"00"&'1'&x"00";
tmp(265) := STA&"00"&'1'&x"fe";
tmp(267) := STA&"00"&'1'&x"01";
tmp(268) := STA&"00"&'1'&x"02";
tmp(269) := JMP&"00"&'0'&x"25";
tmp(273) := LDA&"01"&'0'&x"05";
tmp(274) := CEQ&"01"&'0'&x"0d";
tmp(275) := JEQ&"00"&'1'&x"18";
tmp(276) := LDI&"01"&'0'&x"00";
tmp(277) := STA&"01"&'0'&x"10";
tmp(278) := RET&"00"&'0'&x"00";
tmp(281) := LDA&"01"&'0'&x"04";
tmp(282) := CEQ&"01"&'0'&x"0c";
tmp(283) := JEQ&"00"&'1'&x"20";
tmp(284) := LDI&"01"&'0'&x"00";
tmp(285) := STA&"01"&'0'&x"10";
tmp(286) := RET&"00"&'0'&x"00";
tmp(289) := LDA&"01"&'0'&x"03";
tmp(290) := CEQ&"01"&'0'&x"0b";
tmp(291) := JEQ&"00"&'1'&x"28";
tmp(292) := LDI&"01"&'0'&x"00";
tmp(293) := STA&"01"&'0'&x"10";
tmp(294) := RET&"00"&'0'&x"00";
tmp(297) := LDA&"01"&'0'&x"02";
tmp(298) := CEQ&"01"&'0'&x"0a";
tmp(299) := JEQ&"00"&'1'&x"30";
tmp(300) := LDI&"01"&'0'&x"00";
tmp(301) := STA&"01"&'0'&x"10";
tmp(302) := RET&"00"&'0'&x"00";
tmp(305) := LDA&"01"&'0'&x"01";
tmp(306) := CEQ&"01"&'0'&x"09";
tmp(307) := JEQ&"00"&'1'&x"38";
tmp(308) := LDI&"01"&'0'&x"00";
tmp(309) := STA&"01"&'0'&x"10";
tmp(310) := RET&"00"&'0'&x"00";
tmp(313) := LDA&"01"&'0'&x"00";
tmp(314) := CEQ&"01"&'0'&x"08";
tmp(315) := JEQ&"00"&'1'&x"40";
tmp(316) := LDI&"01"&'0'&x"00";
tmp(317) := STA&"01"&'0'&x"10";
tmp(318) := RET&"00"&'0'&x"00";
tmp(321) := LDI&"01"&'0'&x"01";
tmp(322) := STA&"01"&'0'&x"10";
tmp(323) := STA&"01"&'1'&x"01";
tmp(324) := RET&"00"&'0'&x"00";
tmp(327) := STA&"00"&'1'&x"fc";
tmp(328) := LDI&"00"&'0'&x"00";
tmp(329) := STA&"00"&'0'&x"00";
tmp(330) := STA&"00"&'0'&x"01";
tmp(331) := STA&"00"&'0'&x"02";
tmp(332) := STA&"00"&'0'&x"03";
tmp(333) := STA&"00"&'0'&x"04";
tmp(334) := STA&"00"&'0'&x"05";
tmp(335) := STA&"00"&'0'&x"10";
tmp(336) := STA&"00"&'1'&x"01";
tmp(337) := STA&"00"&'1'&x"02";
tmp(338) := STA&"00"&'1'&x"00";
tmp(340) := RET&"00"&'0'&x"00";





        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;