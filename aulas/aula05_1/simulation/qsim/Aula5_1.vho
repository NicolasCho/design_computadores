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

-- DATE "09/11/2022 18:25:30"

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

ENTITY 	Aula5_1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(14 DOWNTO 0)
	);
END Aula5_1;

ARCHITECTURE structure OF Aula5_1 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(14 DOWNTO 0);
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
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECODER|saida~4_combout\ : std_logic;
SIGNAL \DECODER|saida[6]~3_combout\ : std_logic;
SIGNAL \DECODER|saida[4]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER|saida[5]~2_combout\ : std_logic;
SIGNAL \DECODER|Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM1|ram~4250_combout\ : std_logic;
SIGNAL \RAM1|ram~2070_q\ : std_logic;
SIGNAL \RAM1|ram~4218_combout\ : std_logic;
SIGNAL \RAM1|ram~4150_combout\ : std_logic;
SIGNAL \RAM1|ram~4222_combout\ : std_logic;
SIGNAL \RAM1|ram~4154_combout\ : std_logic;
SIGNAL \RAM1|ram~4158_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~2066_q\ : std_logic;
SIGNAL \RAM1|ram~4186_combout\ : std_logic;
SIGNAL \RAM1|ram~4114_combout\ : std_logic;
SIGNAL \RAM1|ram~4190_combout\ : std_logic;
SIGNAL \RAM1|ram~4118_combout\ : std_logic;
SIGNAL \RAM1|ram~4122_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~2067_q\ : std_logic;
SIGNAL \RAM1|ram~4194_combout\ : std_logic;
SIGNAL \RAM1|ram~4123_combout\ : std_logic;
SIGNAL \RAM1|ram~4198_combout\ : std_logic;
SIGNAL \RAM1|ram~4127_combout\ : std_logic;
SIGNAL \RAM1|ram~4131_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~2068_q\ : std_logic;
SIGNAL \RAM1|ram~4202_combout\ : std_logic;
SIGNAL \RAM1|ram~4132_combout\ : std_logic;
SIGNAL \RAM1|ram~4206_combout\ : std_logic;
SIGNAL \RAM1|ram~4136_combout\ : std_logic;
SIGNAL \RAM1|ram~4140_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~2069_q\ : std_logic;
SIGNAL \RAM1|ram~4210_combout\ : std_logic;
SIGNAL \RAM1|ram~4141_combout\ : std_logic;
SIGNAL \RAM1|ram~4214_combout\ : std_logic;
SIGNAL \RAM1|ram~4145_combout\ : std_logic;
SIGNAL \RAM1|ram~4149_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~2071_q\ : std_logic;
SIGNAL \RAM1|ram~4226_combout\ : std_logic;
SIGNAL \RAM1|ram~4159_combout\ : std_logic;
SIGNAL \RAM1|ram~4230_combout\ : std_logic;
SIGNAL \RAM1|ram~4163_combout\ : std_logic;
SIGNAL \RAM1|ram~4167_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~2072_q\ : std_logic;
SIGNAL \RAM1|ram~4234_combout\ : std_logic;
SIGNAL \RAM1|ram~4168_combout\ : std_logic;
SIGNAL \RAM1|ram~4238_combout\ : std_logic;
SIGNAL \RAM1|ram~4172_combout\ : std_logic;
SIGNAL \RAM1|ram~4176_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~2073_q\ : std_logic;
SIGNAL \RAM1|ram~4242_combout\ : std_logic;
SIGNAL \RAM1|ram~4177_combout\ : std_logic;
SIGNAL \RAM1|ram~4246_combout\ : std_logic;
SIGNAL \RAM1|ram~4181_combout\ : std_logic;
SIGNAL \RAM1|ram~4185_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \logicaDesvio|saidaDesvio~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODER|saida[1]~0_combout\ : std_logic;
SIGNAL \DECODER|Equal2~0_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \logicaDesvio|ALT_INV_saidaDesvio~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~4246_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4242_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4238_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4234_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4230_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4226_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4222_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4218_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4214_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4210_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4206_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4202_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4198_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4194_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4190_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4186_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4181_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4177_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4168_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4159_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4150_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4141_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4136_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4132_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4127_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4123_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4118_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4114_combout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2073_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2072_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2071_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2070_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2069_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2068_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2067_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2066_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4185_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4140_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4131_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4122_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\logicaDesvio|ALT_INV_saidaDesvio~0_combout\ <= NOT \logicaDesvio|saidaDesvio~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\DECODER|ALT_INV_saida[6]~3_combout\ <= NOT \DECODER|saida[6]~3_combout\;
\DECODER|ALT_INV_saida[4]~1_combout\ <= NOT \DECODER|saida[4]~1_combout\;
\DECODER|ALT_INV_Equal3~0_combout\ <= NOT \DECODER|Equal3~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\RAM1|ALT_INV_ram~4246_combout\ <= NOT \RAM1|ram~4246_combout\;
\RAM1|ALT_INV_ram~4242_combout\ <= NOT \RAM1|ram~4242_combout\;
\RAM1|ALT_INV_ram~4238_combout\ <= NOT \RAM1|ram~4238_combout\;
\RAM1|ALT_INV_ram~4234_combout\ <= NOT \RAM1|ram~4234_combout\;
\RAM1|ALT_INV_ram~4230_combout\ <= NOT \RAM1|ram~4230_combout\;
\RAM1|ALT_INV_ram~4226_combout\ <= NOT \RAM1|ram~4226_combout\;
\RAM1|ALT_INV_ram~4222_combout\ <= NOT \RAM1|ram~4222_combout\;
\RAM1|ALT_INV_ram~4218_combout\ <= NOT \RAM1|ram~4218_combout\;
\RAM1|ALT_INV_ram~4214_combout\ <= NOT \RAM1|ram~4214_combout\;
\RAM1|ALT_INV_ram~4210_combout\ <= NOT \RAM1|ram~4210_combout\;
\RAM1|ALT_INV_ram~4206_combout\ <= NOT \RAM1|ram~4206_combout\;
\RAM1|ALT_INV_ram~4202_combout\ <= NOT \RAM1|ram~4202_combout\;
\RAM1|ALT_INV_ram~4198_combout\ <= NOT \RAM1|ram~4198_combout\;
\RAM1|ALT_INV_ram~4194_combout\ <= NOT \RAM1|ram~4194_combout\;
\RAM1|ALT_INV_ram~4190_combout\ <= NOT \RAM1|ram~4190_combout\;
\RAM1|ALT_INV_ram~4186_combout\ <= NOT \RAM1|ram~4186_combout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\RAM1|ALT_INV_ram~4181_combout\ <= NOT \RAM1|ram~4181_combout\;
\RAM1|ALT_INV_ram~4177_combout\ <= NOT \RAM1|ram~4177_combout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\RAM1|ALT_INV_ram~4172_combout\ <= NOT \RAM1|ram~4172_combout\;
\RAM1|ALT_INV_ram~4168_combout\ <= NOT \RAM1|ram~4168_combout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\RAM1|ALT_INV_ram~4163_combout\ <= NOT \RAM1|ram~4163_combout\;
\RAM1|ALT_INV_ram~4159_combout\ <= NOT \RAM1|ram~4159_combout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\RAM1|ALT_INV_ram~4154_combout\ <= NOT \RAM1|ram~4154_combout\;
\RAM1|ALT_INV_ram~4150_combout\ <= NOT \RAM1|ram~4150_combout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\RAM1|ALT_INV_ram~4145_combout\ <= NOT \RAM1|ram~4145_combout\;
\RAM1|ALT_INV_ram~4141_combout\ <= NOT \RAM1|ram~4141_combout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\RAM1|ALT_INV_ram~4136_combout\ <= NOT \RAM1|ram~4136_combout\;
\RAM1|ALT_INV_ram~4132_combout\ <= NOT \RAM1|ram~4132_combout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\RAM1|ALT_INV_ram~4127_combout\ <= NOT \RAM1|ram~4127_combout\;
\RAM1|ALT_INV_ram~4123_combout\ <= NOT \RAM1|ram~4123_combout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\RAM1|ALT_INV_ram~4118_combout\ <= NOT \RAM1|ram~4118_combout\;
\RAM1|ALT_INV_ram~4114_combout\ <= NOT \RAM1|ram~4114_combout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\RAM1|ALT_INV_ram~2073_q\ <= NOT \RAM1|ram~2073_q\;
\RAM1|ALT_INV_ram~2072_q\ <= NOT \RAM1|ram~2072_q\;
\RAM1|ALT_INV_ram~2071_q\ <= NOT \RAM1|ram~2071_q\;
\RAM1|ALT_INV_ram~2070_q\ <= NOT \RAM1|ram~2070_q\;
\RAM1|ALT_INV_ram~2069_q\ <= NOT \RAM1|ram~2069_q\;
\RAM1|ALT_INV_ram~2068_q\ <= NOT \RAM1|ram~2068_q\;
\RAM1|ALT_INV_ram~2067_q\ <= NOT \RAM1|ram~2067_q\;
\RAM1|ALT_INV_ram~2066_q\ <= NOT \RAM1|ram~2066_q\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\DECODER|ALT_INV_saida~4_combout\ <= NOT \DECODER|saida~4_combout\;
\RAM1|ALT_INV_ram~4185_combout\ <= NOT \RAM1|ram~4185_combout\;
\RAM1|ALT_INV_ram~4176_combout\ <= NOT \RAM1|ram~4176_combout\;
\RAM1|ALT_INV_ram~4167_combout\ <= NOT \RAM1|ram~4167_combout\;
\RAM1|ALT_INV_ram~4158_combout\ <= NOT \RAM1|ram~4158_combout\;
\RAM1|ALT_INV_ram~4149_combout\ <= NOT \RAM1|ram~4149_combout\;
\RAM1|ALT_INV_ram~4140_combout\ <= NOT \RAM1|ram~4140_combout\;
\RAM1|ALT_INV_ram~4131_combout\ <= NOT \RAM1|ram~4131_combout\;
\RAM1|ALT_INV_ram~4122_combout\ <= NOT \RAM1|ram~4122_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
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
	i => \PC|DOUT\(1),
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

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
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
	i => \REGA|DOUT\(1),
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
	i => \REGA|DOUT\(2),
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
	i => \REGA|DOUT\(3),
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
	i => \REGA|DOUT\(4),
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
	i => \REGA|DOUT\(5),
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
	i => \REGA|DOUT\(6),
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
	i => \REGA|DOUT\(7),
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
	i => \DECODER|Equal3~0_combout\,
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
	i => \DECODER|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\LEDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

\LEDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

\LEDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|saida[5]~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

\LEDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|ALT_INV_saida[6]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

\LEDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(0) & (\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\logicaDesvio|saidaDesvio~0_combout\ & (\ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & \incrementaPC|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|saida_MUX[4]~4_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~5_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & \incrementaPC|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUX2|saida_MUX[5]~5_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~6_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & \incrementaPC|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX2|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~7_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & \incrementaPC|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX2|saida_MUX[7]~7_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))))

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
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT\(1) & (!\PC|DOUT\(0) $ (((!\PC|DOUT\(2) & \PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000100010000100100010001000010010001000100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~10_combout\)) # (\PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & ((\incrementaPC|Add0~9_sumout\))) # (\logicaDesvio|saidaDesvio~0_combout\ & (!\ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~6_combout\ & ( (\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~9_combout\);

\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\logicaDesvio|saidaDesvio~0_combout\ & (\ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100010000000000000000000000000011000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~14_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

\MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[8]~8_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & ((\incrementaPC|Add0~33_sumout\))) # (\logicaDesvio|saidaDesvio~0_combout\ & (\ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUX2|saida_MUX[8]~8_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (\PC|DOUT\(0) & ((!\PC|DOUT\(1) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010000010001000001000001000100000100000100010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(2) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(0) & \PC|DOUT\(3))))) # (\PC|DOUT\(1) & (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100011000110000010001100011000001000110001100000100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(1) & (\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (\PC|DOUT\(2))))) # (\PC|DOUT\(1) & ((!\PC|DOUT\(0)) # (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100111001100101010011100110010101001110011001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\DECODER|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida~4_combout\ = ((!\ROM1|memROM~6_combout\) # ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|saida~4_combout\);

\DECODER|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[6]~3_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ ) ) # ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( 
-- !\ROM1|memROM~4_combout\ & ( (((!\ROM1|memROM~1_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~0_combout\)) # (\PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|saida[6]~3_combout\);

\DECODER|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[4]~1_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & 
-- ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|saida[4]~1_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DECODER|saida[4]~1_combout\ & (((\ULA1|Add1~17_sumout\)))) # (\DECODER|saida[4]~1_combout\ & (\DECODER|saida[6]~3_combout\ & (\RAM1|ram~4158_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4158_combout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\DECODER|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[5]~2_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & 
-- (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|saida[5]~2_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\DECODER|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal3~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|Equal3~0_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(2))))) # (\PC|DOUT\(1) & (\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\RAM1|ram~4250\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4250_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( (\DECODER|Equal3~0_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4250_combout\);

