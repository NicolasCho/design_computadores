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

-- DATE "09/06/2022 00:23:55"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(13 DOWNTO 0)
	);
END Aula4;

ARCHITECTURE structure OF Aula4 IS
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
SIGNAL ww_LEDR : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
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
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DECODER|Equal5~2_combout\ : std_logic;
SIGNAL \DECODER|saida[3]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECODER|Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM1|ram~4134_combout\ : std_logic;
SIGNAL \RAM1|ram~2066_q\ : std_logic;
SIGNAL \RAM1|ram~4135_combout\ : std_logic;
SIGNAL \RAM1|ram~2074_q\ : std_logic;
SIGNAL \RAM1|ram~4114_combout\ : std_logic;
SIGNAL \RAM1|ram~4115_combout\ : std_logic;
SIGNAL \DECODER|Equal5~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER|saida~2_combout\ : std_logic;
SIGNAL \RAM1|ram~2067_q\ : std_logic;
SIGNAL \RAM1|ram~4116_combout\ : std_logic;
SIGNAL \RAM1|ram~2075_q\ : std_logic;
SIGNAL \RAM1|ram~4117_combout\ : std_logic;
SIGNAL \RAM1|ram~4118_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~2068_q\ : std_logic;
SIGNAL \RAM1|ram~2076_q\ : std_logic;
SIGNAL \RAM1|ram~4119_combout\ : std_logic;
SIGNAL \RAM1|ram~4120_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~2069_q\ : std_logic;
SIGNAL \RAM1|ram~4121_combout\ : std_logic;
SIGNAL \RAM1|ram~2077_q\ : std_logic;
SIGNAL \RAM1|ram~4122_combout\ : std_logic;
SIGNAL \RAM1|ram~4123_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~2070_q\ : std_logic;
SIGNAL \RAM1|ram~2078_q\ : std_logic;
SIGNAL \RAM1|ram~4124_combout\ : std_logic;
SIGNAL \RAM1|ram~4125_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~2071_q\ : std_logic;
SIGNAL \RAM1|ram~4126_combout\ : std_logic;
SIGNAL \RAM1|ram~2079_q\ : std_logic;
SIGNAL \RAM1|ram~4127_combout\ : std_logic;
SIGNAL \RAM1|ram~4128_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~2072_q\ : std_logic;
SIGNAL \RAM1|ram~2080_q\ : std_logic;
SIGNAL \RAM1|ram~4129_combout\ : std_logic;
SIGNAL \RAM1|ram~4130_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~2073_q\ : std_logic;
SIGNAL \RAM1|ram~4131_combout\ : std_logic;
SIGNAL \RAM1|ram~2081_q\ : std_logic;
SIGNAL \RAM1|ram~4132_combout\ : std_logic;
SIGNAL \RAM1|ram~4133_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \DECODER|saida~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4133_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4132_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2081_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4131_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2073_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4130_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4129_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2080_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2072_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4128_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4127_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2079_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4126_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2071_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4125_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4124_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2078_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2070_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4123_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4122_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2077_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4121_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2069_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4120_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4119_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2076_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2068_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4118_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4117_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2075_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4116_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2067_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4115_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~4114_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2074_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~2066_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\RAM1|ALT_INV_ram~4133_combout\ <= NOT \RAM1|ram~4133_combout\;
\RAM1|ALT_INV_ram~4132_combout\ <= NOT \RAM1|ram~4132_combout\;
\RAM1|ALT_INV_ram~2081_q\ <= NOT \RAM1|ram~2081_q\;
\RAM1|ALT_INV_ram~4131_combout\ <= NOT \RAM1|ram~4131_combout\;
\RAM1|ALT_INV_ram~2073_q\ <= NOT \RAM1|ram~2073_q\;
\RAM1|ALT_INV_ram~4130_combout\ <= NOT \RAM1|ram~4130_combout\;
\RAM1|ALT_INV_ram~4129_combout\ <= NOT \RAM1|ram~4129_combout\;
\RAM1|ALT_INV_ram~2080_q\ <= NOT \RAM1|ram~2080_q\;
\RAM1|ALT_INV_ram~2072_q\ <= NOT \RAM1|ram~2072_q\;
\RAM1|ALT_INV_ram~4128_combout\ <= NOT \RAM1|ram~4128_combout\;
\RAM1|ALT_INV_ram~4127_combout\ <= NOT \RAM1|ram~4127_combout\;
\RAM1|ALT_INV_ram~2079_q\ <= NOT \RAM1|ram~2079_q\;
\RAM1|ALT_INV_ram~4126_combout\ <= NOT \RAM1|ram~4126_combout\;
\RAM1|ALT_INV_ram~2071_q\ <= NOT \RAM1|ram~2071_q\;
\RAM1|ALT_INV_ram~4125_combout\ <= NOT \RAM1|ram~4125_combout\;
\RAM1|ALT_INV_ram~4124_combout\ <= NOT \RAM1|ram~4124_combout\;
\RAM1|ALT_INV_ram~2078_q\ <= NOT \RAM1|ram~2078_q\;
\RAM1|ALT_INV_ram~2070_q\ <= NOT \RAM1|ram~2070_q\;
\ULA1|ALT_INV_saida[3]~3_combout\ <= NOT \ULA1|saida[3]~3_combout\;
\RAM1|ALT_INV_ram~4123_combout\ <= NOT \RAM1|ram~4123_combout\;
\RAM1|ALT_INV_ram~4122_combout\ <= NOT \RAM1|ram~4122_combout\;
\RAM1|ALT_INV_ram~2077_q\ <= NOT \RAM1|ram~2077_q\;
\RAM1|ALT_INV_ram~4121_combout\ <= NOT \RAM1|ram~4121_combout\;
\RAM1|ALT_INV_ram~2069_q\ <= NOT \RAM1|ram~2069_q\;
\RAM1|ALT_INV_ram~4120_combout\ <= NOT \RAM1|ram~4120_combout\;
\RAM1|ALT_INV_ram~4119_combout\ <= NOT \RAM1|ram~4119_combout\;
\RAM1|ALT_INV_ram~2076_q\ <= NOT \RAM1|ram~2076_q\;
\RAM1|ALT_INV_ram~2068_q\ <= NOT \RAM1|ram~2068_q\;
\RAM1|ALT_INV_ram~4118_combout\ <= NOT \RAM1|ram~4118_combout\;
\RAM1|ALT_INV_ram~4117_combout\ <= NOT \RAM1|ram~4117_combout\;
\RAM1|ALT_INV_ram~2075_q\ <= NOT \RAM1|ram~2075_q\;
\RAM1|ALT_INV_ram~4116_combout\ <= NOT \RAM1|ram~4116_combout\;
\RAM1|ALT_INV_ram~2067_q\ <= NOT \RAM1|ram~2067_q\;
\RAM1|ALT_INV_ram~4115_combout\ <= NOT \RAM1|ram~4115_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\RAM1|ALT_INV_ram~4114_combout\ <= NOT \RAM1|ram~4114_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\RAM1|ALT_INV_ram~2074_q\ <= NOT \RAM1|ram~2074_q\;
\RAM1|ALT_INV_ram~2066_q\ <= NOT \RAM1|ram~2066_q\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\DECODER|ALT_INV_Equal5~2_combout\ <= NOT \DECODER|Equal5~2_combout\;
\DECODER|ALT_INV_saida[3]~1_combout\ <= NOT \DECODER|saida[3]~1_combout\;
\DECODER|ALT_INV_Equal5~1_combout\ <= NOT \DECODER|Equal5~1_combout\;
\DECODER|ALT_INV_Equal5~0_combout\ <= NOT \DECODER|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;

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
	i => \DECODER|Equal5~0_combout\,
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
	i => \DECODER|saida~0_combout\,
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
	i => \DECODER|Equal5~1_combout\,
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
	i => \DECODER|saida[3]~1_combout\,
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
	i => \DECODER|saida~2_combout\,
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
	i => \DECODER|Equal5~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\PC|DOUT[1]\ : dffeas
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
	q => \PC|DOUT\(1));

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\PC|DOUT[2]\ : dffeas
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
	q => \PC|DOUT\(2));

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\PC|DOUT[3]\ : dffeas
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
	q => \PC|DOUT\(3));

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\PC|DOUT[4]\ : dffeas
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
	q => \PC|DOUT\(4));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\PC|DOUT[5]\ : dffeas
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
	q => \PC|DOUT\(5));

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\PC|DOUT[6]\ : dffeas
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
	q => \PC|DOUT\(6));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\PC|DOUT[7]\ : dffeas
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
	q => \PC|DOUT\(7));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\);

