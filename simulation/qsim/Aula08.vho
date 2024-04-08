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

-- DATE "04/08/2024 13:51:23"

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

ENTITY 	aula08 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	MEM : OUT std_logic_vector(7 DOWNTO 0);
	bolso : OUT std_logic_vector(7 DOWNTO 0)
	);
END aula08;

ARCHITECTURE structure OF aula08 IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bolso : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \MEM[0]~output_o\ : std_logic;
SIGNAL \MEM[1]~output_o\ : std_logic;
SIGNAL \MEM[2]~output_o\ : std_logic;
SIGNAL \MEM[3]~output_o\ : std_logic;
SIGNAL \MEM[4]~output_o\ : std_logic;
SIGNAL \MEM[5]~output_o\ : std_logic;
SIGNAL \MEM[6]~output_o\ : std_logic;
SIGNAL \MEM[7]~output_o\ : std_logic;
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
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
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
SIGNAL \bolso[0]~output_o\ : std_logic;
SIGNAL \bolso[1]~output_o\ : std_logic;
SIGNAL \bolso[2]~output_o\ : std_logic;
SIGNAL \bolso[3]~output_o\ : std_logic;
SIGNAL \bolso[4]~output_o\ : std_logic;
SIGNAL \bolso[5]~output_o\ : std_logic;
SIGNAL \bolso[6]~output_o\ : std_logic;
SIGNAL \bolso[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~0_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~22_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~8_combout\ : std_logic;
SIGNAL \buff3_7_0|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \buff3_K3|saida~0_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \buff3_K4|saida~0_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~9_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \buff3_K1|saida~0_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \buff3_K2|saida~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \buff3_8|saida~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \buff3_9|saida~0_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~10_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~11_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~12_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[1]~13_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[2]~14_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[3]~15_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[4]~16_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[5]~17_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[6]~18_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM4|dado_out[7]~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~1_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~20_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM4|dado_out[7]~21_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \REGled2|DOUT~0_combout\ : std_logic;
SIGNAL \REGled2|DOUT~q\ : std_logic;
SIGNAL \REGled1|DOUT~0_combout\ : std_logic;
SIGNAL \REGled1|DOUT~q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \reg4b5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGleds|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg4b0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[7]~21_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~20_combout\ : std_logic;
SIGNAL \ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[4]~16_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[3]~15_combout\ : std_logic;
SIGNAL \ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \buff3_9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \buff3_8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \buff3_K2|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \buff3_K1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \buff3_K4|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \buff3_K3|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \buff3_7_0|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \reg4b5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGled1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGled2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
MEM <= ww_MEM;
bolso <= ww_bolso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\CPU|decoderInstru|ALT_INV_Equal11~1_combout\ <= NOT \CPU|decoderInstru|Equal11~1_combout\;
\RAM4|ALT_INV_dado_out[0]~22_combout\ <= NOT \RAM4|dado_out[0]~22_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\RAM4|ALT_INV_dado_out[7]~21_combout\ <= NOT \RAM4|dado_out[7]~21_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\RAM4|ALT_INV_dado_out[0]~20_combout\ <= NOT \RAM4|dado_out[0]~20_combout\;
\ALT_INV_comb~13_combout\ <= NOT \comb~13_combout\;
\CPU|decoderInstru|ALT_INV_saida~1_combout\ <= NOT \CPU|decoderInstru|saida~1_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\RAM4|ALT_INV_dado_out[4]~16_combout\ <= NOT \RAM4|dado_out[4]~16_combout\;
\RAM4|ALT_INV_dado_out[3]~15_combout\ <= NOT \RAM4|dado_out[3]~15_combout\;
\ALT_INV_comb~12_combout\ <= NOT \comb~12_combout\;
\RAM4|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM4|dado_out[0]~12_combout\;
\RAM4|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM4|dado_out[0]~10_combout\;
\buff3_9|ALT_INV_saida~0_combout\ <= NOT \buff3_9|saida~0_combout\;
\buff3_8|ALT_INV_saida~0_combout\ <= NOT \buff3_8|saida~0_combout\;
\buff3_K2|ALT_INV_saida~0_combout\ <= NOT \buff3_K2|saida~0_combout\;
\buff3_K1|ALT_INV_saida~0_combout\ <= NOT \buff3_K1|saida~0_combout\;
\RAM4|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM4|dado_out[0]~9_combout\;
\buff3_K4|ALT_INV_saida~0_combout\ <= NOT \buff3_K4|saida~0_combout\;
\buff3_K3|ALT_INV_saida~0_combout\ <= NOT \buff3_K3|saida~0_combout\;
\buff3_7_0|ALT_INV_saida[0]~0_combout\ <= NOT \buff3_7_0|saida[0]~0_combout\;
\RAM4|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM4|dado_out[0]~8_combout\;
\CPU|decoderInstru|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|decoderInstru|saida[5]~0_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \CPU|MUX2|saida_MUX[3]~1_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~0_combout\ <= NOT \CPU|decoderInstru|Equal11~0_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\ <= NOT \CPU|MUX2|saida_MUX[8]~0_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\reg4b5|ALT_INV_DOUT\(2) <= NOT \reg4b5|DOUT\(2);
\reg4b5|ALT_INV_DOUT\(1) <= NOT \reg4b5|DOUT\(1);
\reg4b5|ALT_INV_DOUT\(3) <= NOT \reg4b5|DOUT\(3);
\reg4b5|ALT_INV_DOUT\(0) <= NOT \reg4b5|DOUT\(0);
\reg4b4|ALT_INV_DOUT\(2) <= NOT \reg4b4|DOUT\(2);
\reg4b4|ALT_INV_DOUT\(1) <= NOT \reg4b4|DOUT\(1);
\reg4b4|ALT_INV_DOUT\(3) <= NOT \reg4b4|DOUT\(3);
\reg4b4|ALT_INV_DOUT\(0) <= NOT \reg4b4|DOUT\(0);
\reg4b3|ALT_INV_DOUT\(2) <= NOT \reg4b3|DOUT\(2);
\reg4b3|ALT_INV_DOUT\(1) <= NOT \reg4b3|DOUT\(1);
\reg4b3|ALT_INV_DOUT\(3) <= NOT \reg4b3|DOUT\(3);
\reg4b3|ALT_INV_DOUT\(0) <= NOT \reg4b3|DOUT\(0);
\reg4b2|ALT_INV_DOUT\(2) <= NOT \reg4b2|DOUT\(2);
\reg4b2|ALT_INV_DOUT\(1) <= NOT \reg4b2|DOUT\(1);
\reg4b2|ALT_INV_DOUT\(3) <= NOT \reg4b2|DOUT\(3);
\reg4b2|ALT_INV_DOUT\(0) <= NOT \reg4b2|DOUT\(0);
\reg4b1|ALT_INV_DOUT\(2) <= NOT \reg4b1|DOUT\(2);
\reg4b1|ALT_INV_DOUT\(1) <= NOT \reg4b1|DOUT\(1);
\reg4b1|ALT_INV_DOUT\(3) <= NOT \reg4b1|DOUT\(3);
\reg4b1|ALT_INV_DOUT\(0) <= NOT \reg4b1|DOUT\(0);
\reg4b0|ALT_INV_DOUT\(2) <= NOT \reg4b0|DOUT\(2);
\reg4b0|ALT_INV_DOUT\(1) <= NOT \reg4b0|DOUT\(1);
\reg4b0|ALT_INV_DOUT\(3) <= NOT \reg4b0|DOUT\(3);
\reg4b0|ALT_INV_DOUT\(0) <= NOT \reg4b0|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\REGled1|ALT_INV_DOUT~q\ <= NOT \REGled1|DOUT~q\;
\REGled2|ALT_INV_DOUT~q\ <= NOT \REGled2|DOUT~q\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;

\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[0]~11_combout\,
	oe => \RAM4|dado_out[0]~12_combout\,
	devoe => ww_devoe,
	o => \MEM[0]~output_o\);

\MEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[1]~13_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[1]~output_o\);

\MEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[2]~14_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[2]~output_o\);

\MEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[3]~15_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[3]~output_o\);

\MEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[4]~16_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[4]~output_o\);

\MEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[5]~17_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[5]~output_o\);

\MEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[6]~18_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[6]~output_o\);

\MEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM4|dado_out[7]~19_combout\,
	oe => \comb~12_combout\,
	devoe => ww_devoe,
	o => \MEM[7]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGleds|DOUT\(0),
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
	i => \REGleds|DOUT\(1),
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
	i => \REGleds|DOUT\(2),
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
	i => \REGleds|DOUT\(3),
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
	i => \REGleds|DOUT\(4),
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
	i => \REGleds|DOUT\(5),
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
	i => \REGleds|DOUT\(6),
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
	i => \REGleds|DOUT\(7),
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
	i => \REGled2|DOUT~q\,
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
	i => \REGled1|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
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
	i => \CPU|PC|DOUT\(1),
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
	i => \CPU|PC|DOUT\(2),
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
	i => \CPU|PC|DOUT\(3),
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
	i => \CPU|PC|DOUT\(4),
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
	i => \CPU|PC|DOUT\(5),
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
	i => \CPU|PC|DOUT\(6),
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
	i => \CPU|PC|DOUT\(7),
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
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv0|rascSaida7seg[0]~0_combout\,
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
	i => \conv0|rascSaida7seg[1]~1_combout\,
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
	i => \conv0|rascSaida7seg[2]~2_combout\,
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
	i => \conv0|rascSaida7seg[3]~3_combout\,
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
	i => \conv0|rascSaida7seg[4]~4_combout\,
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
	i => \conv0|rascSaida7seg[5]~5_combout\,
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
	i => \conv0|rascSaida7seg[6]~6_combout\,
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
	i => \conv1|rascSaida7seg[0]~0_combout\,
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
	i => \conv1|rascSaida7seg[1]~1_combout\,
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
	i => \conv1|rascSaida7seg[2]~2_combout\,
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
	i => \conv1|rascSaida7seg[3]~3_combout\,
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
	i => \conv1|rascSaida7seg[4]~4_combout\,
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
	i => \conv1|rascSaida7seg[5]~5_combout\,
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
	i => \conv1|rascSaida7seg[6]~6_combout\,
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
	i => \conv2|rascSaida7seg[0]~0_combout\,
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
	i => \conv2|rascSaida7seg[1]~1_combout\,
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
	i => \conv2|rascSaida7seg[2]~2_combout\,
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
	i => \conv2|rascSaida7seg[3]~3_combout\,
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
	i => \conv2|rascSaida7seg[4]~4_combout\,
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
	i => \conv2|rascSaida7seg[5]~5_combout\,
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
	i => \conv2|rascSaida7seg[6]~6_combout\,
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
	i => \conv3|rascSaida7seg[0]~0_combout\,
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
	i => \conv3|rascSaida7seg[1]~1_combout\,
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
	i => \conv3|rascSaida7seg[2]~2_combout\,
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
	i => \conv3|rascSaida7seg[3]~3_combout\,
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
	i => \conv3|rascSaida7seg[4]~4_combout\,
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
	i => \conv3|rascSaida7seg[5]~5_combout\,
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
	i => \conv3|rascSaida7seg[6]~6_combout\,
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
	i => \conv4|rascSaida7seg[0]~0_combout\,
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
	i => \conv4|rascSaida7seg[1]~1_combout\,
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
	i => \conv4|rascSaida7seg[2]~2_combout\,
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
	i => \conv4|rascSaida7seg[3]~3_combout\,
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
	i => \conv4|rascSaida7seg[4]~4_combout\,
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
	i => \conv4|rascSaida7seg[5]~5_combout\,
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
	i => \conv4|rascSaida7seg[6]~6_combout\,
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
	i => \conv5|rascSaida7seg[0]~0_combout\,
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
	i => \conv5|rascSaida7seg[1]~1_combout\,
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
	i => \conv5|rascSaida7seg[2]~2_combout\,
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
	i => \conv5|rascSaida7seg[3]~3_combout\,
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
	i => \conv5|rascSaida7seg[4]~4_combout\,
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
	i => \conv5|rascSaida7seg[5]~5_combout\,
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
	i => \conv5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\bolso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => \bolso[0]~output_o\);

