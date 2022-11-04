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

-- DATE "11/04/2022 11:24:13"

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

ENTITY 	Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	EntradaA_ULA : OUT std_logic_vector(31 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(31 DOWNTO 0);
	Saida_ULA_leitura : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula13;

ARCHITECTURE structure OF Aula13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EntradaA_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Saida_ULA_leitura : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[0]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[1]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[2]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[3]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[4]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[5]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[6]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[7]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[8]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[9]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[10]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[11]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[12]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[13]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[14]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[15]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[16]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[17]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[18]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[19]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[20]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[21]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[22]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[23]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[24]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[25]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[26]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[27]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[28]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[29]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[30]~output_o\ : std_logic;
SIGNAL \EntradaA_ULA[31]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[0]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[1]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[2]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[3]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[4]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[5]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[6]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[7]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[8]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[9]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[10]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[11]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[12]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[13]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[14]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[15]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[16]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[17]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[18]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[19]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[20]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[21]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[22]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[23]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[24]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[25]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[26]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[27]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[28]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[29]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[30]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[31]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[0]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[1]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[2]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[3]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[4]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[5]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[6]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[7]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[8]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[9]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[10]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[11]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[12]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[13]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[14]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[15]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[16]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[17]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[18]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[19]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[20]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[21]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[22]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[23]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[24]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[25]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[26]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[27]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[28]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[29]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[30]~output_o\ : std_logic;
SIGNAL \Saida_ULA_leitura[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~2_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~3_combout\ : std_logic;
SIGNAL \ULA|saida[17]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1139_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~326_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1251_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1140_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~358_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1141_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~390_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1127_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1128_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1129_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1250_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~0_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida[1]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1064_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~5_combout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add2~130_cout\ : std_logic;
SIGNAL \ULA|Add2~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~2_combout\ : std_logic;
SIGNAL \ULA|saida[17]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1138_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~357_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~389_q\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1125_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1126_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~356_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1123_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1124_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~355_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~387_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1121_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~354_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1119_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1120_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~353_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~385_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1117_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1118_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~352_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1115_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1116_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~351_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~383_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1113_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~350_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1111_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~349_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~381_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1109_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1110_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~348_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1108_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~347_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~379_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1105_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1106_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~346_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1104_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~345_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~377_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1101_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA|saida[17]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~344_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1099_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1100_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~343_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~375_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~342_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~341_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~373_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~340_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~339_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~371_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~338_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~337_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~369_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~336_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~335_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~367_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~334_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~333_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~365_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~332_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~331_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~363_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~330_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~394_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1255_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~329_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1256_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1257_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~393_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~328_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1254_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~392_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1252_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~327_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1253_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~391_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add2~2\ : std_logic;
SIGNAL \ULA|Add2~9_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~4_combout\ : std_logic;
SIGNAL \ULA|saida[1]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1130_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1131_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add2~10\ : std_logic;
SIGNAL \ULA|Add2~13_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~6_combout\ : std_logic;
SIGNAL \ULA|saida[2]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1132_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1133_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add2~14\ : std_logic;
SIGNAL \ULA|Add2~17_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~8_combout\ : std_logic;
SIGNAL \ULA|saida[3]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1134_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1135_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add2~18\ : std_logic;
SIGNAL \ULA|Add2~21_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~10_combout\ : std_logic;
SIGNAL \ULA|saida[4]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1136_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1137_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add2~22\ : std_logic;
SIGNAL \ULA|Add2~25_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~12_combout\ : std_logic;
SIGNAL \ULA|saida[5]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~395_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1246_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add2~26\ : std_logic;
SIGNAL \ULA|Add2~29_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~14_combout\ : std_logic;
SIGNAL \ULA|saida[6]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~396_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1242_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add2~30\ : std_logic;
SIGNAL \ULA|Add2~33_sumout\ : std_logic;
SIGNAL \ULA|saida[7]~16_combout\ : std_logic;
SIGNAL \ULA|saida[7]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~397_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1238_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add2~34\ : std_logic;
SIGNAL \ULA|Add2~37_sumout\ : std_logic;
SIGNAL \ULA|saida[8]~18_combout\ : std_logic;
SIGNAL \ULA|saida[8]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~398_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1234_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add2~38\ : std_logic;
SIGNAL \ULA|Add2~41_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~20_combout\ : std_logic;
SIGNAL \ULA|saida[9]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~399_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1230_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add2~42\ : std_logic;
SIGNAL \ULA|Add2~45_sumout\ : std_logic;
SIGNAL \ULA|saida[10]~22_combout\ : std_logic;
SIGNAL \ULA|saida[10]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~400_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1226_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add2~46\ : std_logic;
SIGNAL \ULA|Add2~49_sumout\ : std_logic;
SIGNAL \ULA|saida[11]~24_combout\ : std_logic;
SIGNAL \ULA|saida[11]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~401_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1222_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add2~50\ : std_logic;
SIGNAL \ULA|Add2~53_sumout\ : std_logic;
SIGNAL \ULA|saida[12]~26_combout\ : std_logic;
SIGNAL \ULA|saida[12]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~402_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1218_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add2~54\ : std_logic;
SIGNAL \ULA|Add2~57_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~28_combout\ : std_logic;
SIGNAL \ULA|saida[13]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~403_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1214_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add2~58\ : std_logic;
SIGNAL \ULA|Add2~61_sumout\ : std_logic;
SIGNAL \ULA|saida[14]~30_combout\ : std_logic;
SIGNAL \ULA|saida[14]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~404_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1210_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Add2~62\ : std_logic;
SIGNAL \ULA|Add2~65_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~32_combout\ : std_logic;
SIGNAL \ULA|saida[15]~33_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~405_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1206_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add2~66\ : std_logic;
SIGNAL \ULA|Add2~69_sumout\ : std_logic;
SIGNAL \ULA|saida[16]~34_combout\ : std_logic;
SIGNAL \ULA|saida[16]~35_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~406_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1202_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add2~70\ : std_logic;
SIGNAL \ULA|Add2~73_sumout\ : std_logic;
SIGNAL \ULA|saida[17]~36_combout\ : std_logic;
SIGNAL \ULA|saida[17]~37_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~407_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1198_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add2~74\ : std_logic;
SIGNAL \ULA|Add2~77_sumout\ : std_logic;
SIGNAL \ULA|saida[18]~38_combout\ : std_logic;
SIGNAL \ULA|saida[18]~39_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~408_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1194_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add2~78\ : std_logic;
SIGNAL \ULA|Add2~81_sumout\ : std_logic;
SIGNAL \ULA|saida[19]~40_combout\ : std_logic;
SIGNAL \ULA|saida[19]~41_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~409_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1190_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add2~82\ : std_logic;
SIGNAL \ULA|Add2~85_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA|saida[20]~63_combout\ : std_logic;
SIGNAL \ULA|saida[20]~42_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~410_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1186_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add2~86\ : std_logic;
SIGNAL \ULA|Add2~89_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA|saida[21]~64_combout\ : std_logic;
SIGNAL \ULA|saida[21]~43_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~411_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1182_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add2~90\ : std_logic;
SIGNAL \ULA|Add2~93_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA|saida[22]~65_combout\ : std_logic;
SIGNAL \ULA|saida[22]~44_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~412_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1178_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add2~94\ : std_logic;
SIGNAL \ULA|Add2~97_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[23]~23_combout\ : std_logic;
SIGNAL \ULA|saida[23]~59_combout\ : std_logic;
SIGNAL \ULA|saida[23]~45_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~413_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1174_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add2~98\ : std_logic;
SIGNAL \ULA|Add2~101_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[24]~24_combout\ : std_logic;
SIGNAL \ULA|saida[24]~60_combout\ : std_logic;
SIGNAL \ULA|saida[24]~46_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~414_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1170_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add2~102\ : std_logic;
SIGNAL \ULA|Add2~105_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[25]~25_combout\ : std_logic;
SIGNAL \ULA|saida[25]~61_combout\ : std_logic;
SIGNAL \ULA|saida[25]~47_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~415_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1166_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add2~106\ : std_logic;
SIGNAL \ULA|Add2~109_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[26]~26_combout\ : std_logic;
SIGNAL \ULA|saida[26]~62_combout\ : std_logic;
SIGNAL \ULA|saida[26]~48_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~416_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1162_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add2~110\ : std_logic;
SIGNAL \ULA|Add2~113_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[27]~27_combout\ : std_logic;
SIGNAL \ULA|saida[27]~54_combout\ : std_logic;
SIGNAL \ULA|saida[27]~49_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~417_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1158_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add2~114\ : std_logic;
SIGNAL \ULA|Add2~117_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[28]~28_combout\ : std_logic;
SIGNAL \ULA|saida[28]~55_combout\ : std_logic;
SIGNAL \ULA|saida[28]~50_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~418_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1154_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add2~118\ : std_logic;
SIGNAL \ULA|Add2~121_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA|saida[29]~56_combout\ : std_logic;
SIGNAL \ULA|saida[29]~51_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~419_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1150_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add2~122\ : std_logic;
SIGNAL \ULA|Add2~125_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA|saida[30]~57_combout\ : std_logic;
SIGNAL \ULA|saida[30]~52_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~420_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1146_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[31]~31_combout\ : std_logic;
SIGNAL \ULA|saida[31]~58_combout\ : std_logic;
SIGNAL \ULA|saida[31]~53_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~421_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1142_combout\ : std_logic;
SIGNAL \ULA|Add2~126\ : std_logic;
SIGNAL \ULA|Add2~5_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~66_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~327_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~326_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1246_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1242_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1238_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1234_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1230_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1226_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1222_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1214_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1210_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1206_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1194_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~66_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~345_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1099_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~344_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~343_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~342_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~341_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~340_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~339_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~338_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~337_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~336_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~335_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~334_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~333_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~332_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~331_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~330_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~329_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~328_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1136_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1135_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1131_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1129_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1125_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~357_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1124_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~356_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1121_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~355_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1119_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~354_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~353_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~352_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~351_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~350_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~349_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~348_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~347_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~346_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~65_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~64_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~63_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~62_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~61_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~60_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~59_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~58_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~57_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~56_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~55_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~54_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~40_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~38_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~36_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~34_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~32_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~30_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~28_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~26_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~22_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~2_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~0_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~27_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
PC_OUT <= ww_PC_OUT;
ww_KEY <= KEY;
EntradaA_ULA <= ww_EntradaA_ULA;
EntradaB_ULA <= ww_EntradaB_ULA;
Saida_ULA_leitura <= ww_Saida_ULA_leitura;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add2~125_sumout\ <= NOT \ULA|Add2~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add2~121_sumout\ <= NOT \ULA|Add2~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add2~117_sumout\ <= NOT \ULA|Add2~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add2~113_sumout\ <= NOT \ULA|Add2~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add2~109_sumout\ <= NOT \ULA|Add2~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add2~105_sumout\ <= NOT \ULA|Add2~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add2~101_sumout\ <= NOT \ULA|Add2~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add2~97_sumout\ <= NOT \ULA|Add2~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add2~93_sumout\ <= NOT \ULA|Add2~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add2~89_sumout\ <= NOT \ULA|Add2~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add2~85_sumout\ <= NOT \ULA|Add2~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add2~81_sumout\ <= NOT \ULA|Add2~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add2~77_sumout\ <= NOT \ULA|Add2~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add2~73_sumout\ <= NOT \ULA|Add2~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add2~69_sumout\ <= NOT \ULA|Add2~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add2~65_sumout\ <= NOT \ULA|Add2~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add2~61_sumout\ <= NOT \ULA|Add2~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add2~57_sumout\ <= NOT \ULA|Add2~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add2~53_sumout\ <= NOT \ULA|Add2~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add2~49_sumout\ <= NOT \ULA|Add2~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add2~45_sumout\ <= NOT \ULA|Add2~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add2~41_sumout\ <= NOT \ULA|Add2~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add2~37_sumout\ <= NOT \ULA|Add2~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add2~33_sumout\ <= NOT \ULA|Add2~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add2~29_sumout\ <= NOT \ULA|Add2~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add2~25_sumout\ <= NOT \ULA|Add2~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add2~21_sumout\ <= NOT \ULA|Add2~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add2~17_sumout\ <= NOT \ULA|Add2~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add2~13_sumout\ <= NOT \ULA|Add2~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add2~9_sumout\ <= NOT \ULA|Add2~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add2~5_sumout\ <= NOT \ULA|Add2~5_sumout\;
\ULA|ALT_INV_Add2~1_sumout\ <= NOT \ULA|Add2~1_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~391_q\ <= NOT \BANCO_REGISTRADORES|registrador~391_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ <= NOT \BANCO_REGISTRADORES|registrador~359_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~327_q\ <= NOT \BANCO_REGISTRADORES|registrador~327_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ <= NOT \BANCO_REGISTRADORES|registrador~295_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1064_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[0]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1063_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1062_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~390_q\ <= NOT \BANCO_REGISTRADORES|registrador~390_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ <= NOT \BANCO_REGISTRADORES|registrador~358_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~326_q\ <= NOT \BANCO_REGISTRADORES|registrador~326_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ <= NOT \BANCO_REGISTRADORES|registrador~294_q\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\ <= NOT \BANCO_REGISTRADORES|Equal1~0_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\BANCO_REGISTRADORES|ALT_INV_registrador~1246_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1246_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1242_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1242_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1238_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1238_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1234_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1234_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1230_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1230_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1226_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1226_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1222_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1222_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1218_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1214_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1214_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1210_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1210_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1206_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1206_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1202_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1198_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1194_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1194_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1190_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1186_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1182_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1178_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1174_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1170_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1166_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1162_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1158_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1154_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1150_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1146_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1142_combout\;
\ULA|ALT_INV_saida[0]~66_combout\ <= NOT \ULA|saida[0]~66_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1101_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1101_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~409_q\ <= NOT \BANCO_REGISTRADORES|registrador~409_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ <= NOT \BANCO_REGISTRADORES|registrador~377_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~345_q\ <= NOT \BANCO_REGISTRADORES|registrador~345_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ <= NOT \BANCO_REGISTRADORES|registrador~313_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[18]~18_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1100_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1100_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1099_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1099_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~408_q\ <= NOT \BANCO_REGISTRADORES|registrador~408_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ <= NOT \BANCO_REGISTRADORES|registrador~376_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~344_q\ <= NOT \BANCO_REGISTRADORES|registrador~344_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ <= NOT \BANCO_REGISTRADORES|registrador~312_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[17]~17_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1098_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1097_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~407_q\ <= NOT \BANCO_REGISTRADORES|registrador~407_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ <= NOT \BANCO_REGISTRADORES|registrador~375_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~343_q\ <= NOT \BANCO_REGISTRADORES|registrador~343_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ <= NOT \BANCO_REGISTRADORES|registrador~311_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[16]~16_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1096_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1095_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~406_q\ <= NOT \BANCO_REGISTRADORES|registrador~406_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ <= NOT \BANCO_REGISTRADORES|registrador~374_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~342_q\ <= NOT \BANCO_REGISTRADORES|registrador~342_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ <= NOT \BANCO_REGISTRADORES|registrador~310_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[15]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1094_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1093_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~405_q\ <= NOT \BANCO_REGISTRADORES|registrador~405_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ <= NOT \BANCO_REGISTRADORES|registrador~373_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~341_q\ <= NOT \BANCO_REGISTRADORES|registrador~341_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ <= NOT \BANCO_REGISTRADORES|registrador~309_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[14]~14_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1092_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1091_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~404_q\ <= NOT \BANCO_REGISTRADORES|registrador~404_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ <= NOT \BANCO_REGISTRADORES|registrador~372_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~340_q\ <= NOT \BANCO_REGISTRADORES|registrador~340_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ <= NOT \BANCO_REGISTRADORES|registrador~308_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[13]~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1090_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1089_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~403_q\ <= NOT \BANCO_REGISTRADORES|registrador~403_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ <= NOT \BANCO_REGISTRADORES|registrador~371_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~339_q\ <= NOT \BANCO_REGISTRADORES|registrador~339_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ <= NOT \BANCO_REGISTRADORES|registrador~307_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[12]~12_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1088_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1087_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~402_q\ <= NOT \BANCO_REGISTRADORES|registrador~402_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ <= NOT \BANCO_REGISTRADORES|registrador~370_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~338_q\ <= NOT \BANCO_REGISTRADORES|registrador~338_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ <= NOT \BANCO_REGISTRADORES|registrador~306_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[11]~11_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1086_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1085_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~401_q\ <= NOT \BANCO_REGISTRADORES|registrador~401_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ <= NOT \BANCO_REGISTRADORES|registrador~369_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~337_q\ <= NOT \BANCO_REGISTRADORES|registrador~337_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ <= NOT \BANCO_REGISTRADORES|registrador~305_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[10]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1084_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1083_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~400_q\ <= NOT \BANCO_REGISTRADORES|registrador~400_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ <= NOT \BANCO_REGISTRADORES|registrador~368_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~336_q\ <= NOT \BANCO_REGISTRADORES|registrador~336_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ <= NOT \BANCO_REGISTRADORES|registrador~304_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[9]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1082_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1081_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~399_q\ <= NOT \BANCO_REGISTRADORES|registrador~399_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ <= NOT \BANCO_REGISTRADORES|registrador~367_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~335_q\ <= NOT \BANCO_REGISTRADORES|registrador~335_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ <= NOT \BANCO_REGISTRADORES|registrador~303_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[8]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1080_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1079_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~398_q\ <= NOT \BANCO_REGISTRADORES|registrador~398_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ <= NOT \BANCO_REGISTRADORES|registrador~366_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~334_q\ <= NOT \BANCO_REGISTRADORES|registrador~334_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ <= NOT \BANCO_REGISTRADORES|registrador~302_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[7]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1078_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1077_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~397_q\ <= NOT \BANCO_REGISTRADORES|registrador~397_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ <= NOT \BANCO_REGISTRADORES|registrador~365_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~333_q\ <= NOT \BANCO_REGISTRADORES|registrador~333_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ <= NOT \BANCO_REGISTRADORES|registrador~301_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[6]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1076_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1075_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~396_q\ <= NOT \BANCO_REGISTRADORES|registrador~396_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ <= NOT \BANCO_REGISTRADORES|registrador~364_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~332_q\ <= NOT \BANCO_REGISTRADORES|registrador~332_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ <= NOT \BANCO_REGISTRADORES|registrador~300_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[5]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1074_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1073_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~395_q\ <= NOT \BANCO_REGISTRADORES|registrador~395_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ <= NOT \BANCO_REGISTRADORES|registrador~363_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~331_q\ <= NOT \BANCO_REGISTRADORES|registrador~331_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ <= NOT \BANCO_REGISTRADORES|registrador~299_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[4]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1072_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1071_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~394_q\ <= NOT \BANCO_REGISTRADORES|registrador~394_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ <= NOT \BANCO_REGISTRADORES|registrador~362_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~330_q\ <= NOT \BANCO_REGISTRADORES|registrador~330_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ <= NOT \BANCO_REGISTRADORES|registrador~298_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[3]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1070_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1069_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~393_q\ <= NOT \BANCO_REGISTRADORES|registrador~393_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ <= NOT \BANCO_REGISTRADORES|registrador~361_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~329_q\ <= NOT \BANCO_REGISTRADORES|registrador~329_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ <= NOT \BANCO_REGISTRADORES|registrador~297_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[2]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1068_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1067_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~392_q\ <= NOT \BANCO_REGISTRADORES|registrador~392_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ <= NOT \BANCO_REGISTRADORES|registrador~360_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~328_q\ <= NOT \BANCO_REGISTRADORES|registrador~328_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ <= NOT \BANCO_REGISTRADORES|registrador~296_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[1]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1066_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1065_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[26]~26_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[26]~26_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[25]~25_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[25]~25_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[24]~24_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[24]~24_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[23]~23_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[23]~23_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[22]~22_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[22]~22_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[21]~21_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[21]~21_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[20]~20_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[20]~20_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[19]~19_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[19]~19_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[18]~18_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[18]~18_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[17]~17_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[17]~17_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[16]~16_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[16]~16_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[15]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[15]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[14]~14_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[14]~14_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[13]~13_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[13]~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[12]~12_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[12]~12_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[11]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[11]~11_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[10]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[10]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[9]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[9]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[8]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[8]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[7]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[7]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[6]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[6]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[5]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[5]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[4]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[4]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1137_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1136_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1136_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[3]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[3]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1135_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1135_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1134_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[2]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[2]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1133_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1132_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[1]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[1]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1131_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1131_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1130_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[0]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1129_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1129_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1128_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~0_combout\ <= NOT \UNIDADE_CONTROLE|saida~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1127_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[31]~31_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1126_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1125_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1125_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~421_q\ <= NOT \BANCO_REGISTRADORES|registrador~421_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ <= NOT \BANCO_REGISTRADORES|registrador~389_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~357_q\ <= NOT \BANCO_REGISTRADORES|registrador~357_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ <= NOT \BANCO_REGISTRADORES|registrador~325_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[30]~30_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1124_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1124_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1123_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~420_q\ <= NOT \BANCO_REGISTRADORES|registrador~420_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ <= NOT \BANCO_REGISTRADORES|registrador~388_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~356_q\ <= NOT \BANCO_REGISTRADORES|registrador~356_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ <= NOT \BANCO_REGISTRADORES|registrador~324_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[29]~29_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1122_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1121_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1121_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~419_q\ <= NOT \BANCO_REGISTRADORES|registrador~419_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ <= NOT \BANCO_REGISTRADORES|registrador~387_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~355_q\ <= NOT \BANCO_REGISTRADORES|registrador~355_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ <= NOT \BANCO_REGISTRADORES|registrador~323_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[28]~28_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1120_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1120_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1119_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1119_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~418_q\ <= NOT \BANCO_REGISTRADORES|registrador~418_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ <= NOT \BANCO_REGISTRADORES|registrador~386_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~354_q\ <= NOT \BANCO_REGISTRADORES|registrador~354_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ <= NOT \BANCO_REGISTRADORES|registrador~322_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[27]~27_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1118_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1117_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~417_q\ <= NOT \BANCO_REGISTRADORES|registrador~417_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ <= NOT \BANCO_REGISTRADORES|registrador~385_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~353_q\ <= NOT \BANCO_REGISTRADORES|registrador~353_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ <= NOT \BANCO_REGISTRADORES|registrador~321_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[26]~26_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1116_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1116_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1115_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1115_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~416_q\ <= NOT \BANCO_REGISTRADORES|registrador~416_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ <= NOT \BANCO_REGISTRADORES|registrador~384_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~352_q\ <= NOT \BANCO_REGISTRADORES|registrador~352_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ <= NOT \BANCO_REGISTRADORES|registrador~320_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[25]~25_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1114_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1113_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~415_q\ <= NOT \BANCO_REGISTRADORES|registrador~415_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ <= NOT \BANCO_REGISTRADORES|registrador~383_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~351_q\ <= NOT \BANCO_REGISTRADORES|registrador~351_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ <= NOT \BANCO_REGISTRADORES|registrador~319_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[24]~24_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1112_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1111_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1111_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~414_q\ <= NOT \BANCO_REGISTRADORES|registrador~414_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ <= NOT \BANCO_REGISTRADORES|registrador~382_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~350_q\ <= NOT \BANCO_REGISTRADORES|registrador~350_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ <= NOT \BANCO_REGISTRADORES|registrador~318_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[23]~23_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1110_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1109_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1109_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~413_q\ <= NOT \BANCO_REGISTRADORES|registrador~413_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ <= NOT \BANCO_REGISTRADORES|registrador~381_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~349_q\ <= NOT \BANCO_REGISTRADORES|registrador~349_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ <= NOT \BANCO_REGISTRADORES|registrador~317_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[22]~22_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1108_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1107_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~412_q\ <= NOT \BANCO_REGISTRADORES|registrador~412_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ <= NOT \BANCO_REGISTRADORES|registrador~380_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~348_q\ <= NOT \BANCO_REGISTRADORES|registrador~348_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ <= NOT \BANCO_REGISTRADORES|registrador~316_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[21]~21_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1106_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1105_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~411_q\ <= NOT \BANCO_REGISTRADORES|registrador~411_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ <= NOT \BANCO_REGISTRADORES|registrador~379_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~347_q\ <= NOT \BANCO_REGISTRADORES|registrador~347_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ <= NOT \BANCO_REGISTRADORES|registrador~315_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[20]~20_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1104_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1103_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~410_q\ <= NOT \BANCO_REGISTRADORES|registrador~410_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ <= NOT \BANCO_REGISTRADORES|registrador~378_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~346_q\ <= NOT \BANCO_REGISTRADORES|registrador~346_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ <= NOT \BANCO_REGISTRADORES|registrador~314_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[19]~19_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1102_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1250_combout\;
\ULA|ALT_INV_saida[22]~65_combout\ <= NOT \ULA|saida[22]~65_combout\;
\ULA|ALT_INV_saida[21]~64_combout\ <= NOT \ULA|saida[21]~64_combout\;
\ULA|ALT_INV_saida[20]~63_combout\ <= NOT \ULA|saida[20]~63_combout\;
\ULA|ALT_INV_saida[26]~62_combout\ <= NOT \ULA|saida[26]~62_combout\;
\ULA|ALT_INV_saida[25]~61_combout\ <= NOT \ULA|saida[25]~61_combout\;
\ULA|ALT_INV_saida[24]~60_combout\ <= NOT \ULA|saida[24]~60_combout\;
\ULA|ALT_INV_saida[23]~59_combout\ <= NOT \ULA|saida[23]~59_combout\;
\ULA|ALT_INV_saida[31]~58_combout\ <= NOT \ULA|saida[31]~58_combout\;
\ULA|ALT_INV_saida[30]~57_combout\ <= NOT \ULA|saida[30]~57_combout\;
\ULA|ALT_INV_saida[29]~56_combout\ <= NOT \ULA|saida[29]~56_combout\;
\ULA|ALT_INV_saida[28]~55_combout\ <= NOT \ULA|saida[28]~55_combout\;
\ULA|ALT_INV_saida[27]~54_combout\ <= NOT \ULA|saida[27]~54_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ULA|ALT_INV_saida[19]~40_combout\ <= NOT \ULA|saida[19]~40_combout\;
\ULA|ALT_INV_saida[18]~38_combout\ <= NOT \ULA|saida[18]~38_combout\;
\ULA|ALT_INV_saida[17]~36_combout\ <= NOT \ULA|saida[17]~36_combout\;
\ULA|ALT_INV_saida[16]~34_combout\ <= NOT \ULA|saida[16]~34_combout\;
\ULA|ALT_INV_saida[15]~32_combout\ <= NOT \ULA|saida[15]~32_combout\;
\ULA|ALT_INV_saida[14]~30_combout\ <= NOT \ULA|saida[14]~30_combout\;
\ULA|ALT_INV_saida[13]~28_combout\ <= NOT \ULA|saida[13]~28_combout\;
\ULA|ALT_INV_saida[12]~26_combout\ <= NOT \ULA|saida[12]~26_combout\;
\ULA|ALT_INV_saida[11]~24_combout\ <= NOT \ULA|saida[11]~24_combout\;
\ULA|ALT_INV_saida[10]~22_combout\ <= NOT \ULA|saida[10]~22_combout\;
\ULA|ALT_INV_saida[9]~20_combout\ <= NOT \ULA|saida[9]~20_combout\;
\ULA|ALT_INV_saida[8]~18_combout\ <= NOT \ULA|saida[8]~18_combout\;
\ULA|ALT_INV_saida[7]~16_combout\ <= NOT \ULA|saida[7]~16_combout\;
\ULA|ALT_INV_saida[6]~14_combout\ <= NOT \ULA|saida[6]~14_combout\;
\ULA|ALT_INV_saida[5]~12_combout\ <= NOT \ULA|saida[5]~12_combout\;
\ULA|ALT_INV_saida[4]~10_combout\ <= NOT \ULA|saida[4]~10_combout\;
\ULA|ALT_INV_saida[3]~9_combout\ <= NOT \ULA|saida[3]~9_combout\;
\ULA|ALT_INV_saida[3]~8_combout\ <= NOT \ULA|saida[3]~8_combout\;
\ULA|ALT_INV_saida[2]~7_combout\ <= NOT \ULA|saida[2]~7_combout\;
\ULA|ALT_INV_saida[2]~6_combout\ <= NOT \ULA|saida[2]~6_combout\;
\ULA|ALT_INV_saida[1]~5_combout\ <= NOT \ULA|saida[1]~5_combout\;
\ULA|ALT_INV_saida[1]~4_combout\ <= NOT \ULA|saida[1]~4_combout\;
\ULA|ALT_INV_saida[17]~3_combout\ <= NOT \ULA|saida[17]~3_combout\;
\ULA|ALT_INV_saida[0]~2_combout\ <= NOT \ULA|saida[0]~2_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~5_combout\ <= NOT \UNIDADE_CONTROLE|saida~5_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\ <= NOT \UNIDADE_CONTROLE|saida[1]~4_combout\;
\ULA|ALT_INV_saida[17]~1_combout\ <= NOT \ULA|saida[17]~1_combout\;
\ULA|ALT_INV_saida[17]~0_combout\ <= NOT \ULA|saida[17]~0_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~3_combout\ <= NOT \UNIDADE_CONTROLE|saida~3_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~2_combout\ <= NOT \UNIDADE_CONTROLE|saida~2_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~1_combout\ <= NOT \UNIDADE_CONTROLE|saida~1_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[31]~31_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[31]~31_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[30]~30_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[30]~30_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[29]~29_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[29]~29_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[28]~28_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[28]~28_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[27]~27_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[27]~27_combout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\EntradaA_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[0]~output_o\);

\EntradaA_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[1]~output_o\);

