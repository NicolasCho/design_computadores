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

-- DATE "10/14/2022 11:23:09"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	Contador IS
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
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	PC : OUT std_logic_vector(8 DOWNTO 0);
	barr_leit : OUT std_logic_vector(7 DOWNTO 0);
	saida_ff : OUT std_logic;
	saida_disc : OUT std_logic;
	saida_hab : OUT std_logic
	);
END Contador;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barr_leit[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ff	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_disc	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_hab	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW9	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY2	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY3	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
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
SIGNAL ww_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_barr_leit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_ff : std_logic;
SIGNAL ww_saida_disc : std_logic;
SIGNAL ww_saida_hab : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[9]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[1]~0_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~1_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~12_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~13_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~14_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \LOGICAKEY|habilitaKey1~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~19_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~8_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~3_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~17_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~18_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|dado_out~11_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex0~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|habilitaHex1~0_combout\ : std_logic;
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
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \LOGICAKEY|DISCRIMINADORBORDA|saidaQ~q\ : std_logic;
SIGNAL \LOGICAKEY|DISCRIMINADORBORDA|saida~combout\ : std_logic;
SIGNAL \LOGICAKEY|habilitaKey0~0_combout\ : std_logic;
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out[0]~19_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out[7]~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~12_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \LOGICAKEY|DISCRIMINADORBORDA|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \LOGICAKEY|ALT_INV_habilitaKey1~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[9]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[1]~0_combout\ : std_logic;
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
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\ : std_logic;

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
PC <= ww_PC;
barr_leit <= ww_barr_leit;
saida_ff <= ww_saida_ff;
saida_disc <= ww_saida_disc;
saida_hab <= ww_saida_hab;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0);
\RAM|ALT_INV_dado_out[0]~19_combout\ <= NOT \RAM|dado_out[0]~19_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~2_combout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\RAM|ALT_INV_dado_out[7]~18_combout\ <= NOT \RAM|dado_out[7]~18_combout\;
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\RAM|ALT_INV_dado_out[6]~17_combout\ <= NOT \RAM|dado_out[6]~17_combout\;
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_dado_out[5]~16_combout\ <= NOT \RAM|dado_out[5]~16_combout\;
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\RAM|ALT_INV_dado_out[4]~15_combout\ <= NOT \RAM|dado_out[4]~15_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_dado_out[1]~14_combout\ <= NOT \RAM|dado_out[1]~14_combout\;
\RAM|ALT_INV_dado_out[2]~13_combout\ <= NOT \RAM|dado_out[2]~13_combout\;
\RAM|ALT_INV_dado_out[3]~12_combout\ <= NOT \RAM|dado_out[3]~12_combout\;
\CPU|DECODER|ALT_INV_saida[4]~3_combout\ <= NOT \CPU|DECODER|saida[4]~3_combout\;
\CPU|REGA|ALT_INV_DOUT[5]~0_combout\ <= NOT \CPU|REGA|DOUT[5]~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\CPU|DECODER|ALT_INV_Equal11~0_combout\ <= NOT \CPU|DECODER|Equal11~0_combout\;
\CPU|DECODER|ALT_INV_saida~2_combout\ <= NOT \CPU|DECODER|saida~2_combout\;
\LOGICAKEY|DISCRIMINADORBORDA|ALT_INV_saidaQ~q\ <= NOT \LOGICAKEY|DISCRIMINADORBORDA|saidaQ~q\;
\RAM|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM|dado_out[0]~10_combout\;
\LOGICAKEY|ALT_INV_habilitaKey1~0_combout\ <= NOT \LOGICAKEY|habilitaKey1~0_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \CPU|MUX2|saida_MUX[7]~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\CPU|DECODER|ALT_INV_saida[9]~1_combout\ <= NOT \CPU|DECODER|saida[9]~1_combout\;
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\CPU|DECODER|ALT_INV_saida[1]~0_combout\ <= NOT \CPU|DECODER|saida[1]~0_combout\;
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
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3);
\LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0) <= NOT \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2);
\LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3) <= NOT \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3);
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\CPU|DECODER|ALT_INV_Equal11~1_combout\ <= NOT \CPU|DECODER|Equal11~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~3_combout\;

-- Location: IOOBUF_X54_Y15_N5
\barr_leit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~9_combout\,
	oe => \RAM|dado_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(0));

-- Location: IOOBUF_X54_Y17_N5
\barr_leit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~535_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(1));

-- Location: IOOBUF_X54_Y17_N39
\barr_leit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~540_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(2));

-- Location: IOOBUF_X54_Y15_N39
\barr_leit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~545_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(3));

-- Location: IOOBUF_X54_Y20_N39
\barr_leit[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~550_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(4));

-- Location: IOOBUF_X54_Y20_N5
\barr_leit[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~555_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(5));

-- Location: IOOBUF_X54_Y17_N22
\barr_leit[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~560_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(6));

-- Location: IOOBUF_X54_Y17_N56
\barr_leit[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~565_combout\,
	oe => \RAM|dado_out~11_combout\,
	devoe => ww_devoe,
	o => ww_barr_leit(7));

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X54_Y14_N45
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X54_Y15_N56
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X54_Y14_N79
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X54_Y14_N62
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X44_Y45_N53
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X43_Y45_N19
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X12_Y0_N19
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X44_Y45_N19
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X54_Y14_N96
\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC(8));

-- Location: IOOBUF_X54_Y20_N56
\saida_ff~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saida_ff);

