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

-- DATE "11/02/2022 22:42:42"

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
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~390_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1113_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1101_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~358_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~1_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|saida~0_combout\ : std_logic;
SIGNAL \ULA|Equal4~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~33_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1099_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~326_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1100_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[0]~91_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~391_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[1]~2_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1109_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~327_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[1]~87_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1110_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~392_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[2]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1103_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~328_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[2]~83_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1111_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~393_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1115_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[3]~4_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~329_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[3]~79_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[4]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1104_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~394_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~330_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[4]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~363_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[5]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~395_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~331_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[5]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[6]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1105_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~396_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~332_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1064_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[6]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~365_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[7]~8_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~397_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~333_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[7]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[8]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|saida[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~398_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~334_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[8]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~367_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[9]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~399_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~335_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[9]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[10]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1107_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|saida[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~400_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~336_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[10]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~369_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[11]~12_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|saida[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~401_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~337_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[11]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[12]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1108_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|saida[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~402_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~338_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[12]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~371_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[13]~14_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~403_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~339_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[13]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[14]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|saida[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~404_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~340_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[14]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~405_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~373_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[15]~16_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~341_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[15]~75_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~406_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[16]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|saida[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~342_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[16]~71_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~407_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~375_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[17]~18_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|saida[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~343_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[17]~67_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~408_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[18]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|saida[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~344_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[18]~63_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~409_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~377_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[19]~20_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|saida[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~345_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[19]~59_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~410_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[20]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|saida[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~346_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[20]~55_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~411_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~379_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[21]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|saida[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~347_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[21]~51_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~412_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[22]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|saida[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~348_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[22]~47_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~413_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~381_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[23]~24_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|saida[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~349_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[23]~43_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~414_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[24]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|saida[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~350_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[24]~39_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~415_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~383_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[25]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|saida[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~351_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[25]~35_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~416_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[26]~27_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|saida[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~352_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[26]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~417_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~385_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[27]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|saida[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~353_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~418_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[28]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|saida[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~354_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[28]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~419_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~387_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[29]~30_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|saida[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~355_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[29]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~420_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[30]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|saida[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~356_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[30]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~421_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~389_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[31]~32_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ULA|saida[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~357_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[31]~11_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~91_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~87_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~83_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~79_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~75_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~71_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~67_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~63_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~59_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~55_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~51_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~47_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~43_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~39_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~35_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~351_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~350_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~349_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~348_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~347_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~346_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~345_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~344_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~343_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~342_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~341_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~340_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~339_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~338_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~337_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~336_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~335_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~334_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~333_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~332_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~331_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~330_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~329_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~328_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~327_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~326_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~32_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[13]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[12]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[11]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[10]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[9]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[8]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[7]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[6]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[5]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[4]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[3]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[2]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~357_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~356_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~355_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~354_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~353_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~352_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;

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
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\BANCO_REGISTRADORES|ALT_INV_saidaA[0]~91_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[0]~91_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[1]~87_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[1]~87_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[2]~83_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[2]~83_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[3]~79_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[3]~79_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[15]~75_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[15]~75_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[16]~71_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[16]~71_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[17]~67_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[17]~67_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[18]~63_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[18]~63_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[19]~59_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[19]~59_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[20]~55_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[20]~55_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[21]~51_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[21]~51_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[22]~47_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[22]~47_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[23]~43_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[23]~43_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[24]~39_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[24]~39_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[25]~35_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[25]~35_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[26]~31_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[26]~31_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[27]~27_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[28]~23_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[28]~23_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[29]~19_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[29]~19_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[30]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[30]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[31]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[31]~11_combout\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~351_q\ <= NOT \BANCO_REGISTRADORES|registrador~351_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~415_q\ <= NOT \BANCO_REGISTRADORES|registrador~415_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ <= NOT \BANCO_REGISTRADORES|registrador~318_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~350_q\ <= NOT \BANCO_REGISTRADORES|registrador~350_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~414_q\ <= NOT \BANCO_REGISTRADORES|registrador~414_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ <= NOT \BANCO_REGISTRADORES|registrador~317_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~349_q\ <= NOT \BANCO_REGISTRADORES|registrador~349_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~413_q\ <= NOT \BANCO_REGISTRADORES|registrador~413_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ <= NOT \BANCO_REGISTRADORES|registrador~316_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~348_q\ <= NOT \BANCO_REGISTRADORES|registrador~348_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~412_q\ <= NOT \BANCO_REGISTRADORES|registrador~412_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ <= NOT \BANCO_REGISTRADORES|registrador~315_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~347_q\ <= NOT \BANCO_REGISTRADORES|registrador~347_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~411_q\ <= NOT \BANCO_REGISTRADORES|registrador~411_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ <= NOT \BANCO_REGISTRADORES|registrador~314_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~346_q\ <= NOT \BANCO_REGISTRADORES|registrador~346_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~410_q\ <= NOT \BANCO_REGISTRADORES|registrador~410_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ <= NOT \BANCO_REGISTRADORES|registrador~313_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~345_q\ <= NOT \BANCO_REGISTRADORES|registrador~345_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~409_q\ <= NOT \BANCO_REGISTRADORES|registrador~409_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ <= NOT \BANCO_REGISTRADORES|registrador~312_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~344_q\ <= NOT \BANCO_REGISTRADORES|registrador~344_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~408_q\ <= NOT \BANCO_REGISTRADORES|registrador~408_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ <= NOT \BANCO_REGISTRADORES|registrador~311_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~343_q\ <= NOT \BANCO_REGISTRADORES|registrador~343_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~407_q\ <= NOT \BANCO_REGISTRADORES|registrador~407_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ <= NOT \BANCO_REGISTRADORES|registrador~310_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~342_q\ <= NOT \BANCO_REGISTRADORES|registrador~342_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~406_q\ <= NOT \BANCO_REGISTRADORES|registrador~406_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ <= NOT \BANCO_REGISTRADORES|registrador~309_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~341_q\ <= NOT \BANCO_REGISTRADORES|registrador~341_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~405_q\ <= NOT \BANCO_REGISTRADORES|registrador~405_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[14]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[14]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1072_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ <= NOT \BANCO_REGISTRADORES|registrador~308_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~340_q\ <= NOT \BANCO_REGISTRADORES|registrador~340_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~404_q\ <= NOT \BANCO_REGISTRADORES|registrador~404_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[13]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[13]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1071_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ <= NOT \BANCO_REGISTRADORES|registrador~307_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~339_q\ <= NOT \BANCO_REGISTRADORES|registrador~339_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~403_q\ <= NOT \BANCO_REGISTRADORES|registrador~403_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[12]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[12]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1070_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ <= NOT \BANCO_REGISTRADORES|registrador~306_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~338_q\ <= NOT \BANCO_REGISTRADORES|registrador~338_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~402_q\ <= NOT \BANCO_REGISTRADORES|registrador~402_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[11]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[11]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1069_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ <= NOT \BANCO_REGISTRADORES|registrador~305_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~337_q\ <= NOT \BANCO_REGISTRADORES|registrador~337_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~401_q\ <= NOT \BANCO_REGISTRADORES|registrador~401_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[10]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[10]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1068_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ <= NOT \BANCO_REGISTRADORES|registrador~304_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~336_q\ <= NOT \BANCO_REGISTRADORES|registrador~336_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~400_q\ <= NOT \BANCO_REGISTRADORES|registrador~400_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[9]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[9]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1067_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ <= NOT \BANCO_REGISTRADORES|registrador~303_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~335_q\ <= NOT \BANCO_REGISTRADORES|registrador~335_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~399_q\ <= NOT \BANCO_REGISTRADORES|registrador~399_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[8]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[8]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1066_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ <= NOT \BANCO_REGISTRADORES|registrador~302_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~334_q\ <= NOT \BANCO_REGISTRADORES|registrador~334_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~398_q\ <= NOT \BANCO_REGISTRADORES|registrador~398_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[7]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[7]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1065_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ <= NOT \BANCO_REGISTRADORES|registrador~301_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~333_q\ <= NOT \BANCO_REGISTRADORES|registrador~333_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~397_q\ <= NOT \BANCO_REGISTRADORES|registrador~397_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[6]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[6]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1064_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ <= NOT \BANCO_REGISTRADORES|registrador~300_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~332_q\ <= NOT \BANCO_REGISTRADORES|registrador~332_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~396_q\ <= NOT \BANCO_REGISTRADORES|registrador~396_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[5]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[5]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1063_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ <= NOT \BANCO_REGISTRADORES|registrador~299_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~331_q\ <= NOT \BANCO_REGISTRADORES|registrador~331_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~395_q\ <= NOT \BANCO_REGISTRADORES|registrador~395_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[4]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[4]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1062_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ <= NOT \BANCO_REGISTRADORES|registrador~298_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~330_q\ <= NOT \BANCO_REGISTRADORES|registrador~330_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~394_q\ <= NOT \BANCO_REGISTRADORES|registrador~394_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ <= NOT \BANCO_REGISTRADORES|registrador~297_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~329_q\ <= NOT \BANCO_REGISTRADORES|registrador~329_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~393_q\ <= NOT \BANCO_REGISTRADORES|registrador~393_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ <= NOT \BANCO_REGISTRADORES|registrador~296_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~328_q\ <= NOT \BANCO_REGISTRADORES|registrador~328_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~392_q\ <= NOT \BANCO_REGISTRADORES|registrador~392_q\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ <= NOT \BANCO_REGISTRADORES|registrador~295_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~327_q\ <= NOT \BANCO_REGISTRADORES|registrador~327_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~391_q\ <= NOT \BANCO_REGISTRADORES|registrador~391_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ <= NOT \BANCO_REGISTRADORES|registrador~294_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~326_q\ <= NOT \BANCO_REGISTRADORES|registrador~326_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~390_q\ <= NOT \BANCO_REGISTRADORES|registrador~390_q\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[0]~0_combout\;
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
\ULA|ALT_INV_saida[3]~3_combout\ <= NOT \ULA|saida[3]~3_combout\;
\ULA|ALT_INV_saida[2]~2_combout\ <= NOT \ULA|saida[2]~2_combout\;
\ULA|ALT_INV_saida[1]~1_combout\ <= NOT \ULA|saida[1]~1_combout\;
\ULA|ALT_INV_saida[0]~0_combout\ <= NOT \ULA|saida[0]~0_combout\;
\UNIDADE_CONTROLE|ALT_INV_saida~0_combout\ <= NOT \UNIDADE_CONTROLE|saida~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[31]~32_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[31]~32_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1097_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ <= NOT \BANCO_REGISTRADORES|registrador~389_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[30]~31_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[30]~31_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1096_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ <= NOT \BANCO_REGISTRADORES|registrador~388_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[29]~30_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[29]~30_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1095_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ <= NOT \BANCO_REGISTRADORES|registrador~387_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[28]~29_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[28]~29_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1094_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ <= NOT \BANCO_REGISTRADORES|registrador~386_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[27]~28_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[27]~28_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1093_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ <= NOT \BANCO_REGISTRADORES|registrador~385_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[26]~27_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[26]~27_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1092_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ <= NOT \BANCO_REGISTRADORES|registrador~384_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[25]~26_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[25]~26_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1091_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ <= NOT \BANCO_REGISTRADORES|registrador~383_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[24]~25_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[24]~25_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1090_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ <= NOT \BANCO_REGISTRADORES|registrador~382_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[23]~24_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[23]~24_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1089_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ <= NOT \BANCO_REGISTRADORES|registrador~381_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[22]~23_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[22]~23_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1088_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ <= NOT \BANCO_REGISTRADORES|registrador~380_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[21]~22_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[21]~22_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1087_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ <= NOT \BANCO_REGISTRADORES|registrador~379_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[20]~21_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[20]~21_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1086_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ <= NOT \BANCO_REGISTRADORES|registrador~378_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[19]~20_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[19]~20_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1085_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ <= NOT \BANCO_REGISTRADORES|registrador~377_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[18]~19_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[18]~19_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1084_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ <= NOT \BANCO_REGISTRADORES|registrador~376_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[17]~18_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[17]~18_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1083_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ <= NOT \BANCO_REGISTRADORES|registrador~375_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[16]~17_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[16]~17_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1082_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ <= NOT \BANCO_REGISTRADORES|registrador~374_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[15]~16_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[15]~16_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1081_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ <= NOT \BANCO_REGISTRADORES|registrador~373_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[14]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[14]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1080_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ <= NOT \BANCO_REGISTRADORES|registrador~372_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[13]~14_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[13]~14_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1079_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ <= NOT \BANCO_REGISTRADORES|registrador~371_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[12]~13_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[12]~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ <= NOT \BANCO_REGISTRADORES|registrador~370_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[11]~12_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[11]~12_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1078_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ <= NOT \BANCO_REGISTRADORES|registrador~369_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[10]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[10]~11_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ <= NOT \BANCO_REGISTRADORES|registrador~368_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[9]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[9]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1077_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ <= NOT \BANCO_REGISTRADORES|registrador~367_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[8]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[8]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ <= NOT \BANCO_REGISTRADORES|registrador~366_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[7]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[7]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1076_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ <= NOT \BANCO_REGISTRADORES|registrador~365_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[6]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[6]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ <= NOT \BANCO_REGISTRADORES|registrador~364_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[5]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[5]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1075_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ <= NOT \BANCO_REGISTRADORES|registrador~363_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[4]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[4]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ <= NOT \BANCO_REGISTRADORES|registrador~362_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[3]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[3]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1074_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ <= NOT \BANCO_REGISTRADORES|registrador~361_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[2]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[2]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ <= NOT \BANCO_REGISTRADORES|registrador~360_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[1]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[1]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1073_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ <= NOT \BANCO_REGISTRADORES|registrador~359_q\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[0]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[0]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ <= NOT \BANCO_REGISTRADORES|registrador~358_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ <= NOT \BANCO_REGISTRADORES|registrador~325_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~357_q\ <= NOT \BANCO_REGISTRADORES|registrador~357_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~421_q\ <= NOT \BANCO_REGISTRADORES|registrador~421_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ <= NOT \BANCO_REGISTRADORES|registrador~324_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~356_q\ <= NOT \BANCO_REGISTRADORES|registrador~356_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~420_q\ <= NOT \BANCO_REGISTRADORES|registrador~420_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ <= NOT \BANCO_REGISTRADORES|registrador~323_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~355_q\ <= NOT \BANCO_REGISTRADORES|registrador~355_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~419_q\ <= NOT \BANCO_REGISTRADORES|registrador~419_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ <= NOT \BANCO_REGISTRADORES|registrador~322_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~354_q\ <= NOT \BANCO_REGISTRADORES|registrador~354_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~418_q\ <= NOT \BANCO_REGISTRADORES|registrador~418_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ <= NOT \BANCO_REGISTRADORES|registrador~321_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~353_q\ <= NOT \BANCO_REGISTRADORES|registrador~353_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~417_q\ <= NOT \BANCO_REGISTRADORES|registrador~417_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ <= NOT \BANCO_REGISTRADORES|registrador~320_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~352_q\ <= NOT \BANCO_REGISTRADORES|registrador~352_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~416_q\ <= NOT \BANCO_REGISTRADORES|registrador~416_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ <= NOT \BANCO_REGISTRADORES|registrador~319_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1108_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1107_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1106_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1105_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1104_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1103_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[0]~33_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1102_combout\;
\ULA|ALT_INV_Equal4~0_combout\ <= NOT \ULA|Equal4~0_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;

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
	i => \BANCO_REGISTRADORES|saidaA[0]~91_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[1]~87_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[2]~83_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[3]~79_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[4]~0_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[5]~1_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[6]~2_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[7]~3_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[8]~4_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[9]~5_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[10]~6_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[11]~7_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[12]~8_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[13]~9_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[14]~10_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[15]~75_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[16]~71_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[17]~67_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[18]~63_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[19]~59_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[20]~55_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[21]~51_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[22]~47_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[23]~43_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[24]~39_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[25]~35_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[26]~31_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[28]~23_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[29]~19_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[30]~15_combout\,
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
	i => \BANCO_REGISTRADORES|saidaA[31]~11_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[0]~1_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[1]~2_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[2]~3_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[3]~4_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[4]~5_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[5]~6_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[6]~7_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[7]~8_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[8]~9_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[9]~10_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[10]~11_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[11]~12_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[12]~13_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[13]~14_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[14]~15_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[15]~16_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[16]~17_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[17]~18_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[18]~19_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[19]~20_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[20]~21_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[21]~22_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[22]~23_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[23]~24_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[24]~25_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[25]~26_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[26]~27_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[27]~28_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[28]~29_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[29]~30_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[30]~31_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[31]~32_combout\,
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
	i => \ULA|saida[0]~0_combout\,
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
	i => \ULA|saida[1]~1_combout\,
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
	i => \ULA|saida[2]~2_combout\,
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
	i => \ULA|saida[3]~3_combout\,
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
	i => \ULA|saida[4]~4_combout\,
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
	i => \ULA|saida[5]~5_combout\,
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
	i => \ULA|saida[6]~6_combout\,
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
	i => \ULA|saida[7]~7_combout\,
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
	i => \ULA|saida[8]~8_combout\,
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
	i => \ULA|saida[9]~9_combout\,
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
	i => \ULA|saida[10]~10_combout\,
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
	i => \ULA|saida[11]~11_combout\,
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
	i => \ULA|saida[12]~12_combout\,
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
	i => \ULA|saida[13]~13_combout\,
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
	i => \ULA|saida[14]~14_combout\,
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
	i => \ULA|saida[15]~15_combout\,
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
	i => \ULA|saida[16]~16_combout\,
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
	i => \ULA|saida[17]~17_combout\,
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
	i => \ULA|saida[18]~18_combout\,
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
	i => \ULA|saida[19]~19_combout\,
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
	i => \ULA|saida[20]~20_combout\,
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
	i => \ULA|saida[21]~21_combout\,
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
	i => \ULA|saida[22]~22_combout\,
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
	i => \ULA|saida[23]~23_combout\,
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
	i => \ULA|saida[24]~24_combout\,
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
	i => \ULA|saida[25]~25_combout\,
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
	i => \ULA|saida[26]~26_combout\,
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
	i => \ULA|saida[27]~27_combout\,
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
	i => \ULA|saida[28]~28_combout\,
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
	i => \ULA|saida[29]~29_combout\,
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
	i => \ULA|saida[30]~30_combout\,
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
	i => \ULA|saida[31]~31_combout\,
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

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\BANCO_REGISTRADORES|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~0_combout\ = (((\PC|DOUT\(7)) # (\PC|DOUT\(6))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \BANCO_REGISTRADORES|saidaB[0]~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~2_combout\);

\BANCO_REGISTRADORES|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1098_combout\ = ( \ROM|memROM~2_combout\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\BANCO_REGISTRADORES|saidaB[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1098_combout\);

\BANCO_REGISTRADORES|registrador~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~390_q\);

\BANCO_REGISTRADORES|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1113_combout\ = !\ULA|saida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~0_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1113_combout\);

\BANCO_REGISTRADORES|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1101_combout\ = ( \ROM|memROM~2_combout\ & ( (\PC|DOUT\(2) & (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) # ( !\ROM|memROM~2_combout\ & ( (\PC|DOUT\(2) & 
-- !\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000101010000000001010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1101_combout\);

\BANCO_REGISTRADORES|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1113_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~358_q\);

\BANCO_REGISTRADORES|saidaB[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~1_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((!\BANCO_REGISTRADORES|registrador~358_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~390_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000100100011000000010010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\,
	combout => \BANCO_REGISTRADORES|saidaB[0]~1_combout\);

\UNIDADE_CONTROLE|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONTROLE|saida~0_combout\ = (!\PC|DOUT\(2) & (\PC|DOUT\(3) & !\BANCO_REGISTRADORES|saidaB[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	combout => \UNIDADE_CONTROLE|saida~0_combout\);

\ULA|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal4~0_combout\ = ( \PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( \PC|DOUT\(6) & ( !\PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (((\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ULA|Equal4~0_combout\);

\BANCO_REGISTRADORES|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1102_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((!\BANCO_REGISTRADORES|registrador~358_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~390_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000010100010100000001010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\,
	combout => \BANCO_REGISTRADORES|registrador~1102_combout\);

\BANCO_REGISTRADORES|saidaB[0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~33_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	combout => \BANCO_REGISTRADORES|saidaB[0]~33_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( \ULA|Equal4~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[0]~91_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|registrador~1102_combout\) # (!\BANCO_REGISTRADORES|saidaB[0]~33_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \BANCO_REGISTRADORES|saidaA[0]~91_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|registrador~1102_combout\) # (!\BANCO_REGISTRADORES|saidaB[0]~33_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~91_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = ( \ULA|Add0~1_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[0]~91_combout\ & \BANCO_REGISTRADORES|saidaB[0]~1_combout\)) ) ) # ( !\ULA|Add0~1_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\ & 
-- (((\ROM|memROM~1_combout\)))) # (\UNIDADE_CONTROLE|saida~0_combout\ & (\BANCO_REGISTRADORES|saidaA[0]~91_combout\ & ((\BANCO_REGISTRADORES|saidaB[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101111111110000010100110011000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~91_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~1_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~0_combout\);

\BANCO_REGISTRADORES|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1099_combout\ = ( \ROM|memROM~2_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\BANCO_REGISTRADORES|saidaB[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1099_combout\);

\BANCO_REGISTRADORES|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~326_q\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))) ) )

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
	combout => \ROM|memROM~0_combout\);

\BANCO_REGISTRADORES|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1100_combout\ = ( \ROM|memROM~2_combout\ & ( (!\PC|DOUT\(2) & (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((\PC|DOUT\(7)) # (\PC|DOUT\(6))))) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\PC|DOUT\(2) & 
-- !\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001010100000000010101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1100_combout\);

\BANCO_REGISTRADORES|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[0]~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~294_q\);

\BANCO_REGISTRADORES|saidaA[0]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[0]~91_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (((\PC|DOUT\(3) & \PC|DOUT\(2))) # (\BANCO_REGISTRADORES|registrador~294_q\)))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~326_q\)) # (\PC|DOUT\(2) & (((\PC|DOUT\(3)) # (\BANCO_REGISTRADORES|registrador~390_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~326_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~390_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	combout => \BANCO_REGISTRADORES|saidaA[0]~91_combout\);

\BANCO_REGISTRADORES|registrador~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[1]~1_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~391_q\);

\BANCO_REGISTRADORES|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1114_combout\ = !\ULA|saida[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~1_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1114_combout\);

\BANCO_REGISTRADORES|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1114_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~359_q\);

\BANCO_REGISTRADORES|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1073_combout\ = ((!\PC|DOUT\(3) & ((!\BANCO_REGISTRADORES|registrador~359_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~391_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100110111101111110011011110111111001101111011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\,
	combout => \BANCO_REGISTRADORES|registrador~1073_combout\);

\BANCO_REGISTRADORES|saidaB[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[1]~2_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[1]~2_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[1]~87_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1073_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BANCO_REGISTRADORES|saidaA[1]~87_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1073_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~87_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~1_combout\ = ( \ULA|Add0~5_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[1]~2_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[1]~2_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[1]~87_combout\)))) ) ) # ( !\ULA|Add0~5_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[1]~2_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[1]~87_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~87_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[1]~2_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~1_combout\);

\BANCO_REGISTRADORES|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[1]~1_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~295_q\);

\BANCO_REGISTRADORES|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1109_combout\ = !\ULA|saida[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~1_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1109_combout\);

\BANCO_REGISTRADORES|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1109_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~327_q\);

\BANCO_REGISTRADORES|saidaA[1]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[1]~87_combout\ = ( !\PC|DOUT\(2) & ( (!\ROM|memROM~1_combout\ & (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCO_REGISTRADORES|registrador~295_q\)) # (\ROM|memROM~0_combout\ & 
-- ((!\BANCO_REGISTRADORES|registrador~327_q\)))))) ) ) # ( \PC|DOUT\(2) & ( (!\ROM|memROM~1_combout\ & (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCO_REGISTRADORES|registrador~295_q\)) # (\ROM|memROM~0_combout\ & 
-- ((\BANCO_REGISTRADORES|registrador~391_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111010000000000010001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~391_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~327_q\,
	combout => \BANCO_REGISTRADORES|saidaA[1]~87_combout\);

\BANCO_REGISTRADORES|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1110_combout\ = !\ULA|saida[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[2]~2_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1110_combout\);

\BANCO_REGISTRADORES|registrador~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1110_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~392_q\);

\BANCO_REGISTRADORES|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~2_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~360_q\);

\BANCO_REGISTRADORES|saidaB[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[2]~3_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~360_q\))) # (\PC|DOUT\(3) & (!\BANCO_REGISTRADORES|registrador~392_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011001000010000001100100001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\,
	combout => \BANCO_REGISTRADORES|saidaB[2]~3_combout\);

\BANCO_REGISTRADORES|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1103_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~360_q\))) # (\PC|DOUT\(3) & (!\BANCO_REGISTRADORES|registrador~392_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\,
	combout => \BANCO_REGISTRADORES|registrador~1103_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[2]~83_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1103_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \BANCO_REGISTRADORES|saidaA[2]~83_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1103_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~83_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~2_combout\ = ( \ULA|Add0~9_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[2]~83_combout\ & \BANCO_REGISTRADORES|saidaB[2]~3_combout\)) ) ) # ( !\ULA|Add0~9_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\ & 
-- (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & (((\BANCO_REGISTRADORES|saidaA[2]~83_combout\ & \BANCO_REGISTRADORES|saidaB[2]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011111111110000001101010101000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~83_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[2]~3_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~2_combout\);

\BANCO_REGISTRADORES|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~2_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~328_q\);

\BANCO_REGISTRADORES|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[2]~2_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~296_q\);

\BANCO_REGISTRADORES|saidaA[2]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[2]~83_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (((\PC|DOUT\(3) & \PC|DOUT\(2))) # (\BANCO_REGISTRADORES|registrador~296_q\)))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~328_q\)) # (\PC|DOUT\(2) & (((!\BANCO_REGISTRADORES|registrador~392_q\) # (\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~328_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~392_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	combout => \BANCO_REGISTRADORES|saidaA[2]~83_combout\);

\BANCO_REGISTRADORES|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1111_combout\ = !\ULA|saida[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1111_combout\);

\BANCO_REGISTRADORES|registrador~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1111_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~393_q\);

\BANCO_REGISTRADORES|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1115_combout\ = !\ULA|saida[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1115_combout\);

\BANCO_REGISTRADORES|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1115_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~361_q\);

\BANCO_REGISTRADORES|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1074_combout\ = ((!\PC|DOUT\(3) & ((!\BANCO_REGISTRADORES|registrador~361_q\))) # (\PC|DOUT\(3) & (!\BANCO_REGISTRADORES|registrador~393_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101101110011111110110111001111111011011100111111101101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\,
	combout => \BANCO_REGISTRADORES|registrador~1074_combout\);

\BANCO_REGISTRADORES|saidaB[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[3]~4_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[3]~4_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[3]~79_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1074_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \BANCO_REGISTRADORES|saidaA[3]~79_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1074_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~79_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~3_combout\ = ( \ULA|Add0~13_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[3]~79_combout\ & \BANCO_REGISTRADORES|saidaB[3]~4_combout\)) ) ) # ( !\ULA|Add0~13_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\ 
-- & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & (((\BANCO_REGISTRADORES|saidaA[3]~79_combout\ & \BANCO_REGISTRADORES|saidaB[3]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011111111110000001101010101000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~79_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[3]~4_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~3_combout\);

\BANCO_REGISTRADORES|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1112_combout\ = !\ULA|saida[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[3]~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1112_combout\);

\BANCO_REGISTRADORES|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCO_REGISTRADORES|registrador~1112_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~329_q\);

\BANCO_REGISTRADORES|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[3]~3_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~297_q\);

\BANCO_REGISTRADORES|saidaA[3]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[3]~79_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (((\PC|DOUT\(3) & \PC|DOUT\(2))) # (\BANCO_REGISTRADORES|registrador~297_q\)))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (!\BANCO_REGISTRADORES|registrador~329_q\)) # (\PC|DOUT\(2) & (((!\BANCO_REGISTRADORES|registrador~393_q\) # (\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100100010001000100000001100110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~329_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~393_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	combout => \BANCO_REGISTRADORES|saidaA[3]~79_combout\);

\BANCO_REGISTRADORES|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~362_q\);

\BANCO_REGISTRADORES|saidaB[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[4]~5_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~362_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~394_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\,
	combout => \BANCO_REGISTRADORES|saidaB[4]~5_combout\);

\BANCO_REGISTRADORES|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1104_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~362_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~394_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\,
	combout => \BANCO_REGISTRADORES|registrador~1104_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[4]~0_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1104_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \BANCO_REGISTRADORES|saidaA[4]~0_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1104_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1104_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~4_combout\ = ( \ULA|Add0~17_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[4]~5_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[4]~5_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[4]~0_combout\)))) ) ) # ( !\ULA|Add0~17_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[4]~5_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[4]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[4]~5_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~4_combout\);

\BANCO_REGISTRADORES|registrador~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~394_q\);

\BANCO_REGISTRADORES|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~330_q\);

\BANCO_REGISTRADORES|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[4]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~298_q\);

\BANCO_REGISTRADORES|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1062_combout\ = ( \BANCO_REGISTRADORES|registrador~330_q\ & ( \BANCO_REGISTRADORES|registrador~298_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~394_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~330_q\ & ( \BANCO_REGISTRADORES|registrador~298_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~394_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~330_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~298_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~394_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~330_q\ & ( !\BANCO_REGISTRADORES|registrador~298_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~394_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~394_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~330_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	combout => \BANCO_REGISTRADORES|registrador~1062_combout\);

\BANCO_REGISTRADORES|saidaA[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[4]~0_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1062_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[4]~0_combout\);

\BANCO_REGISTRADORES|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~363_q\);

\BANCO_REGISTRADORES|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1075_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~363_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~395_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\,
	combout => \BANCO_REGISTRADORES|registrador~1075_combout\);

\BANCO_REGISTRADORES|saidaB[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[5]~6_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1075_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[5]~6_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[5]~1_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1075_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \BANCO_REGISTRADORES|saidaA[5]~1_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1075_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~1_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1075_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~5_combout\ = ( \ULA|Add0~21_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[5]~6_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[5]~6_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[5]~1_combout\)))) ) ) # ( !\ULA|Add0~21_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[5]~6_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[5]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[5]~6_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|saida[5]~5_combout\);

