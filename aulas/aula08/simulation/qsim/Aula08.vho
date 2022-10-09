-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/09/2022 17:11:31"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula08 IS
    PORT (
	CLOCK : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula08;

ARCHITECTURE structure OF Aula08 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~0_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~1_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|Equal7~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK <= CLOCK;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DECODER|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER|Equal10~0_combout\;
\DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_ENDERECOS|Equal7~0_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0);
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000100100001000100010010000100010001001000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\CPU|DECODER|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~2_combout\ = (\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal10~2_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~8_combout\);

\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = (\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~13_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~8_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~55_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~47_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~23_q\ 
-- ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datac => \RAM|ALT_INV_ram~47_q\,
	datad => \RAM|ALT_INV_ram~55_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM|ram~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~71_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~63_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~39_q\ 
-- ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \RAM|ALT_INV_ram~39_q\,
	datac => \RAM|ALT_INV_ram~63_q\,
	datad => \RAM|ALT_INV_ram~71_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~529_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~529_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~529_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = (\ROM|memROM~8_combout\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~9_combout\ $ (\ROM|memROM~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000010000000001000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

\CPU|ULA1|Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~18_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~529_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & ((!\ROM|memROM~13_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~18_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~529_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & ((!\ROM|memROM~13_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~18_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER|saida~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~529_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~529_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~1_combout\ = (!\ROM|memROM~8_combout\) # (((!\ROM|memROM~10_combout\) # (!\ROM|memROM~11_combout\)) # (\ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal10~1_combout\);

\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = (\ROM|memROM~8_combout\ & (!\ROM|memROM~11_combout\ $ (((\ROM|memROM~10_combout\) # (\ROM|memROM~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~1_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\DECODER_ENDERECOS|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~0_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~8_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \DECODER_ENDERECOS|Equal7~0_combout\);

\DECODER_ENDERECOS|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~1_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~1_combout\);

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~34_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~66_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~50_q\,
	datac => \RAM|ALT_INV_ram~66_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~42_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datac => \RAM|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~74_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~58_q\,
	datac => \RAM|ALT_INV_ram~74_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~533_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~531_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datab => \RAM|ALT_INV_ram~531_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	datad => \RAM|ALT_INV_ram~533_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~534_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~539_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~539_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~539_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~539_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|saida~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~539_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~539_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~32_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~64_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~48_q\,
	datac => \RAM|ALT_INV_ram~64_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~40_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~72_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~56_q\,
	datac => \RAM|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~538_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~537_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~536_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~539_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~542_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~542_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~542_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~15_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~542_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~15_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER|saida~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~57_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~49_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~25_q\ 
-- ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datac => \RAM|ALT_INV_ram~49_q\,
	datad => \RAM|ALT_INV_ram~57_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~73_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~65_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~41_q\ 
-- ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \RAM|ALT_INV_ram~41_q\,
	datac => \RAM|ALT_INV_ram~65_q\,
	datad => \RAM|ALT_INV_ram~73_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~540_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~542_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & \RAM|ram~534_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\RAM|ram~534_combout\) # (\CPU|DECODER|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\);

\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = (!\CPU|DECODER|saida~0_combout\ & (((\CPU|ULA1|Add1~5_sumout\)))) # (\CPU|DECODER|saida~0_combout\ & (!\CPU|DECODER|Equal10~0_combout\ & (\RAM|ram~534_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\DECODER_ENDERECOS|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~2_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~2_combout\);

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\DECODER_ENDERECOS|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~3_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~3_combout\);

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\DECODER_ENDERECOS|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~4_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~4_combout\);

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\DECODER_ENDERECOS|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~5_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~5_combout\);

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\DECODER_ENDERECOS|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ENDERECOS|Equal7~6_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \DECODER_ENDERECOS|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER_ENDERECOS|ALT_INV_Equal7~0_combout\,
	combout => \DECODER_ENDERECOS|Equal7~6_combout\);

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \DECODER_ENDERECOS|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \DECODER_ENDERECOS|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \DECODER_ENDERECOS|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER_ENDERECOS|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & 
-- (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3))))) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & ((\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) $ (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\);
END structure;