-- Location: IOOBUF_X40_Y45_N76
\saida_disc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICAKEY|DISCRIMINADORBORDA|saida~combout\,
	devoe => ww_devoe,
	o => ww_saida_disc);

-- Location: IOOBUF_X14_Y0_N36
\saida_hab~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOGICAKEY|habilitaKey0~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_hab);

-- Location: IOIBUF_X38_Y0_N1
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: IOIBUF_X54_Y18_N44
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G8
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: LABCELL_X43_Y2_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: FF_X43_Y2_N14
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X43_Y2_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X43_Y2_N0
\CPU|MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~3_combout\ = (!\CPU|MUX2|saida_MUX[7]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\) # (\CPU|DECODER|saida[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~3_combout\);

-- Location: FF_X43_Y2_N2
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X43_Y2_N18
\CPU|MUX2|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~4_combout\ = ( !\CPU|MUX2|saida_MUX[7]~0_combout\ & ( (\CPU|incrementaPC|Add0~13_sumout\ & !\CPU|DECODER|saida[9]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	dataf => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~4_combout\);

-- Location: FF_X43_Y2_N19
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X43_Y2_N1
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X43_Y2_N27
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X43_Y2_N21
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X43_Y2_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X44_Y2_N42
\CPU|MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~5_combout\ = ( !\CPU|MUX2|saida_MUX[7]~0_combout\ & ( (!\CPU|DECODER|saida[9]~1_combout\ & \CPU|incrementaPC|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	combout => \CPU|MUX2|saida_MUX[4]~5_combout\);

-- Location: FF_X44_Y2_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X43_Y2_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X43_Y3_N39
\CPU|MUX2|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~6_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( \CPU|MUX2|saida_MUX[7]~0_combout\ & ( (\ROM|memROM~14_combout\ & !\CPU|DECODER|saida[9]~1_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( 
-- \CPU|MUX2|saida_MUX[7]~0_combout\ & ( (\ROM|memROM~14_combout\ & !\CPU|DECODER|saida[9]~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~21_sumout\ & ( !\CPU|MUX2|saida_MUX[7]~0_combout\ & ( !\CPU|DECODER|saida[9]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	combout => \CPU|MUX2|saida_MUX[5]~6_combout\);

-- Location: FF_X44_Y2_N59
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[5]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X43_Y2_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X44_Y2_N15
\CPU|MUX2|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~7_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|DECODER|saida[9]~1_combout\ & ((!\CPU|MUX2|saida_MUX[7]~0_combout\) # (\ROM|memROM~11_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( 
-- (\CPU|MUX2|saida_MUX[7]~0_combout\ & (!\CPU|DECODER|saida[9]~1_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~7_combout\);

-- Location: FF_X44_Y2_N17
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X43_Y2_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: LABCELL_X44_Y2_N54
\CPU|MUX2|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~8_combout\ = (!\CPU|DECODER|saida[9]~1_combout\ & (!\CPU|MUX2|saida_MUX[7]~0_combout\ & \CPU|incrementaPC|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~8_combout\);

-- Location: FF_X44_Y2_N56
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X44_Y2_N14
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X44_Y2_N24
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X44_Y2_N45
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X43_Y2_N12
\CPU|MUX2|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~2_combout\ = ( \ROM|memROM~15_combout\ & ( (!\CPU|DECODER|saida[9]~1_combout\ & ((\CPU|MUX2|saida_MUX[7]~0_combout\) # (\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|DECODER|saida[9]~1_combout\ & 
-- ((!\CPU|MUX2|saida_MUX[7]~0_combout\))) ) ) # ( !\ROM|memROM~15_combout\ & ( (!\CPU|MUX2|saida_MUX[7]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\) # (\CPU|DECODER|saida[9]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000111111110011000011111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|MUX2|saida_MUX[1]~2_combout\);

-- Location: FF_X43_Y2_N13
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X44_Y2_N39
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X44_Y2_N6
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X44_Y2_N21
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(1) & \ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X44_Y2_N9
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X44_Y2_N51
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X43_Y3_N6
\CPU|DECODER|saida[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[9]~1_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~5_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|saida[9]~1_combout\);

-- Location: LABCELL_X44_Y2_N36
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X44_Y2_N57
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X44_Y2_N33
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X43_Y2_N3
\CPU|MUX2|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~1_combout\ = ( \ROM|memROM~13_combout\ & ( (!\CPU|MUX2|saida_MUX[7]~0_combout\ & ((\CPU|DECODER|saida[9]~1_combout\) # (\CPU|incrementaPC|Add0~1_sumout\))) # (\CPU|MUX2|saida_MUX[7]~0_combout\ & 
-- ((!\CPU|DECODER|saida[9]~1_combout\))) ) ) # ( !\ROM|memROM~13_combout\ & ( (!\CPU|MUX2|saida_MUX[7]~0_combout\ & ((\CPU|DECODER|saida[9]~1_combout\) # (\CPU|incrementaPC|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101001011111101010100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|MUX2|saida_MUX[0]~1_combout\);

-- Location: FF_X44_Y2_N47
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|MUX2|saida_MUX[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: FF_X43_Y2_N20
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X43_Y2_N9
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X44_Y2_N27
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X43_Y2_N6
\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

-- Location: MLABCELL_X45_Y2_N21
\CPU|DECODER|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~0_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal11~0_combout\);

-- Location: LABCELL_X44_Y2_N30
\CPU|DECODER|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[1]~0_combout\ = ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~5_combout\ & ((!\ROM|memROM~3_combout\) # (\ROM|memROM~9_combout\))) ) ) # ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~3_combout\ $ 
-- (!\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER|saida[1]~0_combout\);

-- Location: LABCELL_X43_Y3_N21
\CPU|REGA|DOUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[5]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~7_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~3_combout\)) ) ) # ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~3_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|REGA|DOUT[5]~0_combout\);

-- Location: LABCELL_X43_Y3_N45
\CPU|DECODER|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[4]~3_combout\ = ( \CPU|REGA|DOUT[5]~0_combout\ & ( \ROM|memROM~5_combout\ ) ) # ( \CPU|REGA|DOUT[5]~0_combout\ & ( !\ROM|memROM~5_combout\ & ( ((\ROM|memROM~3_combout\) # (\ROM|memROM~9_combout\)) # (\ROM|memROM~7_combout\) ) ) ) # ( 
-- !\CPU|REGA|DOUT[5]~0_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000011111110111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \CPU|REGA|ALT_INV_DOUT[5]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DECODER|saida[4]~3_combout\);

-- Location: MLABCELL_X45_Y3_N18
\CPU|DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~2_combout\ = ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~5_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) ) # ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~5_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER|saida~2_combout\);

-- Location: MLABCELL_X45_Y3_N15
\CPU|MUX1|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~2_combout\ = ( \CPU|DECODER|Equal11~0_combout\ & ( \ROM|memROM~14_combout\ ) ) # ( !\CPU|DECODER|Equal11~0_combout\ & ( \RAM|dado_out[5]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out[5]~16_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~2_combout\);

-- Location: LABCELL_X43_Y2_N15
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X44_Y1_N51
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X43_Y3_N33
\CPU|DECODER|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~1_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)) ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DECODER|Equal11~1_combout\);

-- Location: LABCELL_X44_Y1_N21
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DECODER|Equal11~1_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & !\ROM|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: FF_X45_Y3_N32
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: MLABCELL_X45_Y3_N45
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \CPU|DECODER|Equal11~1_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~15_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: FF_X45_Y3_N26
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X45_Y3_N24
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~13_combout\ & (\RAM|ram~26_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: MLABCELL_X45_Y3_N39
\RAM|dado_out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~12_combout\ = ( \RAM|ram~541_combout\ ) # ( !\RAM|ram~541_combout\ & ( ((!\CPU|DECODER|saida[1]~0_combout\) # (\ROM|memROM~11_combout\)) # (\ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|dado_out[3]~12_combout\);

-- Location: FF_X44_Y2_N35
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: FF_X43_Y2_N26
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X43_Y2_N24
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~17_q\))) # (\ROM|memROM~13_combout\ & (\RAM|ram~25_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X44_Y2_N48
\RAM|dado_out[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~13_combout\ = ( \RAM|ram~536_combout\ ) # ( !\RAM|ram~536_combout\ & ( (!\CPU|DECODER|saida[1]~0_combout\) # ((\ROM|memROM~14_combout\) # (\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|dado_out[2]~13_combout\);

-- Location: FF_X45_Y2_N4
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X45_Y2_N56
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: MLABCELL_X45_Y2_N54
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~13_combout\ & (\RAM|ram~24_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \RAM|ALT_INV_ram~24_q\,
	datad => \RAM|ALT_INV_ram~16_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: MLABCELL_X45_Y2_N6
\RAM|dado_out[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~14_combout\ = ( \CPU|DECODER|saida[1]~0_combout\ & ( ((\ROM|memROM~11_combout\) # (\RAM|ram~531_combout\)) # (\ROM|memROM~14_combout\) ) ) # ( !\CPU|DECODER|saida[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	combout => \RAM|dado_out[1]~14_combout\);

-- Location: MLABCELL_X45_Y3_N30
\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \RAM|dado_out[1]~14_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\) # (\ROM|memROM~15_combout\) ) ) # ( !\RAM|dado_out[1]~14_combout\ & ( (\CPU|DECODER|Equal11~0_combout\ & \ROM|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \RAM|ALT_INV_dado_out[1]~14_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X44_Y1_N3
\LOGICAKEY|habilitaKey1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICAKEY|habilitaKey1~0_combout\ = ( \CPU|DECODER|saida[1]~0_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	combout => \LOGICAKEY|habilitaKey1~0_combout\);

-- Location: LABCELL_X44_Y1_N6
\RAM|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~10_combout\ = ( \ROM|memROM~14_combout\ & ( (\CPU|DECODER|saida[1]~0_combout\ & (\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\)) ) ) # ( !\ROM|memROM~14_combout\ & ( (\CPU|DECODER|saida[1]~0_combout\ & ((!\ROM|memROM~11_combout\) # 
-- (\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|dado_out[0]~10_combout\);

-- Location: LABCELL_X44_Y1_N36
\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \RAM|dado_out[0]~8_combout\ & ( \RAM|dado_out[0]~10_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\) # (!\ROM|memROM~13_combout\) ) ) ) # ( !\RAM|dado_out[0]~8_combout\ & ( \RAM|dado_out[0]~10_combout\ & ( 
-- (!\CPU|DECODER|Equal11~0_combout\ & (!\KEY1~input_o\ & (\LOGICAKEY|habilitaKey1~0_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (((!\ROM|memROM~13_combout\)))) ) ) ) # ( \RAM|dado_out[0]~8_combout\ & ( !\RAM|dado_out[0]~10_combout\ & ( 
-- (\CPU|DECODER|Equal11~0_combout\ & !\ROM|memROM~13_combout\) ) ) ) # ( !\RAM|dado_out[0]~8_combout\ & ( !\RAM|dado_out[0]~10_combout\ & ( (\CPU|DECODER|Equal11~0_combout\ & !\ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000111011000010001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY1~input_o\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \LOGICAKEY|ALT_INV_habilitaKey1~0_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~10_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N30
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: MLABCELL_X45_Y2_N24
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

-- Location: MLABCELL_X45_Y2_N27
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & (((!\RAM|dado_out[0]~19_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & (((!\RAM|dado_out[0]~19_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~19_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X44_Y3_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & (((\RAM|dado_out[0]~19_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~16_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & (((\RAM|dado_out[0]~19_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~16_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_dado_out[0]~19_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X45_Y3_N6
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|REGA|DOUT\(0) & ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|ULA1|Add1~1_sumout\)) # (\CPU|DECODER|saida~2_combout\))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (((!\CPU|MUX1|saida_MUX[0]~0_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(0) & ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DECODER|saida~2_combout\ & ((!\CPU|DECODER|saida[4]~3_combout\ & ((\CPU|ULA1|Add1~1_sumout\))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (!\CPU|MUX1|saida_MUX[0]~0_combout\)))) # (\CPU|DECODER|saida~2_combout\ & (!\CPU|DECODER|saida[4]~3_combout\)) ) ) ) # ( \CPU|REGA|DOUT\(0) & ( !\CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (!\CPU|DECODER|saida~2_combout\ & 
-- ((\CPU|ULA1|Add1~1_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & (((!\CPU|MUX1|saida_MUX[0]~0_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(0) & ( !\CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DECODER|saida~2_combout\ & ((!\CPU|DECODER|saida[4]~3_combout\ & 
-- ((\CPU|ULA1|Add1~1_sumout\))) # (\CPU|DECODER|saida[4]~3_combout\ & (!\CPU|MUX1|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001100001011100001100100111011000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|REGA|ALT_INV_DOUT\(0),
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N12
\CPU|DECODER|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[5]~4_combout\ = ( \ROM|memROM~5_combout\ & ( \CPU|REGA|DOUT[5]~0_combout\ ) ) # ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\)) # (\ROM|memROM~9_combout\))) # (\ROM|memROM~3_combout\ & 
-- (((\CPU|REGA|DOUT[5]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001111111010011000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT[5]~0_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DECODER|saida[5]~4_combout\);

-- Location: FF_X45_Y3_N8
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: FF_X44_Y2_N2
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X44_Y2_N20
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X44_Y2_N18
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~15_q\))) # (\ROM|memROM~13_combout\ & (\RAM|ram~23_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X44_Y2_N0
\RAM|dado_out[0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~19_combout\ = ( !\ROM|memROM~11_combout\ & ( ((((!\CPU|DECODER|saida[1]~0_combout\) # (\RAM|ram~527_combout\)) # (\ROM|memROM~14_combout\))) ) ) # ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\) # (((!\ROM|memROM~0_combout\) # 
-- ((!\CPU|DECODER|saida[1]~0_combout\))) # (\KEY1~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100001111111111111111101111111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_KEY1~input_o\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	datag => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|dado_out[0]~19_combout\);

-- Location: MLABCELL_X45_Y2_N30
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & ((!\RAM|dado_out[1]~14_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~15_combout\)) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & ((!\RAM|dado_out[1]~14_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~15_combout\)) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~14_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X44_Y3_N33
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & ((\RAM|dado_out[1]~14_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~15_combout\)) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & ((\RAM|dado_out[1]~14_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~15_combout\)) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~14_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X44_Y3_N54
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|REGA|DOUT\(1) & ( \CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|DECODER|saida~2_combout\) # (\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (\CPU|MUX1|saida_MUX[1]~1_combout\)) ) ) ) # ( !\CPU|REGA|DOUT\(1) & ( \CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|DECODER|saida~2_combout\) # (\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (\CPU|MUX1|saida_MUX[1]~1_combout\ & ((!\CPU|DECODER|saida~2_combout\)))) ) ) ) # ( \CPU|REGA|DOUT\(1) & ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|ULA1|Add1~13_sumout\ & !\CPU|DECODER|saida~2_combout\)))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (\CPU|MUX1|saida_MUX[1]~1_combout\)) ) ) ) # ( !\CPU|REGA|DOUT\(1) & ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|DECODER|saida~2_combout\ & ((!\CPU|DECODER|saida[4]~3_combout\ & ((\CPU|ULA1|Add1~13_sumout\))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (\CPU|MUX1|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000010100110101111100000011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datae => \CPU|REGA|ALT_INV_DOUT\(1),
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X44_Y3_N56
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~1_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: MLABCELL_X45_Y2_N33
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\RAM|dado_out[2]~13_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\RAM|dado_out[2]~13_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(2),
	datad => \RAM|ALT_INV_dado_out[2]~13_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X44_Y3_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[2]~13_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[2]~13_combout\) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGA|ALT_INV_DOUT\(2),
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~13_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: MLABCELL_X45_Y3_N54
\CPU|ULA1|saida[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~12_combout\ = ( !\CPU|DECODER|saida[4]~3_combout\ & ( (((!\CPU|DECODER|saida~2_combout\ & ((\CPU|ULA1|Add1~9_sumout\))) # (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~9_sumout\)))) ) ) # ( \CPU|DECODER|saida[4]~3_combout\ & ( 
-- (\RAM|dado_out[2]~13_combout\ & (!\CPU|DECODER|Equal11~0_combout\ & (((!\CPU|DECODER|saida~2_combout\)) # (\CPU|REGA|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111010001000000010011111111000011110100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[2]~13_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(2),
	datad => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datag => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|saida[2]~12_combout\);

-- Location: FF_X45_Y3_N56
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~12_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X45_Y2_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\RAM|dado_out[3]~12_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\RAM|dado_out[3]~12_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(3),
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~12_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: LABCELL_X44_Y3_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[3]~12_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[3]~12_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(3),
	datad => \RAM|ALT_INV_dado_out[3]~12_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X44_Y3_N12
\CPU|ULA1|saida[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~16_combout\ = ( !\CPU|DECODER|saida[4]~3_combout\ & ( (((!\CPU|DECODER|saida~2_combout\ & ((\CPU|ULA1|Add1~5_sumout\))) # (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~5_sumout\)))) ) ) # ( \CPU|DECODER|saida[4]~3_combout\ & ( 
-- (!\CPU|DECODER|Equal11~0_combout\ & (\RAM|dado_out[3]~12_combout\ & (((!\CPU|DECODER|saida~2_combout\)) # (\CPU|REGA|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111001000100000001011111111000011110010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datab => \RAM|ALT_INV_dado_out[3]~12_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(3),
	datad => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datag => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|saida[3]~16_combout\);

-- Location: FF_X44_Y3_N14
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~16_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: MLABCELL_X45_Y2_N39
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\RAM|dado_out[4]~15_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\RAM|dado_out[4]~15_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~15_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X44_Y3_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[4]~15_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[4]~15_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~15_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X44_Y3_N6
\CPU|ULA1|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~8_combout\ = ( !\CPU|DECODER|saida[4]~3_combout\ & ( ((!\CPU|DECODER|saida~2_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~17_sumout\))) ) ) # ( \CPU|DECODER|saida[4]~3_combout\ & ( 
-- (\RAM|dado_out[4]~15_combout\ & (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|DECODER|saida~2_combout\) # ((\CPU|REGA|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011010001010000000011001111110011110100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[4]~15_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(4),
	datad => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datag => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[4]~8_combout\);

-- Location: FF_X44_Y3_N8
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~8_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X44_Y3_N53
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: FF_X45_Y3_N53
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: MLABCELL_X45_Y3_N51
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \RAM|ram~19_q\ & ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( !\RAM|ram~19_q\ & ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( \RAM|ram~19_q\ & ( !\ROM|memROM~14_combout\ & ( 
-- (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\) # (\RAM|ram~27_q\))) ) ) ) # ( !\RAM|ram~19_q\ & ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & (\RAM|ram~27_q\ & \ROM|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \RAM|ALT_INV_ram~19_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: MLABCELL_X45_Y3_N0
\RAM|dado_out[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~15_combout\ = ( \RAM|ram~546_combout\ ) # ( !\RAM|ram~546_combout\ & ( ((!\CPU|DECODER|saida[1]~0_combout\) # (\ROM|memROM~14_combout\)) # (\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|dado_out[4]~15_combout\);

-- Location: LABCELL_X44_Y3_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & (((\RAM|dado_out[5]~16_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~17_combout\)))) ) + ( \CPU|ULA1|Add0~18\ 
-- ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & (((\RAM|dado_out[5]~16_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~17_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_dado_out[5]~16_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X44_Y3_N0
\CPU|ULA1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~2_combout\ = ( \CPU|REGA|DOUT\(5) & ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & ((!\CPU|DECODER|saida~2_combout\) # ((\CPU|ULA1|Add0~21_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (((\CPU|MUX1|saida_MUX[5]~2_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(5) & ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & ((!\CPU|DECODER|saida~2_combout\) # ((\CPU|ULA1|Add0~21_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (!\CPU|DECODER|saida~2_combout\ & (\CPU|MUX1|saida_MUX[5]~2_combout\))) ) ) ) # ( \CPU|REGA|DOUT\(5) & ( !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (\CPU|DECODER|saida~2_combout\ & ((\CPU|ULA1|Add0~21_sumout\)))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|MUX1|saida_MUX[5]~2_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(5) & ( !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (\CPU|DECODER|saida~2_combout\ & ((\CPU|ULA1|Add0~21_sumout\)))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (!\CPU|DECODER|saida~2_combout\ & (\CPU|MUX1|saida_MUX[5]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001010010011110001100101011101000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datae => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~2_combout\);

-- Location: FF_X44_Y3_N2
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~2_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X45_Y2_N34
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X45_Y2_N11
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: MLABCELL_X45_Y2_N9
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~14_combout\ & \ROM|memROM~13_combout\) ) ) # ( !\ROM|memROM~15_combout\ & ( (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~20_q\))) # (\ROM|memROM~13_combout\ & 
-- (\RAM|ram~28_q\)))) # (\ROM|memROM~14_combout\ & (((\ROM|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111000111000001111100011100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~20_q\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: MLABCELL_X45_Y2_N18
\RAM|dado_out[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~16_combout\ = ( \RAM|ram~551_combout\ ) # ( !\RAM|ram~551_combout\ & ( ((!\CPU|DECODER|saida[1]~0_combout\) # (\ROM|memROM~11_combout\)) # (\ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~551_combout\,
	combout => \RAM|dado_out[5]~16_combout\);

-- Location: MLABCELL_X45_Y2_N42
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & (((!\RAM|dado_out[5]~16_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & (((!\RAM|dado_out[5]~16_combout\)))) # (\CPU|DECODER|Equal11~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[5]~16_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: MLABCELL_X45_Y2_N3
\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~q\) 
-- ) ) ) # ( \CPU|ULA1|Add1~5_sumout\ & ( !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & (\CPU|FLAG|DOUT~q\)) # 
-- (\CPU|FLAG|DOUT~1_combout\ & (((!\CPU|ULA1|Add1~13_sumout\ & !\CPU|ULA1|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	datab => \CPU|FLAG|ALT_INV_DOUT~q\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

-- Location: LABCELL_X44_Y3_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & ((\RAM|dado_out[6]~17_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~11_combout\)) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DECODER|Equal11~0_combout\ & ((\RAM|dado_out[6]~17_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (\ROM|memROM~11_combout\)) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \RAM|ALT_INV_dado_out[6]~17_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: MLABCELL_X45_Y3_N27
\CPU|MUX1|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~3_combout\ = ( \RAM|dado_out[6]~17_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\) # (\ROM|memROM~11_combout\) ) ) # ( !\RAM|dado_out[6]~17_combout\ & ( (\ROM|memROM~11_combout\ & \CPU|DECODER|Equal11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[6]~17_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~3_combout\);

-- Location: LABCELL_X44_Y3_N18
\CPU|ULA1|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~3_combout\ = ( \CPU|REGA|DOUT\(6) & ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & ((!\CPU|DECODER|saida~2_combout\) # ((\CPU|ULA1|Add0~25_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (((\CPU|MUX1|saida_MUX[6]~3_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(6) & ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & ((!\CPU|DECODER|saida~2_combout\) # ((\CPU|ULA1|Add0~25_sumout\)))) # (\CPU|DECODER|saida[4]~3_combout\ & 
-- (!\CPU|DECODER|saida~2_combout\ & ((\CPU|MUX1|saida_MUX[6]~3_combout\)))) ) ) ) # ( \CPU|REGA|DOUT\(6) & ( !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~25_sumout\))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (((\CPU|MUX1|saida_MUX[6]~3_combout\)))) ) ) ) # ( !\CPU|REGA|DOUT\(6) & ( !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|saida[4]~3_combout\ & (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~25_sumout\))) # 
-- (\CPU|DECODER|saida[4]~3_combout\ & (!\CPU|DECODER|saida~2_combout\ & ((\CPU|MUX1|saida_MUX[6]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100101011110001010110011101000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datae => \CPU|REGA|ALT_INV_DOUT\(6),
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~3_combout\);

-- Location: FF_X44_Y3_N20
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~3_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X45_Y3_N2
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: FF_X45_Y3_N44
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: MLABCELL_X45_Y3_N42
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\ROM|memROM~13_combout\ & ((\RAM|ram~21_q\))) # (\ROM|memROM~13_combout\ & (\RAM|ram~29_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_ram~29_q\,
	datad => \RAM|ALT_INV_ram~21_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: MLABCELL_X45_Y3_N33
\RAM|dado_out[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~17_combout\ = ( \RAM|ram~556_combout\ ) # ( !\RAM|ram~556_combout\ & ( ((!\CPU|DECODER|saida[1]~0_combout\) # (\ROM|memROM~14_combout\)) # (\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM|ALT_INV_ram~556_combout\,
	combout => \RAM|dado_out[6]~17_combout\);

-- Location: MLABCELL_X45_Y2_N45
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & ((!\RAM|dado_out[6]~17_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER|Equal11~0_combout\ & ((!\RAM|dado_out[6]~17_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & (!\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~17_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: FF_X44_Y3_N37
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: FF_X44_Y1_N43
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: MLABCELL_X45_Y3_N12
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \ROM|memROM~13_combout\ & ( ((\RAM|ram~30_q\ & !\ROM|memROM~15_combout\)) # (\ROM|memROM~14_combout\) ) ) # ( !\ROM|memROM~13_combout\ & ( (\RAM|ram~22_q\ & (!\ROM|memROM~15_combout\ & !\ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: MLABCELL_X45_Y3_N21
\RAM|dado_out[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~18_combout\ = ( \RAM|ram~561_combout\ ) # ( !\RAM|ram~561_combout\ & ( ((!\CPU|DECODER|saida[1]~0_combout\) # (\ROM|memROM~14_combout\)) # (\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	dataf => \RAM|ALT_INV_ram~561_combout\,
	combout => \RAM|dado_out[7]~18_combout\);

-- Location: LABCELL_X44_Y3_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER|Equal11~0_combout\ & \RAM|dado_out[7]~18_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~18_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X44_Y3_N24
\CPU|ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~4_combout\ = ( !\CPU|DECODER|saida[4]~3_combout\ & ( (((!\CPU|DECODER|saida~2_combout\ & ((\CPU|ULA1|Add1~29_sumout\))) # (\CPU|DECODER|saida~2_combout\ & (\CPU|ULA1|Add0~29_sumout\)))) ) ) # ( \CPU|DECODER|saida[4]~3_combout\ & ( 
-- (\RAM|dado_out[7]~18_combout\ & (!\CPU|DECODER|Equal11~0_combout\ & (((!\CPU|DECODER|saida~2_combout\)) # (\CPU|REGA|DOUT\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111010001000000010011111111000011110100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[7]~18_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(7),
	datad => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[4]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datag => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~4_combout\);

-- Location: FF_X44_Y3_N26
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~4_combout\,
	ena => \CPU|DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: MLABCELL_X45_Y2_N48
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\RAM|dado_out[7]~18_combout\) # (\CPU|DECODER|Equal11~0_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(7),
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~18_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X45_Y2_N12
\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~2_combout\) ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & 
-- \CPU|FLAG|DOUT~2_combout\) ) ) ) # ( \CPU|ULA1|Add1~25_sumout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~2_combout\) ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|FLAG|DOUT~2_combout\ & 
-- ((!\CPU|FLAG|DOUT~1_combout\) # ((!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

-- Location: FF_X45_Y2_N14
\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

-- Location: LABCELL_X43_Y3_N51
\CPU|MUX2|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~0_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~5_combout\ & !\ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~5_combout\ & (\CPU|FLAG|DOUT~q\ & 
-- \ROM|memROM~7_combout\)) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~5_combout\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000000000111100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|MUX2|saida_MUX[7]~0_combout\);

-- Location: LABCELL_X43_Y2_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X44_Y2_N12
\CPU|MUX2|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~9_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DECODER|saida[9]~1_combout\ & ((!\CPU|MUX2|saida_MUX[7]~0_combout\) # (\ROM|memROM~14_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~33_sumout\ & ( 
-- (\CPU|MUX2|saida_MUX[7]~0_combout\ & (!\CPU|DECODER|saida[9]~1_combout\ & \ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_saida[9]~1_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~9_combout\);

-- Location: FF_X44_Y2_N13
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \CPU|MUX2|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y2_N57
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~10_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X44_Y1_N45
\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( !\RAM|ram~527_combout\ & ( (!\ROM|memROM~14_combout\ & (\CPU|DECODER|saida[1]~0_combout\ & !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

-- Location: LABCELL_X44_Y1_N9
\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = (!\RAM|dado_out[0]~8_combout\ & ((!\LOGICAKEY|habilitaKey1~0_combout\) # (\KEY1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY1~input_o\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \LOGICAKEY|ALT_INV_habilitaKey1~0_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

-- Location: MLABCELL_X45_Y4_N27
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~531_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: MLABCELL_X45_Y3_N3
\RAM|dado_out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~11_combout\ = (!\ROM|memROM~14_combout\ & (!\ROM|memROM~11_combout\ & \CPU|DECODER|saida[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	combout => \RAM|dado_out~11_combout\);

-- Location: LABCELL_X43_Y3_N15
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \RAM|ram~536_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: MLABCELL_X45_Y3_N36
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = (!\ROM|memROM~14_combout\ & \RAM|ram~541_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: MLABCELL_X45_Y4_N45
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~546_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~546_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X44_Y1_N54
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \RAM|ram~551_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_ram~551_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: MLABCELL_X45_Y4_N12
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( !\ROM|memROM~14_combout\ & ( \RAM|ram~556_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~556_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X44_Y1_N42
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \RAM|ram~561_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \RAM|ALT_INV_ram~561_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: LABCELL_X44_Y1_N27
\LOGICADISPLAYS|habilitaHex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex0~0_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DECODER|Equal11~1_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & \ROM|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	combout => \LOGICADISPLAYS|habilitaHex0~0_combout\);

-- Location: FF_X45_Y1_N50
\LOGICADISPLAYS|DISPLAY0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2));

-- Location: FF_X45_Y1_N32
\LOGICADISPLAYS|DISPLAY0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3));

-- Location: FF_X44_Y1_N29
\LOGICADISPLAYS|DISPLAY0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1));

-- Location: FF_X45_Y1_N41
\LOGICADISPLAYS|DISPLAY0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0));

-- Location: MLABCELL_X45_Y1_N36
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))) ) ) # ( !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) 
-- & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000010011001001000101001100100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y1_N30
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3))) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)))) ) ) # ( !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y1_N57
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y1_N39
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) $ 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y1_N51
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) & ( (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)) # (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y1_N48
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2)) # 
-- (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	datad => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y1_N33
\LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(0) & ( (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(2) $ (\LOGICADISPLAYS|DISPLAY0|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(2),
	datab => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(1),
	datac => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(3),
	dataf => \LOGICADISPLAYS|DISPLAY0|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY0|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y1_N57
\LOGICADISPLAYS|habilitaHex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex1~0_combout\ = ( \CPU|DECODER|Equal11~1_combout\ & ( (\ROM|memROM~13_combout\ & (\ROM|memROM~14_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	combout => \LOGICADISPLAYS|habilitaHex1~0_combout\);

-- Location: FF_X45_Y1_N14
\LOGICADISPLAYS|DISPLAY1|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3));

-- Location: FF_X45_Y1_N17
\LOGICADISPLAYS|DISPLAY1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0));

-- Location: FF_X45_Y1_N8
\LOGICADISPLAYS|DISPLAY1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1));

-- Location: FF_X45_Y1_N11
\LOGICADISPLAYS|DISPLAY1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2));

-- Location: MLABCELL_X45_Y1_N3
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y1_N15
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & 
-- ((\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3)))) ) ) # ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y1_N0
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y1_N12
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0))))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3))) # (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100101000001001010010100000100101001010000010010100101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N0
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) ) ) ) # ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ( 
-- \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)) # (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3)) ) ) ) # ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & ( 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011111100111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datae => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y1_N9
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2)))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) $ (((!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010010001010100001001000101010000100100010101000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y1_N6
\LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))) # 
-- (\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(0) & !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1))) ) ) # ( !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(2) & ( (!\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(3) & 
-- !\LOGICADISPLAYS|DISPLAY1|REG|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(0),
	datad => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY1|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY1|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y1_N15
\LOGICADISPLAYS|habilitaHex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex2~0_combout\ = ( \ROM|memROM~14_combout\ & ( (\CPU|DECODER|Equal11~1_combout\ & (!\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \LOGICADISPLAYS|habilitaHex2~0_combout\);

-- Location: FF_X43_Y3_N56
\LOGICADISPLAYS|DISPLAY2|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3));

-- Location: FF_X43_Y3_N49
\LOGICADISPLAYS|DISPLAY2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2));

-- Location: FF_X43_Y3_N38
\LOGICADISPLAYS|DISPLAY2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0));

-- Location: FF_X43_Y3_N32
\LOGICADISPLAYS|DISPLAY2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1));

-- Location: LABCELL_X43_Y3_N27
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & 
-- \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N9
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3))) ) ) # ( !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N0
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2))) ) ) # ( !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y3_N18
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) # 
-- (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) ) ) # ( !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) $ 
-- (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N24
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)) ) ) # ( !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( 
-- (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y3_N3
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0)))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y3_N57
\LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ( (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1))) # (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY2|REG|DOUT\(1) & \LOGICADISPLAYS|DISPLAY2|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011001100000000000011000000110000110011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(0),
	datae => \LOGICADISPLAYS|DISPLAY2|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY2|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y1_N12