\BANCO_REGISTRADORES|registrador~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~395_q\);

\BANCO_REGISTRADORES|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~331_q\);

\BANCO_REGISTRADORES|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[5]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~299_q\);

\BANCO_REGISTRADORES|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1063_combout\ = ( \BANCO_REGISTRADORES|registrador~331_q\ & ( \BANCO_REGISTRADORES|registrador~299_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~395_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~331_q\ & ( \BANCO_REGISTRADORES|registrador~299_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~395_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~331_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~299_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~395_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~331_q\ & ( !\BANCO_REGISTRADORES|registrador~299_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~395_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~395_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~331_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	combout => \BANCO_REGISTRADORES|registrador~1063_combout\);

\BANCO_REGISTRADORES|saidaA[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[5]~1_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[5]~1_combout\);

\BANCO_REGISTRADORES|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~364_q\);

\BANCO_REGISTRADORES|saidaB[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[6]~7_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~364_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~396_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\,
	combout => \BANCO_REGISTRADORES|saidaB[6]~7_combout\);

\BANCO_REGISTRADORES|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1105_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~364_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~396_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\,
	combout => \BANCO_REGISTRADORES|registrador~1105_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[6]~2_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1105_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \BANCO_REGISTRADORES|saidaA[6]~2_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1105_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~2_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1105_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~6_combout\ = ( \ULA|Add0~25_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[6]~7_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[6]~7_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[6]~2_combout\)))) ) ) # ( !\ULA|Add0~25_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[6]~7_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[6]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[6]~7_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~6_combout\);

