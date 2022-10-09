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

-- DATE "10/09/2022 20:19:52"

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
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	SW3 : IN std_logic;
	SW4 : IN std_logic;
	SW5 : IN std_logic;
	SW6 : IN std_logic;
	SW7 : IN std_logic;
	SW8 : IN std_logic;
	SW9 : IN std_logic;
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	FPGA_RESET : IN std_logic;
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
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex0~1_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \barramentoLeitura[0]~0_combout\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \barramentoLeitura[0]~1_combout\ : std_logic;
SIGNAL \barramentoLeitura[0]~2_combout\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \barramentoLeitura[0]~3_combout\ : std_logic;
SIGNAL \barramentoLeitura[0]~4_combout\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \barramentoLeitura[0]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \barramentoLeitura[0]~5_combout\ : std_logic;
SIGNAL \barramentoLeitura[0]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex0~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|habilitaLEDR0a7~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|habilitaLEDR0a7~1_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \DECODER_BLOCOS|Equal7~0_combout\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex1~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|REGLED8|DOUT~q\ : std_logic;
SIGNAL \LOGICALEDS|REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|REGLED9|DOUT~q\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex0~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex1~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex2~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex3~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex0~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex4~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex5~combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LOGICALEDS|REGLED0a7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICALEDS|REGLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \LOGICALEDS|REGLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW7~input_o\ : std_logic;
SIGNAL \ALT_INV_SW6~input_o\ : std_logic;
SIGNAL \ALT_INV_SW5~input_o\ : std_logic;
SIGNAL \ALT_INV_SW4~input_o\ : std_logic;
SIGNAL \ALT_INV_SW3~input_o\ : std_logic;
SIGNAL \ALT_INV_SW2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW1~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY3~input_o\ : std_logic;
SIGNAL \ALT_INV_SW0~input_o\ : std_logic;
SIGNAL \ALT_INV_SW8~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW9~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_barramentoLeitura[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|ALT_INV_habilitaHex0~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|ALT_INV_habilitaHex0~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|ALT_INV_habilitaHex1~0_combout\ : std_logic;
SIGNAL \LOGICALEDS|ALT_INV_habilitaLEDR0a7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK <= CLOCK;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW4 <= SW4;
ww_SW5 <= SW5;
ww_SW6 <= SW6;
ww_SW7 <= SW7;
ww_SW8 <= SW8;
ww_SW9 <= SW9;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_FPGA_RESET <= FPGA_RESET;
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
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0);
\LOGICALEDS|REGLED9|ALT_INV_DOUT~q\ <= NOT \LOGICALEDS|REGLED9|DOUT~q\;
\LOGICALEDS|REGLED8|ALT_INV_DOUT~q\ <= NOT \LOGICALEDS|REGLED8|DOUT~q\;
\ALT_INV_barramentoLeitura[0]~7_combout\ <= NOT \barramentoLeitura[0]~7_combout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ALT_INV_SW7~input_o\ <= NOT \SW7~input_o\;
\ALT_INV_SW6~input_o\ <= NOT \SW6~input_o\;
\ALT_INV_SW5~input_o\ <= NOT \SW5~input_o\;
\ALT_INV_SW4~input_o\ <= NOT \SW4~input_o\;
\ALT_INV_SW3~input_o\ <= NOT \SW3~input_o\;
\ALT_INV_SW2~input_o\ <= NOT \SW2~input_o\;
\ALT_INV_SW1~input_o\ <= NOT \SW1~input_o\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\ALT_INV_KEY3~input_o\ <= NOT \KEY3~input_o\;
\ALT_INV_SW0~input_o\ <= NOT \SW0~input_o\;
\ALT_INV_SW8~input_o\ <= NOT \SW8~input_o\;
\ALT_INV_KEY2~input_o\ <= NOT \KEY2~input_o\;
\ALT_INV_SW9~input_o\ <= NOT \SW9~input_o\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\DECODER_BLOCOS|ALT_INV_Equal7~0_combout\ <= NOT \DECODER_BLOCOS|Equal7~0_combout\;
\CPU|DECODER|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER|saida~1_combout\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\ALT_INV_barramentoLeitura[0]~6_combout\ <= NOT \barramentoLeitura[0]~6_combout\;
\ALT_INV_barramentoLeitura[0]~5_combout\ <= NOT \barramentoLeitura[0]~5_combout\;
\ALT_INV_barramentoLeitura[0]~4_combout\ <= NOT \barramentoLeitura[0]~4_combout\;
\ALT_INV_barramentoLeitura[0]~3_combout\ <= NOT \barramentoLeitura[0]~3_combout\;
\ALT_INV_barramentoLeitura[0]~2_combout\ <= NOT \barramentoLeitura[0]~2_combout\;
\ALT_INV_barramentoLeitura[0]~1_combout\ <= NOT \barramentoLeitura[0]~1_combout\;
\ALT_INV_barramentoLeitura[0]~0_combout\ <= NOT \barramentoLeitura[0]~0_combout\;
\LOGICADISPLAYS|ALT_INV_habilitaHex0~3_combout\ <= NOT \LOGICADISPLAYS|habilitaHex0~3_combout\;
\LOGICADISPLAYS|ALT_INV_habilitaHex0~1_combout\ <= NOT \LOGICADISPLAYS|habilitaHex0~1_combout\;
\LOGICADISPLAYS|ALT_INV_habilitaHex1~0_combout\ <= NOT \LOGICADISPLAYS|habilitaHex1~0_combout\;
\LOGICALEDS|ALT_INV_habilitaLEDR0a7~0_combout\ <= NOT \LOGICALEDS|habilitaLEDR0a7~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\ <= NOT \LOGICADISPLAYS|habilitaHex0~0_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED0a7|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICALEDS|REGLED9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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