\RAM1|ram~2070\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2070_q\);

\RAM1|ram~4218\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4218_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2070_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2070_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4218_combout\);

\RAM1|ram~4150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4150_combout\ = ( \RAM1|ram~4218_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4218_combout\,
	combout => \RAM1|ram~4150_combout\);

\RAM1|ram~4222\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4222_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4222_combout\);

\RAM1|ram~4154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4154_combout\ = ( \RAM1|ram~4222_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4222_combout\,
	combout => \RAM1|ram~4154_combout\);

\RAM1|ram~4158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4158_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4154_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4150_combout\,
	datad => \RAM1|ALT_INV_ram~4154_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4158_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~15_combout\);

\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\DECODER|saida[6]~3_combout\ & (((!\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) # (\DECODER|saida[6]~3_combout\ & (((!\RAM1|ram~4122_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\DECODER|saida[6]~3_combout\ & (((!\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) # (\DECODER|saida[6]~3_combout\ & (((!\RAM1|ram~4122_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~4122_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECODER|saida[4]~1_combout\) # ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~8_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4122_combout\)))) ) ) # ( !\ULA1|Add1~1_sumout\ & ( 
-- (\DECODER|saida[4]~1_combout\ & ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~8_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4122_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011110011101101111100000010000100111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~4122_combout\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM1|ram~2066\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2066_q\);

\RAM1|ram~4186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4186_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2066_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2066_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4186_combout\);

\RAM1|ram~4114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4114_combout\ = ( \RAM1|ram~4186_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4186_combout\,
	combout => \RAM1|ram~4114_combout\);

\RAM1|ram~4190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4190_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4190_combout\);