\EntradaA_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[2]~output_o\);

\EntradaA_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[3]~output_o\);

\EntradaA_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[4]~output_o\);

\EntradaA_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[5]~output_o\);

\EntradaA_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[6]~output_o\);

\EntradaA_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[7]~output_o\);

\EntradaA_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[8]~output_o\);

\EntradaA_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[9]~output_o\);

\EntradaA_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[10]~output_o\);

\EntradaA_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[11]~output_o\);

\EntradaA_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[12]~output_o\);

\EntradaA_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[13]~output_o\);

\EntradaA_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[14]~output_o\);

\EntradaA_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[15]~output_o\);

\EntradaA_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[16]~output_o\);

\EntradaA_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[17]~output_o\);

\EntradaA_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[18]~output_o\);

\EntradaA_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[19]~output_o\);

\EntradaA_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[20]~output_o\);

\EntradaA_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[21]~output_o\);

\EntradaA_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[22]~output_o\);

\EntradaA_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[23]~output_o\);

\EntradaA_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[24]~output_o\);

\EntradaA_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[25]~output_o\);

\EntradaA_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[26]~output_o\);

\EntradaA_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[27]~output_o\);

\EntradaA_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[28]~output_o\);

\EntradaA_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[29]~output_o\);

\EntradaA_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[30]~output_o\);