\BANCO_REGISTRADORES|registrador~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~396_q\);

\BANCO_REGISTRADORES|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~332_q\);

\BANCO_REGISTRADORES|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[6]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~300_q\);

\BANCO_REGISTRADORES|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1064_combout\ = ( \BANCO_REGISTRADORES|registrador~332_q\ & ( \BANCO_REGISTRADORES|registrador~300_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~396_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~332_q\ & ( \BANCO_REGISTRADORES|registrador~300_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~396_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~332_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~300_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~396_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~332_q\ & ( !\BANCO_REGISTRADORES|registrador~300_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~396_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~396_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~332_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	combout => \BANCO_REGISTRADORES|registrador~1064_combout\);

\BANCO_REGISTRADORES|saidaA[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[6]~2_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1064_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1064_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[6]~2_combout\);

\BANCO_REGISTRADORES|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~365_q\);

\BANCO_REGISTRADORES|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1076_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~365_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~397_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\,
	combout => \BANCO_REGISTRADORES|registrador~1076_combout\);

\BANCO_REGISTRADORES|saidaB[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[7]~8_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1076_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[7]~8_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[7]~3_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1076_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \BANCO_REGISTRADORES|saidaA[7]~3_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1076_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~7_combout\ = ( \ULA|Add0~29_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[7]~8_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[7]~8_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[7]~3_combout\)))) ) ) # ( !\ULA|Add0~29_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[7]~8_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[7]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~3_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[7]~8_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~7_combout\);