\bolso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => \bolso[1]~output_o\);

\bolso[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => \bolso[2]~output_o\);

\bolso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => \bolso[3]~output_o\);

\bolso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => \bolso[4]~output_o\);

\bolso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => \bolso[5]~output_o\);

\bolso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => \bolso[6]~output_o\);

\bolso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \bolso[7]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

\CPU|MUX2|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~6_combout\ = (!\CPU|MUX2|saida_MUX[3]~1_combout\ & \CPU|incrementaPC|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~6_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0)))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100100100100110000000001001001001001001001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001001001001010000000000010010010010010010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001001001001000000000000010010010010010010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~12_combout\);

\CPU|MUX2|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~1_combout\ = ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & ((!\CPU|PC|DOUT\(4)) # (\ROM1|memROM~10_combout\)))) ) ) ) # ( \ROM1|memROM~11_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( (\CPU|PC|DOUT\(4) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000100000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~1_combout\);

\CPU|MUX2|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~5_combout\ = (!\CPU|MUX2|saida_MUX[3]~1_combout\ & \CPU|incrementaPC|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|saida_MUX[3]~5_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|MUX2|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~0_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101101101101101101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|MUX2|saida_MUX[8]~0_combout\);

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

\CPU|MUX2|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~9_combout\ = (!\CPU|MUX2|saida_MUX[3]~1_combout\ & \CPU|incrementaPC|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~9_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

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

\CPU|MUX2|saida_MUX[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~10_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # (\CPU|MUX2|saida_MUX[8]~0_combout\) ) ) # ( !\CPU|incrementaPC|Add0~33_sumout\ & ( (\CPU|MUX2|saida_MUX[8]~0_combout\ & 
-- \CPU|MUX2|saida_MUX[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~10_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000001100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & 
-- \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010010010101001001001001010100100100100101010010010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

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
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & \ROM1|memROM~4_combout\))) ) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & \ROM1|memROM~4_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(4) & \ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~7_combout\);

\CPU|MUX2|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~8_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # ((!\CPU|PC|DOUT\(8) & \ROM1|memROM~7_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~7_combout\ 
-- & \CPU|MUX2|saida_MUX[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~8_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000100001000100000010000100010000001000010001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~19_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \ROM1|memROM~8_combout\);

\CPU|MUX2|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~4_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # (\ROM1|memROM~8_combout\) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (\ROM1|memROM~8_combout\ & \CPU|MUX2|saida_MUX[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~4_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010010000100000000000000101001000100100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~14_combout\);