\EntradaA_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => \EntradaA_ULA[31]~output_o\);

\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[0]~output_o\);

\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[1]~output_o\);

\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[2]~output_o\);

\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[3]~output_o\);

\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[4]~output_o\);

\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[5]~output_o\);

\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[6]~output_o\);

\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[7]~output_o\);

\EntradaB_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[8]~output_o\);

\EntradaB_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[9]~output_o\);

\EntradaB_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[10]~output_o\);

\EntradaB_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[11]~output_o\);

\EntradaB_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[12]~output_o\);

\EntradaB_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[13]~output_o\);

\EntradaB_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[14]~output_o\);

\EntradaB_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[15]~output_o\);

\EntradaB_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[16]~output_o\);

\EntradaB_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[17]~output_o\);

\EntradaB_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[18]~output_o\);

\EntradaB_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[19]~output_o\);

\EntradaB_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[20]~output_o\);

\EntradaB_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[21]~output_o\);

\EntradaB_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[22]~output_o\);

\EntradaB_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[23]~output_o\);

\EntradaB_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[24]~output_o\);

\EntradaB_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[25]~output_o\);

\EntradaB_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[26]~output_o\);

\EntradaB_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[27]~output_o\);

\EntradaB_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[28]~output_o\);

\EntradaB_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[29]~output_o\);

\EntradaB_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[30]~output_o\);

\EntradaB_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[31]~output_o\);

\Saida_ULA_leitura[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~66_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[0]~output_o\);

\Saida_ULA_leitura[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~5_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[1]~output_o\);

\Saida_ULA_leitura[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~7_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[2]~output_o\);

\Saida_ULA_leitura[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~9_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[3]~output_o\);

\Saida_ULA_leitura[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~11_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[4]~output_o\);

\Saida_ULA_leitura[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~13_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[5]~output_o\);

\Saida_ULA_leitura[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~15_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[6]~output_o\);

\Saida_ULA_leitura[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~17_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[7]~output_o\);

\Saida_ULA_leitura[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~19_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[8]~output_o\);

\Saida_ULA_leitura[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~21_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[9]~output_o\);

\Saida_ULA_leitura[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~23_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[10]~output_o\);

\Saida_ULA_leitura[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~25_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[11]~output_o\);

\Saida_ULA_leitura[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~27_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[12]~output_o\);

\Saida_ULA_leitura[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~29_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[13]~output_o\);

\Saida_ULA_leitura[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~31_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[14]~output_o\);

\Saida_ULA_leitura[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~33_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[15]~output_o\);

\Saida_ULA_leitura[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~35_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[16]~output_o\);

\Saida_ULA_leitura[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~37_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[17]~output_o\);

\Saida_ULA_leitura[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~39_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[18]~output_o\);

\Saida_ULA_leitura[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~41_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[19]~output_o\);

\Saida_ULA_leitura[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~42_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[20]~output_o\);

\Saida_ULA_leitura[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~43_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[21]~output_o\);

\Saida_ULA_leitura[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~44_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[22]~output_o\);

\Saida_ULA_leitura[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~45_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[23]~output_o\);

\Saida_ULA_leitura[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~46_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[24]~output_o\);

\Saida_ULA_leitura[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~47_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[25]~output_o\);

\Saida_ULA_leitura[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~48_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[26]~output_o\);

\Saida_ULA_leitura[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~49_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[27]~output_o\);

\Saida_ULA_leitura[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~50_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[28]~output_o\);

\Saida_ULA_leitura[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~51_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[29]~output_o\);

\Saida_ULA_leitura[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~52_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[30]~output_o\);

\Saida_ULA_leitura[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~53_combout\,
	devoe => ww_devoe,
	o => \Saida_ULA_leitura[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\BANCO_REGISTRADORES|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|Equal1~0_combout\ = ( \PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( \PC|DOUT\(6) & ( !\PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( ((\PC|DOUT\(4) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2))))) # 
-- (\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCO_REGISTRADORES|Equal1~0_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(4)) # ((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|DOUT\(7) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\PC|DOUT\(6) & !\PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~9_combout\);

\UNIDADE_CONTROLE|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~1_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~1_combout\ & (\PC|DOUT\(3) & (\ROM|memROM~6_combout\))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~8_combout\)))) ) ) # ( !\ROM|memROM~9_combout\ & ( (\PC|DOUT\(3) & 
-- \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001000011011100000101000001010000010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \UNIDADE_CONTROLE|saida~1_combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(4)) # ((!\PC|DOUT\(2) & !\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011111000000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~0_combout\);

\UNIDADE_CONTROLE|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~2_combout\ = ( \ROM|memROM~9_combout\ & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\))) ) ) # ( !\ROM|memROM~9_combout\ & ( (!\PC|DOUT\(2) & (\PC|DOUT\(3) & (\ROM|memROM~0_combout\ & 
-- \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000100000000000000100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \UNIDADE_CONTROLE|saida~2_combout\);

\UNIDADE_CONTROLE|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~3_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \UNIDADE_CONTROLE|saida~3_combout\);

\ULA|saida[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~0_combout\ = ( !\UNIDADE_CONTROLE|saida~3_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida~3_combout\,
	combout => \ULA|saida[17]~0_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~1_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100000000000000000000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~10_combout\);

\BANCO_REGISTRADORES|registrador~1139\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1139_combout\ = ( \ULA|saida[17]~0_combout\ & ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~6_combout\) ) ) ) # ( !\ULA|saida[17]~0_combout\ & ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & 
-- (!\ROM|memROM~6_combout\ & ((\UNIDADE_CONTROLE|saida~2_combout\) # (\UNIDADE_CONTROLE|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datae => \ULA|ALT_INV_saida[17]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1139_combout\);

\BANCO_REGISTRADORES|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~66_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~326_q\);

\BANCO_REGISTRADORES|registrador~1251\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1251_combout\ = !\ULA|saida[0]~66_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~66_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1251_combout\);

\BANCO_REGISTRADORES|registrador~1140\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1140_combout\ = ( \ULA|saida[17]~0_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & \ROM|memROM~6_combout\) ) ) ) # ( !\ULA|saida[17]~0_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & 
-- (\ROM|memROM~6_combout\ & ((\UNIDADE_CONTROLE|saida~2_combout\) # (\UNIDADE_CONTROLE|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datae => \ULA|ALT_INV_saida[17]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1140_combout\);

\BANCO_REGISTRADORES|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1251_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~358_q\);

\BANCO_REGISTRADORES|registrador~1141\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1141_combout\ = ( \ULA|saida[17]~0_combout\ & ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & \ROM|memROM~6_combout\) ) ) ) # ( !\ULA|saida[17]~0_combout\ & ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & 
-- (\ROM|memROM~6_combout\ & ((\UNIDADE_CONTROLE|saida~2_combout\) # (\UNIDADE_CONTROLE|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datae => \ULA|ALT_INV_saida[17]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1141_combout\);

\BANCO_REGISTRADORES|registrador~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~66_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~390_q\);

\BANCO_REGISTRADORES|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1127_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~390_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~358_q\ ) ) 
-- ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~326_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~326_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1127_combout\);

\UNIDADE_CONTROLE|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \UNIDADE_CONTROLE|saida~0_combout\);

\BANCO_REGISTRADORES|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1128_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1128_combout\);

\BANCO_REGISTRADORES|registrador~1129\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1129_combout\ = (!\ROM|memROM~7_combout\ & (((\BANCO_REGISTRADORES|registrador~1127_combout\ & \UNIDADE_CONTROLE|saida~0_combout\)) # (\BANCO_REGISTRADORES|registrador~1128_combout\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~1127_combout\ & (\UNIDADE_CONTROLE|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1129_combout\);

\BANCO_REGISTRADORES|registrador~1250\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1250_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT\(2) & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(3) & ( \PC|DOUT\(2) & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # 
-- (\PC|DOUT\(7)) ) ) ) # ( \PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( ((\PC|DOUT\(5)) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \BANCO_REGISTRADORES|registrador~1250_combout\);

\BANCO_REGISTRADORES|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~0_combout\ = (\BANCO_REGISTRADORES|registrador~1129_combout\ & !\BANCO_REGISTRADORES|registrador~1250_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1129_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[0]~0_combout\);

\UNIDADE_CONTROLE|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida[1]~4_combout\ = ( \UNIDADE_CONTROLE|saida~2_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((!\ROM|memROM~9_combout\) # (\UNIDADE_CONTROLE|saida~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000000000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	combout => \UNIDADE_CONTROLE|saida[1]~4_combout\);

\BANCO_REGISTRADORES|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1064_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(4)))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2) & !\PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCO_REGISTRADORES|registrador~1064_combout\);

\UNIDADE_CONTROLE|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~5_combout\ = (!\BANCO_REGISTRADORES|registrador~1064_combout\) # (!\ROM|memROM~8_combout\ $ (((!\ROM|memROM~1_combout\) # (!\ROM|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111011110110011111101111011001111110111101100111111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	combout => \UNIDADE_CONTROLE|saida~5_combout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1129_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\) ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1129_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1129_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add2~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add2~130_cout\);

\ULA|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~1_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1129_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\) ) + ( \ULA|Add2~130_cout\ ))
-- \ULA|Add2~2\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1129_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\) ) + ( \ULA|Add2~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1129_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	cin => \ULA|Add2~130_cout\,
	sumout => \ULA|Add2~1_sumout\,
	cout => \ULA|Add2~2\);

\ULA|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~2_combout\ = ( \ULA|Add0~1_sumout\ & ( \ULA|Add2~1_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~1_sumout\ & ( \ULA|Add2~1_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~1_sumout\ & ( !\ULA|Add2~1_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~1_sumout\ & ( !\ULA|Add2~1_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|saidaA[0]~0_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~1_sumout\,
	dataf => \ULA|ALT_INV_Add2~1_sumout\,
	combout => \ULA|saida[0]~2_combout\);

\ULA|saida[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~1_combout\ = (\ROM|memROM~3_combout\ & (\UNIDADE_CONTROLE|saida~1_combout\ & (!\UNIDADE_CONTROLE|saida~2_combout\ & !\ULA|saida[17]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datad => \ULA|ALT_INV_saida[17]~0_combout\,
	combout => \ULA|saida[17]~1_combout\);

\BANCO_REGISTRADORES|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1138_combout\ = ( \ULA|saida[17]~0_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~6_combout\) ) ) ) # ( !\ULA|saida[17]~0_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~3_combout\ 
-- & (!\ROM|memROM~6_combout\ & ((\UNIDADE_CONTROLE|saida~2_combout\) # (\UNIDADE_CONTROLE|saida~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~1_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datae => \ULA|ALT_INV_saida[17]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1138_combout\);

\BANCO_REGISTRADORES|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~53_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~325_q\);

\BANCO_REGISTRADORES|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~53_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~357_q\);

\BANCO_REGISTRADORES|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~53_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~389_q\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~5_combout\);

\BANCO_REGISTRADORES|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1125_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~421_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~389_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~357_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~325_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~357_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1125_combout\);

\BANCO_REGISTRADORES|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1126_combout\ = ( \BANCO_REGISTRADORES|registrador~1125_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1125_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1125_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1126_combout\);

\BANCO_REGISTRADORES|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~52_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~324_q\);

\BANCO_REGISTRADORES|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~52_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~356_q\);

\BANCO_REGISTRADORES|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~52_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~388_q\);

\BANCO_REGISTRADORES|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1123_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~420_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~388_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~356_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~324_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~356_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1123_combout\);

\BANCO_REGISTRADORES|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1124_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1123_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1124_combout\);

\BANCO_REGISTRADORES|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~51_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~323_q\);

\BANCO_REGISTRADORES|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~51_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~355_q\);

\BANCO_REGISTRADORES|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~51_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~387_q\);

\BANCO_REGISTRADORES|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1121_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~419_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~387_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~355_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~323_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~355_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1121_combout\);

\BANCO_REGISTRADORES|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1122_combout\ = ( \BANCO_REGISTRADORES|registrador~1121_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1121_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1121_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1122_combout\);

\BANCO_REGISTRADORES|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~50_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~322_q\);

\BANCO_REGISTRADORES|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~50_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~354_q\);

\BANCO_REGISTRADORES|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~50_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~386_q\);

\BANCO_REGISTRADORES|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1119_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~418_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~386_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~354_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~322_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~354_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1119_combout\);

\BANCO_REGISTRADORES|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1120_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1119_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1119_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1120_combout\);

\BANCO_REGISTRADORES|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~49_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~321_q\);

\BANCO_REGISTRADORES|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~49_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~353_q\);

\BANCO_REGISTRADORES|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~49_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~385_q\);

\BANCO_REGISTRADORES|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1117_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~417_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~385_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~353_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~321_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~353_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1117_combout\);

\BANCO_REGISTRADORES|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1118_combout\ = ( \BANCO_REGISTRADORES|registrador~1117_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1117_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1118_combout\);

\BANCO_REGISTRADORES|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~48_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~320_q\);

\BANCO_REGISTRADORES|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~48_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~352_q\);

\BANCO_REGISTRADORES|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~48_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~384_q\);

\BANCO_REGISTRADORES|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1115_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~416_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~384_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~352_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~320_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~352_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1115_combout\);

\BANCO_REGISTRADORES|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1116_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1115_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1115_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1116_combout\);

\BANCO_REGISTRADORES|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~47_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~319_q\);

\BANCO_REGISTRADORES|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~47_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~351_q\);

\BANCO_REGISTRADORES|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~47_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~383_q\);

\BANCO_REGISTRADORES|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1113_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~415_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~383_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~351_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~319_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~351_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1113_combout\);