\BANCO_REGISTRADORES|registrador~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~397_q\);

\BANCO_REGISTRADORES|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~333_q\);

\BANCO_REGISTRADORES|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[7]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~301_q\);

\BANCO_REGISTRADORES|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1065_combout\ = ( \BANCO_REGISTRADORES|registrador~333_q\ & ( \BANCO_REGISTRADORES|registrador~301_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~397_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~333_q\ & ( \BANCO_REGISTRADORES|registrador~301_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~397_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~333_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~301_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~397_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~333_q\ & ( !\BANCO_REGISTRADORES|registrador~301_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~397_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~397_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~333_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	combout => \BANCO_REGISTRADORES|registrador~1065_combout\);

\BANCO_REGISTRADORES|saidaA[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[7]~3_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1065_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1065_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[7]~3_combout\);

\BANCO_REGISTRADORES|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~366_q\);

\BANCO_REGISTRADORES|saidaB[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[8]~9_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~366_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~398_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\,
	combout => \BANCO_REGISTRADORES|saidaB[8]~9_combout\);

\BANCO_REGISTRADORES|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1106_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~366_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~398_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\,
	combout => \BANCO_REGISTRADORES|registrador~1106_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[8]~4_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1106_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \BANCO_REGISTRADORES|saidaA[8]~4_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1106_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|saida[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~8_combout\ = ( \ULA|Add0~33_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[8]~9_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[8]~9_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) 
-- # (\BANCO_REGISTRADORES|saidaA[8]~4_combout\)))) ) ) # ( !\ULA|Add0~33_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[8]~9_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # (\UNIDADE_CONTROLE|saida~0_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaA[8]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~4_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[8]~9_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[8]~8_combout\);

\BANCO_REGISTRADORES|registrador~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~398_q\);

\BANCO_REGISTRADORES|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~334_q\);

\BANCO_REGISTRADORES|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[8]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~302_q\);

\BANCO_REGISTRADORES|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1066_combout\ = ( \BANCO_REGISTRADORES|registrador~334_q\ & ( \BANCO_REGISTRADORES|registrador~302_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~398_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~334_q\ & ( \BANCO_REGISTRADORES|registrador~302_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~398_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~334_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~302_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~398_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~334_q\ & ( !\BANCO_REGISTRADORES|registrador~302_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~398_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~398_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~334_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	combout => \BANCO_REGISTRADORES|registrador~1066_combout\);

\BANCO_REGISTRADORES|saidaA[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[8]~4_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[8]~4_combout\);

\BANCO_REGISTRADORES|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~367_q\);

\BANCO_REGISTRADORES|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1077_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~367_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~399_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\,
	combout => \BANCO_REGISTRADORES|registrador~1077_combout\);

\BANCO_REGISTRADORES|saidaB[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[9]~10_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1077_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[9]~10_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[9]~5_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1077_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \BANCO_REGISTRADORES|saidaA[9]~5_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1077_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~5_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|saida[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~9_combout\ = ( \ULA|Add0~37_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[9]~10_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[9]~10_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[9]~5_combout\)))) ) ) # ( !\ULA|Add0~37_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[9]~10_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[9]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~5_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[9]~10_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|saida[9]~9_combout\);