\RAM1|ram~4118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4118_combout\ = ( \RAM1|ram~4190_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4190_combout\,
	combout => \RAM1|ram~4118_combout\);

\RAM1|ram~4122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4122_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4118_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4114_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4114_combout\,
	datad => \RAM1|ALT_INV_ram~4118_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4122_combout\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\ROM1|memROM~5_combout\ & ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~9_combout\))) # (\DECODER|saida~4_combout\ & (!\RAM1|ram~4131_combout\)))) # (\ROM1|memROM~5_combout\ & (((!\RAM1|ram~4131_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\ROM1|memROM~5_combout\ & ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~9_combout\))) # (\DECODER|saida~4_combout\ & (!\RAM1|ram~4131_combout\)))) # (\ROM1|memROM~5_combout\ & (((!\RAM1|ram~4131_combout\)))) ) + ( \REGA|DOUT\(1) 
-- ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \DECODER|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~4131_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER|saida[4]~1_combout\) # ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~9_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4131_combout\)))) ) ) # ( !\ULA1|Add1~5_sumout\ & ( 
-- (\DECODER|saida[4]~1_combout\ & ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~9_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4131_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011110011101101111100000010000100111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \RAM1|ALT_INV_ram~4131_combout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM1|ram~2067\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2067_q\);

\RAM1|ram~4194\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4194_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2067_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2067_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4194_combout\);