\CPU|MUX2|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~3_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # (\ROM1|memROM~14_combout\) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( (\ROM1|memROM~14_combout\ & \CPU|MUX2|saida_MUX[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~3_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \ROM1|memROM~1_combout\ & ( !\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001001101101101100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~3_combout\);

\CPU|MUX2|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~7_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # (\ROM1|memROM~3_combout\) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( (\ROM1|memROM~3_combout\ & \CPU|MUX2|saida_MUX[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~7_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

\CPU|MUX2|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~2_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX2|saida_MUX[3]~1_combout\) # (\ROM1|memROM~13_combout\) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (\ROM1|memROM~13_combout\ & \CPU|MUX2|saida_MUX[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~2_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000110000110100000000000000101000001100001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \comb~0_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\CPU|decoderInstru|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~0_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & ((!\CPU|PC|DOUT\(4)) # (\ROM1|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoderInstru|saida[5]~0_combout\);

\RAM4|dado_out[0]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~22_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000011000000110001000000011100000000110000001100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \RAM4|dado_out[0]~22_combout\);

\RAM4|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~8_combout\ = ( \RAM4|dado_out[0]~22_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \RAM4|ALT_INV_dado_out[0]~22_combout\,
	combout => \RAM4|dado_out[0]~8_combout\);

\buff3_7_0|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_7_0|saida[0]~0_combout\ = ( \CPU|decoderInstru|saida[5]~0_combout\ & ( \RAM4|dado_out[0]~8_combout\ & ( (!\comb~0_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	dataf => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	combout => \buff3_7_0|saida[0]~0_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\buff3_K3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K3|saida~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	combout => \buff3_K3|saida~0_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\buff3_K4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K4|saida~0_combout\ = (\FPGA_RESET_N~input_o\ & ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \buff3_K4|saida~0_combout\);

\RAM4|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~9_combout\ = ( \buff3_K3|saida~0_combout\ & ( \buff3_K4|saida~0_combout\ & ( (\ROM1|memROM~3_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\)) ) ) ) # ( !\buff3_K3|saida~0_combout\ & ( 
-- \buff3_K4|saida~0_combout\ & ( (\ROM1|memROM~3_combout\ & (\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\))) ) ) ) # ( \buff3_K3|saida~0_combout\ & ( !\buff3_K4|saida~0_combout\ & ( 
-- (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	datae => \buff3_K3|ALT_INV_saida~0_combout\,
	dataf => \buff3_K4|ALT_INV_saida~0_combout\,
	combout => \RAM4|dado_out[0]~9_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \comb~3_combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\buff3_K1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K1|saida~0_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \KEY[1]~input_o\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\comb~3_combout\ & \CPU|decoderInstru|saida[5]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \buff3_K1|saida~0_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \comb~4_combout\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\buff3_K2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K2|saida~0_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \KEY[2]~input_o\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\comb~4_combout\ & \CPU|decoderInstru|saida[5]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_comb~4_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \buff3_K2|saida~0_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\buff3_8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_8|saida~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\SW[8]~input_o\)))

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
	datad => \ALT_INV_SW[8]~input_o\,
	combout => \buff3_8|saida~0_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\buff3_9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_9|saida~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\SW[9]~input_o\)))

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
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \buff3_9|saida~0_combout\);

\RAM4|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~10_combout\ = ( \buff3_8|saida~0_combout\ & ( \buff3_9|saida~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\))) ) ) ) # ( 
-- !\buff3_8|saida~0_combout\ & ( \buff3_9|saida~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\))) ) ) ) # ( \buff3_8|saida~0_combout\ & ( 
-- !\buff3_9|saida~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	datae => \buff3_8|ALT_INV_saida~0_combout\,
	dataf => \buff3_9|ALT_INV_saida~0_combout\,
	combout => \RAM4|dado_out[0]~10_combout\);