\BANCO_REGISTRADORES|registrador~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~399_q\);

\BANCO_REGISTRADORES|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~335_q\);

\BANCO_REGISTRADORES|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[9]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~303_q\);

\BANCO_REGISTRADORES|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1067_combout\ = ( \BANCO_REGISTRADORES|registrador~335_q\ & ( \BANCO_REGISTRADORES|registrador~303_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~399_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~335_q\ & ( \BANCO_REGISTRADORES|registrador~303_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~399_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~335_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~303_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~399_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~335_q\ & ( !\BANCO_REGISTRADORES|registrador~303_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~399_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~399_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~335_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	combout => \BANCO_REGISTRADORES|registrador~1067_combout\);

\BANCO_REGISTRADORES|saidaA[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[9]~5_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1067_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[9]~5_combout\);

\BANCO_REGISTRADORES|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~368_q\);

\BANCO_REGISTRADORES|saidaB[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[10]~11_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~368_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~400_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\,
	combout => \BANCO_REGISTRADORES|saidaB[10]~11_combout\);

\BANCO_REGISTRADORES|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1107_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~368_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~400_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\,
	combout => \BANCO_REGISTRADORES|registrador~1107_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[10]~6_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1107_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \BANCO_REGISTRADORES|saidaA[10]~6_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1107_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~6_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|saida[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~10_combout\ = ( \ULA|Add0~41_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[10]~11_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[10]~11_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[10]~6_combout\)))) ) ) # ( !\ULA|Add0~41_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[10]~11_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[10]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~6_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[10]~11_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[10]~10_combout\);

\BANCO_REGISTRADORES|registrador~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~400_q\);

\BANCO_REGISTRADORES|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~336_q\);

\BANCO_REGISTRADORES|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[10]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~304_q\);

\BANCO_REGISTRADORES|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1068_combout\ = ( \BANCO_REGISTRADORES|registrador~336_q\ & ( \BANCO_REGISTRADORES|registrador~304_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~400_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~336_q\ & ( \BANCO_REGISTRADORES|registrador~304_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~400_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~336_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~304_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~400_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~336_q\ & ( !\BANCO_REGISTRADORES|registrador~304_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~400_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~400_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~336_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	combout => \BANCO_REGISTRADORES|registrador~1068_combout\);

\BANCO_REGISTRADORES|saidaA[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[10]~6_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[10]~6_combout\);

\BANCO_REGISTRADORES|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~369_q\);

\BANCO_REGISTRADORES|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1078_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~369_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~401_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\,
	combout => \BANCO_REGISTRADORES|registrador~1078_combout\);

\BANCO_REGISTRADORES|saidaB[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[11]~12_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[11]~12_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[11]~7_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1078_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \BANCO_REGISTRADORES|saidaA[11]~7_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1078_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~7_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|saida[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~11_combout\ = ( \ULA|Add0~45_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[11]~12_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[11]~12_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[11]~7_combout\)))) ) ) # ( !\ULA|Add0~45_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[11]~12_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[11]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~7_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[11]~12_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|saida[11]~11_combout\);

\BANCO_REGISTRADORES|registrador~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~401_q\);

\BANCO_REGISTRADORES|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~337_q\);

\BANCO_REGISTRADORES|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[11]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~305_q\);

\BANCO_REGISTRADORES|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1069_combout\ = ( \BANCO_REGISTRADORES|registrador~337_q\ & ( \BANCO_REGISTRADORES|registrador~305_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~401_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~337_q\ & ( \BANCO_REGISTRADORES|registrador~305_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~401_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~337_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~305_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~401_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~337_q\ & ( !\BANCO_REGISTRADORES|registrador~305_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~401_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~401_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~337_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	combout => \BANCO_REGISTRADORES|registrador~1069_combout\);

\BANCO_REGISTRADORES|saidaA[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[11]~7_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1069_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1069_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[11]~7_combout\);

\BANCO_REGISTRADORES|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~370_q\);

\BANCO_REGISTRADORES|saidaB[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[12]~13_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~370_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~402_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\,
	combout => \BANCO_REGISTRADORES|saidaB[12]~13_combout\);

\BANCO_REGISTRADORES|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1108_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~370_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~402_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\,
	combout => \BANCO_REGISTRADORES|registrador~1108_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[12]~8_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1108_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \BANCO_REGISTRADORES|saidaA[12]~8_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1108_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~8_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|saida[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~12_combout\ = ( \ULA|Add0~49_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[12]~13_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[12]~13_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[12]~8_combout\)))) ) ) # ( !\ULA|Add0~49_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[12]~13_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[12]~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~8_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[12]~13_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|saida[12]~12_combout\);

\BANCO_REGISTRADORES|registrador~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~402_q\);

\BANCO_REGISTRADORES|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~338_q\);

\BANCO_REGISTRADORES|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[12]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~306_q\);

\BANCO_REGISTRADORES|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1070_combout\ = ( \BANCO_REGISTRADORES|registrador~338_q\ & ( \BANCO_REGISTRADORES|registrador~306_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~402_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~338_q\ & ( \BANCO_REGISTRADORES|registrador~306_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~402_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~338_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~306_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~402_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~338_q\ & ( !\BANCO_REGISTRADORES|registrador~306_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~402_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~402_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~338_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	combout => \BANCO_REGISTRADORES|registrador~1070_combout\);

\BANCO_REGISTRADORES|saidaA[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[12]~8_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[12]~8_combout\);

\BANCO_REGISTRADORES|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~371_q\);

\BANCO_REGISTRADORES|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1079_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~371_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~403_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\,
	combout => \BANCO_REGISTRADORES|registrador~1079_combout\);

\BANCO_REGISTRADORES|saidaB[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[13]~14_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[13]~14_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[13]~9_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1079_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \BANCO_REGISTRADORES|saidaA[13]~9_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1079_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~9_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1079_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|saida[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~13_combout\ = ( \ULA|Add0~53_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[13]~14_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[13]~14_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[13]~9_combout\)))) ) ) # ( !\ULA|Add0~53_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[13]~14_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[13]~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~9_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[13]~14_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|saida[13]~13_combout\);

\BANCO_REGISTRADORES|registrador~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~403_q\);

\BANCO_REGISTRADORES|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~339_q\);

\BANCO_REGISTRADORES|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[13]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~307_q\);

\BANCO_REGISTRADORES|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1071_combout\ = ( \BANCO_REGISTRADORES|registrador~339_q\ & ( \BANCO_REGISTRADORES|registrador~307_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~403_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~339_q\ & ( \BANCO_REGISTRADORES|registrador~307_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~403_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~339_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~307_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~403_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~339_q\ & ( !\BANCO_REGISTRADORES|registrador~307_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~403_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~403_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~339_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	combout => \BANCO_REGISTRADORES|registrador~1071_combout\);

\BANCO_REGISTRADORES|saidaA[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[13]~9_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1071_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1071_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[13]~9_combout\);

\BANCO_REGISTRADORES|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~372_q\);

\BANCO_REGISTRADORES|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~308_q\);

\BANCO_REGISTRADORES|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1080_combout\ = ( \BANCO_REGISTRADORES|registrador~308_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~372_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~404_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~308_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~372_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~404_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	combout => \BANCO_REGISTRADORES|registrador~1080_combout\);

\BANCO_REGISTRADORES|saidaB[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[14]~15_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1080_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1080_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[14]~15_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[14]~10_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[14]~15_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \BANCO_REGISTRADORES|saidaA[14]~10_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[14]~15_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~10_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~15_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|saida[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~14_combout\ = ( \ULA|Add0~57_sumout\ & ( (!\BANCO_REGISTRADORES|saidaB[14]~15_combout\ & (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\)))) # (\BANCO_REGISTRADORES|saidaB[14]~15_combout\ & 
-- (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaA[14]~10_combout\)))) ) ) # ( !\ULA|Add0~57_sumout\ & ( (\BANCO_REGISTRADORES|saidaB[14]~15_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\)) # 
-- (\UNIDADE_CONTROLE|saida~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[14]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000101000000111010111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~10_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~15_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \ULA|saida[14]~14_combout\);

\BANCO_REGISTRADORES|registrador~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~404_q\);

\BANCO_REGISTRADORES|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[14]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~340_q\);

\BANCO_REGISTRADORES|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1072_combout\ = ( \BANCO_REGISTRADORES|registrador~340_q\ & ( \BANCO_REGISTRADORES|registrador~308_q\ & ( (!\PC|DOUT\(2)) # ((!\ROM|memROM~0_combout\) # (\BANCO_REGISTRADORES|registrador~404_q\)) ) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~340_q\ & ( \BANCO_REGISTRADORES|registrador~308_q\ & ( (!\ROM|memROM~0_combout\) # ((\PC|DOUT\(2) & \BANCO_REGISTRADORES|registrador~404_q\)) ) ) ) # ( \BANCO_REGISTRADORES|registrador~340_q\ & ( 
-- !\BANCO_REGISTRADORES|registrador~308_q\ & ( (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (\BANCO_REGISTRADORES|registrador~404_q\))) ) ) ) # ( !\BANCO_REGISTRADORES|registrador~340_q\ & ( !\BANCO_REGISTRADORES|registrador~308_q\ & ( (\PC|DOUT\(2) & 
-- (\ROM|memROM~0_combout\ & \BANCO_REGISTRADORES|registrador~404_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~404_q\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~340_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	combout => \BANCO_REGISTRADORES|registrador~1072_combout\);