\BANCO_REGISTRADORES|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1114_combout\ = ( \BANCO_REGISTRADORES|registrador~1113_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1113_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1114_combout\);

\BANCO_REGISTRADORES|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~46_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~318_q\);

\BANCO_REGISTRADORES|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~46_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~350_q\);

\BANCO_REGISTRADORES|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~46_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~382_q\);

\BANCO_REGISTRADORES|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1111_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~414_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~382_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~350_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~318_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~350_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1111_combout\);

\BANCO_REGISTRADORES|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1112_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1111_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1111_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1112_combout\);

\BANCO_REGISTRADORES|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~45_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~317_q\);

\BANCO_REGISTRADORES|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~45_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~349_q\);

\BANCO_REGISTRADORES|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~45_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~381_q\);

\BANCO_REGISTRADORES|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1109_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~413_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~381_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~349_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~349_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1109_combout\);

\BANCO_REGISTRADORES|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1110_combout\ = ( \BANCO_REGISTRADORES|registrador~1109_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1109_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1109_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1110_combout\);

\BANCO_REGISTRADORES|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~44_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~316_q\);

\BANCO_REGISTRADORES|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~44_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~348_q\);

\BANCO_REGISTRADORES|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~44_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~380_q\);

\BANCO_REGISTRADORES|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1107_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~412_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~380_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~348_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~316_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~348_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1107_combout\);

\BANCO_REGISTRADORES|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1108_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1107_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1108_combout\);

\BANCO_REGISTRADORES|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~43_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~315_q\);

\BANCO_REGISTRADORES|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~43_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~347_q\);

\BANCO_REGISTRADORES|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~43_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~379_q\);

\BANCO_REGISTRADORES|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1105_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~411_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~379_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~347_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~315_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~347_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1105_combout\);

\BANCO_REGISTRADORES|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1106_combout\ = ( \BANCO_REGISTRADORES|registrador~1105_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1105_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1106_combout\);

\BANCO_REGISTRADORES|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~42_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~314_q\);

\BANCO_REGISTRADORES|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~42_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~346_q\);

\BANCO_REGISTRADORES|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~42_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~378_q\);

\BANCO_REGISTRADORES|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1103_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~410_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~378_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~346_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~314_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~346_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1103_combout\);

\BANCO_REGISTRADORES|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1104_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1103_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1104_combout\);

\BANCO_REGISTRADORES|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~41_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~313_q\);

\BANCO_REGISTRADORES|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~41_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~345_q\);

\BANCO_REGISTRADORES|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~41_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~377_q\);

\BANCO_REGISTRADORES|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1101_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~409_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~377_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~345_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~345_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1101_combout\);

\BANCO_REGISTRADORES|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1102_combout\ = ( \BANCO_REGISTRADORES|registrador~1101_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1101_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1101_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1102_combout\);

\BANCO_REGISTRADORES|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[19]~19_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[19]~19_combout\);

\BANCO_REGISTRADORES|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[19]~19_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[19]~19_combout\);

\ULA|saida[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~3_combout\ = (\ULA|saida[17]~1_combout\ & ((!\UNIDADE_CONTROLE|saida~5_combout\) # (\UNIDADE_CONTROLE|saida~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_CONTROLE|ALT_INV_saida~2_combout\,
	datab => \ULA|ALT_INV_saida[17]~1_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[17]~3_combout\);

\BANCO_REGISTRADORES|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~39_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~312_q\);

\BANCO_REGISTRADORES|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~39_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~344_q\);

\BANCO_REGISTRADORES|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~39_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~376_q\);

\BANCO_REGISTRADORES|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1099_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~408_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~376_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~344_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~344_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1099_combout\);

\BANCO_REGISTRADORES|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1100_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1099_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1099_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1100_combout\);

\BANCO_REGISTRADORES|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[18]~18_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1100_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1100_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[18]~18_combout\);

\BANCO_REGISTRADORES|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[18]~18_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1194_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1194_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[18]~18_combout\);

\BANCO_REGISTRADORES|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~37_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~311_q\);

\BANCO_REGISTRADORES|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~37_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~343_q\);

\BANCO_REGISTRADORES|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~37_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~375_q\);

\BANCO_REGISTRADORES|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1097_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~407_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~375_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~343_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~311_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~343_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1097_combout\);

\BANCO_REGISTRADORES|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1098_combout\ = ( \BANCO_REGISTRADORES|registrador~1097_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1097_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1098_combout\);

\BANCO_REGISTRADORES|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[17]~17_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[17]~17_combout\);

\BANCO_REGISTRADORES|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[17]~17_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1198_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[17]~17_combout\);

\BANCO_REGISTRADORES|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~35_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~310_q\);

\BANCO_REGISTRADORES|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~35_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~342_q\);

\BANCO_REGISTRADORES|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~35_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~374_q\);

\BANCO_REGISTRADORES|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1095_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~406_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~374_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~342_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~342_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1095_combout\);

\BANCO_REGISTRADORES|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1096_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1095_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1096_combout\);

\BANCO_REGISTRADORES|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[16]~16_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[16]~16_combout\);

\BANCO_REGISTRADORES|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[16]~16_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1202_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[16]~16_combout\);

\BANCO_REGISTRADORES|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~33_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~309_q\);

\BANCO_REGISTRADORES|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~33_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~341_q\);

\BANCO_REGISTRADORES|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~33_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~373_q\);

\BANCO_REGISTRADORES|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1093_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~405_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~373_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~341_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~341_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1093_combout\);

\BANCO_REGISTRADORES|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1094_combout\ = ( \BANCO_REGISTRADORES|registrador~1093_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1093_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1094_combout\);

\BANCO_REGISTRADORES|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[15]~15_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[15]~15_combout\);

\BANCO_REGISTRADORES|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[15]~15_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1206_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1206_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[15]~15_combout\);

\BANCO_REGISTRADORES|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~308_q\);

\BANCO_REGISTRADORES|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~340_q\);

\BANCO_REGISTRADORES|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~372_q\);

\BANCO_REGISTRADORES|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1091_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~404_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~372_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~340_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~308_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~340_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1091_combout\);

\BANCO_REGISTRADORES|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1092_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1091_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1092_combout\);

\BANCO_REGISTRADORES|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[14]~14_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[14]~14_combout\);

\BANCO_REGISTRADORES|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[14]~14_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1210_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1210_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[14]~14_combout\);

\BANCO_REGISTRADORES|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~307_q\);

\BANCO_REGISTRADORES|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~339_q\);

\BANCO_REGISTRADORES|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~371_q\);

\BANCO_REGISTRADORES|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1089_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~403_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~371_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~339_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~339_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1089_combout\);

\BANCO_REGISTRADORES|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1090_combout\ = ( \BANCO_REGISTRADORES|registrador~1089_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1089_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1090_combout\);

\BANCO_REGISTRADORES|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[13]~13_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[13]~13_combout\);

\BANCO_REGISTRADORES|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[13]~13_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1214_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1214_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[13]~13_combout\);

\BANCO_REGISTRADORES|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~306_q\);

\BANCO_REGISTRADORES|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~338_q\);

\BANCO_REGISTRADORES|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~370_q\);

\BANCO_REGISTRADORES|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1087_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~402_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~370_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~338_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~338_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1087_combout\);

\BANCO_REGISTRADORES|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1088_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1088_combout\);

\BANCO_REGISTRADORES|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[12]~12_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[12]~12_combout\);

\BANCO_REGISTRADORES|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[12]~12_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1218_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[12]~12_combout\);

\BANCO_REGISTRADORES|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~305_q\);

\BANCO_REGISTRADORES|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~337_q\);

\BANCO_REGISTRADORES|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~369_q\);

\BANCO_REGISTRADORES|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1085_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~401_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~369_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~337_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~305_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~337_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1085_combout\);

\BANCO_REGISTRADORES|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1086_combout\ = ( \BANCO_REGISTRADORES|registrador~1085_combout\ & ( (!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(3) & ((\ROM|memROM~3_combout\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(2)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1085_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100000111111110010111011110000001000001111111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1086_combout\);

\BANCO_REGISTRADORES|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[11]~11_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[11]~11_combout\);

\BANCO_REGISTRADORES|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[11]~11_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1222_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1222_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[11]~11_combout\);

\BANCO_REGISTRADORES|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~304_q\);

\BANCO_REGISTRADORES|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~336_q\);

\BANCO_REGISTRADORES|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~368_q\);

\BANCO_REGISTRADORES|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1083_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~400_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~368_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~336_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~336_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1083_combout\);

\BANCO_REGISTRADORES|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1084_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1084_combout\);

\BANCO_REGISTRADORES|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[10]~10_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[10]~10_combout\);

\BANCO_REGISTRADORES|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[10]~10_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1226_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1226_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[10]~10_combout\);

\BANCO_REGISTRADORES|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~303_q\);

\BANCO_REGISTRADORES|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~335_q\);

\BANCO_REGISTRADORES|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~367_q\);

\BANCO_REGISTRADORES|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1081_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~399_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~367_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~335_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~303_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~335_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1081_combout\);

\BANCO_REGISTRADORES|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1082_combout\ = ((\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1081_combout\)) # (\BANCO_REGISTRADORES|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1082_combout\);

\BANCO_REGISTRADORES|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[9]~9_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[9]~9_combout\);

\BANCO_REGISTRADORES|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[9]~9_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1230_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1230_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[9]~9_combout\);

\BANCO_REGISTRADORES|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~302_q\);

\BANCO_REGISTRADORES|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~334_q\);

\BANCO_REGISTRADORES|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~366_q\);

\BANCO_REGISTRADORES|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1079_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~398_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~366_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~334_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~302_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~334_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1079_combout\);

\BANCO_REGISTRADORES|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1080_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1080_combout\);

\BANCO_REGISTRADORES|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[8]~8_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[8]~8_combout\);

\BANCO_REGISTRADORES|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[8]~8_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1234_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1234_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[8]~8_combout\);

\BANCO_REGISTRADORES|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~301_q\);

\BANCO_REGISTRADORES|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~333_q\);

\BANCO_REGISTRADORES|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~365_q\);

\BANCO_REGISTRADORES|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1077_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~397_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~365_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~333_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~301_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~333_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1077_combout\);

\BANCO_REGISTRADORES|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1078_combout\ = ((\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1077_combout\)) # (\BANCO_REGISTRADORES|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1078_combout\);

\BANCO_REGISTRADORES|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[7]~7_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[7]~7_combout\);

\BANCO_REGISTRADORES|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[7]~7_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1238_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1238_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[7]~7_combout\);

\BANCO_REGISTRADORES|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~300_q\);

\BANCO_REGISTRADORES|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~332_q\);

\BANCO_REGISTRADORES|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~364_q\);

\BANCO_REGISTRADORES|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1075_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~396_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~364_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~332_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~332_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1075_combout\);

\BANCO_REGISTRADORES|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1076_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1076_combout\);

\BANCO_REGISTRADORES|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[6]~6_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[6]~6_combout\);

\BANCO_REGISTRADORES|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[6]~6_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1242_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1242_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[6]~6_combout\);

\BANCO_REGISTRADORES|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~299_q\);

\BANCO_REGISTRADORES|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~331_q\);

\BANCO_REGISTRADORES|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~363_q\);

\BANCO_REGISTRADORES|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1073_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~395_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~363_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~331_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~299_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~331_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1073_combout\);

\BANCO_REGISTRADORES|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1074_combout\ = ((\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1073_combout\)) # (\BANCO_REGISTRADORES|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1074_combout\);

\BANCO_REGISTRADORES|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[5]~5_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[5]~5_combout\);

\BANCO_REGISTRADORES|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[5]~5_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1246_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1246_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[5]~5_combout\);

\BANCO_REGISTRADORES|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~330_q\);

\BANCO_REGISTRADORES|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~362_q\);

\BANCO_REGISTRADORES|registrador~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~394_q\);

\BANCO_REGISTRADORES|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1071_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~394_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~362_q\ ) ) ) 
-- # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~330_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~330_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1071_combout\);

\BANCO_REGISTRADORES|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1072_combout\ = (\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1071_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1072_combout\);

\BANCO_REGISTRADORES|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[4]~4_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[4]~4_combout\);

\BANCO_REGISTRADORES|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[4]~4_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1137_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[4]~4_combout\);

\BANCO_REGISTRADORES|registrador~1255\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1255_combout\ = !\ULA|saida[3]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~9_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1255_combout\);

\BANCO_REGISTRADORES|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1255_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~329_q\);

\BANCO_REGISTRADORES|registrador~1256\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1256_combout\ = !\ULA|saida[3]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~9_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1256_combout\);

\BANCO_REGISTRADORES|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1256_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~361_q\);

\BANCO_REGISTRADORES|registrador~1257\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1257_combout\ = !\ULA|saida[3]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~9_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1257_combout\);

\BANCO_REGISTRADORES|registrador~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1257_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~393_q\);

\BANCO_REGISTRADORES|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1069_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~393_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~361_q\ ) ) 
-- ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~329_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~329_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1069_combout\);

\BANCO_REGISTRADORES|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1070_combout\ = ( \BANCO_REGISTRADORES|registrador~1069_combout\ & ( ((!\ROM|memROM~2_combout\) # ((!\PC|DOUT\(2) & \PC|DOUT\(3)))) # (\ROM|memROM~3_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~1069_combout\ & ( 
-- (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~3_combout\)))) # (\ROM|memROM~2_combout\ & (\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000100001111111110010111111110000001000011111111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1070_combout\);

\BANCO_REGISTRADORES|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[3]~3_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[3]~3_combout\);

\BANCO_REGISTRADORES|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[3]~3_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1135_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1135_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[3]~3_combout\);

\BANCO_REGISTRADORES|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~328_q\);

\BANCO_REGISTRADORES|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~360_q\);

\BANCO_REGISTRADORES|registrador~1254\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1254_combout\ = !\ULA|saida[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[2]~7_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1254_combout\);

\BANCO_REGISTRADORES|registrador~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1254_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~392_q\);

\BANCO_REGISTRADORES|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1067_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~392_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~360_q\ ) ) 
-- ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~328_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~296_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~328_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1067_combout\);

\BANCO_REGISTRADORES|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1068_combout\ = (\ROM|memROM~3_combout\ & (((\PC|DOUT\(3) & \ROM|memROM~6_combout\)) # (\BANCO_REGISTRADORES|registrador~1067_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1068_combout\);

\BANCO_REGISTRADORES|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[2]~2_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[2]~2_combout\);

\BANCO_REGISTRADORES|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[2]~2_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1133_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[2]~2_combout\);

\BANCO_REGISTRADORES|registrador~1252\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1252_combout\ = !\ULA|saida[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1252_combout\);

\BANCO_REGISTRADORES|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1252_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~327_q\);

\BANCO_REGISTRADORES|registrador~1253\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1253_combout\ = !\ULA|saida[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1253_combout\);

\BANCO_REGISTRADORES|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1253_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~359_q\);