\RAM4|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~11_combout\ = ( !\RAM4|dado_out[0]~10_combout\ & ( (!\buff3_7_0|saida[0]~0_combout\ & (!\RAM4|dado_out[0]~9_combout\ & (!\buff3_K1|saida~0_combout\ & !\buff3_K2|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buff3_7_0|ALT_INV_saida[0]~0_combout\,
	datab => \RAM4|ALT_INV_dado_out[0]~9_combout\,
	datac => \buff3_K1|ALT_INV_saida~0_combout\,
	datad => \buff3_K2|ALT_INV_saida~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~10_combout\,
	combout => \RAM4|dado_out[0]~11_combout\);

\RAM4|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~12_combout\ = ( \CPU|decoderInstru|saida[5]~0_combout\ & ( \RAM4|dado_out[0]~8_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~8_combout\) # ((!\ROM1|memROM~14_combout\ & \ROM1|memROM~3_combout\)))) # (\ROM1|memROM~13_combout\ 
-- & (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~14_combout\) # (\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	dataf => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	combout => \RAM4|dado_out[0]~12_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\RAM4|dado_out[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[1]~13_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[1]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[1]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[1]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \RAM4|dado_out[1]~13_combout\);

\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( (!\comb~0_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & \CPU|decoderInstru|saida[5]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	combout => \comb~12_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\RAM4|dado_out[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[2]~14_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[2]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[2]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[2]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \RAM4|dado_out[2]~14_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\RAM4|dado_out[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[3]~15_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[3]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[3]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[3]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \RAM4|dado_out[3]~15_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\RAM4|dado_out[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[4]~16_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[4]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[4]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[4]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \RAM4|dado_out[4]~16_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\RAM4|dado_out[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[5]~17_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[5]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[5]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[5]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \RAM4|dado_out[5]~17_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\RAM4|dado_out[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[6]~18_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[6]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[6]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[6]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \RAM4|dado_out[6]~18_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\RAM4|dado_out[7]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[7]~19_combout\ = ( \RAM4|dado_out[0]~8_combout\ & ( \SW[7]~input_o\ ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( \SW[7]~input_o\ ) ) # ( \RAM4|dado_out[0]~8_combout\ & ( !\SW[7]~input_o\ & ( (((!\CPU|decoderInstru|saida[5]~0_combout\) # 
-- (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~3_combout\)) # (\comb~0_combout\) ) ) ) # ( !\RAM4|dado_out[0]~8_combout\ & ( !\SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \RAM4|dado_out[7]~19_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\ROM1|memROM~1_combout\ & ((!\CPU|PC|DOUT\(4)) # (\ROM1|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~18_combout\);

\CPU|decoderInstru|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~1_combout\ = (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~15_combout\ $ (\ROM1|memROM~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|decoderInstru|saida~1_combout\);

\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|decoderInstru|saida[5]~0_combout\ & \RAM4|dado_out[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~8_combout\,
	combout => \comb~13_combout\);

\RAM4|dado_out[0]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~20_combout\ = ( \buff3_8|saida~0_combout\ & ( \buff3_9|saida~0_combout\ & ( (!\comb~13_combout\ & (!\buff3_7_0|saida[0]~0_combout\ & (!\buff3_K1|saida~0_combout\ & !\buff3_K2|saida~0_combout\))) ) ) ) # ( !\buff3_8|saida~0_combout\ & ( 
-- \buff3_9|saida~0_combout\ & ( (!\comb~13_combout\ & (!\buff3_7_0|saida[0]~0_combout\ & (!\buff3_K1|saida~0_combout\ & !\buff3_K2|saida~0_combout\))) ) ) ) # ( \buff3_8|saida~0_combout\ & ( !\buff3_9|saida~0_combout\ & ( (!\comb~13_combout\ & 
-- (!\buff3_7_0|saida[0]~0_combout\ & (!\buff3_K1|saida~0_combout\ & !\buff3_K2|saida~0_combout\))) ) ) ) # ( !\buff3_8|saida~0_combout\ & ( !\buff3_9|saida~0_combout\ & ( (!\buff3_7_0|saida[0]~0_combout\ & (!\buff3_K1|saida~0_combout\ & 
-- !\buff3_K2|saida~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~13_combout\,
	datab => \buff3_7_0|ALT_INV_saida[0]~0_combout\,
	datac => \buff3_K1|ALT_INV_saida~0_combout\,
	datad => \buff3_K2|ALT_INV_saida~0_combout\,
	datae => \buff3_8|ALT_INV_saida~0_combout\,
	dataf => \buff3_9|ALT_INV_saida~0_combout\,
	combout => \RAM4|dado_out[0]~20_combout\);

\CPU|ULA1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida~0_combout\ = ( \RAM4|dado_out[0]~20_combout\ & ( \RAM4|dado_out[0]~12_combout\ & ( (!\CPU|decoderInstru|saida~1_combout\ & ((!\RAM4|dado_out[0]~9_combout\))) # (\CPU|decoderInstru|saida~1_combout\ & (\CPU|REGA|DOUT\(0))) ) ) ) # ( 
-- !\RAM4|dado_out[0]~20_combout\ & ( \RAM4|dado_out[0]~12_combout\ & ( (\CPU|REGA|DOUT\(0) & \CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \RAM4|dado_out[0]~20_combout\ & ( !\RAM4|dado_out[0]~12_combout\ & ( (!\CPU|decoderInstru|saida~1_combout\) # 
-- (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\RAM4|dado_out[0]~20_combout\ & ( !\RAM4|dado_out[0]~12_combout\ & ( (!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGA|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100000101000001011111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~9_combout\,
	datae => \RAM4|ALT_INV_dado_out[0]~20_combout\,
	dataf => \RAM4|ALT_INV_dado_out[0]~12_combout\,
	combout => \CPU|ULA1|saida~0_combout\);

\CPU|decoderInstru|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~1_combout\ = (!\ROM1|memROM~1_combout\) # ((\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \CPU|decoderInstru|Equal11~1_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~18_combout\))) # (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~17_combout\ & 
-- \ROM1|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|decoderInstru|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~3_combout\ = (!\CPU|decoderInstru|Equal11~1_combout\ & ((\CPU|decoderInstru|saida~2_combout\) # (\CPU|decoderInstru|saida[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[5]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|decoderInstru|saida[4]~3_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida~0_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\CPU|decoderInstru|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~0_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & ((!\CPU|PC|DOUT\(4)) # (\ROM1|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|decoderInstru|Equal11~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\ROM1|memROM~8_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\comb~0_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & \CPU|MUX2|saida_MUX[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \comb~1_combout\);

\REGleds|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(0));

\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = (!\comb~12_combout\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~12_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \CPU|MUX1|saida_MUX[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[1]~1_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\REGleds|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(1));

\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = (!\comb~12_combout\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~12_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \CPU|MUX1|saida_MUX[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[2]~2_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\REGleds|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(2));

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \RAM4|dado_out[3]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \RAM4|ALT_INV_dado_out[3]~15_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[3]~3_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\REGleds|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(3));

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \RAM4|dado_out[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \RAM4|ALT_INV_dado_out[4]~16_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\REGleds|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(4));

\CPU|MUX1|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~2_combout\ = (!\comb~12_combout\) # (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~12_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~2_combout\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \CPU|MUX1|saida_MUX[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[5]~2_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\REGleds|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(5));

\CPU|MUX1|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~3_combout\ = (!\comb~12_combout\) # (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~12_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	combout => \CPU|MUX1|saida_MUX[6]~3_combout\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \CPU|MUX1|saida_MUX[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\REGleds|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(6));

\RAM4|dado_out[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[7]~21_combout\ = (!\comb~12_combout\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~12_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	combout => \RAM4|dado_out[7]~21_combout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|decoderInstru|saida~1_combout\ & \RAM4|dado_out[7]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \RAM4|ALT_INV_dado_out[7]~21_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|decoderInstru|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\REGleds|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGleds|DOUT\(7));

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & (\CPU|MUX2|saida_MUX[8]~0_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \comb~2_combout\);

\REGled2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGled2|DOUT~0_combout\ = (!\comb~2_combout\ & (\REGled2|DOUT~q\)) # (\comb~2_combout\ & ((!\comb~3_combout\ & (\REGled2|DOUT~q\)) # (\comb~3_combout\ & ((\CPU|REGA|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGled2|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_comb~3_combout\,
	combout => \REGled2|DOUT~0_combout\);

\REGled2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGled2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGled2|DOUT~q\);

\REGled1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGled1|DOUT~0_combout\ = (!\comb~2_combout\ & (\REGled1|DOUT~q\)) # (\comb~2_combout\ & ((!\comb~4_combout\ & (\REGled1|DOUT~q\)) # (\comb~4_combout\ & ((\CPU|REGA|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGled1|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_comb~4_combout\,
	combout => \REGled1|DOUT~0_combout\);

\REGled1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGled1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGled1|DOUT~q\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\ROM1|memROM~8_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\comb~0_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & \CPU|MUX2|saida_MUX[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \comb~5_combout\);

\reg4b0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(0));

\reg4b0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(3));

\reg4b0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(1));

\reg4b0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(2));

\conv0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[0]~0_combout\ = (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(1) $ (!\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[0]~0_combout\);

\conv0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[1]~1_combout\ = (!\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(2) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(1))))) # (\reg4b0|DOUT\(3) & ((!\reg4b0|DOUT\(0) & ((\reg4b0|DOUT\(2)))) # (\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[1]~1_combout\);

\conv0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[2]~2_combout\ = (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1) & !\reg4b0|DOUT\(2)))) # (\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(2) & ((!\reg4b0|DOUT\(0)) # (\reg4b0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[2]~2_combout\);

\conv0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[3]~3_combout\ = (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(1) & ((!\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(2) & \reg4b0|DOUT\(3))) # (\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(3),
	combout => \conv0|rascSaida7seg[3]~3_combout\);

\conv0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[4]~4_combout\ = (!\reg4b0|DOUT\(1) & ((!\reg4b0|DOUT\(2) & ((\reg4b0|DOUT\(0)))) # (\reg4b0|DOUT\(2) & (!\reg4b0|DOUT\(3))))) # (\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) & ((\reg4b0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(3),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(0),
	combout => \conv0|rascSaida7seg[4]~4_combout\);

\conv0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[5]~5_combout\ = (!\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(2) & !\reg4b0|DOUT\(3)))) # (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(3) $ (((!\reg4b0|DOUT\(1) & \reg4b0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(3),
	combout => \conv0|rascSaida7seg[5]~5_combout\);

\conv0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[6]~6_combout\ = (!\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) $ (\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(1) $ (\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[6]~6_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( \comb~3_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & (\CPU|MUX2|saida_MUX[8]~0_combout\ & !\ROM1|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~6_combout\);

\reg4b1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(0));

\reg4b1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(3));

\reg4b1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(1));

\reg4b1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(2));

\conv1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[0]~0_combout\ = (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(1) $ (!\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[0]~0_combout\);

\conv1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[1]~1_combout\ = (!\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(2) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(1))))) # (\reg4b1|DOUT\(3) & ((!\reg4b1|DOUT\(0) & ((\reg4b1|DOUT\(2)))) # (\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[1]~1_combout\);

\conv1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[2]~2_combout\ = (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1) & !\reg4b1|DOUT\(2)))) # (\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(2) & ((!\reg4b1|DOUT\(0)) # (\reg4b1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[2]~2_combout\);