\BANCO_REGISTRADORES|saidaA[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[14]~10_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (!\ROM|memROM~1_combout\ & \BANCO_REGISTRADORES|registrador~1072_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[14]~10_combout\);

\BANCO_REGISTRADORES|registrador~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~405_q\);

\BANCO_REGISTRADORES|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~373_q\);

\BANCO_REGISTRADORES|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1081_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~373_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~405_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\,
	combout => \BANCO_REGISTRADORES|registrador~1081_combout\);

\BANCO_REGISTRADORES|saidaB[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[15]~16_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1081_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[15]~16_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[15]~75_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1081_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \BANCO_REGISTRADORES|saidaA[15]~75_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1081_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~75_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1081_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|saida[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~15_combout\ = ( \ULA|Add0~61_sumout\ & ( (!\BANCO_REGISTRADORES|saidaA[15]~75_combout\ & (!\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~1_combout\) # (\BANCO_REGISTRADORES|saidaB[15]~16_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[15]~75_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaB[15]~16_combout\)))) ) ) # ( !\ULA|Add0~61_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaB[15]~16_combout\) # (\BANCO_REGISTRADORES|saidaA[15]~75_combout\)))) # (\UNIDADE_CONTROLE|saida~0_combout\ & (((\BANCO_REGISTRADORES|saidaA[15]~75_combout\ & \BANCO_REGISTRADORES|saidaB[15]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000011101111110000001100010101000000111011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~75_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~16_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|saida[15]~15_combout\);

\BANCO_REGISTRADORES|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~341_q\);

\BANCO_REGISTRADORES|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[15]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~309_q\);

\BANCO_REGISTRADORES|saidaA[15]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[15]~75_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~309_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~341_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~405_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~341_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~405_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	combout => \BANCO_REGISTRADORES|saidaA[15]~75_combout\);

\BANCO_REGISTRADORES|registrador~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~406_q\);

\BANCO_REGISTRADORES|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~374_q\);

\BANCO_REGISTRADORES|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~310_q\);

\BANCO_REGISTRADORES|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1082_combout\ = ( \BANCO_REGISTRADORES|registrador~310_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~374_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~406_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~310_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~374_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~406_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	combout => \BANCO_REGISTRADORES|registrador~1082_combout\);

\BANCO_REGISTRADORES|saidaB[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[16]~17_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[16]~17_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[16]~71_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[16]~17_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \BANCO_REGISTRADORES|saidaA[16]~71_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[16]~17_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~71_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~17_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|saida[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~16_combout\ = ( \ULA|Add0~65_sumout\ & ( (!\BANCO_REGISTRADORES|saidaA[16]~71_combout\ & (!\UNIDADE_CONTROLE|saida~0_combout\ & ((!\ROM|memROM~1_combout\) # (\BANCO_REGISTRADORES|saidaB[16]~17_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[16]~71_combout\ & (((!\UNIDADE_CONTROLE|saida~0_combout\) # (\BANCO_REGISTRADORES|saidaB[16]~17_combout\)))) ) ) # ( !\ULA|Add0~65_sumout\ & ( (!\UNIDADE_CONTROLE|saida~0_combout\ & (\ROM|memROM~1_combout\ & 
-- ((\BANCO_REGISTRADORES|saidaB[16]~17_combout\) # (\BANCO_REGISTRADORES|saidaA[16]~71_combout\)))) # (\UNIDADE_CONTROLE|saida~0_combout\ & (((\BANCO_REGISTRADORES|saidaA[16]~71_combout\ & \BANCO_REGISTRADORES|saidaB[16]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000011101111110000001100010101000000111011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~71_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~17_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|saida[16]~16_combout\);

\BANCO_REGISTRADORES|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[16]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~342_q\);

\BANCO_REGISTRADORES|saidaA[16]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[16]~71_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~310_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~342_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~406_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~342_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~406_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	combout => \BANCO_REGISTRADORES|saidaA[16]~71_combout\);

\BANCO_REGISTRADORES|registrador~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~407_q\);

\BANCO_REGISTRADORES|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~375_q\);

\BANCO_REGISTRADORES|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1083_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~375_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~407_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\,
	combout => \BANCO_REGISTRADORES|registrador~1083_combout\);

\BANCO_REGISTRADORES|saidaB[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[17]~18_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[17]~18_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[17]~67_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1083_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \BANCO_REGISTRADORES|saidaA[17]~67_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1083_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~67_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|saida[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~17_combout\ = ( \ULA|Add0~69_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[17]~67_combout\ & \BANCO_REGISTRADORES|saidaB[17]~18_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[17]~18_combout\)) # (\BANCO_REGISTRADORES|saidaA[17]~67_combout\))) ) ) # ( !\ULA|Add0~69_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[17]~67_combout\ & (\BANCO_REGISTRADORES|saidaB[17]~18_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[17]~18_combout\)) # (\BANCO_REGISTRADORES|saidaA[17]~67_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~67_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~18_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|saida[17]~17_combout\);

\BANCO_REGISTRADORES|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~343_q\);

\BANCO_REGISTRADORES|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[17]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~311_q\);

\BANCO_REGISTRADORES|saidaA[17]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[17]~67_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~311_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~343_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~407_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~343_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~407_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	combout => \BANCO_REGISTRADORES|saidaA[17]~67_combout\);

\BANCO_REGISTRADORES|registrador~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~408_q\);

\BANCO_REGISTRADORES|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~376_q\);

\BANCO_REGISTRADORES|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~312_q\);

\BANCO_REGISTRADORES|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1084_combout\ = ( \BANCO_REGISTRADORES|registrador~312_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~376_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~408_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~312_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~376_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~408_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	combout => \BANCO_REGISTRADORES|registrador~1084_combout\);

\BANCO_REGISTRADORES|saidaB[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[18]~19_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1084_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1084_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[18]~19_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[18]~63_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[18]~19_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \BANCO_REGISTRADORES|saidaA[18]~63_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[18]~19_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~63_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~19_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|saida[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~18_combout\ = ( \ULA|Add0~73_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[18]~63_combout\ & \BANCO_REGISTRADORES|saidaB[18]~19_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[18]~19_combout\)) # (\BANCO_REGISTRADORES|saidaA[18]~63_combout\))) ) ) # ( !\ULA|Add0~73_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[18]~63_combout\ & (\BANCO_REGISTRADORES|saidaB[18]~19_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[18]~19_combout\)) # (\BANCO_REGISTRADORES|saidaA[18]~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~63_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~19_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \ULA|saida[18]~18_combout\);

\BANCO_REGISTRADORES|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[18]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~344_q\);

\BANCO_REGISTRADORES|saidaA[18]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[18]~63_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~312_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~344_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~408_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~344_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~408_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	combout => \BANCO_REGISTRADORES|saidaA[18]~63_combout\);

\BANCO_REGISTRADORES|registrador~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~409_q\);

\BANCO_REGISTRADORES|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~377_q\);

\BANCO_REGISTRADORES|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1085_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~377_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~409_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\,
	combout => \BANCO_REGISTRADORES|registrador~1085_combout\);

\BANCO_REGISTRADORES|saidaB[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[19]~20_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1085_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[19]~20_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[19]~59_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1085_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \BANCO_REGISTRADORES|saidaA[19]~59_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1085_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~59_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1085_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|saida[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~19_combout\ = ( \ULA|Add0~77_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[19]~59_combout\ & \BANCO_REGISTRADORES|saidaB[19]~20_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[19]~20_combout\)) # (\BANCO_REGISTRADORES|saidaA[19]~59_combout\))) ) ) # ( !\ULA|Add0~77_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[19]~59_combout\ & (\BANCO_REGISTRADORES|saidaB[19]~20_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[19]~20_combout\)) # (\BANCO_REGISTRADORES|saidaA[19]~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~59_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~20_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|saida[19]~19_combout\);

\BANCO_REGISTRADORES|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~345_q\);

\BANCO_REGISTRADORES|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[19]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~313_q\);

\BANCO_REGISTRADORES|saidaA[19]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[19]~59_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~313_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~345_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~409_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~345_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~409_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	combout => \BANCO_REGISTRADORES|saidaA[19]~59_combout\);

\BANCO_REGISTRADORES|registrador~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~410_q\);

\BANCO_REGISTRADORES|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~378_q\);

\BANCO_REGISTRADORES|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~314_q\);

\BANCO_REGISTRADORES|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1086_combout\ = ( \BANCO_REGISTRADORES|registrador~314_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~378_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~410_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~314_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~378_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~410_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	combout => \BANCO_REGISTRADORES|registrador~1086_combout\);