\PC|DOUT[8]\ : dffeas
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
	q => \PC|DOUT\(8));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (\PC|DOUT\(1) & \PC|DOUT\(2))) # (\PC|DOUT\(0) & ((!\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000000010100100000000001010010000000000101001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

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
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((!\PC|DOUT\(0)) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
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
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(2) & !\PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\DECODER|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal5~2_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal5~2_combout\);

\DECODER|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[3]~1_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|saida[3]~1_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (\PC|DOUT\(1))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & !\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000000000011000100000000001100010000000000110001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~9_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~4_combout\);

\DECODER|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal5~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal5~0_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & ((\PC|DOUT\(2)))) # (\PC|DOUT\(0) & ((!\PC|DOUT\(1)) # (!\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111000000000010111100000000001011110000000000101111000000000",
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
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\RAM1|ram~4134\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4134_combout\ = ( \ROM1|memROM~8_combout\ & ( (\DECODER|Equal5~0_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4134_combout\);

\RAM1|ram~2066\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2066_q\);

\RAM1|ram~4135\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4135_combout\ = ( \ROM1|memROM~8_combout\ & ( (\DECODER|Equal5~0_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4135_combout\);

\RAM1|ram~2074\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2074_q\);

\RAM1|ram~4114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4114_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2074_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2066_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2066_q\,
	datab => \RAM1|ALT_INV_ram~2074_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4114_combout\);

\RAM1|ram~4115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4115_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~4114_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4114_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4115_combout\);