\BANCO_REGISTRADORES|registrador~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[1]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~391_q\);

\BANCO_REGISTRADORES|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1065_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~391_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~359_q\ ) ) 
-- ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~327_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~295_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~327_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1065_combout\);

\BANCO_REGISTRADORES|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1066_combout\ = ((\BANCO_REGISTRADORES|registrador~1064_combout\ & \BANCO_REGISTRADORES|registrador~1065_combout\)) # (\BANCO_REGISTRADORES|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1066_combout\);

\BANCO_REGISTRADORES|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[1]~1_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[1]~1_combout\);

\BANCO_REGISTRADORES|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[1]~1_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1131_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1131_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[1]~1_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1131_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1131_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1131_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~9_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1131_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\) ) + ( \ULA|Add2~2\ ))
-- \ULA|Add2~10\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1131_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\) ) + ( \ULA|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1131_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add2~2\,
	sumout => \ULA|Add2~9_sumout\,
	cout => \ULA|Add2~10\);

\ULA|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~4_combout\ = ( \ULA|Add0~5_sumout\ & ( \ULA|Add2~9_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~5_sumout\ & ( \ULA|Add2~9_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~5_sumout\ & ( !\ULA|Add2~9_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~5_sumout\ & ( !\ULA|Add2~9_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[1]~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	dataf => \ULA|ALT_INV_Add2~9_sumout\,
	combout => \ULA|saida[1]~4_combout\);

\ULA|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~5_combout\ = ( \ULA|saida[1]~4_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[1]~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[1]~4_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & (\BANCO_REGISTRADORES|saidaB[1]~1_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[1]~1_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[1]~4_combout\,
	combout => \ULA|saida[1]~5_combout\);

\BANCO_REGISTRADORES|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[1]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~295_q\);

\BANCO_REGISTRADORES|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1130_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~391_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~359_q\ ) ) 
-- ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~327_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~295_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~327_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1130_combout\);

\BANCO_REGISTRADORES|registrador~1131\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1131_combout\ = ( \BANCO_REGISTRADORES|registrador~1130_combout\ & ( (((\ROM|memROM~7_combout\ & \BANCO_REGISTRADORES|registrador~1128_combout\)) # (\BANCO_REGISTRADORES|registrador~1250_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~1130_combout\ & ( ((\ROM|memROM~7_combout\ & \BANCO_REGISTRADORES|registrador~1128_combout\)) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111001101111111111100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1131_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1133_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1133_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~13_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1133_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\) ) + ( \ULA|Add2~10\ ))
-- \ULA|Add2~14\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1133_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\) ) + ( \ULA|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add2~10\,
	sumout => \ULA|Add2~13_sumout\,
	cout => \ULA|Add2~14\);

\ULA|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~6_combout\ = ( \ULA|Add0~9_sumout\ & ( \ULA|Add2~13_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~9_sumout\ & ( \ULA|Add2~13_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~9_sumout\ & ( !\ULA|Add2~13_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~9_sumout\ & ( !\ULA|Add2~13_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[2]~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~9_sumout\,
	dataf => \ULA|ALT_INV_Add2~13_sumout\,
	combout => \ULA|saida[2]~6_combout\);

\ULA|saida[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~7_combout\ = ( \ULA|saida[2]~6_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[2]~2_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[2]~6_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & (\BANCO_REGISTRADORES|saidaB[2]~2_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[2]~2_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[2]~6_combout\,
	combout => \ULA|saida[2]~7_combout\);

\BANCO_REGISTRADORES|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~296_q\);

\BANCO_REGISTRADORES|registrador~1132\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1132_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~392_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~360_q\ ) ) 
-- ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~328_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~296_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~328_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1132_combout\);

\BANCO_REGISTRADORES|registrador~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1133_combout\ = ((\UNIDADE_CONTROLE|saida~0_combout\ & \BANCO_REGISTRADORES|registrador~1132_combout\)) # (\BANCO_REGISTRADORES|registrador~1128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1133_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1135_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1135_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1135_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~17_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1135_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\) ) + ( \ULA|Add2~14\ ))
-- \ULA|Add2~18\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1135_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\) ) + ( \ULA|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1135_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add2~14\,
	sumout => \ULA|Add2~17_sumout\,
	cout => \ULA|Add2~18\);

\ULA|saida[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~8_combout\ = ( \ULA|Add0~13_sumout\ & ( \ULA|Add2~17_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~13_sumout\ & ( \ULA|Add2~17_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~13_sumout\ & ( !\ULA|Add2~17_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~13_sumout\ & ( !\ULA|Add2~17_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[3]~3_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~13_sumout\,
	dataf => \ULA|ALT_INV_Add2~17_sumout\,
	combout => \ULA|saida[3]~8_combout\);

\ULA|saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~9_combout\ = ( \ULA|saida[3]~8_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[3]~3_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[3]~8_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & (\BANCO_REGISTRADORES|saidaB[3]~3_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[3]~3_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[3]~8_combout\,
	combout => \ULA|saida[3]~9_combout\);

\BANCO_REGISTRADORES|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[3]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~297_q\);

\BANCO_REGISTRADORES|registrador~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1134_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~393_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~361_q\ ) ) 
-- ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( !\BANCO_REGISTRADORES|registrador~329_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~329_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1134_combout\);

\BANCO_REGISTRADORES|registrador~1135\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1135_combout\ = ( \BANCO_REGISTRADORES|registrador~1134_combout\ & ( (((!\ROM|memROM~7_combout\ & \BANCO_REGISTRADORES|registrador~1128_combout\)) # (\BANCO_REGISTRADORES|registrador~1250_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~1134_combout\ & ( ((!\ROM|memROM~7_combout\ & \BANCO_REGISTRADORES|registrador~1128_combout\)) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111001110111111111100001010111111110011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1135_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1137_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1137_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~21_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1137_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\) ) + ( \ULA|Add2~18\ ))
-- \ULA|Add2~22\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1137_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\) ) + ( \ULA|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add2~18\,
	sumout => \ULA|Add2~21_sumout\,
	cout => \ULA|Add2~22\);

\ULA|saida[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~10_combout\ = ( \ULA|Add0~17_sumout\ & ( \ULA|Add2~21_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~17_sumout\ & ( \ULA|Add2~21_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~17_sumout\ & ( !\ULA|Add2~21_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~17_sumout\ & ( !\ULA|Add2~21_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[4]~4_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	dataf => \ULA|ALT_INV_Add2~21_sumout\,
	combout => \ULA|saida[4]~10_combout\);

\ULA|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~11_combout\ = ( \ULA|saida[4]~10_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[4]~4_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[4]~10_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (\BANCO_REGISTRADORES|saidaB[4]~4_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[4]~4_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[4]~10_combout\,
	combout => \ULA|saida[4]~11_combout\);

\BANCO_REGISTRADORES|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~298_q\);

\BANCO_REGISTRADORES|registrador~1136\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1136_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~394_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~362_q\ ) ) ) 
-- # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~330_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \BANCO_REGISTRADORES|registrador~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~330_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1136_combout\);

\BANCO_REGISTRADORES|registrador~1137\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1137_combout\ = (!\ROM|memROM~7_combout\ & (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|registrador~1136_combout\)))) # (\ROM|memROM~7_combout\ & (((\UNIDADE_CONTROLE|saida~0_combout\ & 
-- \BANCO_REGISTRADORES|registrador~1136_combout\)) # (\BANCO_REGISTRADORES|registrador~1128_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1136_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1137_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1246_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1246_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1246_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~25_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1246_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\) ) + ( \ULA|Add2~22\ ))
-- \ULA|Add2~26\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1246_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\) ) + ( \ULA|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1246_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add2~22\,
	sumout => \ULA|Add2~25_sumout\,
	cout => \ULA|Add2~26\);

\ULA|saida[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~12_combout\ = ( \ULA|Add0~21_sumout\ & ( \ULA|Add2~25_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~21_sumout\ & ( \ULA|Add2~25_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~21_sumout\ & ( !\ULA|Add2~25_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~21_sumout\ & ( !\ULA|Add2~25_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[5]~5_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~21_sumout\,
	dataf => \ULA|ALT_INV_Add2~25_sumout\,
	combout => \ULA|saida[5]~12_combout\);

\ULA|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~13_combout\ = ( \ULA|saida[5]~12_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[5]~5_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[5]~12_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & (\BANCO_REGISTRADORES|saidaB[5]~5_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[5]~5_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[5]~12_combout\,
	combout => \ULA|saida[5]~13_combout\);

\BANCO_REGISTRADORES|registrador~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~395_q\);

\BANCO_REGISTRADORES|registrador~1246\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1246_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~299_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~331_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~363_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~395_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~331_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	combout => \BANCO_REGISTRADORES|registrador~1246_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1242_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1242_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1242_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~29_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1242_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\) ) + ( \ULA|Add2~26\ ))
-- \ULA|Add2~30\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1242_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\) ) + ( \ULA|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1242_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add2~26\,
	sumout => \ULA|Add2~29_sumout\,
	cout => \ULA|Add2~30\);

\ULA|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~14_combout\ = ( \ULA|Add0~25_sumout\ & ( \ULA|Add2~29_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~25_sumout\ & ( \ULA|Add2~29_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~25_sumout\ & ( !\ULA|Add2~29_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~25_sumout\ & ( !\ULA|Add2~29_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[6]~6_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~25_sumout\,
	dataf => \ULA|ALT_INV_Add2~29_sumout\,
	combout => \ULA|saida[6]~14_combout\);

\ULA|saida[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~15_combout\ = ( \ULA|saida[6]~14_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[6]~6_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[6]~14_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & (\BANCO_REGISTRADORES|saidaB[6]~6_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[6]~6_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[6]~14_combout\,
	combout => \ULA|saida[6]~15_combout\);

\BANCO_REGISTRADORES|registrador~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~396_q\);

\BANCO_REGISTRADORES|registrador~1242\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1242_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~300_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~332_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~364_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~396_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~332_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	combout => \BANCO_REGISTRADORES|registrador~1242_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1238_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1238_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1238_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~33_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1238_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\) ) + ( \ULA|Add2~30\ ))
-- \ULA|Add2~34\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1238_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\) ) + ( \ULA|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1238_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add2~30\,
	sumout => \ULA|Add2~33_sumout\,
	cout => \ULA|Add2~34\);

\ULA|saida[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~16_combout\ = ( \ULA|Add0~29_sumout\ & ( \ULA|Add2~33_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~29_sumout\ & ( \ULA|Add2~33_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~29_sumout\ & ( !\ULA|Add2~33_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~29_sumout\ & ( !\ULA|Add2~33_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[7]~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~29_sumout\,
	dataf => \ULA|ALT_INV_Add2~33_sumout\,
	combout => \ULA|saida[7]~16_combout\);

\ULA|saida[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~17_combout\ = ( \ULA|saida[7]~16_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[7]~7_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[7]~16_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & (\BANCO_REGISTRADORES|saidaB[7]~7_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[7]~7_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[7]~16_combout\,
	combout => \ULA|saida[7]~17_combout\);

\BANCO_REGISTRADORES|registrador~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~397_q\);

\BANCO_REGISTRADORES|registrador~1238\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1238_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~301_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~333_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~365_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~397_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~333_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	combout => \BANCO_REGISTRADORES|registrador~1238_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1234_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1234_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1234_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~37_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1234_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\) ) + ( \ULA|Add2~34\ ))
-- \ULA|Add2~38\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1234_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\) ) + ( \ULA|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1234_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add2~34\,
	sumout => \ULA|Add2~37_sumout\,
	cout => \ULA|Add2~38\);

\ULA|saida[8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~18_combout\ = ( \ULA|Add0~33_sumout\ & ( \ULA|Add2~37_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~33_sumout\ & ( \ULA|Add2~37_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~33_sumout\ & ( !\ULA|Add2~37_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~33_sumout\ & ( !\ULA|Add2~37_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[8]~8_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~33_sumout\,
	dataf => \ULA|ALT_INV_Add2~37_sumout\,
	combout => \ULA|saida[8]~18_combout\);

\ULA|saida[8]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~19_combout\ = ( \ULA|saida[8]~18_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[8]~8_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[8]~18_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & (\BANCO_REGISTRADORES|saidaB[8]~8_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[8]~8_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[8]~18_combout\,
	combout => \ULA|saida[8]~19_combout\);

\BANCO_REGISTRADORES|registrador~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~398_q\);

\BANCO_REGISTRADORES|registrador~1234\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1234_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~302_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~334_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~366_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~398_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~334_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	combout => \BANCO_REGISTRADORES|registrador~1234_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1230_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1230_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1230_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~41_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1230_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\) ) + ( \ULA|Add2~38\ ))
-- \ULA|Add2~42\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1230_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\) ) + ( \ULA|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1230_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add2~38\,
	sumout => \ULA|Add2~41_sumout\,
	cout => \ULA|Add2~42\);

\ULA|saida[9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~20_combout\ = ( \ULA|Add0~37_sumout\ & ( \ULA|Add2~41_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~37_sumout\ & ( \ULA|Add2~41_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~37_sumout\ & ( !\ULA|Add2~41_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~37_sumout\ & ( !\ULA|Add2~41_sumout\ & ( (\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & 
-- !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[9]~9_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~37_sumout\,
	dataf => \ULA|ALT_INV_Add2~41_sumout\,
	combout => \ULA|saida[9]~20_combout\);

\ULA|saida[9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~21_combout\ = ( \ULA|saida[9]~20_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[9]~9_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[9]~20_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (\BANCO_REGISTRADORES|saidaB[9]~9_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[9]~9_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[9]~20_combout\,
	combout => \ULA|saida[9]~21_combout\);

\BANCO_REGISTRADORES|registrador~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~399_q\);

\BANCO_REGISTRADORES|registrador~1230\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1230_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~303_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~335_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~367_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~399_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~335_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	combout => \BANCO_REGISTRADORES|registrador~1230_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1226_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1226_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1226_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~45_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1226_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\) ) + ( \ULA|Add2~42\ ))
-- \ULA|Add2~46\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1226_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\) ) + ( \ULA|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1226_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\,
	cin => \ULA|Add2~42\,
	sumout => \ULA|Add2~45_sumout\,
	cout => \ULA|Add2~46\);

\ULA|saida[10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~22_combout\ = ( \ULA|Add0~41_sumout\ & ( \ULA|Add2~45_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~41_sumout\ & ( \ULA|Add2~45_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~41_sumout\ & ( !\ULA|Add2~45_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~41_sumout\ & ( !\ULA|Add2~45_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[10]~10_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~41_sumout\,
	dataf => \ULA|ALT_INV_Add2~45_sumout\,
	combout => \ULA|saida[10]~22_combout\);

\ULA|saida[10]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~23_combout\ = ( \ULA|saida[10]~22_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[10]~10_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[10]~22_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & (\BANCO_REGISTRADORES|saidaB[10]~10_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[10]~10_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[10]~22_combout\,
	combout => \ULA|saida[10]~23_combout\);

\BANCO_REGISTRADORES|registrador~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~400_q\);

\BANCO_REGISTRADORES|registrador~1226\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1226_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~304_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~336_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~368_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~400_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~336_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	combout => \BANCO_REGISTRADORES|registrador~1226_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1222_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1222_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1222_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~49_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1222_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\) ) + ( \ULA|Add2~46\ ))
-- \ULA|Add2~50\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1222_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\) ) + ( \ULA|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1222_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add2~46\,
	sumout => \ULA|Add2~49_sumout\,
	cout => \ULA|Add2~50\);

\ULA|saida[11]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~24_combout\ = ( \ULA|Add0~45_sumout\ & ( \ULA|Add2~49_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~45_sumout\ & ( \ULA|Add2~49_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~45_sumout\ & ( !\ULA|Add2~49_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~45_sumout\ & ( !\ULA|Add2~49_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[11]~11_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~45_sumout\,
	dataf => \ULA|ALT_INV_Add2~49_sumout\,
	combout => \ULA|saida[11]~24_combout\);

\ULA|saida[11]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~25_combout\ = ( \ULA|saida[11]~24_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[11]~11_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[11]~24_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & (\BANCO_REGISTRADORES|saidaB[11]~11_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[11]~11_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[11]~24_combout\,
	combout => \ULA|saida[11]~25_combout\);

\BANCO_REGISTRADORES|registrador~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~401_q\);

\BANCO_REGISTRADORES|registrador~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1222_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~305_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~337_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~369_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~401_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~337_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	combout => \BANCO_REGISTRADORES|registrador~1222_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1218_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1218_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~53_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1218_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\) ) + ( \ULA|Add2~50\ ))
-- \ULA|Add2~54\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1218_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\) ) + ( \ULA|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	cin => \ULA|Add2~50\,
	sumout => \ULA|Add2~53_sumout\,
	cout => \ULA|Add2~54\);

\ULA|saida[12]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~26_combout\ = ( \ULA|Add0~49_sumout\ & ( \ULA|Add2~53_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~49_sumout\ & ( \ULA|Add2~53_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~49_sumout\ & ( !\ULA|Add2~53_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~49_sumout\ & ( !\ULA|Add2~53_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[12]~12_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~49_sumout\,
	dataf => \ULA|ALT_INV_Add2~53_sumout\,
	combout => \ULA|saida[12]~26_combout\);

\ULA|saida[12]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~27_combout\ = ( \ULA|saida[12]~26_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[12]~12_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[12]~26_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & (\BANCO_REGISTRADORES|saidaB[12]~12_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[12]~12_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[12]~26_combout\,
	combout => \ULA|saida[12]~27_combout\);

\BANCO_REGISTRADORES|registrador~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~402_q\);

\BANCO_REGISTRADORES|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1218_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~306_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~338_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~370_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~402_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~338_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	combout => \BANCO_REGISTRADORES|registrador~1218_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1214_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1214_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1214_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~57_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1214_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\) ) + ( \ULA|Add2~54\ ))
-- \ULA|Add2~58\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1214_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\) ) + ( \ULA|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1214_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add2~54\,
	sumout => \ULA|Add2~57_sumout\,
	cout => \ULA|Add2~58\);

\ULA|saida[13]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~28_combout\ = ( \ULA|Add0~53_sumout\ & ( \ULA|Add2~57_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~53_sumout\ & ( \ULA|Add2~57_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~53_sumout\ & ( !\ULA|Add2~57_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~53_sumout\ & ( !\ULA|Add2~57_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[13]~13_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~53_sumout\,
	dataf => \ULA|ALT_INV_Add2~57_sumout\,
	combout => \ULA|saida[13]~28_combout\);

\ULA|saida[13]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~29_combout\ = ( \ULA|saida[13]~28_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[13]~13_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[13]~28_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & (\BANCO_REGISTRADORES|saidaB[13]~13_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[13]~13_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[13]~28_combout\,
	combout => \ULA|saida[13]~29_combout\);

\BANCO_REGISTRADORES|registrador~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~403_q\);

\BANCO_REGISTRADORES|registrador~1214\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1214_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~307_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~339_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~371_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~403_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~339_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	combout => \BANCO_REGISTRADORES|registrador~1214_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1210_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1210_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1210_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~61_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1210_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\) ) + ( \ULA|Add2~58\ ))
-- \ULA|Add2~62\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1210_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\) ) + ( \ULA|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1210_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add2~58\,
	sumout => \ULA|Add2~61_sumout\,
	cout => \ULA|Add2~62\);

\ULA|saida[14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~30_combout\ = ( \ULA|Add0~57_sumout\ & ( \ULA|Add2~61_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~57_sumout\ & ( \ULA|Add2~61_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~57_sumout\ & ( !\ULA|Add2~61_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~57_sumout\ & ( !\ULA|Add2~61_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~14_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~57_sumout\,
	dataf => \ULA|ALT_INV_Add2~61_sumout\,
	combout => \ULA|saida[14]~30_combout\);

\ULA|saida[14]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~31_combout\ = ( \ULA|saida[14]~30_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[14]~14_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[14]~30_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (\BANCO_REGISTRADORES|saidaB[14]~14_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~14_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[14]~30_combout\,
	combout => \ULA|saida[14]~31_combout\);

\BANCO_REGISTRADORES|registrador~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~404_q\);

\BANCO_REGISTRADORES|registrador~1210\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1210_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~308_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~340_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~372_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~404_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~340_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	combout => \BANCO_REGISTRADORES|registrador~1210_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1206_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1206_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1206_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~65_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1206_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\) ) + ( \ULA|Add2~62\ ))
-- \ULA|Add2~66\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1206_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\) ) + ( \ULA|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1206_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add2~62\,
	sumout => \ULA|Add2~65_sumout\,
	cout => \ULA|Add2~66\);

\ULA|saida[15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~32_combout\ = ( \ULA|Add0~61_sumout\ & ( \ULA|Add2~65_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~61_sumout\ & ( \ULA|Add2~65_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~61_sumout\ & ( !\ULA|Add2~65_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~61_sumout\ & ( !\ULA|Add2~65_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~15_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~61_sumout\,
	dataf => \ULA|ALT_INV_Add2~65_sumout\,
	combout => \ULA|saida[15]~32_combout\);

\ULA|saida[15]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~33_combout\ = ( \ULA|saida[15]~32_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[15]~15_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[15]~32_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & (\BANCO_REGISTRADORES|saidaB[15]~15_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~15_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[15]~32_combout\,
	combout => \ULA|saida[15]~33_combout\);

\BANCO_REGISTRADORES|registrador~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~33_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~405_q\);

\BANCO_REGISTRADORES|registrador~1206\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1206_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~309_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~341_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~373_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~405_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~341_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	combout => \BANCO_REGISTRADORES|registrador~1206_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1202_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1202_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~69_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1202_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\) ) + ( \ULA|Add2~66\ ))
-- \ULA|Add2~70\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1202_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\) ) + ( \ULA|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\,
	cin => \ULA|Add2~66\,
	sumout => \ULA|Add2~69_sumout\,
	cout => \ULA|Add2~70\);

\ULA|saida[16]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~34_combout\ = ( \ULA|Add0~65_sumout\ & ( \ULA|Add2~69_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~65_sumout\ & ( \ULA|Add2~69_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~65_sumout\ & ( !\ULA|Add2~69_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~65_sumout\ & ( !\ULA|Add2~69_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~16_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~65_sumout\,
	dataf => \ULA|ALT_INV_Add2~69_sumout\,
	combout => \ULA|saida[16]~34_combout\);

\ULA|saida[16]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~35_combout\ = ( \ULA|saida[16]~34_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & (!\ULA|saida[17]~3_combout\ & ((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[16]~16_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & (((!\ULA|saida[17]~1_combout\) # (!\ULA|saida[17]~3_combout\)))) ) ) # ( !\ULA|saida[16]~34_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & (\BANCO_REGISTRADORES|saidaB[16]~16_combout\ & 
-- (\ULA|saida[17]~1_combout\ & !\ULA|saida[17]~3_combout\))) # (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & ((!\ULA|saida[17]~1_combout\ $ (!\ULA|saida[17]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101010000111101110101000000000111010100001111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~16_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[16]~34_combout\,
	combout => \ULA|saida[16]~35_combout\);

\BANCO_REGISTRADORES|registrador~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~35_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~406_q\);

\BANCO_REGISTRADORES|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1202_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~310_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~342_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~374_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~406_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~342_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	combout => \BANCO_REGISTRADORES|registrador~1202_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1198_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1198_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~73_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1198_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\) ) + ( \ULA|Add2~70\ ))
-- \ULA|Add2~74\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1198_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\) ) + ( \ULA|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add2~70\,
	sumout => \ULA|Add2~73_sumout\,
	cout => \ULA|Add2~74\);

\ULA|saida[17]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~36_combout\ = ( \ULA|Add0~69_sumout\ & ( \ULA|Add2~73_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (!\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~69_sumout\ & ( \ULA|Add2~73_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (!\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~69_sumout\ & ( !\ULA|Add2~73_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (!\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~69_sumout\ & ( !\ULA|Add2~73_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & (!\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[17]~17_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~17_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~69_sumout\,
	dataf => \ULA|ALT_INV_Add2~73_sumout\,
	combout => \ULA|saida[17]~36_combout\);

\ULA|saida[17]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~37_combout\ = ( \ULA|saida[17]~36_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[17]~17_combout\)) # (\BANCO_REGISTRADORES|saidaA[17]~17_combout\))) ) ) # ( 
-- !\ULA|saida[17]~36_combout\ & ( (\ULA|saida[17]~1_combout\ & (!\ULA|saida[17]~3_combout\ & ((\BANCO_REGISTRADORES|saidaB[17]~17_combout\) # (\BANCO_REGISTRADORES|saidaA[17]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000111101110000000000000111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~17_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[17]~36_combout\,
	combout => \ULA|saida[17]~37_combout\);

\BANCO_REGISTRADORES|registrador~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~37_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~407_q\);

\BANCO_REGISTRADORES|registrador~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1198_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~311_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~343_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~375_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~407_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~343_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	combout => \BANCO_REGISTRADORES|registrador~1198_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1194_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1100_combout\) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1194_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1100_combout\) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1194_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1100_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~77_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1194_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1100_combout\) ) + ( \ULA|Add2~74\ ))
-- \ULA|Add2~78\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1194_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1100_combout\) ) + ( \ULA|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1194_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1100_combout\,
	cin => \ULA|Add2~74\,
	sumout => \ULA|Add2~77_sumout\,
	cout => \ULA|Add2~78\);

\ULA|saida[18]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~38_combout\ = ( \ULA|Add0~73_sumout\ & ( \ULA|Add2~77_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (!\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~73_sumout\ & ( \ULA|Add2~77_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (!\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~73_sumout\ & ( !\ULA|Add2~77_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (!\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~73_sumout\ & ( !\ULA|Add2~77_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & (!\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[18]~18_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~18_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~73_sumout\,
	dataf => \ULA|ALT_INV_Add2~77_sumout\,
	combout => \ULA|saida[18]~38_combout\);

\ULA|saida[18]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~39_combout\ = ( \ULA|saida[18]~38_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[18]~18_combout\)) # (\BANCO_REGISTRADORES|saidaA[18]~18_combout\))) ) ) # ( 
-- !\ULA|saida[18]~38_combout\ & ( (\ULA|saida[17]~1_combout\ & (!\ULA|saida[17]~3_combout\ & ((\BANCO_REGISTRADORES|saidaB[18]~18_combout\) # (\BANCO_REGISTRADORES|saidaA[18]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000111101110000000000000111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~18_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[18]~38_combout\,
	combout => \ULA|saida[18]~39_combout\);

\BANCO_REGISTRADORES|registrador~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~39_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~408_q\);

\BANCO_REGISTRADORES|registrador~1194\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1194_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~312_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~344_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~376_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~408_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~344_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	combout => \BANCO_REGISTRADORES|registrador~1194_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~81_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1190_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\) ) + ( \ULA|Add2~78\ ))
-- \ULA|Add2~82\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1190_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\) ) + ( \ULA|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add2~78\,
	sumout => \ULA|Add2~81_sumout\,
	cout => \ULA|Add2~82\);

\ULA|saida[19]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~40_combout\ = ( \ULA|Add0~77_sumout\ & ( \ULA|Add2~81_sumout\ & ( (!\UNIDADE_CONTROLE|saida[1]~4_combout\) # ((!\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\))) ) ) ) # ( !\ULA|Add0~77_sumout\ & ( \ULA|Add2~81_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( \ULA|Add0~77_sumout\ & ( !\ULA|Add2~81_sumout\ & ( 
-- (!\UNIDADE_CONTROLE|saida[1]~4_combout\ & (((!\UNIDADE_CONTROLE|saida~5_combout\)))) # (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & 
-- \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) ) # ( !\ULA|Add0~77_sumout\ & ( !\ULA|Add2~81_sumout\ & ( 
-- (\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((!\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & \UNIDADE_CONTROLE|saida~5_combout\)) # (\BANCO_REGISTRADORES|saidaB[19]~19_combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & !\UNIDADE_CONTROLE|saida~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000111100010000100000000001111110001111000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~19_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datae => \ULA|ALT_INV_Add0~77_sumout\,
	dataf => \ULA|ALT_INV_Add2~81_sumout\,
	combout => \ULA|saida[19]~40_combout\);

\ULA|saida[19]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~41_combout\ = ( \ULA|saida[19]~40_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[19]~19_combout\)) # (\BANCO_REGISTRADORES|saidaA[19]~19_combout\))) ) ) # ( 
-- !\ULA|saida[19]~40_combout\ & ( (\ULA|saida[17]~1_combout\ & (!\ULA|saida[17]~3_combout\ & ((\BANCO_REGISTRADORES|saidaB[19]~19_combout\) # (\BANCO_REGISTRADORES|saidaA[19]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000111101110000000000000111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~19_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \ULA|ALT_INV_saida[19]~40_combout\,
	combout => \ULA|saida[19]~41_combout\);

\BANCO_REGISTRADORES|registrador~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~41_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~409_q\);

\BANCO_REGISTRADORES|registrador~1190\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1190_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~313_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~345_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~377_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~409_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~345_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	combout => \BANCO_REGISTRADORES|registrador~1190_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1104_combout\) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1104_combout\) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~85_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1186_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1104_combout\) ) + ( \ULA|Add2~82\ ))
-- \ULA|Add2~86\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1186_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1104_combout\) ) + ( \ULA|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\,
	cin => \ULA|Add2~82\,
	sumout => \ULA|Add2~85_sumout\,
	cout => \ULA|Add2~86\);

\BANCO_REGISTRADORES|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[20]~20_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1104_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[20]~20_combout\);

\BANCO_REGISTRADORES|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[20]~20_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[20]~20_combout\);

\ULA|saida[20]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~63_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[20]~20_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[20]~20_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[20]~20_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[20]~20_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[20]~20_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[20]~20_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[20]~20_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[20]~20_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[20]~20_combout\)) # (\BANCO_REGISTRADORES|saidaA[20]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~20_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[20]~63_combout\);

\ULA|saida[20]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~42_combout\ = ( \ULA|Add2~85_sumout\ & ( \ULA|saida[20]~63_combout\ & ( (((\ULA|Add0~81_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~85_sumout\ & ( \ULA|saida[20]~63_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~81_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~81_sumout\,
	datae => \ULA|ALT_INV_Add2~85_sumout\,
	dataf => \ULA|ALT_INV_saida[20]~63_combout\,
	combout => \ULA|saida[20]~42_combout\);

\BANCO_REGISTRADORES|registrador~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~42_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~410_q\);

\BANCO_REGISTRADORES|registrador~1186\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1186_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~314_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~346_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~378_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~410_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~346_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	combout => \BANCO_REGISTRADORES|registrador~1186_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~89_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1182_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\) ) + ( \ULA|Add2~86\ ))
-- \ULA|Add2~90\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1182_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\) ) + ( \ULA|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add2~86\,
	sumout => \ULA|Add2~89_sumout\,
	cout => \ULA|Add2~90\);

\BANCO_REGISTRADORES|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[21]~21_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[21]~21_combout\);