\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = (\CPU|incrementaPC|Add0~13_sumout\ & ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = (\CPU|incrementaPC|Add0~9_sumout\ & ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101001000011010010100100001101001010010000110100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))) # (\ROM|memROM~0_combout\) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( 
-- (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111011111111100000001000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\ROM|memROM~1_combout\) # (((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\)) # (\ROM|memROM~7_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( 
-- (\ROM|memROM~1_combout\ & (\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111110111111111100000001000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000111101010000000011110101000000001111010100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~6_combout\) # ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( 
-- (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000111111101111111100000100000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|MUX2|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~4_combout\ = (\CPU|incrementaPC|Add0~25_sumout\ & ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~4_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\LOGICADISPLAYS|habilitaHex0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex0~1_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	combout => \LOGICADISPLAYS|habilitaHex0~1_combout\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

\barramentoLeitura[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~0_combout\ = ( \KEY0~input_o\ & ( (\LOGICADISPLAYS|habilitaHex0~1_combout\ & ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~5_combout\) # (\FPGA_RESET~input_o\)))) ) ) # ( !\KEY0~input_o\ & ( (\ROM|memROM~1_combout\ & 
-- (\ROM|memROM~5_combout\ & (\LOGICADISPLAYS|habilitaHex0~1_combout\ & \FPGA_RESET~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011100000111100000000000000010000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \LOGICADISPLAYS|ALT_INV_habilitaHex0~1_combout\,
	datad => \ALT_INV_FPGA_RESET~input_o\,
	datae => \ALT_INV_KEY0~input_o\,
	combout => \barramentoLeitura[0]~0_combout\);

\SW9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

\barramentoLeitura[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~1_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \barramentoLeitura[0]~1_combout\);

\barramentoLeitura[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~2_combout\ = ( \barramentoLeitura[0]~1_combout\ & ( (!\ROM|memROM~1_combout\ & (((\SW9~input_o\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~6_combout\ & ((\KEY2~input_o\))) # (\ROM|memROM~6_combout\ & (\SW9~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110100111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ALT_INV_SW9~input_o\,
	datad => \ALT_INV_KEY2~input_o\,
	datae => \ALT_INV_barramentoLeitura[0]~1_combout\,
	combout => \barramentoLeitura[0]~2_combout\);

\SW8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

\SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

\barramentoLeitura[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~3_combout\ = (\ROM|memROM~1_combout\ & (((!\ROM|memROM~6_combout\) # (\ROM|memROM~5_combout\)) # (\ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110011001100010011001100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \barramentoLeitura[0]~3_combout\);

\barramentoLeitura[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~4_combout\ = ( !\barramentoLeitura[0]~3_combout\ & ( (!\ROM|memROM~1_combout\ & (((\SW0~input_o\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~7_combout\ & ((\SW0~input_o\))) # (\ROM|memROM~7_combout\ & (\SW8~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000000000000000000001111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ALT_INV_SW8~input_o\,
	datad => \ALT_INV_SW0~input_o\,
	datae => \ALT_INV_barramentoLeitura[0]~3_combout\,
	combout => \barramentoLeitura[0]~4_combout\);

\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

\barramentoLeitura[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~7_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\KEY1~input_o\ & (\ROM|memROM~1_combout\ & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))))) ) ) # ( \CPU|PC|DOUT\(2) 
-- & ( (\KEY3~input_o\ & (\ROM|memROM~1_combout\ & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000100000000100000010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ALT_INV_KEY3~input_o\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	datag => \ALT_INV_KEY1~input_o\,
	combout => \barramentoLeitura[0]~7_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~2_combout\);

\barramentoLeitura[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~5_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \barramentoLeitura[0]~5_combout\);

\barramentoLeitura[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \barramentoLeitura[0]~6_combout\ = ( \barramentoLeitura[0]~5_combout\ & ( (((\barramentoLeitura[0]~7_combout\) # (\barramentoLeitura[0]~4_combout\)) # (\barramentoLeitura[0]~2_combout\)) # (\barramentoLeitura[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_barramentoLeitura[0]~0_combout\,
	datab => \ALT_INV_barramentoLeitura[0]~2_combout\,
	datac => \ALT_INV_barramentoLeitura[0]~4_combout\,
	datad => \ALT_INV_barramentoLeitura[0]~7_combout\,
	datae => \ALT_INV_barramentoLeitura[0]~5_combout\,
	combout => \barramentoLeitura[0]~6_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \barramentoLeitura[0]~6_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \barramentoLeitura[0]~6_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_barramentoLeitura[0]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\barramentoLeitura[0]~6_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\barramentoLeitura[0]~6_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_barramentoLeitura[0]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\barramentoLeitura[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_barramentoLeitura[0]~6_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~3_combout\) # (!\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
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
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\LOGICADISPLAYS|habilitaHex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex0~0_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \LOGICADISPLAYS|habilitaHex0~0_combout\);

\LOGICALEDS|habilitaLEDR0a7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICALEDS|habilitaLEDR0a7~0_combout\ = (\ROM|memROM~1_combout\ & ((!\ROM|memROM~6_combout\) # (\ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \LOGICALEDS|habilitaLEDR0a7~0_combout\);

\LOGICALEDS|habilitaLEDR0a7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICALEDS|habilitaLEDR0a7~1_combout\ = (\LOGICADISPLAYS|habilitaHex0~0_combout\ & (!\LOGICALEDS|habilitaLEDR0a7~0_combout\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	datad => \LOGICALEDS|ALT_INV_habilitaLEDR0a7~0_combout\,
	combout => \LOGICALEDS|habilitaLEDR0a7~1_combout\);

\LOGICALEDS|REGLED0a7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(0));

\SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \SW1~input_o\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \SW1~input_o\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW1~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\SW1~input_o\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\SW1~input_o\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW1~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW1~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW1~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\LOGICALEDS|REGLED0a7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(1));

\SW2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \SW2~input_o\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \SW2~input_o\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW2~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\SW2~input_o\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\SW2~input_o\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW2~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW2~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\LOGICALEDS|REGLED0a7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(2));

\DECODER_BLOCOS|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_BLOCOS|Equal7~0_combout\ = (\ROM|memROM~1_combout\ & ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	combout => \DECODER_BLOCOS|Equal7~0_combout\);

\SW3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (\SW3~input_o\ & ((!\CPU|DECODER|saida~1_combout\) # (\DECODER_BLOCOS|Equal7~0_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (\SW3~input_o\ & ((!\CPU|DECODER|saida~1_combout\) # (\DECODER_BLOCOS|Equal7~0_combout\))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_SW3~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\SW3~input_o\) # ((\CPU|DECODER|saida~1_combout\ & !\DECODER_BLOCOS|Equal7~0_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\SW3~input_o\) # ((\CPU|DECODER|saida~1_combout\ & !\DECODER_BLOCOS|Equal7~0_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_SW3~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW3~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW3~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\LOGICALEDS|REGLED0a7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(3));

\SW4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \SW4~input_o\ ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \SW4~input_o\ ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW4~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\SW4~input_o\) # ((\CPU|DECODER|saida~1_combout\ & !\DECODER_BLOCOS|Equal7~0_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\SW4~input_o\) # ((\CPU|DECODER|saida~1_combout\ & !\DECODER_BLOCOS|Equal7~0_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_SW4~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~17_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW4~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW4~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\LOGICALEDS|REGLED0a7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(4));

\SW5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \SW5~input_o\ ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \SW5~input_o\ ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW5~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\SW5~input_o\ ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\SW5~input_o\ ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW5~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW5~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW5~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\LOGICALEDS|REGLED0a7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(5));

\SW6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \SW6~input_o\ ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \SW6~input_o\ ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW6~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( !\SW6~input_o\ ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( !\SW6~input_o\ ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW6~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~25_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW6~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW6~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\LOGICALEDS|REGLED0a7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(6));

\SW7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \SW7~input_o\ ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW7~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\SW7~input_o\) # ((\CPU|DECODER|saida~1_combout\ & !\DECODER_BLOCOS|Equal7~0_combout\)) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datac => \DECODER_BLOCOS|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_SW7~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER|saida~0_combout\ & ((\CPU|ULA1|Add1~29_sumout\))) # (\CPU|DECODER|saida~0_combout\ & (\SW7~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_SW7~input_o\,
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER|Equal10~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\LOGICALEDS|REGLED0a7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \LOGICALEDS|habilitaLEDR0a7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED0a7|DOUT\(7));

\LOGICADISPLAYS|habilitaHex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex1~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \LOGICADISPLAYS|habilitaHex1~0_combout\);

\LOGICALEDS|REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICALEDS|REGLED8|DOUT~0_combout\ = ( \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( \LOGICADISPLAYS|habilitaHex1~0_combout\ & ( (!\ROM|memROM~1_combout\ & (((\CPU|REGA|DOUT\(0))))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~6_combout\ & 
-- (\LOGICALEDS|REGLED8|DOUT~q\)) # (\ROM|memROM~6_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) ) # ( !\LOGICADISPLAYS|habilitaHex0~0_combout\ & ( \LOGICADISPLAYS|habilitaHex1~0_combout\ & ( \LOGICALEDS|REGLED8|DOUT~q\ ) ) ) # ( 
-- \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( !\LOGICADISPLAYS|habilitaHex1~0_combout\ & ( \LOGICALEDS|REGLED8|DOUT~q\ ) ) ) # ( !\LOGICADISPLAYS|habilitaHex0~0_combout\ & ( !\LOGICADISPLAYS|habilitaHex1~0_combout\ & ( \LOGICALEDS|REGLED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICALEDS|REGLED8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	dataf => \LOGICADISPLAYS|ALT_INV_habilitaHex1~0_combout\,
	combout => \LOGICALEDS|REGLED8|DOUT~0_combout\);

\LOGICALEDS|REGLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \LOGICALEDS|REGLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED8|DOUT~q\);

\LOGICALEDS|REGLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICALEDS|REGLED9|DOUT~0_combout\ = ( \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( \LOGICALEDS|habilitaLEDR0a7~0_combout\ & ( \LOGICALEDS|REGLED9|DOUT~q\ ) ) ) # ( !\LOGICADISPLAYS|habilitaHex0~0_combout\ & ( \LOGICALEDS|habilitaLEDR0a7~0_combout\ & ( 
-- \LOGICALEDS|REGLED9|DOUT~q\ ) ) ) # ( \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( !\LOGICALEDS|habilitaLEDR0a7~0_combout\ & ( (!\ROM|memROM~0_combout\ & (\LOGICALEDS|REGLED9|DOUT~q\)) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\ & 
-- (\LOGICALEDS|REGLED9|DOUT~q\)) # (\ROM|memROM~1_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) ) # ( !\LOGICADISPLAYS|habilitaHex0~0_combout\ & ( !\LOGICALEDS|habilitaLEDR0a7~0_combout\ & ( \LOGICALEDS|REGLED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICALEDS|REGLED9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	dataf => \LOGICALEDS|ALT_INV_habilitaLEDR0a7~0_combout\,
	combout => \LOGICALEDS|REGLED9|DOUT~0_combout\);

\LOGICALEDS|REGLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \LOGICALEDS|REGLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICALEDS|REGLED9|DOUT~q\);

\LOGICADISPLAYS|habilitaHex0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex0~2_combout\ = (\LOGICADISPLAYS|habilitaHex0~0_combout\ & \LOGICADISPLAYS|habilitaHex0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	datab => \LOGICADISPLAYS|ALT_INV_habilitaHex0~1_combout\,
	combout => \LOGICADISPLAYS|habilitaHex0~2_combout\);

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \LOGICADISPLAYS|habilitaHex0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\LOGICADISPLAYS|habilitaHex1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex1~1_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (\LOGICADISPLAYS|habilitaHex0~0_combout\ & \LOGICADISPLAYS|habilitaHex1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	datad => \LOGICADISPLAYS|ALT_INV_habilitaHex1~0_combout\,
	combout => \LOGICADISPLAYS|habilitaHex1~1_combout\);

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex1~1_combout\,
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
	ena => \LOGICADISPLAYS|habilitaHex1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\LOGICADISPLAYS|habilitaHex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex2~0_combout\ = ( \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	combout => \LOGICADISPLAYS|habilitaHex2~0_combout\);

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
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
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\LOGICADISPLAYS|habilitaHex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex3~0_combout\ = ( \LOGICADISPLAYS|habilitaHex0~0_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \LOGICADISPLAYS|ALT_INV_habilitaHex0~0_combout\,
	combout => \LOGICADISPLAYS|habilitaHex3~0_combout\);

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
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
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\LOGICADISPLAYS|habilitaHex0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex0~3_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \LOGICADISPLAYS|habilitaHex0~3_combout\);

\LOGICADISPLAYS|habilitaHex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex4~0_combout\ = ( \ROM|memROM~5_combout\ & ( \LOGICADISPLAYS|habilitaHex0~3_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \LOGICADISPLAYS|ALT_INV_habilitaHex0~3_combout\,
	combout => \LOGICADISPLAYS|habilitaHex4~0_combout\);

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex4~0_combout\,
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
	ena => \LOGICADISPLAYS|habilitaHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY4|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY4|DECODER7SEG|rascSaida7seg[6]~6_combout\);

\LOGICADISPLAYS|habilitaHex5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex5~combout\ = ( \ROM|memROM~5_combout\ & ( \LOGICADISPLAYS|habilitaHex0~3_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \LOGICADISPLAYS|ALT_INV_habilitaHex0~3_combout\,
	combout => \LOGICADISPLAYS|habilitaHex5~combout\);

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \LOGICADISPLAYS|habilitaHex5~combout\,
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
	ena => \LOGICADISPLAYS|habilitaHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3));

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \LOGICADISPLAYS|habilitaHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2));

\LOGICADISPLAYS|DISPLAY5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \LOGICADISPLAYS|habilitaHex5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1));

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[0]~0_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) $ (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[1]~1_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[2]~2_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[4]~4_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3)))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) $ (((\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[5]~5_combout\);

\LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\ = (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(0),
	datab => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY5|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY5|DECODER7SEG|rascSaida7seg[6]~6_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