\RAM1|ram~4123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4123_combout\ = ( \RAM1|ram~4194_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4194_combout\,
	combout => \RAM1|ram~4123_combout\);

\RAM1|ram~4198\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4198_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4198_combout\);

\RAM1|ram~4127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4127_combout\ = ( \RAM1|ram~4198_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4198_combout\,
	combout => \RAM1|ram~4127_combout\);

\RAM1|ram~4131\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4131_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4127_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4123_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4123_combout\,
	datad => \RAM1|ALT_INV_ram~4127_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4131_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\ROM1|memROM~5_combout\ & ((!\DECODER|saida~4_combout\ & ((\ROM1|memROM~11_combout\))) # (\DECODER|saida~4_combout\ & (!\RAM1|ram~4140_combout\)))) # (\ROM1|memROM~5_combout\ & (((!\RAM1|ram~4140_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\ROM1|memROM~5_combout\ & ((!\DECODER|saida~4_combout\ & ((\ROM1|memROM~11_combout\))) # (\DECODER|saida~4_combout\ & (!\RAM1|ram~4140_combout\)))) # (\ROM1|memROM~5_combout\ & (((!\RAM1|ram~4140_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \DECODER|ALT_INV_saida~4_combout\,
	datac => \RAM1|ALT_INV_ram~4140_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER|saida[4]~1_combout\) # ((!\DECODER|saida[6]~3_combout\ & (!\ROM1|memROM~11_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4140_combout\)))) ) ) # ( !\ULA1|Add1~9_sumout\ & ( 
-- (\DECODER|saida[4]~1_combout\ & ((!\DECODER|saida[6]~3_combout\ & (!\ROM1|memROM~11_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4140_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110001111011001111110100100000001100011110110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~4140_combout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM1|ram~2068\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2068_q\);

\RAM1|ram~4202\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4202_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2068_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2068_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4202_combout\);

\RAM1|ram~4132\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4132_combout\ = ( \RAM1|ram~4202_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4202_combout\,
	combout => \RAM1|ram~4132_combout\);

\RAM1|ram~4206\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4206_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4206_combout\);

\RAM1|ram~4136\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4136_combout\ = ( \RAM1|ram~4206_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4206_combout\,
	combout => \RAM1|ram~4136_combout\);

\RAM1|ram~4140\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4140_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4136_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4132_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4132_combout\,
	datad => \RAM1|ALT_INV_ram~4136_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4140_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~13_combout\)) # (\ROM1|memROM~5_combout\ & ((!\RAM1|ram~4149_combout\))))) # (\DECODER|saida~4_combout\ & (((!\RAM1|ram~4149_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~13_combout\)) # (\ROM1|memROM~5_combout\ & ((!\RAM1|ram~4149_combout\))))) # (\DECODER|saida~4_combout\ & (((!\RAM1|ram~4149_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~4149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER|saida[4]~1_combout\) # ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~13_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4149_combout\)))) ) ) # ( !\ULA1|Add1~13_sumout\ & ( 
-- (\DECODER|saida[4]~1_combout\ & ((!\DECODER|saida[6]~3_combout\ & (\ROM1|memROM~13_combout\)) # (\DECODER|saida[6]~3_combout\ & ((\RAM1|ram~4149_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011110011101101111100000010000100111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~4149_combout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM1|ram~2069\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2069_q\);

\RAM1|ram~4210\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4210_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2069_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2069_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4210_combout\);

\RAM1|ram~4141\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4141_combout\ = ( \RAM1|ram~4210_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4210_combout\,
	combout => \RAM1|ram~4141_combout\);

\RAM1|ram~4214\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4214_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4214_combout\);

\RAM1|ram~4145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4145_combout\ = ( \RAM1|ram~4214_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4214_combout\,
	combout => \RAM1|ram~4145_combout\);

\RAM1|ram~4149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4149_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4145_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4141_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4141_combout\,
	datad => \RAM1|ALT_INV_ram~4145_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4149_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|ram~4158_combout\) # ((!\DECODER|saida~4_combout\ & !\ROM1|memROM~5_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\RAM1|ram~4158_combout\) # ((!\DECODER|saida~4_combout\ & !\ROM1|memROM~5_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~4158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DECODER|saida[4]~1_combout\ & (((\ULA1|Add1~21_sumout\)))) # (\DECODER|saida[4]~1_combout\ & (\DECODER|saida[6]~3_combout\ & (\RAM1|ram~4167_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4167_combout\,
	datad => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM1|ram~2071\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2071_q\);