\DECODER|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal5~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal5~1_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER|Equal5~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER|ALT_INV_Equal5~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4115_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4115_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DECODER|ALT_INV_Equal5~1_combout\,
	datad => \RAM1|ALT_INV_ram~4115_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\DECODER|saida[3]~1_combout\) # ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4115_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~4_combout\))) ) ) # ( !\ULA1|Add0~1_sumout\ & ( 
-- (\DECODER|saida[3]~1_combout\ & ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4115_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~4115_combout\,
	datae => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida~2_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100000000100110010000000010011001000000001001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|saida~2_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM1|ram~2067\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2067_q\);

\RAM1|ram~4116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4116_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2067_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2067_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4116_combout\);

\RAM1|ram~2075\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2075_q\);

\RAM1|ram~4117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4117_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2075_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2075_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4117_combout\);

\RAM1|ram~4118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4118_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4117_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4116_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~4116_combout\,
	datab => \RAM1|ALT_INV_ram~4117_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4118_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4118_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4118_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \DECODER|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~4118_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add0~5_sumout\ & ( (!\DECODER|saida[3]~1_combout\) # ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4118_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~5_combout\))) ) ) # ( !\ULA1|Add0~5_sumout\ & ( 
-- (\DECODER|saida[3]~1_combout\ & ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4118_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~4118_combout\,
	datae => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM1|ram~2068\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2068_q\);

\RAM1|ram~2076\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2076_q\);

\RAM1|ram~4119\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4119_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2076_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2068_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2068_q\,
	datab => \RAM1|ALT_INV_ram~2076_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4119_combout\);

\RAM1|ram~4120\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4120_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~4119_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4119_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4120_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4120_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4120_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \DECODER|ALT_INV_Equal5~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~4120_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\DECODER|saida[3]~1_combout\) # ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4120_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~6_combout\))) ) ) # ( !\ULA1|Add0~9_sumout\ & ( 
-- (\DECODER|saida[3]~1_combout\ & ((!\DECODER|Equal5~2_combout\ & ((\RAM1|ram~4120_combout\))) # (\DECODER|Equal5~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~2_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~4120_combout\,
	datae => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM1|ram~2069\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2069_q\);

\RAM1|ram~4121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4121_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2069_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2069_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4121_combout\);

\RAM1|ram~2077\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2077_q\);

\RAM1|ram~4122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4122_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2077_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2077_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4122_combout\);

\RAM1|ram~4123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4123_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4122_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4121_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~4121_combout\,
	datab => \RAM1|ALT_INV_ram~4122_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4123_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[3]~3_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4123_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4123_combout\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~1_combout\,
	datab => \DECODER|ALT_INV_Equal5~2_combout\,
	datad => \RAM1|ALT_INV_ram~4123_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~4_combout\ = (!\RAM1|ram~4123_combout\ & (((\ULA1|Add0~13_sumout\ & !\DECODER|saida[3]~1_combout\)))) # (\RAM1|ram~4123_combout\ & (((\ULA1|Add0~13_sumout\ & !\DECODER|saida[3]~1_combout\)) # (\ULA1|saida[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~4123_combout\,
	datab => \ULA1|ALT_INV_saida[3]~3_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \DECODER|ALT_INV_saida[3]~1_combout\,
	combout => \ULA1|saida[3]~4_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~4_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM1|ram~2070\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2070_q\);