\BANCO_REGISTRADORES|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[21]~21_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[21]~21_combout\);

\ULA|saida[21]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~64_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[21]~21_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[21]~21_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[21]~21_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[21]~21_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[21]~21_combout\)) # (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~21_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[21]~64_combout\);

\ULA|saida[21]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~43_combout\ = ( \ULA|Add2~89_sumout\ & ( \ULA|saida[21]~64_combout\ & ( (((\ULA|Add0~85_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~89_sumout\ & ( \ULA|saida[21]~64_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~85_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~85_sumout\,
	datae => \ULA|ALT_INV_Add2~89_sumout\,
	dataf => \ULA|ALT_INV_saida[21]~64_combout\,
	combout => \ULA|saida[21]~43_combout\);

\BANCO_REGISTRADORES|registrador~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~43_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~411_q\);

\BANCO_REGISTRADORES|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1182_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~315_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~347_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~379_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~411_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~347_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	combout => \BANCO_REGISTRADORES|registrador~1182_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~93_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1178_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\) ) + ( \ULA|Add2~90\ ))
-- \ULA|Add2~94\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1178_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\) ) + ( \ULA|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add2~90\,
	sumout => \ULA|Add2~93_sumout\,
	cout => \ULA|Add2~94\);

\BANCO_REGISTRADORES|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[22]~22_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[22]~22_combout\);