\RAM1|ram~4226\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4226_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2071_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2071_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4226_combout\);

\RAM1|ram~4159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4159_combout\ = ( \RAM1|ram~4226_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4226_combout\,
	combout => \RAM1|ram~4159_combout\);

\RAM1|ram~4230\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4230_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4230_combout\);

\RAM1|ram~4163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4163_combout\ = ( \RAM1|ram~4230_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4230_combout\,
	combout => \RAM1|ram~4163_combout\);

\RAM1|ram~4167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4167_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4163_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4159_combout\,
	datad => \RAM1|ALT_INV_ram~4163_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4167_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~16_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~4167_combout\) # ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~4167_combout\) # ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~4167_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\DECODER|saida[4]~1_combout\ & (((\ULA1|Add1~25_sumout\)))) # (\DECODER|saida[4]~1_combout\ & (\DECODER|saida[6]~3_combout\ & (\RAM1|ram~4176_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4176_combout\,
	datad => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM1|ram~2072\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2072_q\);

\RAM1|ram~4234\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4234_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2072_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2072_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4234_combout\);

\RAM1|ram~4168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4168_combout\ = ( \RAM1|ram~4234_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4234_combout\,
	combout => \RAM1|ram~4168_combout\);

\RAM1|ram~4238\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4238_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4238_combout\);

\RAM1|ram~4172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4172_combout\ = ( \RAM1|ram~4238_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4238_combout\,
	combout => \RAM1|ram~4172_combout\);

\RAM1|ram~4176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4176_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4172_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4168_combout\,
	datad => \RAM1|ALT_INV_ram~4172_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4176_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~4176_combout\) # ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~4176_combout\) # ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~4176_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\DECODER|saida[4]~1_combout\ & (((\ULA1|Add1~29_sumout\)))) # (\DECODER|saida[4]~1_combout\ & (\DECODER|saida[6]~3_combout\ & (\RAM1|ram~4185_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~3_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4185_combout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \DECODER|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\RAM1|ram~2073\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~4250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2073_q\);

\RAM1|ram~4242\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4242_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~2073_q\ & !\ROM1|memROM~8_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2073_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4242_combout\);

\RAM1|ram~4177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4177_combout\ = ( \RAM1|ram~4242_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4242_combout\,
	combout => \RAM1|ram~4177_combout\);

\RAM1|ram~4246\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4246_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~4246_combout\);

\RAM1|ram~4181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4181_combout\ = ( \RAM1|ram~4246_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~4246_combout\,
	combout => \RAM1|ram~4181_combout\);

\RAM1|ram~4185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4185_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4181_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~4177_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4177_combout\,
	datad => \RAM1|ALT_INV_ram~4181_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~4185_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~4185_combout\) # ((!\DECODER|saida~4_combout\ & ((!\ROM1|memROM~16_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~4185_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( !\FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & 
-- (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( \FLAG|DOUT~q\ & ( !\FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add1~5_sumout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add1~13_sumout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	dataf => \FLAG|ALT_INV_DOUT~1_combout\,
	combout => \FLAG|DOUT~2_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ & ( (!\ULA1|Add1~17_sumout\ & (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( !\FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \FLAG|ALT_INV_DOUT~2_combout\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\logicaDesvio|saidaDesvio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaDesvio|saidaDesvio~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (!\ROM1|memROM~5_combout\ & 
-- (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \logicaDesvio|saidaDesvio~0_combout\);

\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = (!\logicaDesvio|saidaDesvio~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\logicaDesvio|saidaDesvio~0_combout\ & (\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaDesvio|ALT_INV_saidaDesvio~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\DECODER|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[1]~0_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000010000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|saida[1]~0_combout\);

\DECODER|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal2~0_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|Equal2~0_combout\);

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

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;
END structure;