\BANCO_REGISTRADORES|saidaB[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[20]~21_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[20]~21_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[20]~55_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[20]~21_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \BANCO_REGISTRADORES|saidaA[20]~55_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[20]~21_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~55_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~21_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|saida[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~20_combout\ = ( \ULA|Add0~81_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[20]~55_combout\ & \BANCO_REGISTRADORES|saidaB[20]~21_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[20]~21_combout\)) # (\BANCO_REGISTRADORES|saidaA[20]~55_combout\))) ) ) # ( !\ULA|Add0~81_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[20]~55_combout\ & (\BANCO_REGISTRADORES|saidaB[20]~21_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[20]~21_combout\)) # (\BANCO_REGISTRADORES|saidaA[20]~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~55_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~21_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|saida[20]~20_combout\);

\BANCO_REGISTRADORES|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[20]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~346_q\);

\BANCO_REGISTRADORES|saidaA[20]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[20]~55_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~314_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~346_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~410_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~346_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~410_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	combout => \BANCO_REGISTRADORES|saidaA[20]~55_combout\);

\BANCO_REGISTRADORES|registrador~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~411_q\);

\BANCO_REGISTRADORES|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~379_q\);

\BANCO_REGISTRADORES|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1087_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~379_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~411_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\,
	combout => \BANCO_REGISTRADORES|registrador~1087_combout\);

\BANCO_REGISTRADORES|saidaB[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[21]~22_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[21]~22_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[21]~51_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1087_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \BANCO_REGISTRADORES|saidaA[21]~51_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1087_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~51_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|saida[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~21_combout\ = ( \ULA|Add0~85_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[21]~51_combout\ & \BANCO_REGISTRADORES|saidaB[21]~22_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[21]~22_combout\)) # (\BANCO_REGISTRADORES|saidaA[21]~51_combout\))) ) ) # ( !\ULA|Add0~85_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[21]~51_combout\ & (\BANCO_REGISTRADORES|saidaB[21]~22_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[21]~22_combout\)) # (\BANCO_REGISTRADORES|saidaA[21]~51_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~51_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~22_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|saida[21]~21_combout\);

\BANCO_REGISTRADORES|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~347_q\);

\BANCO_REGISTRADORES|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[21]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~315_q\);

\BANCO_REGISTRADORES|saidaA[21]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[21]~51_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~315_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~347_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~411_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~347_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~411_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	combout => \BANCO_REGISTRADORES|saidaA[21]~51_combout\);

\BANCO_REGISTRADORES|registrador~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~412_q\);

\BANCO_REGISTRADORES|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~380_q\);

\BANCO_REGISTRADORES|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~316_q\);

\BANCO_REGISTRADORES|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1088_combout\ = ( \BANCO_REGISTRADORES|registrador~316_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~380_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~412_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~316_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~380_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~412_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	combout => \BANCO_REGISTRADORES|registrador~1088_combout\);

\BANCO_REGISTRADORES|saidaB[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[22]~23_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[22]~23_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[22]~47_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[22]~23_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \BANCO_REGISTRADORES|saidaA[22]~47_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[22]~23_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~47_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~23_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|saida[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~22_combout\ = ( \ULA|Add0~89_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[22]~47_combout\ & \BANCO_REGISTRADORES|saidaB[22]~23_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[22]~23_combout\)) # (\BANCO_REGISTRADORES|saidaA[22]~47_combout\))) ) ) # ( !\ULA|Add0~89_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[22]~47_combout\ & (\BANCO_REGISTRADORES|saidaB[22]~23_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[22]~23_combout\)) # (\BANCO_REGISTRADORES|saidaA[22]~47_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~47_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~23_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~89_sumout\,
	combout => \ULA|saida[22]~22_combout\);

\BANCO_REGISTRADORES|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[22]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~348_q\);

\BANCO_REGISTRADORES|saidaA[22]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[22]~47_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~316_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~348_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~412_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~348_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~412_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	combout => \BANCO_REGISTRADORES|saidaA[22]~47_combout\);

\BANCO_REGISTRADORES|registrador~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~413_q\);

\BANCO_REGISTRADORES|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~381_q\);

\BANCO_REGISTRADORES|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1089_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~381_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~413_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\,
	combout => \BANCO_REGISTRADORES|registrador~1089_combout\);

\BANCO_REGISTRADORES|saidaB[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[23]~24_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1089_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[23]~24_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[23]~43_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1089_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \BANCO_REGISTRADORES|saidaA[23]~43_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1089_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~43_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1089_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|saida[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~23_combout\ = ( \ULA|Add0~93_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[23]~43_combout\ & \BANCO_REGISTRADORES|saidaB[23]~24_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[23]~24_combout\)) # (\BANCO_REGISTRADORES|saidaA[23]~43_combout\))) ) ) # ( !\ULA|Add0~93_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[23]~43_combout\ & (\BANCO_REGISTRADORES|saidaB[23]~24_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[23]~24_combout\)) # (\BANCO_REGISTRADORES|saidaA[23]~43_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~43_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~24_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|saida[23]~23_combout\);

\BANCO_REGISTRADORES|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~349_q\);

\BANCO_REGISTRADORES|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[23]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~317_q\);

\BANCO_REGISTRADORES|saidaA[23]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[23]~43_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~317_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~349_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~413_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~349_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~413_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	combout => \BANCO_REGISTRADORES|saidaA[23]~43_combout\);

\BANCO_REGISTRADORES|registrador~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~414_q\);

\BANCO_REGISTRADORES|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~382_q\);

\BANCO_REGISTRADORES|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~318_q\);

\BANCO_REGISTRADORES|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1090_combout\ = ( \BANCO_REGISTRADORES|registrador~318_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~382_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~414_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~318_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~382_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~414_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	combout => \BANCO_REGISTRADORES|registrador~1090_combout\);

\BANCO_REGISTRADORES|saidaB[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[24]~25_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[24]~25_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[24]~39_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[24]~25_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \BANCO_REGISTRADORES|saidaA[24]~39_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[24]~25_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~39_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~25_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|saida[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~24_combout\ = ( \ULA|Add0~97_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[24]~39_combout\ & \BANCO_REGISTRADORES|saidaB[24]~25_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[24]~25_combout\)) # (\BANCO_REGISTRADORES|saidaA[24]~39_combout\))) ) ) # ( !\ULA|Add0~97_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[24]~39_combout\ & (\BANCO_REGISTRADORES|saidaB[24]~25_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[24]~25_combout\)) # (\BANCO_REGISTRADORES|saidaA[24]~39_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~39_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~25_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \ULA|saida[24]~24_combout\);

\BANCO_REGISTRADORES|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~350_q\);

\BANCO_REGISTRADORES|saidaA[24]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[24]~39_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~318_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~350_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~414_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~350_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~414_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	combout => \BANCO_REGISTRADORES|saidaA[24]~39_combout\);

\BANCO_REGISTRADORES|registrador~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~415_q\);

\BANCO_REGISTRADORES|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~383_q\);

\BANCO_REGISTRADORES|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1091_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~383_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~415_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\,
	combout => \BANCO_REGISTRADORES|registrador~1091_combout\);

\BANCO_REGISTRADORES|saidaB[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[25]~26_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1091_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[25]~26_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[25]~35_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1091_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \BANCO_REGISTRADORES|saidaA[25]~35_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1091_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~35_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1091_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|saida[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~25_combout\ = ( \ULA|Add0~101_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[25]~35_combout\ & \BANCO_REGISTRADORES|saidaB[25]~26_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[25]~26_combout\)) # (\BANCO_REGISTRADORES|saidaA[25]~35_combout\))) ) ) # ( !\ULA|Add0~101_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[25]~35_combout\ & (\BANCO_REGISTRADORES|saidaB[25]~26_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[25]~26_combout\)) # (\BANCO_REGISTRADORES|saidaA[25]~35_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~35_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~26_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|saida[25]~25_combout\);

\BANCO_REGISTRADORES|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~351_q\);

\BANCO_REGISTRADORES|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~319_q\);

\BANCO_REGISTRADORES|saidaA[25]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[25]~35_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~319_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~351_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~415_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~351_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~415_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	combout => \BANCO_REGISTRADORES|saidaA[25]~35_combout\);

\BANCO_REGISTRADORES|registrador~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~416_q\);

\BANCO_REGISTRADORES|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~384_q\);

\BANCO_REGISTRADORES|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~320_q\);

\BANCO_REGISTRADORES|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1092_combout\ = ( \BANCO_REGISTRADORES|registrador~320_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~384_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~416_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~320_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~384_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~416_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	combout => \BANCO_REGISTRADORES|registrador~1092_combout\);

\BANCO_REGISTRADORES|saidaB[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[26]~27_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1092_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[26]~27_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[26]~31_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[26]~27_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \BANCO_REGISTRADORES|saidaA[26]~31_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[26]~27_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~31_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~27_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|saida[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~26_combout\ = ( \ULA|Add0~105_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[26]~31_combout\ & \BANCO_REGISTRADORES|saidaB[26]~27_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[26]~27_combout\)) # (\BANCO_REGISTRADORES|saidaA[26]~31_combout\))) ) ) # ( !\ULA|Add0~105_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[26]~31_combout\ & (\BANCO_REGISTRADORES|saidaB[26]~27_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[26]~27_combout\)) # (\BANCO_REGISTRADORES|saidaA[26]~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~31_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~27_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~105_sumout\,
	combout => \ULA|saida[26]~26_combout\);