\conv1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[3]~3_combout\ = (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(1) & ((!\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(2) & \reg4b1|DOUT\(3))) # (\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(3),
	combout => \conv1|rascSaida7seg[3]~3_combout\);

\conv1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[4]~4_combout\ = (!\reg4b1|DOUT\(1) & ((!\reg4b1|DOUT\(2) & ((\reg4b1|DOUT\(0)))) # (\reg4b1|DOUT\(2) & (!\reg4b1|DOUT\(3))))) # (\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) & ((\reg4b1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(3),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(0),
	combout => \conv1|rascSaida7seg[4]~4_combout\);

\conv1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[5]~5_combout\ = (!\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(2) & !\reg4b1|DOUT\(3)))) # (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(3) $ (((!\reg4b1|DOUT\(1) & \reg4b1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(3),
	combout => \conv1|rascSaida7seg[5]~5_combout\);

\conv1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[6]~6_combout\ = (!\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) $ (\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(1) $ (\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[6]~6_combout\);

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( \comb~4_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & (\CPU|MUX2|saida_MUX[8]~0_combout\ & !\ROM1|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~7_combout\);

\reg4b2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(0));

\reg4b2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(3));

\reg4b2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(1));

\reg4b2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(2));

\conv2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[0]~0_combout\ = (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(1) $ (!\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[0]~0_combout\);

\conv2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[1]~1_combout\ = (!\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(2) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(1))))) # (\reg4b2|DOUT\(3) & ((!\reg4b2|DOUT\(0) & ((\reg4b2|DOUT\(2)))) # (\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[1]~1_combout\);