\LOGICADISPLAYS|habilitaHex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|habilitaHex3~0_combout\ = ( \ROM|memROM~14_combout\ & ( (\CPU|DECODER|Equal11~1_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \LOGICADISPLAYS|habilitaHex3~0_combout\);

-- Location: FF_X45_Y1_N44
\LOGICADISPLAYS|DISPLAY3|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3));

-- Location: FF_X45_Y1_N29
\LOGICADISPLAYS|DISPLAY3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2));

-- Location: FF_X45_Y1_N47
\LOGICADISPLAYS|DISPLAY3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0));

-- Location: FF_X45_Y1_N26
\LOGICADISPLAYS|DISPLAY3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \LOGICADISPLAYS|habilitaHex3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1));

-- Location: MLABCELL_X45_Y1_N18
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\ = ( \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & 
-- \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y1_N21
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\ = ( \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3))) ) ) # ( !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	dataf => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y1_N54
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\ = ( \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))) ) ) # ( !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y1_N45
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\ = ( \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & ((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))) ) ) # ( !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) $ 
-- (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	dataf => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y1_N42
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & 
-- ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3)))))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (((\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y1_N27
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\ = (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) $ (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2))))) # 
-- (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1) & (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2)) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010010011100000001001001110000000100100111000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y1_N24
\LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\ = ( \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))) ) ) # ( 
-- !\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(3) & ( (!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & ((!\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1)))) # (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(2) & (\LOGICADISPLAYS|DISPLAY3|REG|DOUT\(0) & \LOGICADISPLAYS|DISPLAY3|REG|DOUT\(1))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(0),
	datac => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(2),
	datad => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(1),
	dataf => \LOGICADISPLAYS|DISPLAY3|REG|ALT_INV_DOUT\(3),
	combout => \LOGICADISPLAYS|DISPLAY3|DECODER7SEG|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X38_Y45_N52
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: FF_X39_Y44_N26
\LOGICAKEY|DISCRIMINADORBORDA|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LOGICAKEY|DISCRIMINADORBORDA|saidaQ~q\);