\BANCO_REGISTRADORES|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~352_q\);

\BANCO_REGISTRADORES|saidaA[26]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[26]~31_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~320_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~352_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~416_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~352_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~416_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	combout => \BANCO_REGISTRADORES|saidaA[26]~31_combout\);

\BANCO_REGISTRADORES|registrador~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~417_q\);

\BANCO_REGISTRADORES|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~385_q\);

\BANCO_REGISTRADORES|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1093_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~385_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~417_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\,
	combout => \BANCO_REGISTRADORES|registrador~1093_combout\);

\BANCO_REGISTRADORES|saidaB[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[27]~28_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1093_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[27]~28_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[27]~27_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1093_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \BANCO_REGISTRADORES|saidaA[27]~27_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1093_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|saida[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~27_combout\ = ( \ULA|Add0~109_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & \BANCO_REGISTRADORES|saidaB[27]~28_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[27]~28_combout\)) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\))) ) ) # ( !\ULA|Add0~109_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & (\BANCO_REGISTRADORES|saidaB[27]~28_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[27]~28_combout\)) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~28_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|saida[27]~27_combout\);

\BANCO_REGISTRADORES|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~353_q\);

\BANCO_REGISTRADORES|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~321_q\);

\BANCO_REGISTRADORES|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[27]~27_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~321_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~353_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~417_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~353_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~417_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	combout => \BANCO_REGISTRADORES|saidaA[27]~27_combout\);

\BANCO_REGISTRADORES|registrador~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~418_q\);

\BANCO_REGISTRADORES|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~386_q\);

\BANCO_REGISTRADORES|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~322_q\);

\BANCO_REGISTRADORES|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1094_combout\ = ( \BANCO_REGISTRADORES|registrador~322_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~386_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~418_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~322_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~386_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~418_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	combout => \BANCO_REGISTRADORES|registrador~1094_combout\);

\BANCO_REGISTRADORES|saidaB[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[28]~29_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[28]~29_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[28]~23_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[28]~29_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \BANCO_REGISTRADORES|saidaA[28]~23_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[28]~29_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~23_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~29_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|saida[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~28_combout\ = ( \ULA|Add0~113_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[28]~23_combout\ & \BANCO_REGISTRADORES|saidaB[28]~29_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[28]~29_combout\)) # (\BANCO_REGISTRADORES|saidaA[28]~23_combout\))) ) ) # ( !\ULA|Add0~113_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[28]~23_combout\ & (\BANCO_REGISTRADORES|saidaB[28]~29_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[28]~29_combout\)) # (\BANCO_REGISTRADORES|saidaA[28]~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~23_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~29_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~113_sumout\,
	combout => \ULA|saida[28]~28_combout\);

\BANCO_REGISTRADORES|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~354_q\);

\BANCO_REGISTRADORES|saidaA[28]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[28]~23_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~322_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~354_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~418_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~354_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~418_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	combout => \BANCO_REGISTRADORES|saidaA[28]~23_combout\);

\BANCO_REGISTRADORES|registrador~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~419_q\);

\BANCO_REGISTRADORES|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~387_q\);

\BANCO_REGISTRADORES|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1095_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~387_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~419_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\,
	combout => \BANCO_REGISTRADORES|registrador~1095_combout\);

\BANCO_REGISTRADORES|saidaB[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[29]~30_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1095_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[29]~30_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[29]~19_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1095_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \BANCO_REGISTRADORES|saidaA[29]~19_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1095_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~19_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1095_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|saida[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~29_combout\ = ( \ULA|Add0~117_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[29]~19_combout\ & \BANCO_REGISTRADORES|saidaB[29]~30_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[29]~30_combout\)) # (\BANCO_REGISTRADORES|saidaA[29]~19_combout\))) ) ) # ( !\ULA|Add0~117_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[29]~19_combout\ & (\BANCO_REGISTRADORES|saidaB[29]~30_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[29]~30_combout\)) # (\BANCO_REGISTRADORES|saidaA[29]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~19_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~30_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|saida[29]~29_combout\);

\BANCO_REGISTRADORES|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~355_q\);

\BANCO_REGISTRADORES|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~323_q\);

\BANCO_REGISTRADORES|saidaA[29]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[29]~19_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~323_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~355_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~419_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~355_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~419_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	combout => \BANCO_REGISTRADORES|saidaA[29]~19_combout\);

\BANCO_REGISTRADORES|registrador~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~420_q\);

\BANCO_REGISTRADORES|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~388_q\);

\BANCO_REGISTRADORES|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~324_q\);

\BANCO_REGISTRADORES|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1096_combout\ = ( \BANCO_REGISTRADORES|registrador~324_q\ & ( ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~388_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~420_q\))) # 
-- (\BANCO_REGISTRADORES|saidaB[0]~0_combout\) ) ) # ( !\BANCO_REGISTRADORES|registrador~324_q\ & ( (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~388_q\))) # (\PC|DOUT\(3) & 
-- (\BANCO_REGISTRADORES|registrador~420_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	combout => \BANCO_REGISTRADORES|registrador~1096_combout\);

\BANCO_REGISTRADORES|saidaB[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[30]~31_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1096_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1096_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[30]~31_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[30]~15_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[30]~31_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \BANCO_REGISTRADORES|saidaA[30]~15_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|saidaB[30]~31_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~15_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~31_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|saida[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~30_combout\ = ( \ULA|Add0~121_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[30]~15_combout\ & \BANCO_REGISTRADORES|saidaB[30]~31_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[30]~31_combout\)) # (\BANCO_REGISTRADORES|saidaA[30]~15_combout\))) ) ) # ( !\ULA|Add0~121_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[30]~15_combout\ & (\BANCO_REGISTRADORES|saidaB[30]~31_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[30]~31_combout\)) # (\BANCO_REGISTRADORES|saidaA[30]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~15_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~31_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~121_sumout\,
	combout => \ULA|saida[30]~30_combout\);

\BANCO_REGISTRADORES|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~356_q\);

\BANCO_REGISTRADORES|saidaA[30]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[30]~15_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~324_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~356_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~420_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~356_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~420_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	combout => \BANCO_REGISTRADORES|saidaA[30]~15_combout\);

\BANCO_REGISTRADORES|registrador~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1098_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~421_q\);

\BANCO_REGISTRADORES|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~389_q\);

\BANCO_REGISTRADORES|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1097_combout\ = ((!\PC|DOUT\(3) & ((\BANCO_REGISTRADORES|registrador~389_q\))) # (\PC|DOUT\(3) & (\BANCO_REGISTRADORES|registrador~421_q\))) # (\BANCO_REGISTRADORES|saidaB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111001101111011111100110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\,
	combout => \BANCO_REGISTRADORES|registrador~1097_combout\);

\BANCO_REGISTRADORES|saidaB[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[31]~32_combout\ = (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & \BANCO_REGISTRADORES|registrador~1097_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[31]~32_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \BANCO_REGISTRADORES|saidaA[31]~11_combout\ ) + ( !\ULA|Equal4~0_combout\ $ ((((!\BANCO_REGISTRADORES|saidaB[0]~33_combout\) # (!\BANCO_REGISTRADORES|registrador~1097_combout\)) # (\PC|DOUT\(7)))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal4~0_combout\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~33_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~11_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\ULA|saida[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~31_combout\ = ( \ULA|Add0~125_sumout\ & ( (!\ROM|memROM~1_combout\ & ((!\UNIDADE_CONTROLE|saida~0_combout\) # ((\BANCO_REGISTRADORES|saidaA[31]~11_combout\ & \BANCO_REGISTRADORES|saidaB[31]~32_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaB[31]~32_combout\)) # (\BANCO_REGISTRADORES|saidaA[31]~11_combout\))) ) ) # ( !\ULA|Add0~125_sumout\ & ( (!\ROM|memROM~1_combout\ & (\BANCO_REGISTRADORES|saidaA[31]~11_combout\ & (\BANCO_REGISTRADORES|saidaB[31]~32_combout\ & 
-- \UNIDADE_CONTROLE|saida~0_combout\))) # (\ROM|memROM~1_combout\ & (((\BANCO_REGISTRADORES|saidaB[31]~32_combout\)) # (\BANCO_REGISTRADORES|saidaA[31]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010111101111110001011100010101000101111011111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~11_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~32_combout\,
	datad => \UNIDADE_CONTROLE|ALT_INV_saida~0_combout\,
	datae => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|saida[31]~31_combout\);

\BANCO_REGISTRADORES|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1099_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~357_q\);

\BANCO_REGISTRADORES|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|saida[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~325_q\);

\BANCO_REGISTRADORES|saidaA[31]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[31]~11_combout\ = ( !\ROM|memROM~0_combout\ & ( ((!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & (\BANCO_REGISTRADORES|registrador~325_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))))) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- (!\BANCO_REGISTRADORES|saidaB[0]~0_combout\ & ((!\PC|DOUT\(2) & (\BANCO_REGISTRADORES|registrador~357_q\)) # (\PC|DOUT\(2) & (((\BANCO_REGISTRADORES|registrador~421_q\ & !\PC|DOUT\(3))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100010001000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~357_q\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~421_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	combout => \BANCO_REGISTRADORES|saidaA[31]~11_combout\);

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