\RAM1|ram~2078\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2078_q\);

\RAM1|ram~4124\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4124_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2078_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2070_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2070_q\,
	datab => \RAM1|ALT_INV_ram~2078_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4124_combout\);

\RAM1|ram~4125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4125_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~4124_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4124_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4125_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4125_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4125_combout\))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~1_combout\,
	datab => \DECODER|ALT_INV_Equal5~2_combout\,
	datad => \RAM1|ALT_INV_ram~4125_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = (!\ULA1|saida[3]~3_combout\ & (!\DECODER|saida[3]~1_combout\ & ((\ULA1|Add0~17_sumout\)))) # (\ULA1|saida[3]~3_combout\ & (((!\DECODER|saida[3]~1_combout\ & \ULA1|Add0~17_sumout\)) # (\RAM1|ram~4125_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4125_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~5_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~5_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM1|ram~2071\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2071_q\);

\RAM1|ram~4126\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4126_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2071_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2071_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4126_combout\);

\RAM1|ram~2079\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2079_q\);

\RAM1|ram~4127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4127_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2079_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2079_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4127_combout\);

\RAM1|ram~4128\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4128_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4127_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4126_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~4126_combout\,
	datab => \RAM1|ALT_INV_ram~4127_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4128_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4128_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4128_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~1_combout\,
	datab => \DECODER|ALT_INV_Equal5~2_combout\,
	datad => \RAM1|ALT_INV_ram~4128_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = (!\ULA1|saida[3]~3_combout\ & (!\DECODER|saida[3]~1_combout\ & ((\ULA1|Add0~21_sumout\)))) # (\ULA1|saida[3]~3_combout\ & (((!\DECODER|saida[3]~1_combout\ & \ULA1|Add0~21_sumout\)) # (\RAM1|ram~4128_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4128_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~6_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM1|ram~2072\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2072_q\);

\RAM1|ram~2080\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2080_q\);

\RAM1|ram~4129\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4129_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2080_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~2072_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~2072_q\,
	datab => \RAM1|ALT_INV_ram~2080_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4129_combout\);

\RAM1|ram~4130\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4130_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~4129_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~4129_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4130_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4130_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4130_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~1_combout\,
	datab => \DECODER|ALT_INV_Equal5~2_combout\,
	datad => \RAM1|ALT_INV_ram~4130_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = (!\ULA1|saida[3]~3_combout\ & (!\DECODER|saida[3]~1_combout\ & ((\ULA1|Add0~25_sumout\)))) # (\ULA1|saida[3]~3_combout\ & (((!\DECODER|saida[3]~1_combout\ & \ULA1|Add0~25_sumout\)) # (\RAM1|ram~4130_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4130_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~7_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM1|ram~2073\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~4134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2073_q\);

\RAM1|ram~4131\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4131_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2073_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2073_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4131_combout\);

\RAM1|ram~2081\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~4135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~2081_q\);

\RAM1|ram~4132\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4132_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~2081_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~2081_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~4132_combout\);

\RAM1|ram~4133\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~4133_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4132_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~4131_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~4131_combout\,
	datab => \RAM1|ALT_INV_ram~4132_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~4133_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER|Equal5~1_combout\ $ (((!\DECODER|Equal5~2_combout\ & \RAM1|ram~4133_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal5~1_combout\,
	datab => \DECODER|ALT_INV_Equal5~2_combout\,
	datad => \RAM1|ALT_INV_ram~4133_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = (!\ULA1|saida[3]~3_combout\ & (!\DECODER|saida[3]~1_combout\ & ((\ULA1|Add0~29_sumout\)))) # (\ULA1|saida[3]~3_combout\ & (((!\DECODER|saida[3]~1_combout\ & \ULA1|Add0~29_sumout\)) # (\RAM1|ram~4133_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER|ALT_INV_saida[3]~1_combout\,
	datac => \RAM1|ALT_INV_ram~4133_combout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~8_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~8_combout\,
	ena => \DECODER|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000000100110000000000010011000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER|saida~0_combout\);

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
END structure;