\conv2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[2]~2_combout\ = (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1) & !\reg4b2|DOUT\(2)))) # (\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(2) & ((!\reg4b2|DOUT\(0)) # (\reg4b2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[2]~2_combout\);

\conv2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[3]~3_combout\ = (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(1) & ((!\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(2) & \reg4b2|DOUT\(3))) # (\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(3),
	combout => \conv2|rascSaida7seg[3]~3_combout\);

\conv2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[4]~4_combout\ = (!\reg4b2|DOUT\(1) & ((!\reg4b2|DOUT\(2) & ((\reg4b2|DOUT\(0)))) # (\reg4b2|DOUT\(2) & (!\reg4b2|DOUT\(3))))) # (\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) & ((\reg4b2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(3),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(0),
	combout => \conv2|rascSaida7seg[4]~4_combout\);

\conv2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[5]~5_combout\ = (!\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(2) & !\reg4b2|DOUT\(3)))) # (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(3) $ (((!\reg4b2|DOUT\(1) & \reg4b2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(3),
	combout => \conv2|rascSaida7seg[5]~5_combout\);

\conv2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[6]~6_combout\ = (!\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) $ (\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(1) $ (\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[6]~6_combout\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \comb~8_combout\);

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( \comb~8_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & (\CPU|MUX2|saida_MUX[8]~0_combout\ & !\ROM1|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \comb~9_combout\);

\reg4b3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(0));

\reg4b3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(3));

\reg4b3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(1));

\reg4b3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(2));

\conv3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[0]~0_combout\ = (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(1) $ (!\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[0]~0_combout\);

\conv3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[1]~1_combout\ = (!\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(2) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(1))))) # (\reg4b3|DOUT\(3) & ((!\reg4b3|DOUT\(0) & ((\reg4b3|DOUT\(2)))) # (\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[1]~1_combout\);

\conv3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[2]~2_combout\ = (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1) & !\reg4b3|DOUT\(2)))) # (\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(2) & ((!\reg4b3|DOUT\(0)) # (\reg4b3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[2]~2_combout\);

\conv3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[3]~3_combout\ = (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(1) & ((!\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(2) & \reg4b3|DOUT\(3))) # (\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(3),
	combout => \conv3|rascSaida7seg[3]~3_combout\);

\conv3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[4]~4_combout\ = (!\reg4b3|DOUT\(1) & ((!\reg4b3|DOUT\(2) & ((\reg4b3|DOUT\(0)))) # (\reg4b3|DOUT\(2) & (!\reg4b3|DOUT\(3))))) # (\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) & ((\reg4b3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(3),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(0),
	combout => \conv3|rascSaida7seg[4]~4_combout\);

\conv3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[5]~5_combout\ = (!\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(2) & !\reg4b3|DOUT\(3)))) # (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(3) $ (((!\reg4b3|DOUT\(1) & \reg4b3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(3),
	combout => \conv3|rascSaida7seg[5]~5_combout\);