\BANCO_REGISTRADORES|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[22]~22_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[22]~22_combout\);

\ULA|saida[22]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~65_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[22]~22_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[22]~22_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[22]~22_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[22]~22_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[22]~22_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[22]~22_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[22]~22_combout\)) # (\BANCO_REGISTRADORES|saidaA[22]~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~22_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[22]~65_combout\);

\ULA|saida[22]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~44_combout\ = ( \ULA|Add2~93_sumout\ & ( \ULA|saida[22]~65_combout\ & ( (((\ULA|Add0~89_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~93_sumout\ & ( \ULA|saida[22]~65_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~89_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~89_sumout\,
	datae => \ULA|ALT_INV_Add2~93_sumout\,
	dataf => \ULA|ALT_INV_saida[22]~65_combout\,
	combout => \ULA|saida[22]~44_combout\);

\BANCO_REGISTRADORES|registrador~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~44_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~412_q\);

\BANCO_REGISTRADORES|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1178_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~316_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~348_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~380_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~412_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~348_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	combout => \BANCO_REGISTRADORES|registrador~1178_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~97_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1174_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\) ) + ( \ULA|Add2~94\ ))
-- \ULA|Add2~98\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1174_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\) ) + ( \ULA|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\,
	cin => \ULA|Add2~94\,
	sumout => \ULA|Add2~97_sumout\,
	cout => \ULA|Add2~98\);

\BANCO_REGISTRADORES|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[23]~23_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[23]~23_combout\);

\BANCO_REGISTRADORES|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[23]~23_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[23]~23_combout\);

\ULA|saida[23]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~59_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[23]~23_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[23]~23_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[23]~23_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[23]~23_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[23]~23_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[23]~23_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[23]~23_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[23]~23_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[23]~23_combout\)) # (\BANCO_REGISTRADORES|saidaA[23]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~23_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[23]~59_combout\);

\ULA|saida[23]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~45_combout\ = ( \ULA|Add2~97_sumout\ & ( \ULA|saida[23]~59_combout\ & ( (((\ULA|Add0~93_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~97_sumout\ & ( \ULA|saida[23]~59_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~93_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~93_sumout\,
	datae => \ULA|ALT_INV_Add2~97_sumout\,
	dataf => \ULA|ALT_INV_saida[23]~59_combout\,
	combout => \ULA|saida[23]~45_combout\);

\BANCO_REGISTRADORES|registrador~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~45_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~413_q\);

\BANCO_REGISTRADORES|registrador~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1174_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~317_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~349_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~381_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~413_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~349_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	combout => \BANCO_REGISTRADORES|registrador~1174_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1112_combout\) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1112_combout\) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~101_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1170_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1112_combout\) ) + ( \ULA|Add2~98\ ))
-- \ULA|Add2~102\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1170_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1112_combout\) ) + ( \ULA|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add2~98\,
	sumout => \ULA|Add2~101_sumout\,
	cout => \ULA|Add2~102\);

\BANCO_REGISTRADORES|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[24]~24_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1112_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[24]~24_combout\);

\BANCO_REGISTRADORES|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[24]~24_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[24]~24_combout\);

\ULA|saida[24]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~60_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[24]~24_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[24]~24_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[24]~24_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[24]~24_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[24]~24_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[24]~24_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[24]~24_combout\)) # (\BANCO_REGISTRADORES|saidaA[24]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~24_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[24]~60_combout\);

\ULA|saida[24]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~46_combout\ = ( \ULA|Add2~101_sumout\ & ( \ULA|saida[24]~60_combout\ & ( (((\ULA|Add0~97_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~101_sumout\ & ( \ULA|saida[24]~60_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~97_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~97_sumout\,
	datae => \ULA|ALT_INV_Add2~101_sumout\,
	dataf => \ULA|ALT_INV_saida[24]~60_combout\,
	combout => \ULA|saida[24]~46_combout\);

\BANCO_REGISTRADORES|registrador~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~46_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~414_q\);

\BANCO_REGISTRADORES|registrador~1170\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1170_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~318_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~350_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~382_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~414_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~350_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	combout => \BANCO_REGISTRADORES|registrador~1170_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~105_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1166_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\) ) + ( \ULA|Add2~102\ ))
-- \ULA|Add2~106\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1166_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\) ) + ( \ULA|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\,
	cin => \ULA|Add2~102\,
	sumout => \ULA|Add2~105_sumout\,
	cout => \ULA|Add2~106\);

\BANCO_REGISTRADORES|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[25]~25_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[25]~25_combout\);

\BANCO_REGISTRADORES|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[25]~25_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[25]~25_combout\);

\ULA|saida[25]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~61_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[25]~25_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[25]~25_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[25]~25_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[25]~25_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[25]~25_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[25]~25_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[25]~25_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[25]~25_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[25]~25_combout\)) # (\BANCO_REGISTRADORES|saidaA[25]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~25_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[25]~61_combout\);

\ULA|saida[25]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~47_combout\ = ( \ULA|Add2~105_sumout\ & ( \ULA|saida[25]~61_combout\ & ( (((\ULA|Add0~101_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~105_sumout\ & ( \ULA|saida[25]~61_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~101_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~101_sumout\,
	datae => \ULA|ALT_INV_Add2~105_sumout\,
	dataf => \ULA|ALT_INV_saida[25]~61_combout\,
	combout => \ULA|saida[25]~47_combout\);

\BANCO_REGISTRADORES|registrador~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~47_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~415_q\);

\BANCO_REGISTRADORES|registrador~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1166_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~319_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~351_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~383_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~415_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~351_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	combout => \BANCO_REGISTRADORES|registrador~1166_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1116_combout\) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1116_combout\) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1116_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~109_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1162_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1116_combout\) ) + ( \ULA|Add2~106\ ))
-- \ULA|Add2~110\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1162_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1116_combout\) ) + ( \ULA|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1116_combout\,
	cin => \ULA|Add2~106\,
	sumout => \ULA|Add2~109_sumout\,
	cout => \ULA|Add2~110\);

\BANCO_REGISTRADORES|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[26]~26_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1116_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1116_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[26]~26_combout\);

\BANCO_REGISTRADORES|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[26]~26_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[26]~26_combout\);

\ULA|saida[26]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~62_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[26]~26_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[26]~26_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[26]~26_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[26]~26_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[26]~26_combout\)) # (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~26_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[26]~62_combout\);

\ULA|saida[26]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~48_combout\ = ( \ULA|Add2~109_sumout\ & ( \ULA|saida[26]~62_combout\ & ( (((\ULA|Add0~105_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~109_sumout\ & ( \ULA|saida[26]~62_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~105_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~105_sumout\,
	datae => \ULA|ALT_INV_Add2~109_sumout\,
	dataf => \ULA|ALT_INV_saida[26]~62_combout\,
	combout => \ULA|saida[26]~48_combout\);

\BANCO_REGISTRADORES|registrador~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~48_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~416_q\);

\BANCO_REGISTRADORES|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1162_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~320_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~352_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~384_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~416_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~352_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	combout => \BANCO_REGISTRADORES|registrador~1162_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~113_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1158_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\) ) + ( \ULA|Add2~110\ ))
-- \ULA|Add2~114\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1158_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\) ) + ( \ULA|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add2~110\,
	sumout => \ULA|Add2~113_sumout\,
	cout => \ULA|Add2~114\);

\BANCO_REGISTRADORES|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[27]~27_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[27]~27_combout\);

\BANCO_REGISTRADORES|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[27]~27_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[27]~27_combout\);

\ULA|saida[27]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~54_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[27]~27_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[27]~27_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[27]~27_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[27]~27_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[27]~27_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[27]~27_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[27]~27_combout\)) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~27_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[27]~54_combout\);

\ULA|saida[27]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~49_combout\ = ( \ULA|Add2~113_sumout\ & ( \ULA|saida[27]~54_combout\ & ( (((\ULA|Add0~109_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~113_sumout\ & ( \ULA|saida[27]~54_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~109_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~109_sumout\,
	datae => \ULA|ALT_INV_Add2~113_sumout\,
	dataf => \ULA|ALT_INV_saida[27]~54_combout\,
	combout => \ULA|saida[27]~49_combout\);

\BANCO_REGISTRADORES|registrador~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~49_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~417_q\);

\BANCO_REGISTRADORES|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1158_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~321_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~353_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~385_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~417_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~353_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	combout => \BANCO_REGISTRADORES|registrador~1158_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1120_combout\) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1120_combout\) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1120_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~117_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1154_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1120_combout\) ) + ( \ULA|Add2~114\ ))
-- \ULA|Add2~118\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1154_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1120_combout\) ) + ( \ULA|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1120_combout\,
	cin => \ULA|Add2~114\,
	sumout => \ULA|Add2~117_sumout\,
	cout => \ULA|Add2~118\);

\BANCO_REGISTRADORES|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[28]~28_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1120_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1120_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[28]~28_combout\);

\BANCO_REGISTRADORES|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[28]~28_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[28]~28_combout\);

\ULA|saida[28]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~55_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[28]~28_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[28]~28_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[28]~28_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[28]~28_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[28]~28_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[28]~28_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[28]~28_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[28]~28_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[28]~28_combout\)) # (\BANCO_REGISTRADORES|saidaA[28]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~28_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[28]~55_combout\);

\ULA|saida[28]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~50_combout\ = ( \ULA|Add2~117_sumout\ & ( \ULA|saida[28]~55_combout\ & ( (((\ULA|Add0~113_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~117_sumout\ & ( \ULA|saida[28]~55_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~113_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~113_sumout\,
	datae => \ULA|ALT_INV_Add2~117_sumout\,
	dataf => \ULA|ALT_INV_saida[28]~55_combout\,
	combout => \ULA|saida[28]~50_combout\);

\BANCO_REGISTRADORES|registrador~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~50_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~418_q\);

\BANCO_REGISTRADORES|registrador~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1154_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~322_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~354_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~386_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~418_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~354_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	combout => \BANCO_REGISTRADORES|registrador~1154_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~121_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1150_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\) ) + ( \ULA|Add2~118\ ))
-- \ULA|Add2~122\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1150_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\) ) + ( \ULA|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	cin => \ULA|Add2~118\,
	sumout => \ULA|Add2~121_sumout\,
	cout => \ULA|Add2~122\);

\BANCO_REGISTRADORES|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[29]~29_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[29]~29_combout\);

\BANCO_REGISTRADORES|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[29]~29_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[29]~29_combout\);

\ULA|saida[29]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~56_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[29]~29_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[29]~29_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[29]~29_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[29]~29_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[29]~29_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[29]~29_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[29]~29_combout\)) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~29_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[29]~56_combout\);

\ULA|saida[29]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~51_combout\ = ( \ULA|Add2~121_sumout\ & ( \ULA|saida[29]~56_combout\ & ( (((\ULA|Add0~117_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~121_sumout\ & ( \ULA|saida[29]~56_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~117_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~117_sumout\,
	datae => \ULA|ALT_INV_Add2~121_sumout\,
	dataf => \ULA|ALT_INV_saida[29]~56_combout\,
	combout => \ULA|saida[29]~51_combout\);

\BANCO_REGISTRADORES|registrador~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~51_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~419_q\);

\BANCO_REGISTRADORES|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1150_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~323_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~355_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~387_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~419_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~355_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	combout => \BANCO_REGISTRADORES|registrador~1150_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1124_combout\) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1124_combout\) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1124_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~125_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1146_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1124_combout\) ) + ( \ULA|Add2~122\ ))
-- \ULA|Add2~126\ = CARRY(( (!\BANCO_REGISTRADORES|registrador~1146_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1124_combout\) ) + ( \ULA|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1124_combout\,
	cin => \ULA|Add2~122\,
	sumout => \ULA|Add2~125_sumout\,
	cout => \ULA|Add2~126\);

\BANCO_REGISTRADORES|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[30]~30_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1124_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1124_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[30]~30_combout\);

\BANCO_REGISTRADORES|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[30]~30_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[30]~30_combout\);

\ULA|saida[30]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~57_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[30]~30_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[30]~30_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[30]~30_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[30]~30_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[30]~30_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[30]~30_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[30]~30_combout\)) # (\BANCO_REGISTRADORES|saidaA[30]~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~30_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[30]~57_combout\);