-- Location: LABCELL_X39_Y44_N24
\LOGICAKEY|DISCRIMINADORBORDA|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICAKEY|DISCRIMINADORBORDA|saida~combout\ = LCELL(( \KEY0~input_o\ & ( !\LOGICAKEY|DISCRIMINADORBORDA|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY0~input_o\,
	dataf => \LOGICAKEY|DISCRIMINADORBORDA|ALT_INV_saidaQ~q\,
	combout => \LOGICAKEY|DISCRIMINADORBORDA|saida~combout\);

-- Location: LABCELL_X43_Y1_N3
\LOGICAKEY|habilitaKey0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOGICAKEY|habilitaKey0~0_combout\ = ( \ROM|memROM~11_combout\ & ( \CPU|DECODER|saida[1]~0_combout\ & ( (!\ROM|memROM~0_combout\ & \ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[1]~0_combout\,
	combout => \LOGICAKEY|habilitaKey0~0_combout\);

-- Location: IOIBUF_X44_Y45_N1
\SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\SW8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\SW9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

-- Location: IOIBUF_X54_Y15_N21
\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: IOIBUF_X14_Y45_N35
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: IOIBUF_X20_Y45_N52
\SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\SW2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X34_Y45_N18
\SW3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X14_Y45_N18
\SW4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: IOIBUF_X40_Y45_N92
\SW5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\SW6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X46_Y45_N92
\SW7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: MLABCELL_X37_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