\conv3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[6]~6_combout\ = (!\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) $ (\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(1) $ (\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[6]~6_combout\);

\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \ROM1|memROM~8_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\comb~0_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & \CPU|MUX2|saida_MUX[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \comb~10_combout\);

\reg4b4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(0));

\reg4b4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(3));

\reg4b4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(1));

\reg4b4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(2));

\conv4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[0]~0_combout\ = (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(1) $ (!\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[0]~0_combout\);

\conv4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[1]~1_combout\ = (!\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(2) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(1))))) # (\reg4b4|DOUT\(3) & ((!\reg4b4|DOUT\(0) & ((\reg4b4|DOUT\(2)))) # (\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[1]~1_combout\);

\conv4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[2]~2_combout\ = (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1) & !\reg4b4|DOUT\(2)))) # (\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(2) & ((!\reg4b4|DOUT\(0)) # (\reg4b4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[2]~2_combout\);

\conv4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[3]~3_combout\ = (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(1) & ((!\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(2) & \reg4b4|DOUT\(3))) # (\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(3),
	combout => \conv4|rascSaida7seg[3]~3_combout\);

\conv4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[4]~4_combout\ = (!\reg4b4|DOUT\(1) & ((!\reg4b4|DOUT\(2) & ((\reg4b4|DOUT\(0)))) # (\reg4b4|DOUT\(2) & (!\reg4b4|DOUT\(3))))) # (\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) & ((\reg4b4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(3),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(0),
	combout => \conv4|rascSaida7seg[4]~4_combout\);

\conv4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[5]~5_combout\ = (!\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(2) & !\reg4b4|DOUT\(3)))) # (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(3) $ (((!\reg4b4|DOUT\(1) & \reg4b4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(3),
	combout => \conv4|rascSaida7seg[5]~5_combout\);

\conv4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[6]~6_combout\ = (!\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) $ (\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(1) $ (\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[6]~6_combout\);

\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( \comb~3_combout\ & ( (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & (\CPU|MUX2|saida_MUX[8]~0_combout\ & \ROM1|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \comb~11_combout\);

\reg4b5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(0));

\reg4b5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(3));

\reg4b5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(1));

\reg4b5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(2));

\conv5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[0]~0_combout\ = (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(1) $ (!\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[0]~0_combout\);

\conv5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[1]~1_combout\ = (!\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(2) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(1))))) # (\reg4b5|DOUT\(3) & ((!\reg4b5|DOUT\(0) & ((\reg4b5|DOUT\(2)))) # (\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[1]~1_combout\);

\conv5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[2]~2_combout\ = (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1) & !\reg4b5|DOUT\(2)))) # (\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(2) & ((!\reg4b5|DOUT\(0)) # (\reg4b5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[2]~2_combout\);

\conv5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[3]~3_combout\ = (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(1) & ((!\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(2) & \reg4b5|DOUT\(3))) # (\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(3),
	combout => \conv5|rascSaida7seg[3]~3_combout\);

\conv5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[4]~4_combout\ = (!\reg4b5|DOUT\(1) & ((!\reg4b5|DOUT\(2) & ((\reg4b5|DOUT\(0)))) # (\reg4b5|DOUT\(2) & (!\reg4b5|DOUT\(3))))) # (\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) & ((\reg4b5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(3),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(0),
	combout => \conv5|rascSaida7seg[4]~4_combout\);

\conv5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[5]~5_combout\ = (!\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(2) & !\reg4b5|DOUT\(3)))) # (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(3) $ (((!\reg4b5|DOUT\(1) & \reg4b5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(3),
	combout => \conv5|rascSaida7seg[5]~5_combout\);

\conv5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[6]~6_combout\ = (!\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) $ (\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(1) $ (\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[6]~6_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

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

ww_MEM(0) <= \MEM[0]~output_o\;

ww_MEM(1) <= \MEM[1]~output_o\;

ww_MEM(2) <= \MEM[2]~output_o\;

ww_MEM(3) <= \MEM[3]~output_o\;

ww_MEM(4) <= \MEM[4]~output_o\;

ww_MEM(5) <= \MEM[5]~output_o\;

ww_MEM(6) <= \MEM[6]~output_o\;

ww_MEM(7) <= \MEM[7]~output_o\;

ww_bolso(0) <= \bolso[0]~output_o\;

ww_bolso(1) <= \bolso[1]~output_o\;

ww_bolso(2) <= \bolso[2]~output_o\;

ww_bolso(3) <= \bolso[3]~output_o\;

ww_bolso(4) <= \bolso[4]~output_o\;

ww_bolso(5) <= \bolso[5]~output_o\;

ww_bolso(6) <= \bolso[6]~output_o\;

ww_bolso(7) <= \bolso[7]~output_o\;
END structure;