\ULA|saida[30]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~52_combout\ = ( \ULA|Add2~125_sumout\ & ( \ULA|saida[30]~57_combout\ & ( (((\ULA|Add0~121_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( 
-- !\ULA|Add2~125_sumout\ & ( \ULA|saida[30]~57_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~121_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~121_sumout\,
	datae => \ULA|ALT_INV_Add2~125_sumout\,
	dataf => \ULA|ALT_INV_saida[30]~57_combout\,
	combout => \ULA|saida[30]~52_combout\);

\BANCO_REGISTRADORES|registrador~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~52_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~420_q\);

\BANCO_REGISTRADORES|registrador~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1146_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~324_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~356_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~388_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~420_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~356_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	combout => \BANCO_REGISTRADORES|registrador~1146_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1142_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\BANCO_REGISTRADORES|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[31]~31_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[31]~31_combout\);

\BANCO_REGISTRADORES|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[31]~31_combout\ = (!\BANCO_REGISTRADORES|registrador~1250_combout\ & \BANCO_REGISTRADORES|registrador~1142_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[31]~31_combout\);

\ULA|saida[31]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~58_combout\ = ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (!\ULA|saida[17]~1_combout\ $ (((\BANCO_REGISTRADORES|saidaB[31]~31_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[31]~31_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & ( \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[31]~31_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[31]~31_combout\))) ) ) ) # ( \UNIDADE_CONTROLE|saida[1]~4_combout\ & ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & ((!\BANCO_REGISTRADORES|saidaA[31]~31_combout\ & 
-- (\BANCO_REGISTRADORES|saidaB[31]~31_combout\ & \ULA|saida[17]~1_combout\)) # (\BANCO_REGISTRADORES|saidaA[31]~31_combout\ & ((\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[31]~31_combout\))))) ) ) ) # ( !\UNIDADE_CONTROLE|saida[1]~4_combout\ & 
-- ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~3_combout\ & (((!\ULA|saida[17]~1_combout\) # (\BANCO_REGISTRADORES|saidaB[31]~31_combout\)) # (\BANCO_REGISTRADORES|saidaA[31]~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000000101110000000011110111000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~31_combout\,
	datac => \ULA|ALT_INV_saida[17]~1_combout\,
	datad => \ULA|ALT_INV_saida[17]~3_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	combout => \ULA|saida[31]~58_combout\);

\ULA|saida[31]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~53_combout\ = ( \ULA|Add2~5_sumout\ & ( \ULA|saida[31]~58_combout\ & ( (((\ULA|Add0~125_sumout\) # (\UNIDADE_CONTROLE|saida~5_combout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) ) # ( !\ULA|Add2~5_sumout\ 
-- & ( \ULA|saida[31]~58_combout\ & ( (((!\UNIDADE_CONTROLE|saida~5_combout\ & \ULA|Add0~125_sumout\)) # (\UNIDADE_CONTROLE|saida[1]~4_combout\)) # (\ULA|saida[17]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~1_combout\,
	datab => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datac => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	datad => \ULA|ALT_INV_Add0~125_sumout\,
	datae => \ULA|ALT_INV_Add2~5_sumout\,
	dataf => \ULA|ALT_INV_saida[31]~58_combout\,
	combout => \ULA|saida[31]~53_combout\);

\BANCO_REGISTRADORES|registrador~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~53_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~421_q\);

\BANCO_REGISTRADORES|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1142_combout\ = ( !\ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO_REGISTRADORES|registrador~325_q\)) # (\ROM|memROM~7_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~357_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( ((\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO_REGISTRADORES|registrador~389_q\))) # (\ROM|memROM~7_combout\ & 
-- (\BANCO_REGISTRADORES|registrador~421_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~357_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	combout => \BANCO_REGISTRADORES|registrador~1142_combout\);

\ULA|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add2~5_sumout\ = SUM(( (!\BANCO_REGISTRADORES|registrador~1142_combout\) # (\BANCO_REGISTRADORES|registrador~1250_combout\) ) + ( (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\) ) + ( \ULA|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1250_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\,
	cin => \ULA|Add2~126\,
	sumout => \ULA|Add2~5_sumout\);

\ULA|saida[0]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~66_combout\ = ( !\UNIDADE_CONTROLE|saida~5_combout\ & ( ((!\ULA|saida[17]~1_combout\ & (\ULA|saida[0]~2_combout\)) # (\ULA|saida[17]~1_combout\ & (((\ULA|Add2~5_sumout\ & !\UNIDADE_CONTROLE|saida[1]~4_combout\))))) ) ) # ( 
-- \UNIDADE_CONTROLE|saida~5_combout\ & ( (!\ULA|saida[17]~1_combout\ & (((\ULA|saida[0]~2_combout\)))) # (\ULA|saida[17]~1_combout\ & (((!\UNIDADE_CONTROLE|saida[1]~4_combout\ & ((\BANCO_REGISTRADORES|saidaB[0]~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[0]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\,
	datab => \ULA|ALT_INV_saida[0]~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida[1]~4_combout\,
	datae => \UNIDADE_CONTROLE|ALT_INV_saida~5_combout\,
	dataf => \ULA|ALT_INV_saida[17]~1_combout\,
	datag => \ULA|ALT_INV_Add2~5_sumout\,
	combout => \ULA|saida[0]~66_combout\);

\BANCO_REGISTRADORES|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~66_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~294_q\);

\BANCO_REGISTRADORES|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1062_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~390_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( !\BANCO_REGISTRADORES|registrador~358_q\ ) ) 
-- ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~326_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( \BANCO_REGISTRADORES|registrador~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~326_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1062_combout\);

\BANCO_REGISTRADORES|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1063_combout\ = ( \BANCO_REGISTRADORES|registrador~1062_combout\ & ( \ROM|memROM~3_combout\ ) ) # ( !\BANCO_REGISTRADORES|registrador~1062_combout\ & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (\ROM|memROM~3_combout\ & 
-- \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011110000111100000000000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1063_combout\);

\BANCO_REGISTRADORES|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[0]~0_combout\ = (!\BANCO_REGISTRADORES|Equal1~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[0]~0_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;

ww_EntradaA_ULA(0) <= \EntradaA_ULA[0]~output_o\;

ww_EntradaA_ULA(1) <= \EntradaA_ULA[1]~output_o\;

ww_EntradaA_ULA(2) <= \EntradaA_ULA[2]~output_o\;

ww_EntradaA_ULA(3) <= \EntradaA_ULA[3]~output_o\;

ww_EntradaA_ULA(4) <= \EntradaA_ULA[4]~output_o\;

ww_EntradaA_ULA(5) <= \EntradaA_ULA[5]~output_o\;

ww_EntradaA_ULA(6) <= \EntradaA_ULA[6]~output_o\;

ww_EntradaA_ULA(7) <= \EntradaA_ULA[7]~output_o\;

ww_EntradaA_ULA(8) <= \EntradaA_ULA[8]~output_o\;

ww_EntradaA_ULA(9) <= \EntradaA_ULA[9]~output_o\;

ww_EntradaA_ULA(10) <= \EntradaA_ULA[10]~output_o\;

ww_EntradaA_ULA(11) <= \EntradaA_ULA[11]~output_o\;

ww_EntradaA_ULA(12) <= \EntradaA_ULA[12]~output_o\;

ww_EntradaA_ULA(13) <= \EntradaA_ULA[13]~output_o\;

ww_EntradaA_ULA(14) <= \EntradaA_ULA[14]~output_o\;

ww_EntradaA_ULA(15) <= \EntradaA_ULA[15]~output_o\;

ww_EntradaA_ULA(16) <= \EntradaA_ULA[16]~output_o\;

ww_EntradaA_ULA(17) <= \EntradaA_ULA[17]~output_o\;

ww_EntradaA_ULA(18) <= \EntradaA_ULA[18]~output_o\;

ww_EntradaA_ULA(19) <= \EntradaA_ULA[19]~output_o\;

ww_EntradaA_ULA(20) <= \EntradaA_ULA[20]~output_o\;

ww_EntradaA_ULA(21) <= \EntradaA_ULA[21]~output_o\;

ww_EntradaA_ULA(22) <= \EntradaA_ULA[22]~output_o\;

ww_EntradaA_ULA(23) <= \EntradaA_ULA[23]~output_o\;

ww_EntradaA_ULA(24) <= \EntradaA_ULA[24]~output_o\;

ww_EntradaA_ULA(25) <= \EntradaA_ULA[25]~output_o\;

ww_EntradaA_ULA(26) <= \EntradaA_ULA[26]~output_o\;

ww_EntradaA_ULA(27) <= \EntradaA_ULA[27]~output_o\;

ww_EntradaA_ULA(28) <= \EntradaA_ULA[28]~output_o\;

ww_EntradaA_ULA(29) <= \EntradaA_ULA[29]~output_o\;

ww_EntradaA_ULA(30) <= \EntradaA_ULA[30]~output_o\;

ww_EntradaA_ULA(31) <= \EntradaA_ULA[31]~output_o\;

ww_EntradaB_ULA(0) <= \EntradaB_ULA[0]~output_o\;

ww_EntradaB_ULA(1) <= \EntradaB_ULA[1]~output_o\;

ww_EntradaB_ULA(2) <= \EntradaB_ULA[2]~output_o\;

ww_EntradaB_ULA(3) <= \EntradaB_ULA[3]~output_o\;

ww_EntradaB_ULA(4) <= \EntradaB_ULA[4]~output_o\;

ww_EntradaB_ULA(5) <= \EntradaB_ULA[5]~output_o\;

ww_EntradaB_ULA(6) <= \EntradaB_ULA[6]~output_o\;

ww_EntradaB_ULA(7) <= \EntradaB_ULA[7]~output_o\;

ww_EntradaB_ULA(8) <= \EntradaB_ULA[8]~output_o\;

ww_EntradaB_ULA(9) <= \EntradaB_ULA[9]~output_o\;

ww_EntradaB_ULA(10) <= \EntradaB_ULA[10]~output_o\;

ww_EntradaB_ULA(11) <= \EntradaB_ULA[11]~output_o\;

ww_EntradaB_ULA(12) <= \EntradaB_ULA[12]~output_o\;

ww_EntradaB_ULA(13) <= \EntradaB_ULA[13]~output_o\;

ww_EntradaB_ULA(14) <= \EntradaB_ULA[14]~output_o\;

ww_EntradaB_ULA(15) <= \EntradaB_ULA[15]~output_o\;

ww_EntradaB_ULA(16) <= \EntradaB_ULA[16]~output_o\;

ww_EntradaB_ULA(17) <= \EntradaB_ULA[17]~output_o\;

ww_EntradaB_ULA(18) <= \EntradaB_ULA[18]~output_o\;

ww_EntradaB_ULA(19) <= \EntradaB_ULA[19]~output_o\;

ww_EntradaB_ULA(20) <= \EntradaB_ULA[20]~output_o\;

ww_EntradaB_ULA(21) <= \EntradaB_ULA[21]~output_o\;

ww_EntradaB_ULA(22) <= \EntradaB_ULA[22]~output_o\;

ww_EntradaB_ULA(23) <= \EntradaB_ULA[23]~output_o\;

ww_EntradaB_ULA(24) <= \EntradaB_ULA[24]~output_o\;

ww_EntradaB_ULA(25) <= \EntradaB_ULA[25]~output_o\;

ww_EntradaB_ULA(26) <= \EntradaB_ULA[26]~output_o\;

ww_EntradaB_ULA(27) <= \EntradaB_ULA[27]~output_o\;

ww_EntradaB_ULA(28) <= \EntradaB_ULA[28]~output_o\;

ww_EntradaB_ULA(29) <= \EntradaB_ULA[29]~output_o\;

ww_EntradaB_ULA(30) <= \EntradaB_ULA[30]~output_o\;

ww_EntradaB_ULA(31) <= \EntradaB_ULA[31]~output_o\;

ww_Saida_ULA_leitura(0) <= \Saida_ULA_leitura[0]~output_o\;

ww_Saida_ULA_leitura(1) <= \Saida_ULA_leitura[1]~output_o\;

ww_Saida_ULA_leitura(2) <= \Saida_ULA_leitura[2]~output_o\;

ww_Saida_ULA_leitura(3) <= \Saida_ULA_leitura[3]~output_o\;

ww_Saida_ULA_leitura(4) <= \Saida_ULA_leitura[4]~output_o\;

ww_Saida_ULA_leitura(5) <= \Saida_ULA_leitura[5]~output_o\;

ww_Saida_ULA_leitura(6) <= \Saida_ULA_leitura[6]~output_o\;

ww_Saida_ULA_leitura(7) <= \Saida_ULA_leitura[7]~output_o\;

ww_Saida_ULA_leitura(8) <= \Saida_ULA_leitura[8]~output_o\;

ww_Saida_ULA_leitura(9) <= \Saida_ULA_leitura[9]~output_o\;

ww_Saida_ULA_leitura(10) <= \Saida_ULA_leitura[10]~output_o\;

ww_Saida_ULA_leitura(11) <= \Saida_ULA_leitura[11]~output_o\;

ww_Saida_ULA_leitura(12) <= \Saida_ULA_leitura[12]~output_o\;

ww_Saida_ULA_leitura(13) <= \Saida_ULA_leitura[13]~output_o\;

ww_Saida_ULA_leitura(14) <= \Saida_ULA_leitura[14]~output_o\;

ww_Saida_ULA_leitura(15) <= \Saida_ULA_leitura[15]~output_o\;

ww_Saida_ULA_leitura(16) <= \Saida_ULA_leitura[16]~output_o\;

ww_Saida_ULA_leitura(17) <= \Saida_ULA_leitura[17]~output_o\;

ww_Saida_ULA_leitura(18) <= \Saida_ULA_leitura[18]~output_o\;

ww_Saida_ULA_leitura(19) <= \Saida_ULA_leitura[19]~output_o\;

ww_Saida_ULA_leitura(20) <= \Saida_ULA_leitura[20]~output_o\;

ww_Saida_ULA_leitura(21) <= \Saida_ULA_leitura[21]~output_o\;

ww_Saida_ULA_leitura(22) <= \Saida_ULA_leitura[22]~output_o\;

ww_Saida_ULA_leitura(23) <= \Saida_ULA_leitura[23]~output_o\;

ww_Saida_ULA_leitura(24) <= \Saida_ULA_leitura[24]~output_o\;

ww_Saida_ULA_leitura(25) <= \Saida_ULA_leitura[25]~output_o\;

ww_Saida_ULA_leitura(26) <= \Saida_ULA_leitura[26]~output_o\;

ww_Saida_ULA_leitura(27) <= \Saida_ULA_leitura[27]~output_o\;

ww_Saida_ULA_leitura(28) <= \Saida_ULA_leitura[28]~output_o\;

ww_Saida_ULA_leitura(29) <= \Saida_ULA_leitura[29]~output_o\;

ww_Saida_ULA_leitura(30) <= \Saida_ULA_leitura[30]~output_o\;

ww_Saida_ULA_leitura(31) <= \Saida_ULA_leitura[31]~output_o\;
END structure;


