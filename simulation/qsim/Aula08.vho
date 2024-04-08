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

-- DATE "04/08/2024 16:57:57"

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
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|LDESV|saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~7_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \buff3_K4|saida~0_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM0|dado_out~8_combout\ : std_logic;
SIGNAL \DEC1|Mux3~0_combout\ : std_logic;
SIGNAL \RAM4|dado_out~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~0_combout\ : std_logic;
SIGNAL \RAM4|process_0~0_combout\ : std_logic;
SIGNAL \RAM0|ram~586_combout\ : std_logic;
SIGNAL \RAM4|ram~586_combout\ : std_logic;
SIGNAL \RAM4|ram~231_q\ : std_logic;
SIGNAL \RAM4|ram~572_combout\ : std_logic;
SIGNAL \RAM0|ram~587_combout\ : std_logic;
SIGNAL \RAM4|ram~587_combout\ : std_logic;
SIGNAL \RAM4|ram~527_q\ : std_logic;
SIGNAL \RAM4|ram~573_combout\ : std_logic;
SIGNAL \RAM4|ram~574_combout\ : std_logic;
SIGNAL \RAM0|ram~588_combout\ : std_logic;
SIGNAL \RAM4|ram~588_combout\ : std_logic;
SIGNAL \RAM4|ram~23_q\ : std_logic;
SIGNAL \RAM0|ram~590_combout\ : std_logic;
SIGNAL \RAM4|ram~590_combout\ : std_logic;
SIGNAL \RAM4|ram~279_q\ : std_logic;
SIGNAL \RAM0|ram~589_combout\ : std_logic;
SIGNAL \RAM4|ram~589_combout\ : std_logic;
SIGNAL \RAM4|ram~39_q\ : std_logic;
SIGNAL \RAM0|ram~591_combout\ : std_logic;
SIGNAL \RAM4|ram~591_combout\ : std_logic;
SIGNAL \RAM4|ram~295_q\ : std_logic;
SIGNAL \RAM4|ram~575_combout\ : std_logic;
SIGNAL \RAM0|ram~592_combout\ : std_logic;
SIGNAL \RAM4|ram~592_combout\ : std_logic;
SIGNAL \RAM4|ram~31_q\ : std_logic;
SIGNAL \RAM4|ram~576_combout\ : std_logic;
SIGNAL \RAM0|ram~593_combout\ : std_logic;
SIGNAL \RAM4|ram~593_combout\ : std_logic;
SIGNAL \RAM4|ram~63_q\ : std_logic;
SIGNAL \RAM0|ram~594_combout\ : std_logic;
SIGNAL \RAM4|ram~594_combout\ : std_logic;
SIGNAL \RAM4|ram~319_q\ : std_logic;
SIGNAL \RAM4|ram~577_combout\ : std_logic;
SIGNAL \RAM4|ram~578_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~36_combout\ : std_logic;
SIGNAL \RAM0|dado_out[1]~16_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM0|process_0~0_combout\ : std_logic;
SIGNAL \RAM0|ram~595_combout\ : std_logic;
SIGNAL \RAM0|ram~231_q\ : std_logic;
SIGNAL \RAM0|ram~572_combout\ : std_logic;
SIGNAL \RAM0|ram~596_combout\ : std_logic;
SIGNAL \RAM0|ram~527_q\ : std_logic;
SIGNAL \RAM0|ram~573_combout\ : std_logic;
SIGNAL \RAM0|ram~574_combout\ : std_logic;
SIGNAL \RAM0|ram~597_combout\ : std_logic;
SIGNAL \RAM0|ram~23_q\ : std_logic;
SIGNAL \RAM0|ram~600_combout\ : std_logic;
SIGNAL \RAM0|ram~279_q\ : std_logic;
SIGNAL \RAM0|ram~599_combout\ : std_logic;
SIGNAL \RAM0|ram~39_q\ : std_logic;
SIGNAL \RAM0|ram~601_combout\ : std_logic;
SIGNAL \RAM0|ram~295_q\ : std_logic;
SIGNAL \RAM0|ram~575_combout\ : std_logic;
SIGNAL \RAM0|ram~598_combout\ : std_logic;
SIGNAL \RAM0|ram~31_q\ : std_logic;
SIGNAL \RAM0|ram~576_combout\ : std_logic;
SIGNAL \RAM0|ram~602_combout\ : std_logic;
SIGNAL \RAM0|ram~63_q\ : std_logic;
SIGNAL \RAM0|ram~603_combout\ : std_logic;
SIGNAL \RAM0|ram~319_q\ : std_logic;
SIGNAL \RAM0|ram~577_combout\ : std_logic;
SIGNAL \RAM0|ram~578_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~28_combout\ : std_logic;
SIGNAL \RAM4|dado_out[6]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \buff3_K4|saida~1_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \RAM0|dado_out[0]~10_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RAM0|dado_out[0]~11_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorK0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorK0|saidaQ~q\ : std_logic;
SIGNAL \detectorK0|saida~combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \buff3_K0|saida~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RAM0|dado_out[0]~12_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~32_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~15_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida~0_combout\ : std_logic;
SIGNAL \RAM0|ram~225_q\ : std_logic;
SIGNAL \RAM0|ram~529_combout\ : std_logic;
SIGNAL \RAM0|ram~521_q\ : std_logic;
SIGNAL \RAM0|ram~530_combout\ : std_logic;
SIGNAL \RAM0|ram~531_combout\ : std_logic;
SIGNAL \RAM0|ram~17_q\ : std_logic;
SIGNAL \RAM0|ram~25_q\ : std_logic;
SIGNAL \RAM0|ram~33_q\ : std_logic;
SIGNAL \RAM0|ram~532_combout\ : std_logic;
SIGNAL \RAM0|ram~273_q\ : std_logic;
SIGNAL \RAM0|ram~289_q\ : std_logic;
SIGNAL \RAM0|ram~533_combout\ : std_logic;
SIGNAL \RAM0|ram~57_q\ : std_logic;
SIGNAL \RAM0|ram~534_combout\ : std_logic;
SIGNAL \RAM0|ram~313_q\ : std_logic;
SIGNAL \RAM0|ram~535_combout\ : std_logic;
SIGNAL \RAM0|ram~536_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~13_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \buff3_7_0|saida[1]~0_combout\ : std_logic;
SIGNAL \RAM4|ram~226_q\ : std_logic;
SIGNAL \RAM4|ram~537_combout\ : std_logic;
SIGNAL \RAM4|ram~522_q\ : std_logic;
SIGNAL \RAM4|ram~538_combout\ : std_logic;
SIGNAL \RAM4|ram~539_combout\ : std_logic;
SIGNAL \RAM4|ram~18_q\ : std_logic;
SIGNAL \RAM4|ram~274_q\ : std_logic;
SIGNAL \RAM4|ram~34_q\ : std_logic;
SIGNAL \RAM4|ram~290_q\ : std_logic;
SIGNAL \RAM4|ram~540_combout\ : std_logic;
SIGNAL \RAM4|ram~26_q\ : std_logic;
SIGNAL \RAM4|ram~541_combout\ : std_logic;
SIGNAL \RAM4|ram~58_q\ : std_logic;
SIGNAL \RAM4|ram~314_q\ : std_logic;
SIGNAL \RAM4|ram~542_combout\ : std_logic;
SIGNAL \RAM4|ram~543_combout\ : std_logic;
SIGNAL \RAM4|dado_out[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM0|ram~226_q\ : std_logic;
SIGNAL \RAM0|ram~537_combout\ : std_logic;
SIGNAL \RAM0|ram~522_q\ : std_logic;
SIGNAL \RAM0|ram~538_combout\ : std_logic;
SIGNAL \RAM0|ram~539_combout\ : std_logic;
SIGNAL \RAM0|ram~18_q\ : std_logic;
SIGNAL \RAM0|ram~274_q\ : std_logic;
SIGNAL \RAM0|ram~34_q\ : std_logic;
SIGNAL \RAM0|ram~290_q\ : std_logic;
SIGNAL \RAM0|ram~540_combout\ : std_logic;
SIGNAL \RAM0|ram~26_q\ : std_logic;
SIGNAL \RAM0|ram~541_combout\ : std_logic;
SIGNAL \RAM0|ram~58_q\ : std_logic;
SIGNAL \RAM0|ram~314_q\ : std_logic;
SIGNAL \RAM0|ram~542_combout\ : std_logic;
SIGNAL \RAM0|ram~543_combout\ : std_logic;
SIGNAL \RAM0|dado_out[1]~18_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \buff3_7_0|saida[2]~1_combout\ : std_logic;
SIGNAL \RAM4|ram~227_q\ : std_logic;
SIGNAL \RAM4|ram~544_combout\ : std_logic;
SIGNAL \RAM4|ram~523_q\ : std_logic;
SIGNAL \RAM4|ram~545_combout\ : std_logic;
SIGNAL \RAM4|ram~546_combout\ : std_logic;
SIGNAL \RAM4|ram~19_q\ : std_logic;
SIGNAL \RAM4|ram~275_q\ : std_logic;
SIGNAL \RAM4|ram~35_q\ : std_logic;
SIGNAL \RAM4|ram~291_q\ : std_logic;
SIGNAL \RAM4|ram~547_combout\ : std_logic;
SIGNAL \RAM4|ram~27_q\ : std_logic;
SIGNAL \RAM4|ram~548_combout\ : std_logic;
SIGNAL \RAM4|ram~59_q\ : std_logic;
SIGNAL \RAM4|ram~315_q\ : std_logic;
SIGNAL \RAM4|ram~549_combout\ : std_logic;
SIGNAL \RAM4|ram~550_combout\ : std_logic;
SIGNAL \RAM4|dado_out[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM0|ram~227_q\ : std_logic;
SIGNAL \RAM0|ram~544_combout\ : std_logic;
SIGNAL \RAM0|ram~523_q\ : std_logic;
SIGNAL \RAM0|ram~545_combout\ : std_logic;
SIGNAL \RAM0|ram~546_combout\ : std_logic;
SIGNAL \RAM0|ram~19_q\ : std_logic;
SIGNAL \RAM0|ram~275_q\ : std_logic;
SIGNAL \RAM0|ram~35_q\ : std_logic;
SIGNAL \RAM0|ram~291_q\ : std_logic;
SIGNAL \RAM0|ram~547_combout\ : std_logic;
SIGNAL \RAM0|ram~27_q\ : std_logic;
SIGNAL \RAM0|ram~548_combout\ : std_logic;
SIGNAL \RAM0|ram~59_q\ : std_logic;
SIGNAL \RAM0|ram~315_q\ : std_logic;
SIGNAL \RAM0|ram~549_combout\ : std_logic;
SIGNAL \RAM0|ram~550_combout\ : std_logic;
SIGNAL \RAM0|dado_out[2]~20_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM4|ram~228_q\ : std_logic;
SIGNAL \RAM4|ram~551_combout\ : std_logic;
SIGNAL \RAM4|ram~524_q\ : std_logic;
SIGNAL \RAM4|ram~552_combout\ : std_logic;
SIGNAL \RAM4|ram~553_combout\ : std_logic;
SIGNAL \RAM4|ram~20_q\ : std_logic;
SIGNAL \RAM4|ram~276_q\ : std_logic;
SIGNAL \RAM4|ram~36_q\ : std_logic;
SIGNAL \RAM4|ram~292_q\ : std_logic;
SIGNAL \RAM4|ram~554_combout\ : std_logic;
SIGNAL \RAM4|ram~28_q\ : std_logic;
SIGNAL \RAM4|ram~555_combout\ : std_logic;
SIGNAL \RAM4|ram~60_q\ : std_logic;
SIGNAL \RAM4|ram~316_q\ : std_logic;
SIGNAL \RAM4|ram~556_combout\ : std_logic;
SIGNAL \RAM4|ram~557_combout\ : std_logic;
SIGNAL \RAM0|dado_out[3]~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM0|ram~228_q\ : std_logic;
SIGNAL \RAM0|ram~551_combout\ : std_logic;
SIGNAL \RAM0|ram~524_q\ : std_logic;
SIGNAL \RAM0|ram~552_combout\ : std_logic;
SIGNAL \RAM0|ram~553_combout\ : std_logic;
SIGNAL \RAM0|ram~20_q\ : std_logic;
SIGNAL \RAM0|ram~276_q\ : std_logic;
SIGNAL \RAM0|ram~36_q\ : std_logic;
SIGNAL \RAM0|ram~292_q\ : std_logic;
SIGNAL \RAM0|ram~554_combout\ : std_logic;
SIGNAL \RAM0|ram~28_q\ : std_logic;
SIGNAL \RAM0|ram~555_combout\ : std_logic;
SIGNAL \RAM0|ram~60_q\ : std_logic;
SIGNAL \RAM0|ram~316_q\ : std_logic;
SIGNAL \RAM0|ram~556_combout\ : std_logic;
SIGNAL \RAM0|ram~557_combout\ : std_logic;
SIGNAL \RAM0|dado_out[3]~22_combout\ : std_logic;
SIGNAL \RAM4|dado_out[3]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM4|ram~229_q\ : std_logic;
SIGNAL \RAM4|ram~558_combout\ : std_logic;
SIGNAL \RAM4|ram~525_q\ : std_logic;
SIGNAL \RAM4|ram~559_combout\ : std_logic;
SIGNAL \RAM4|ram~560_combout\ : std_logic;
SIGNAL \RAM4|ram~21_q\ : std_logic;
SIGNAL \RAM4|ram~277_q\ : std_logic;
SIGNAL \RAM4|ram~37_q\ : std_logic;
SIGNAL \RAM4|ram~293_q\ : std_logic;
SIGNAL \RAM4|ram~561_combout\ : std_logic;
SIGNAL \RAM4|ram~29_q\ : std_logic;
SIGNAL \RAM4|ram~562_combout\ : std_logic;
SIGNAL \RAM4|ram~61_q\ : std_logic;
SIGNAL \RAM4|ram~317_q\ : std_logic;
SIGNAL \RAM4|ram~563_combout\ : std_logic;
SIGNAL \RAM4|ram~564_combout\ : std_logic;
SIGNAL \RAM0|dado_out[4]~34_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM0|ram~229_q\ : std_logic;
SIGNAL \RAM0|ram~558_combout\ : std_logic;
SIGNAL \RAM0|ram~525_q\ : std_logic;
SIGNAL \RAM0|ram~559_combout\ : std_logic;
SIGNAL \RAM0|ram~560_combout\ : std_logic;
SIGNAL \RAM0|ram~21_q\ : std_logic;
SIGNAL \RAM0|ram~277_q\ : std_logic;
SIGNAL \RAM0|ram~37_q\ : std_logic;
SIGNAL \RAM0|ram~293_q\ : std_logic;
SIGNAL \RAM0|ram~561_combout\ : std_logic;
SIGNAL \RAM0|ram~29_q\ : std_logic;
SIGNAL \RAM0|ram~562_combout\ : std_logic;
SIGNAL \RAM0|ram~61_q\ : std_logic;
SIGNAL \RAM0|ram~317_q\ : std_logic;
SIGNAL \RAM0|ram~563_combout\ : std_logic;
SIGNAL \RAM0|ram~564_combout\ : std_logic;
SIGNAL \RAM0|dado_out[4]~24_combout\ : std_logic;
SIGNAL \RAM4|dado_out[4]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM4|ram~230_q\ : std_logic;
SIGNAL \RAM4|ram~565_combout\ : std_logic;
SIGNAL \RAM4|ram~526_q\ : std_logic;
SIGNAL \RAM4|ram~566_combout\ : std_logic;
SIGNAL \RAM4|ram~567_combout\ : std_logic;
SIGNAL \RAM4|ram~22_q\ : std_logic;
SIGNAL \RAM4|ram~278_q\ : std_logic;
SIGNAL \RAM4|ram~38_q\ : std_logic;
SIGNAL \RAM4|ram~294_q\ : std_logic;
SIGNAL \RAM4|ram~568_combout\ : std_logic;
SIGNAL \RAM4|ram~30_q\ : std_logic;
SIGNAL \RAM4|ram~569_combout\ : std_logic;
SIGNAL \RAM4|ram~62_q\ : std_logic;
SIGNAL \RAM4|ram~318_q\ : std_logic;
SIGNAL \RAM4|ram~570_combout\ : std_logic;
SIGNAL \RAM4|ram~571_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~35_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM0|ram~230_q\ : std_logic;
SIGNAL \RAM0|ram~565_combout\ : std_logic;
SIGNAL \RAM0|ram~526_q\ : std_logic;
SIGNAL \RAM0|ram~566_combout\ : std_logic;
SIGNAL \RAM0|ram~567_combout\ : std_logic;
SIGNAL \RAM0|ram~22_q\ : std_logic;
SIGNAL \RAM0|ram~278_q\ : std_logic;
SIGNAL \RAM0|ram~38_q\ : std_logic;
SIGNAL \RAM0|ram~294_q\ : std_logic;
SIGNAL \RAM0|ram~568_combout\ : std_logic;
SIGNAL \RAM0|ram~30_q\ : std_logic;
SIGNAL \RAM0|ram~569_combout\ : std_logic;
SIGNAL \RAM0|ram~62_q\ : std_logic;
SIGNAL \RAM0|ram~318_q\ : std_logic;
SIGNAL \RAM0|ram~570_combout\ : std_logic;
SIGNAL \RAM0|ram~571_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~26_combout\ : std_logic;
SIGNAL \RAM4|dado_out[5]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM4|ram~232_q\ : std_logic;
SIGNAL \RAM4|ram~579_combout\ : std_logic;
SIGNAL \RAM4|ram~528_q\ : std_logic;
SIGNAL \RAM4|ram~580_combout\ : std_logic;
SIGNAL \RAM4|ram~581_combout\ : std_logic;
SIGNAL \RAM4|ram~24_q\ : std_logic;
SIGNAL \RAM4|ram~280_q\ : std_logic;
SIGNAL \RAM4|ram~40_q\ : std_logic;
SIGNAL \RAM4|ram~296_q\ : std_logic;
SIGNAL \RAM4|ram~582_combout\ : std_logic;
SIGNAL \RAM4|ram~32_q\ : std_logic;
SIGNAL \RAM4|ram~583_combout\ : std_logic;
SIGNAL \RAM4|ram~64_q\ : std_logic;
SIGNAL \RAM4|ram~320_q\ : std_logic;
SIGNAL \RAM4|ram~584_combout\ : std_logic;
SIGNAL \RAM4|ram~585_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~37_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM0|ram~232_q\ : std_logic;
SIGNAL \RAM0|ram~579_combout\ : std_logic;
SIGNAL \RAM0|ram~528_q\ : std_logic;
SIGNAL \RAM0|ram~580_combout\ : std_logic;
SIGNAL \RAM0|ram~581_combout\ : std_logic;
SIGNAL \RAM0|ram~24_q\ : std_logic;
SIGNAL \RAM0|ram~280_q\ : std_logic;
SIGNAL \RAM0|ram~40_q\ : std_logic;
SIGNAL \RAM0|ram~296_q\ : std_logic;
SIGNAL \RAM0|ram~582_combout\ : std_logic;
SIGNAL \RAM0|ram~32_q\ : std_logic;
SIGNAL \RAM0|ram~583_combout\ : std_logic;
SIGNAL \RAM0|ram~64_q\ : std_logic;
SIGNAL \RAM0|ram~320_q\ : std_logic;
SIGNAL \RAM0|ram~584_combout\ : std_logic;
SIGNAL \RAM0|ram~585_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~30_combout\ : std_logic;
SIGNAL \RAM4|dado_out[7]~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[2]~6_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~12_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|LDESV|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \RAM4|ram~225_q\ : std_logic;
SIGNAL \RAM4|ram~529_combout\ : std_logic;
SIGNAL \RAM4|ram~521_q\ : std_logic;
SIGNAL \RAM4|ram~530_combout\ : std_logic;
SIGNAL \RAM4|ram~531_combout\ : std_logic;
SIGNAL \RAM4|ram~17_q\ : std_logic;
SIGNAL \RAM4|ram~33_q\ : std_logic;
SIGNAL \RAM4|ram~532_combout\ : std_logic;
SIGNAL \RAM4|ram~273_q\ : std_logic;
SIGNAL \RAM4|ram~289_q\ : std_logic;
SIGNAL \RAM4|ram~533_combout\ : std_logic;
SIGNAL \RAM4|ram~25_q\ : std_logic;
SIGNAL \RAM4|ram~57_q\ : std_logic;
SIGNAL \RAM4|ram~534_combout\ : std_logic;
SIGNAL \RAM4|ram~313_q\ : std_logic;
SIGNAL \RAM4|ram~535_combout\ : std_logic;
SIGNAL \RAM4|ram~536_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~14_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~17_combout\ : std_logic;
SIGNAL \RAM0|dado_out[1]~19_combout\ : std_logic;
SIGNAL \RAM0|dado_out[2]~21_combout\ : std_logic;
SIGNAL \RAM0|dado_out[3]~23_combout\ : std_logic;
SIGNAL \RAM0|dado_out[4]~25_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~27_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~29_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~31_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \REGled2|DOUT~q\ : std_logic;
SIGNAL \REGled1|DOUT~q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \reg4b4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGleds|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4b0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|LDESV|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \reg4b4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[2]~3_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[2]~20_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[1]~2_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[1]~18_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[1]~16_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~15_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \buff3_K4|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \buff3_K4|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[6]~7_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[6]~28_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[5]~6_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[5]~26_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[4]~5_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[4]~24_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[3]~4_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[3]~22_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \detectorK0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~5_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~8_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[2]~6_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[7]~37_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[6]~36_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[5]~35_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[4]~34_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[3]~33_combout\ : std_logic;
SIGNAL \buff3_7_0|ALT_INV_saida[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \buff3_7_0|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~32_combout\ : std_logic;
SIGNAL \buff3_K0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[7]~8_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[7]~30_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;

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
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|RET|ALT_INV_DOUT\(7) <= NOT \CPU|RET|DOUT\(7);
\CPU|RET|ALT_INV_DOUT\(6) <= NOT \CPU|RET|DOUT\(6);
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\CPU|RET|ALT_INV_DOUT\(5) <= NOT \CPU|RET|DOUT\(5);
\CPU|RET|ALT_INV_DOUT\(4) <= NOT \CPU|RET|DOUT\(4);
\CPU|RET|ALT_INV_DOUT\(3) <= NOT \CPU|RET|DOUT\(3);
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\CPU|RET|ALT_INV_DOUT\(2) <= NOT \CPU|RET|DOUT\(2);
\CPU|RET|ALT_INV_DOUT\(1) <= NOT \CPU|RET|DOUT\(1);
\CPU|decoderInstru|ALT_INV_saida[9]~0_combout\ <= NOT \CPU|decoderInstru|saida[9]~0_combout\;
\CPU|RET|ALT_INV_DOUT\(0) <= NOT \CPU|RET|DOUT\(0);
\CPU|LDESV|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|LDESV|saida[0]~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\RAM4|ALT_INV_process_0~0_combout\ <= NOT \RAM4|process_0~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~0_combout\ <= NOT \CPU|decoderInstru|Equal11~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\DEC1|ALT_INV_Mux3~0_combout\ <= NOT \DEC1|Mux3~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
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
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\RAM0|ALT_INV_ram~555_combout\ <= NOT \RAM0|ram~555_combout\;
\RAM0|ALT_INV_ram~28_q\ <= NOT \RAM0|ram~28_q\;
\RAM0|ALT_INV_ram~554_combout\ <= NOT \RAM0|ram~554_combout\;
\RAM0|ALT_INV_ram~292_q\ <= NOT \RAM0|ram~292_q\;
\RAM0|ALT_INV_ram~36_q\ <= NOT \RAM0|ram~36_q\;
\RAM0|ALT_INV_ram~276_q\ <= NOT \RAM0|ram~276_q\;
\RAM0|ALT_INV_ram~20_q\ <= NOT \RAM0|ram~20_q\;
\RAM0|ALT_INV_ram~553_combout\ <= NOT \RAM0|ram~553_combout\;
\RAM0|ALT_INV_ram~552_combout\ <= NOT \RAM0|ram~552_combout\;
\RAM0|ALT_INV_ram~524_q\ <= NOT \RAM0|ram~524_q\;
\RAM0|ALT_INV_ram~551_combout\ <= NOT \RAM0|ram~551_combout\;
\RAM0|ALT_INV_ram~228_q\ <= NOT \RAM0|ram~228_q\;
\RAM4|ALT_INV_dado_out[2]~3_combout\ <= NOT \RAM4|dado_out[2]~3_combout\;
\RAM4|ALT_INV_ram~550_combout\ <= NOT \RAM4|ram~550_combout\;
\RAM4|ALT_INV_ram~549_combout\ <= NOT \RAM4|ram~549_combout\;
\RAM4|ALT_INV_ram~315_q\ <= NOT \RAM4|ram~315_q\;
\RAM4|ALT_INV_ram~59_q\ <= NOT \RAM4|ram~59_q\;
\RAM4|ALT_INV_ram~548_combout\ <= NOT \RAM4|ram~548_combout\;
\RAM4|ALT_INV_ram~27_q\ <= NOT \RAM4|ram~27_q\;
\RAM4|ALT_INV_ram~547_combout\ <= NOT \RAM4|ram~547_combout\;
\RAM4|ALT_INV_ram~291_q\ <= NOT \RAM4|ram~291_q\;
\RAM4|ALT_INV_ram~35_q\ <= NOT \RAM4|ram~35_q\;
\RAM4|ALT_INV_ram~275_q\ <= NOT \RAM4|ram~275_q\;
\RAM4|ALT_INV_ram~19_q\ <= NOT \RAM4|ram~19_q\;
\RAM4|ALT_INV_ram~546_combout\ <= NOT \RAM4|ram~546_combout\;
\RAM4|ALT_INV_ram~545_combout\ <= NOT \RAM4|ram~545_combout\;
\RAM4|ALT_INV_ram~523_q\ <= NOT \RAM4|ram~523_q\;
\RAM4|ALT_INV_ram~544_combout\ <= NOT \RAM4|ram~544_combout\;
\RAM4|ALT_INV_ram~227_q\ <= NOT \RAM4|ram~227_q\;
\RAM0|ALT_INV_dado_out[2]~20_combout\ <= NOT \RAM0|dado_out[2]~20_combout\;
\RAM0|ALT_INV_ram~550_combout\ <= NOT \RAM0|ram~550_combout\;
\RAM0|ALT_INV_ram~549_combout\ <= NOT \RAM0|ram~549_combout\;
\RAM0|ALT_INV_ram~315_q\ <= NOT \RAM0|ram~315_q\;
\RAM0|ALT_INV_ram~59_q\ <= NOT \RAM0|ram~59_q\;
\RAM0|ALT_INV_ram~548_combout\ <= NOT \RAM0|ram~548_combout\;
\RAM0|ALT_INV_ram~27_q\ <= NOT \RAM0|ram~27_q\;
\RAM0|ALT_INV_ram~547_combout\ <= NOT \RAM0|ram~547_combout\;
\RAM0|ALT_INV_ram~291_q\ <= NOT \RAM0|ram~291_q\;
\RAM0|ALT_INV_ram~35_q\ <= NOT \RAM0|ram~35_q\;
\RAM0|ALT_INV_ram~275_q\ <= NOT \RAM0|ram~275_q\;
\RAM0|ALT_INV_ram~19_q\ <= NOT \RAM0|ram~19_q\;
\RAM0|ALT_INV_ram~546_combout\ <= NOT \RAM0|ram~546_combout\;
\RAM0|ALT_INV_ram~545_combout\ <= NOT \RAM0|ram~545_combout\;
\RAM0|ALT_INV_ram~523_q\ <= NOT \RAM0|ram~523_q\;
\RAM0|ALT_INV_ram~544_combout\ <= NOT \RAM0|ram~544_combout\;
\RAM0|ALT_INV_ram~227_q\ <= NOT \RAM0|ram~227_q\;
\RAM4|ALT_INV_dado_out[1]~2_combout\ <= NOT \RAM4|dado_out[1]~2_combout\;
\RAM4|ALT_INV_ram~543_combout\ <= NOT \RAM4|ram~543_combout\;
\RAM4|ALT_INV_ram~542_combout\ <= NOT \RAM4|ram~542_combout\;
\RAM4|ALT_INV_ram~314_q\ <= NOT \RAM4|ram~314_q\;
\RAM4|ALT_INV_ram~58_q\ <= NOT \RAM4|ram~58_q\;
\RAM4|ALT_INV_ram~541_combout\ <= NOT \RAM4|ram~541_combout\;
\RAM4|ALT_INV_ram~26_q\ <= NOT \RAM4|ram~26_q\;
\RAM4|ALT_INV_ram~540_combout\ <= NOT \RAM4|ram~540_combout\;
\RAM4|ALT_INV_ram~290_q\ <= NOT \RAM4|ram~290_q\;
\RAM4|ALT_INV_ram~34_q\ <= NOT \RAM4|ram~34_q\;
\RAM4|ALT_INV_ram~274_q\ <= NOT \RAM4|ram~274_q\;
\RAM4|ALT_INV_ram~18_q\ <= NOT \RAM4|ram~18_q\;
\RAM4|ALT_INV_ram~539_combout\ <= NOT \RAM4|ram~539_combout\;
\RAM4|ALT_INV_ram~538_combout\ <= NOT \RAM4|ram~538_combout\;
\RAM4|ALT_INV_ram~522_q\ <= NOT \RAM4|ram~522_q\;
\RAM4|ALT_INV_ram~537_combout\ <= NOT \RAM4|ram~537_combout\;
\RAM4|ALT_INV_ram~226_q\ <= NOT \RAM4|ram~226_q\;
\RAM0|ALT_INV_dado_out[1]~18_combout\ <= NOT \RAM0|dado_out[1]~18_combout\;
\RAM0|ALT_INV_ram~543_combout\ <= NOT \RAM0|ram~543_combout\;
\RAM0|ALT_INV_ram~542_combout\ <= NOT \RAM0|ram~542_combout\;
\RAM0|ALT_INV_ram~314_q\ <= NOT \RAM0|ram~314_q\;
\RAM0|ALT_INV_ram~58_q\ <= NOT \RAM0|ram~58_q\;
\RAM0|ALT_INV_ram~541_combout\ <= NOT \RAM0|ram~541_combout\;
\RAM0|ALT_INV_ram~26_q\ <= NOT \RAM0|ram~26_q\;
\RAM0|ALT_INV_ram~540_combout\ <= NOT \RAM0|ram~540_combout\;
\RAM0|ALT_INV_ram~290_q\ <= NOT \RAM0|ram~290_q\;
\RAM0|ALT_INV_ram~34_q\ <= NOT \RAM0|ram~34_q\;
\RAM0|ALT_INV_ram~274_q\ <= NOT \RAM0|ram~274_q\;
\RAM0|ALT_INV_ram~18_q\ <= NOT \RAM0|ram~18_q\;
\RAM0|ALT_INV_ram~539_combout\ <= NOT \RAM0|ram~539_combout\;
\RAM0|ALT_INV_ram~538_combout\ <= NOT \RAM0|ram~538_combout\;
\RAM0|ALT_INV_ram~522_q\ <= NOT \RAM0|ram~522_q\;
\RAM0|ALT_INV_ram~537_combout\ <= NOT \RAM0|ram~537_combout\;
\RAM0|ALT_INV_ram~226_q\ <= NOT \RAM0|ram~226_q\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\RAM0|ALT_INV_dado_out[1]~16_combout\ <= NOT \RAM0|dado_out[1]~16_combout\;
\RAM0|ALT_INV_dado_out[0]~15_combout\ <= NOT \RAM0|dado_out[0]~15_combout\;
\RAM0|ALT_INV_dado_out[0]~13_combout\ <= NOT \RAM0|dado_out[0]~13_combout\;
\RAM0|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM0|dado_out[0]~12_combout\;
\RAM0|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM0|dado_out[0]~11_combout\;
\RAM0|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM0|dado_out[0]~10_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\buff3_K4|ALT_INV_saida~1_combout\ <= NOT \buff3_K4|saida~1_combout\;
\buff3_K4|ALT_INV_saida~0_combout\ <= NOT \buff3_K4|saida~0_combout\;
\RAM0|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM0|dado_out[0]~9_combout\;
\RAM0|ALT_INV_dado_out~8_combout\ <= NOT \RAM0|dado_out~8_combout\;
\RAM0|ALT_INV_ram~536_combout\ <= NOT \RAM0|ram~536_combout\;
\RAM0|ALT_INV_ram~535_combout\ <= NOT \RAM0|ram~535_combout\;
\RAM0|ALT_INV_ram~313_q\ <= NOT \RAM0|ram~313_q\;
\RAM0|ALT_INV_ram~534_combout\ <= NOT \RAM0|ram~534_combout\;
\RAM0|ALT_INV_ram~57_q\ <= NOT \RAM0|ram~57_q\;
\RAM0|ALT_INV_ram~533_combout\ <= NOT \RAM0|ram~533_combout\;
\RAM0|ALT_INV_ram~289_q\ <= NOT \RAM0|ram~289_q\;
\RAM0|ALT_INV_ram~273_q\ <= NOT \RAM0|ram~273_q\;
\RAM0|ALT_INV_ram~532_combout\ <= NOT \RAM0|ram~532_combout\;
\RAM0|ALT_INV_ram~33_q\ <= NOT \RAM0|ram~33_q\;
\RAM0|ALT_INV_ram~25_q\ <= NOT \RAM0|ram~25_q\;
\RAM0|ALT_INV_ram~17_q\ <= NOT \RAM0|ram~17_q\;
\RAM0|ALT_INV_ram~531_combout\ <= NOT \RAM0|ram~531_combout\;
\RAM0|ALT_INV_ram~530_combout\ <= NOT \RAM0|ram~530_combout\;
\RAM0|ALT_INV_ram~521_q\ <= NOT \RAM0|ram~521_q\;
\RAM0|ALT_INV_ram~529_combout\ <= NOT \RAM0|ram~529_combout\;
\RAM0|ALT_INV_ram~225_q\ <= NOT \RAM0|ram~225_q\;
\RAM4|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM4|dado_out[0]~1_combout\;
\RAM4|ALT_INV_ram~536_combout\ <= NOT \RAM4|ram~536_combout\;
\RAM4|ALT_INV_ram~535_combout\ <= NOT \RAM4|ram~535_combout\;
\RAM4|ALT_INV_ram~313_q\ <= NOT \RAM4|ram~313_q\;
\RAM4|ALT_INV_ram~534_combout\ <= NOT \RAM4|ram~534_combout\;
\RAM4|ALT_INV_ram~57_q\ <= NOT \RAM4|ram~57_q\;
\RAM4|ALT_INV_ram~25_q\ <= NOT \RAM4|ram~25_q\;
\RAM4|ALT_INV_ram~533_combout\ <= NOT \RAM4|ram~533_combout\;
\RAM4|ALT_INV_ram~289_q\ <= NOT \RAM4|ram~289_q\;
\RAM4|ALT_INV_ram~273_q\ <= NOT \RAM4|ram~273_q\;
\RAM4|ALT_INV_ram~532_combout\ <= NOT \RAM4|ram~532_combout\;
\RAM4|ALT_INV_ram~33_q\ <= NOT \RAM4|ram~33_q\;
\RAM4|ALT_INV_ram~17_q\ <= NOT \RAM4|ram~17_q\;
\RAM4|ALT_INV_ram~531_combout\ <= NOT \RAM4|ram~531_combout\;
\RAM4|ALT_INV_ram~530_combout\ <= NOT \RAM4|ram~530_combout\;
\RAM4|ALT_INV_ram~521_q\ <= NOT \RAM4|ram~521_q\;
\RAM4|ALT_INV_ram~529_combout\ <= NOT \RAM4|ram~529_combout\;
\RAM4|ALT_INV_ram~225_q\ <= NOT \RAM4|ram~225_q\;
\RAM4|ALT_INV_dado_out~0_combout\ <= NOT \RAM4|dado_out~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|decoderInstru|saida[1]~1_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\CPU|RET|ALT_INV_DOUT\(8) <= NOT \CPU|RET|DOUT\(8);
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\RAM0|ALT_INV_ram~320_q\ <= NOT \RAM0|ram~320_q\;
\RAM0|ALT_INV_ram~64_q\ <= NOT \RAM0|ram~64_q\;
\RAM0|ALT_INV_ram~583_combout\ <= NOT \RAM0|ram~583_combout\;
\RAM0|ALT_INV_ram~32_q\ <= NOT \RAM0|ram~32_q\;
\RAM0|ALT_INV_ram~582_combout\ <= NOT \RAM0|ram~582_combout\;
\RAM0|ALT_INV_ram~296_q\ <= NOT \RAM0|ram~296_q\;
\RAM0|ALT_INV_ram~40_q\ <= NOT \RAM0|ram~40_q\;
\RAM0|ALT_INV_ram~280_q\ <= NOT \RAM0|ram~280_q\;
\RAM0|ALT_INV_ram~24_q\ <= NOT \RAM0|ram~24_q\;
\RAM0|ALT_INV_ram~581_combout\ <= NOT \RAM0|ram~581_combout\;
\RAM0|ALT_INV_ram~580_combout\ <= NOT \RAM0|ram~580_combout\;
\RAM0|ALT_INV_ram~528_q\ <= NOT \RAM0|ram~528_q\;
\RAM0|ALT_INV_ram~579_combout\ <= NOT \RAM0|ram~579_combout\;
\RAM0|ALT_INV_ram~232_q\ <= NOT \RAM0|ram~232_q\;
\RAM4|ALT_INV_dado_out[6]~7_combout\ <= NOT \RAM4|dado_out[6]~7_combout\;
\RAM4|ALT_INV_ram~578_combout\ <= NOT \RAM4|ram~578_combout\;
\RAM4|ALT_INV_ram~577_combout\ <= NOT \RAM4|ram~577_combout\;
\RAM4|ALT_INV_ram~319_q\ <= NOT \RAM4|ram~319_q\;
\RAM4|ALT_INV_ram~63_q\ <= NOT \RAM4|ram~63_q\;
\RAM4|ALT_INV_ram~576_combout\ <= NOT \RAM4|ram~576_combout\;
\RAM4|ALT_INV_ram~31_q\ <= NOT \RAM4|ram~31_q\;
\RAM4|ALT_INV_ram~575_combout\ <= NOT \RAM4|ram~575_combout\;
\RAM4|ALT_INV_ram~295_q\ <= NOT \RAM4|ram~295_q\;
\RAM4|ALT_INV_ram~39_q\ <= NOT \RAM4|ram~39_q\;
\RAM4|ALT_INV_ram~279_q\ <= NOT \RAM4|ram~279_q\;
\RAM4|ALT_INV_ram~23_q\ <= NOT \RAM4|ram~23_q\;
\RAM4|ALT_INV_ram~574_combout\ <= NOT \RAM4|ram~574_combout\;
\RAM4|ALT_INV_ram~573_combout\ <= NOT \RAM4|ram~573_combout\;
\RAM4|ALT_INV_ram~527_q\ <= NOT \RAM4|ram~527_q\;
\RAM4|ALT_INV_ram~572_combout\ <= NOT \RAM4|ram~572_combout\;
\RAM4|ALT_INV_ram~231_q\ <= NOT \RAM4|ram~231_q\;
\RAM0|ALT_INV_dado_out[6]~28_combout\ <= NOT \RAM0|dado_out[6]~28_combout\;
\RAM0|ALT_INV_ram~578_combout\ <= NOT \RAM0|ram~578_combout\;
\RAM0|ALT_INV_ram~577_combout\ <= NOT \RAM0|ram~577_combout\;
\RAM0|ALT_INV_ram~319_q\ <= NOT \RAM0|ram~319_q\;
\RAM0|ALT_INV_ram~63_q\ <= NOT \RAM0|ram~63_q\;
\RAM0|ALT_INV_ram~576_combout\ <= NOT \RAM0|ram~576_combout\;
\RAM0|ALT_INV_ram~31_q\ <= NOT \RAM0|ram~31_q\;
\RAM0|ALT_INV_ram~575_combout\ <= NOT \RAM0|ram~575_combout\;
\RAM0|ALT_INV_ram~295_q\ <= NOT \RAM0|ram~295_q\;
\RAM0|ALT_INV_ram~39_q\ <= NOT \RAM0|ram~39_q\;
\RAM0|ALT_INV_ram~279_q\ <= NOT \RAM0|ram~279_q\;
\RAM0|ALT_INV_ram~23_q\ <= NOT \RAM0|ram~23_q\;
\RAM0|ALT_INV_ram~574_combout\ <= NOT \RAM0|ram~574_combout\;
\RAM0|ALT_INV_ram~573_combout\ <= NOT \RAM0|ram~573_combout\;
\RAM0|ALT_INV_ram~527_q\ <= NOT \RAM0|ram~527_q\;
\RAM0|ALT_INV_ram~572_combout\ <= NOT \RAM0|ram~572_combout\;
\RAM0|ALT_INV_ram~231_q\ <= NOT \RAM0|ram~231_q\;
\RAM4|ALT_INV_dado_out[5]~6_combout\ <= NOT \RAM4|dado_out[5]~6_combout\;
\RAM4|ALT_INV_ram~571_combout\ <= NOT \RAM4|ram~571_combout\;
\RAM4|ALT_INV_ram~570_combout\ <= NOT \RAM4|ram~570_combout\;
\RAM4|ALT_INV_ram~318_q\ <= NOT \RAM4|ram~318_q\;
\RAM4|ALT_INV_ram~62_q\ <= NOT \RAM4|ram~62_q\;
\RAM4|ALT_INV_ram~569_combout\ <= NOT \RAM4|ram~569_combout\;
\RAM4|ALT_INV_ram~30_q\ <= NOT \RAM4|ram~30_q\;
\RAM4|ALT_INV_ram~568_combout\ <= NOT \RAM4|ram~568_combout\;
\RAM4|ALT_INV_ram~294_q\ <= NOT \RAM4|ram~294_q\;
\RAM4|ALT_INV_ram~38_q\ <= NOT \RAM4|ram~38_q\;
\RAM4|ALT_INV_ram~278_q\ <= NOT \RAM4|ram~278_q\;
\RAM4|ALT_INV_ram~22_q\ <= NOT \RAM4|ram~22_q\;
\RAM4|ALT_INV_ram~567_combout\ <= NOT \RAM4|ram~567_combout\;
\RAM4|ALT_INV_ram~566_combout\ <= NOT \RAM4|ram~566_combout\;
\RAM4|ALT_INV_ram~526_q\ <= NOT \RAM4|ram~526_q\;
\RAM4|ALT_INV_ram~565_combout\ <= NOT \RAM4|ram~565_combout\;
\RAM4|ALT_INV_ram~230_q\ <= NOT \RAM4|ram~230_q\;
\RAM0|ALT_INV_dado_out[5]~26_combout\ <= NOT \RAM0|dado_out[5]~26_combout\;
\RAM0|ALT_INV_ram~571_combout\ <= NOT \RAM0|ram~571_combout\;
\RAM0|ALT_INV_ram~570_combout\ <= NOT \RAM0|ram~570_combout\;
\RAM0|ALT_INV_ram~318_q\ <= NOT \RAM0|ram~318_q\;
\RAM0|ALT_INV_ram~62_q\ <= NOT \RAM0|ram~62_q\;
\RAM0|ALT_INV_ram~569_combout\ <= NOT \RAM0|ram~569_combout\;
\RAM0|ALT_INV_ram~30_q\ <= NOT \RAM0|ram~30_q\;
\RAM0|ALT_INV_ram~568_combout\ <= NOT \RAM0|ram~568_combout\;
\RAM0|ALT_INV_ram~294_q\ <= NOT \RAM0|ram~294_q\;
\RAM0|ALT_INV_ram~38_q\ <= NOT \RAM0|ram~38_q\;
\RAM0|ALT_INV_ram~278_q\ <= NOT \RAM0|ram~278_q\;
\RAM0|ALT_INV_ram~22_q\ <= NOT \RAM0|ram~22_q\;
\RAM0|ALT_INV_ram~567_combout\ <= NOT \RAM0|ram~567_combout\;
\RAM0|ALT_INV_ram~566_combout\ <= NOT \RAM0|ram~566_combout\;
\RAM0|ALT_INV_ram~526_q\ <= NOT \RAM0|ram~526_q\;
\RAM0|ALT_INV_ram~565_combout\ <= NOT \RAM0|ram~565_combout\;
\RAM0|ALT_INV_ram~230_q\ <= NOT \RAM0|ram~230_q\;
\RAM4|ALT_INV_dado_out[4]~5_combout\ <= NOT \RAM4|dado_out[4]~5_combout\;
\RAM4|ALT_INV_ram~564_combout\ <= NOT \RAM4|ram~564_combout\;
\RAM4|ALT_INV_ram~563_combout\ <= NOT \RAM4|ram~563_combout\;
\RAM4|ALT_INV_ram~317_q\ <= NOT \RAM4|ram~317_q\;
\RAM4|ALT_INV_ram~61_q\ <= NOT \RAM4|ram~61_q\;
\RAM4|ALT_INV_ram~562_combout\ <= NOT \RAM4|ram~562_combout\;
\RAM4|ALT_INV_ram~29_q\ <= NOT \RAM4|ram~29_q\;
\RAM4|ALT_INV_ram~561_combout\ <= NOT \RAM4|ram~561_combout\;
\RAM4|ALT_INV_ram~293_q\ <= NOT \RAM4|ram~293_q\;
\RAM4|ALT_INV_ram~37_q\ <= NOT \RAM4|ram~37_q\;
\RAM4|ALT_INV_ram~277_q\ <= NOT \RAM4|ram~277_q\;
\RAM4|ALT_INV_ram~21_q\ <= NOT \RAM4|ram~21_q\;
\RAM4|ALT_INV_ram~560_combout\ <= NOT \RAM4|ram~560_combout\;
\RAM4|ALT_INV_ram~559_combout\ <= NOT \RAM4|ram~559_combout\;
\RAM4|ALT_INV_ram~525_q\ <= NOT \RAM4|ram~525_q\;
\RAM4|ALT_INV_ram~558_combout\ <= NOT \RAM4|ram~558_combout\;
\RAM4|ALT_INV_ram~229_q\ <= NOT \RAM4|ram~229_q\;
\RAM0|ALT_INV_dado_out[4]~24_combout\ <= NOT \RAM0|dado_out[4]~24_combout\;
\RAM0|ALT_INV_ram~564_combout\ <= NOT \RAM0|ram~564_combout\;
\RAM0|ALT_INV_ram~563_combout\ <= NOT \RAM0|ram~563_combout\;
\RAM0|ALT_INV_ram~317_q\ <= NOT \RAM0|ram~317_q\;
\RAM0|ALT_INV_ram~61_q\ <= NOT \RAM0|ram~61_q\;
\RAM0|ALT_INV_ram~562_combout\ <= NOT \RAM0|ram~562_combout\;
\RAM0|ALT_INV_ram~29_q\ <= NOT \RAM0|ram~29_q\;
\RAM0|ALT_INV_ram~561_combout\ <= NOT \RAM0|ram~561_combout\;
\RAM0|ALT_INV_ram~293_q\ <= NOT \RAM0|ram~293_q\;
\RAM0|ALT_INV_ram~37_q\ <= NOT \RAM0|ram~37_q\;
\RAM0|ALT_INV_ram~277_q\ <= NOT \RAM0|ram~277_q\;
\RAM0|ALT_INV_ram~21_q\ <= NOT \RAM0|ram~21_q\;
\RAM0|ALT_INV_ram~560_combout\ <= NOT \RAM0|ram~560_combout\;
\RAM0|ALT_INV_ram~559_combout\ <= NOT \RAM0|ram~559_combout\;
\RAM0|ALT_INV_ram~525_q\ <= NOT \RAM0|ram~525_q\;
\RAM0|ALT_INV_ram~558_combout\ <= NOT \RAM0|ram~558_combout\;
\RAM0|ALT_INV_ram~229_q\ <= NOT \RAM0|ram~229_q\;
\RAM4|ALT_INV_dado_out[3]~4_combout\ <= NOT \RAM4|dado_out[3]~4_combout\;
\RAM4|ALT_INV_ram~557_combout\ <= NOT \RAM4|ram~557_combout\;
\RAM4|ALT_INV_ram~556_combout\ <= NOT \RAM4|ram~556_combout\;
\RAM4|ALT_INV_ram~316_q\ <= NOT \RAM4|ram~316_q\;
\RAM4|ALT_INV_ram~60_q\ <= NOT \RAM4|ram~60_q\;
\RAM4|ALT_INV_ram~555_combout\ <= NOT \RAM4|ram~555_combout\;
\RAM4|ALT_INV_ram~28_q\ <= NOT \RAM4|ram~28_q\;
\RAM4|ALT_INV_ram~554_combout\ <= NOT \RAM4|ram~554_combout\;
\RAM4|ALT_INV_ram~292_q\ <= NOT \RAM4|ram~292_q\;
\RAM4|ALT_INV_ram~36_q\ <= NOT \RAM4|ram~36_q\;
\RAM4|ALT_INV_ram~276_q\ <= NOT \RAM4|ram~276_q\;
\RAM4|ALT_INV_ram~20_q\ <= NOT \RAM4|ram~20_q\;
\RAM4|ALT_INV_ram~553_combout\ <= NOT \RAM4|ram~553_combout\;
\RAM4|ALT_INV_ram~552_combout\ <= NOT \RAM4|ram~552_combout\;
\RAM4|ALT_INV_ram~524_q\ <= NOT \RAM4|ram~524_q\;
\RAM4|ALT_INV_ram~551_combout\ <= NOT \RAM4|ram~551_combout\;
\RAM4|ALT_INV_ram~228_q\ <= NOT \RAM4|ram~228_q\;
\RAM0|ALT_INV_dado_out[3]~22_combout\ <= NOT \RAM0|dado_out[3]~22_combout\;
\RAM0|ALT_INV_ram~557_combout\ <= NOT \RAM0|ram~557_combout\;
\RAM0|ALT_INV_ram~556_combout\ <= NOT \RAM0|ram~556_combout\;
\RAM0|ALT_INV_ram~316_q\ <= NOT \RAM0|ram~316_q\;
\RAM0|ALT_INV_ram~60_q\ <= NOT \RAM0|ram~60_q\;
\detectorK0|ALT_INV_saidaQ~q\ <= NOT \detectorK0|saidaQ~q\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~10_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~10_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~8_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~5_combout\;
\CPU|decoderInstru|ALT_INV_saida[4]~7_combout\ <= NOT \CPU|decoderInstru|saida[4]~7_combout\;
\ALT_INV_comb~10_combout\ <= NOT \comb~10_combout\;
\RAM0|ALT_INV_process_0~0_combout\ <= NOT \RAM0|process_0~0_combout\;
\RAM0|ALT_INV_ram~594_combout\ <= NOT \RAM0|ram~594_combout\;
\RAM0|ALT_INV_ram~593_combout\ <= NOT \RAM0|ram~593_combout\;
\RAM0|ALT_INV_ram~592_combout\ <= NOT \RAM0|ram~592_combout\;
\RAM0|ALT_INV_ram~591_combout\ <= NOT \RAM0|ram~591_combout\;
\RAM0|ALT_INV_ram~590_combout\ <= NOT \RAM0|ram~590_combout\;
\RAM0|ALT_INV_ram~589_combout\ <= NOT \RAM0|ram~589_combout\;
\RAM0|ALT_INV_ram~588_combout\ <= NOT \RAM0|ram~588_combout\;
\RAM0|ALT_INV_ram~587_combout\ <= NOT \RAM0|ram~587_combout\;
\RAM0|ALT_INV_ram~586_combout\ <= NOT \RAM0|ram~586_combout\;
\CPU|FLAG|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FLAG|DOUT~4_combout\;
\CPU|FLAG|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FLAG|DOUT~3_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~3_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|ULA1|ALT_INV_saida[3]~12_combout\ <= NOT \CPU|ULA1|saida[3]~12_combout\;
\CPU|ULA1|ALT_INV_saida[4]~11_combout\ <= NOT \CPU|ULA1|saida[4]~11_combout\;
\CPU|ULA1|ALT_INV_saida[5]~10_combout\ <= NOT \CPU|ULA1|saida[5]~10_combout\;
\CPU|ULA1|ALT_INV_saida[6]~9_combout\ <= NOT \CPU|ULA1|saida[6]~9_combout\;
\CPU|ULA1|ALT_INV_saida[7]~8_combout\ <= NOT \CPU|ULA1|saida[7]~8_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[2]~6_combout\ <= NOT \CPU|decoderInstru|saida[2]~6_combout\;
\RAM0|ALT_INV_dado_out[7]~37_combout\ <= NOT \RAM0|dado_out[7]~37_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~2_combout\;
\RAM0|ALT_INV_dado_out[6]~36_combout\ <= NOT \RAM0|dado_out[6]~36_combout\;
\RAM0|ALT_INV_dado_out[5]~35_combout\ <= NOT \RAM0|dado_out[5]~35_combout\;
\RAM0|ALT_INV_dado_out[4]~34_combout\ <= NOT \RAM0|dado_out[4]~34_combout\;
\RAM0|ALT_INV_dado_out[3]~33_combout\ <= NOT \RAM0|dado_out[3]~33_combout\;
\buff3_7_0|ALT_INV_saida[2]~1_combout\ <= NOT \buff3_7_0|saida[2]~1_combout\;
\CPU|ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|ULA1|saida[1]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\buff3_7_0|ALT_INV_saida[1]~0_combout\ <= NOT \buff3_7_0|saida[1]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|decoderInstru|saida[4]~4_combout\;
\CPU|decoderInstru|ALT_INV_saida~3_combout\ <= NOT \CPU|decoderInstru|saida~3_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~3_combout\ <= NOT \CPU|decoderInstru|Equal11~3_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~2_combout\ <= NOT \CPU|decoderInstru|Equal11~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\RAM0|ALT_INV_dado_out[0]~32_combout\ <= NOT \RAM0|dado_out[0]~32_combout\;
\buff3_K0|ALT_INV_saida~0_combout\ <= NOT \buff3_K0|saida~0_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~1_combout\ <= NOT \CPU|decoderInstru|Equal11~1_combout\;
\RAM4|ALT_INV_dado_out[7]~8_combout\ <= NOT \RAM4|dado_out[7]~8_combout\;
\RAM4|ALT_INV_ram~585_combout\ <= NOT \RAM4|ram~585_combout\;
\RAM4|ALT_INV_ram~584_combout\ <= NOT \RAM4|ram~584_combout\;
\RAM4|ALT_INV_ram~320_q\ <= NOT \RAM4|ram~320_q\;
\RAM4|ALT_INV_ram~64_q\ <= NOT \RAM4|ram~64_q\;
\RAM4|ALT_INV_ram~583_combout\ <= NOT \RAM4|ram~583_combout\;
\RAM4|ALT_INV_ram~32_q\ <= NOT \RAM4|ram~32_q\;
\RAM4|ALT_INV_ram~582_combout\ <= NOT \RAM4|ram~582_combout\;
\RAM4|ALT_INV_ram~296_q\ <= NOT \RAM4|ram~296_q\;
\RAM4|ALT_INV_ram~40_q\ <= NOT \RAM4|ram~40_q\;
\RAM4|ALT_INV_ram~280_q\ <= NOT \RAM4|ram~280_q\;
\RAM4|ALT_INV_ram~24_q\ <= NOT \RAM4|ram~24_q\;
\RAM4|ALT_INV_ram~581_combout\ <= NOT \RAM4|ram~581_combout\;
\RAM4|ALT_INV_ram~580_combout\ <= NOT \RAM4|ram~580_combout\;
\RAM4|ALT_INV_ram~528_q\ <= NOT \RAM4|ram~528_q\;
\RAM4|ALT_INV_ram~579_combout\ <= NOT \RAM4|ram~579_combout\;
\RAM4|ALT_INV_ram~232_q\ <= NOT \RAM4|ram~232_q\;
\RAM0|ALT_INV_dado_out[7]~30_combout\ <= NOT \RAM0|dado_out[7]~30_combout\;
\RAM0|ALT_INV_ram~585_combout\ <= NOT \RAM0|ram~585_combout\;
\RAM0|ALT_INV_ram~584_combout\ <= NOT \RAM0|ram~584_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
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
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;

\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM0|dado_out[0]~14_combout\,
	oe => \RAM0|dado_out[0]~17_combout\,
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
	i => \RAM0|dado_out[1]~19_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[2]~21_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[3]~23_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[4]~25_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[5]~27_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[6]~29_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => \RAM0|dado_out[7]~31_combout\,
	oe => \RAM0|dado_out[1]~16_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000100010000000000000000010010000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~14_combout\);

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

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100001010000100111000000000011111000010100001001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000011000000000000001100000000000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (!\CPU|PC|DOUT\(5) & (\ROM1|memROM~4_combout\ & \ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~19_combout\);

\CPU|LDESV|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LDESV|saida[0]~1_combout\ = (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~18_combout\ & \ROM1|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \CPU|LDESV|saida[0]~1_combout\);

\CPU|RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(5));

\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(5))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~14_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(5))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(5),
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~4_combout\ & ( (\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU|RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(2));

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(2))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~9_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(2))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(2),
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5))))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011000001000001101100000100000110110000010000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~12_combout\);

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

\CPU|RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(1));

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(1))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~15_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(1))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(1),
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & 
-- (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000010000101001000000000000011000000100001010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~13_combout\);

\CPU|RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(0));

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(0))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~13_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|RET|DOUT\(0) & \CPU|decoderInstru|saida[9]~0_combout\)))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|RET|ALT_INV_DOUT\(0),
	datad => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010000001001000000000000000001010100000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~17_combout\);

\CPU|decoderInstru|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[9]~0_combout\ = (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~18_combout\ & \ROM1|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \CPU|decoderInstru|saida[9]~0_combout\);

\CPU|RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(4));

\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(4))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(4))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(4),
	datae => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~21_combout\);

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

\CPU|RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(6));

\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(6))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~21_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(6))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(6),
	datae => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
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

\CPU|RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(7));

\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(7))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(7))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(7),
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001000000000101000100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~22_combout\);

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

\CPU|RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(8));

\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(8))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~22_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(8))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(8),
	datae => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)) # 
-- (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101101000000110110000000000001101011010000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~16_combout\);

\CPU|decoderInstru|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~2_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\) # ((\CPU|PC|DOUT\(5) & 
-- (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\) # 
-- ((!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100110011001100110011011100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|Equal11~2_combout\);

\CPU|decoderInstru|Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~3_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (\CPU|PC|DOUT\(5) & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|Equal11~3_combout\);

\CPU|decoderInstru|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~3_combout\ = (!\ROM1|memROM~19_combout\ & (\ROM1|memROM~18_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~16_combout\))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~17_combout\ & 
-- \ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|decoderInstru|saida~3_combout\);

\CPU|decoderInstru|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~4_combout\ = (!\CPU|decoderInstru|Equal11~2_combout\ & ((\CPU|decoderInstru|saida~3_combout\) # (\CPU|decoderInstru|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|decoderInstru|saida[4]~4_combout\);

\CPU|decoderInstru|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~7_combout\ = (\CPU|decoderInstru|saida~3_combout\) # (\CPU|decoderInstru|Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|decoderInstru|saida[4]~7_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~19_combout\ $ (\ROM1|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|decoderInstru|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~1_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (\CPU|PC|DOUT\(5) & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|Equal11~1_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~4_combout\ & ((!\CPU|PC|DOUT\(3)) # ((\ROM1|memROM~11_combout\) # (\ROM1|memROM~10_combout\)))) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~4_combout\ & ((\ROM1|memROM~11_combout\) # 
-- (\ROM1|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011001000110011001100000011001100110010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \comb~0_combout\);

\CPU|decoderInstru|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[1]~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (!\CPU|PC|DOUT\(5) $ (((\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\))))) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000000000000000100001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|saida[1]~1_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~3_combout\);

\buff3_K4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K4|saida~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \buff3_K4|saida~0_combout\);

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (!\ROM1|memROM~9_combout\ & (!\comb~0_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \buff3_K4|ALT_INV_saida~0_combout\,
	combout => \comb~9_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\RAM0|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out~8_combout\ = (!\ROM1|memROM~22_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~20_combout\ & \CPU|decoderInstru|saida[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	combout => \RAM0|dado_out~8_combout\);

\DEC1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Mux3~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

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
	combout => \DEC1|Mux3~0_combout\);

\RAM4|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out~0_combout\ = (\DEC1|Mux3~0_combout\ & \CPU|decoderInstru|saida[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	combout => \RAM4|dado_out~0_combout\);

\CPU|decoderInstru|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~0_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (\CPU|PC|DOUT\(5) & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|Equal11~0_combout\);

\RAM4|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|process_0~0_combout\ = (\DEC1|Mux3~0_combout\ & \CPU|decoderInstru|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \RAM4|process_0~0_combout\);

\RAM0|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~586_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~586_combout\);

\RAM4|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~586_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~586_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~586_combout\,
	combout => \RAM4|ram~586_combout\);

\RAM4|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~231_q\);

\RAM4|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~572_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~231_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~231_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~572_combout\);

\RAM0|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~587_combout\ = ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (\ROM1|memROM~9_combout\ & \ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~587_combout\);

\RAM4|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~587_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~587_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~587_combout\,
	combout => \RAM4|ram~587_combout\);

\RAM4|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~527_q\);

\RAM4|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~573_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~527_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~527_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~573_combout\);

\RAM4|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~574_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~573_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~572_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~572_combout\,
	datad => \RAM4|ALT_INV_ram~573_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~574_combout\);

\RAM0|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~588_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~588_combout\);

\RAM4|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~588_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~588_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~588_combout\,
	combout => \RAM4|ram~588_combout\);

\RAM4|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~23_q\);

\RAM0|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~590_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~590_combout\);

\RAM4|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~590_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~590_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~590_combout\,
	combout => \RAM4|ram~590_combout\);

\RAM4|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~279_q\);

\RAM0|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~589_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~589_combout\);

\RAM4|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~589_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~589_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~589_combout\,
	combout => \RAM4|ram~589_combout\);

\RAM4|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~39_q\);

\RAM0|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~591_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~591_combout\);

\RAM4|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~591_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~591_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~591_combout\,
	combout => \RAM4|ram~591_combout\);

\RAM4|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~295_q\);

\RAM4|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~575_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~295_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~39_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~279_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~23_q\,
	datab => \RAM4|ALT_INV_ram~279_q\,
	datac => \RAM4|ALT_INV_ram~39_q\,
	datad => \RAM4|ALT_INV_ram~295_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~575_combout\);

\RAM0|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~592_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~592_combout\);

\RAM4|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~592_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~592_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~592_combout\,
	combout => \RAM4|ram~592_combout\);

\RAM4|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~31_q\);

\RAM4|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~576_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~576_combout\);

\RAM0|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~593_combout\ = ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~593_combout\);

\RAM4|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~593_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~593_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~593_combout\,
	combout => \RAM4|ram~593_combout\);

\RAM4|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~63_q\);

\RAM0|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~594_combout\ = ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~15_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM0|ram~594_combout\);

\RAM4|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~594_combout\ = (\RAM4|process_0~0_combout\ & \RAM0|ram~594_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~594_combout\,
	combout => \RAM4|ram~594_combout\);

\RAM4|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~319_q\);

\RAM4|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~577_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~319_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~63_q\,
	datab => \RAM4|ALT_INV_ram~319_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~577_combout\);

\RAM4|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~578_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~576_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~575_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~575_combout\,
	datac => \RAM4|ALT_INV_ram~576_combout\,
	datad => \RAM4|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~578_combout\);

\RAM0|dado_out[6]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~36_combout\ = ( \RAM4|ram~578_combout\ & ( \SW[6]~input_o\ & ( (\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~574_combout\)) ) ) ) # ( !\RAM4|ram~578_combout\ & ( \SW[6]~input_o\ & ( (\RAM4|dado_out~0_combout\ & 
-- ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~574_combout\))) ) ) ) # ( \RAM4|ram~578_combout\ & ( !\SW[6]~input_o\ & ( ((\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~574_combout\))) # (\comb~9_combout\) ) ) ) # ( 
-- !\RAM4|ram~578_combout\ & ( !\SW[6]~input_o\ & ( ((\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~574_combout\)))) # (\comb~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101111000111110000111100110011001000100001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM4|ALT_INV_ram~574_combout\,
	datae => \RAM4|ALT_INV_ram~578_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \RAM0|dado_out[6]~36_combout\);

\RAM0|dado_out[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[1]~16_combout\ = ( \comb~0_combout\ & ( \CPU|decoderInstru|saida[1]~1_combout\ & ( (!\ROM1|memROM~21_combout\ & !\ROM1|memROM~20_combout\) ) ) ) # ( !\comb~0_combout\ & ( \CPU|decoderInstru|saida[1]~1_combout\ & ( (!\ROM1|memROM~20_combout\ 
-- & ((!\ROM1|memROM~21_combout\) # ((\ROM1|memROM~22_combout\ & !\ROM1|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	combout => \RAM0|dado_out[1]~16_combout\);

\CPU|MUX1|saida_MUX[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~2_combout\ = (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\RAM0|dado_out[1]~16_combout\))) # (\CPU|decoderInstru|Equal11~1_combout\ & (\ROM1|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~2_combout\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|MUX1|saida_MUX[6]~2_combout\ & ( !\CPU|decoderInstru|saida~2_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[6]~2_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- (!\RAM0|dado_out[6]~28_combout\ & !\RAM0|dado_out[6]~36_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110011001100110010000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[6]~28_combout\,
	datad => \RAM0|ALT_INV_dado_out[6]~36_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[6]~2_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|decoderInstru|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~5_combout\ = ( \CPU|decoderInstru|saida~3_combout\ & ( (((\ROM1|memROM~19_combout\) # (\ROM1|memROM~18_combout\)) # (\ROM1|memROM~17_combout\)) # (\ROM1|memROM~16_combout\) ) ) # ( !\CPU|decoderInstru|saida~3_combout\ & ( 
-- (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~19_combout\ & ((\ROM1|memROM~17_combout\) # (\ROM1|memROM~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011111111111111101110000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|decoderInstru|saida[5]~5_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\RAM0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|process_0~0_combout\ = (!\ROM1|memROM~22_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~20_combout\ & \CPU|decoderInstru|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \RAM0|process_0~0_combout\);

\RAM0|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~595_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~586_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~586_combout\,
	combout => \RAM0|ram~595_combout\);

\RAM0|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~231_q\);

\RAM0|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~572_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~231_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~231_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~572_combout\);

\RAM0|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~596_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~587_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~587_combout\,
	combout => \RAM0|ram~596_combout\);

\RAM0|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~527_q\);

\RAM0|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~573_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~527_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~527_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~573_combout\);

\RAM0|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~574_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~573_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~572_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~572_combout\,
	datad => \RAM0|ALT_INV_ram~573_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~574_combout\);

\RAM0|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~597_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~588_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~588_combout\,
	combout => \RAM0|ram~597_combout\);

\RAM0|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~23_q\);

\RAM0|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~600_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~590_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~590_combout\,
	combout => \RAM0|ram~600_combout\);

\RAM0|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~279_q\);

\RAM0|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~599_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~589_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~589_combout\,
	combout => \RAM0|ram~599_combout\);

\RAM0|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~39_q\);

\RAM0|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~601_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~591_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~591_combout\,
	combout => \RAM0|ram~601_combout\);

\RAM0|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~295_q\);

\RAM0|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~575_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~295_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~39_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~279_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~23_q\,
	datab => \RAM0|ALT_INV_ram~279_q\,
	datac => \RAM0|ALT_INV_ram~39_q\,
	datad => \RAM0|ALT_INV_ram~295_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~575_combout\);

\RAM0|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~598_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~592_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~592_combout\,
	combout => \RAM0|ram~598_combout\);

\RAM0|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~31_q\);

\RAM0|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~576_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~576_combout\);

\RAM0|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~602_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~593_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~593_combout\,
	combout => \RAM0|ram~602_combout\);

\RAM0|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~63_q\);

\RAM0|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~603_combout\ = (\RAM0|process_0~0_combout\ & \RAM0|ram~594_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_process_0~0_combout\,
	datab => \RAM0|ALT_INV_ram~594_combout\,
	combout => \RAM0|ram~603_combout\);

\RAM0|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~319_q\);

\RAM0|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~577_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~319_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~63_q\,
	datab => \RAM0|ALT_INV_ram~319_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~577_combout\);

\RAM0|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~578_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~576_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~575_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~575_combout\,
	datac => \RAM0|ALT_INV_ram~576_combout\,
	datad => \RAM0|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~578_combout\);

\RAM0|dado_out[6]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~28_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~578_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~574_combout\,
	datad => \RAM0|ALT_INV_ram~578_combout\,
	combout => \RAM0|dado_out[6]~28_combout\);

\RAM4|dado_out[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[6]~7_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~578_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~574_combout\,
	datad => \RAM4|ALT_INV_ram~578_combout\,
	combout => \RAM4|dado_out[6]~7_combout\);

\CPU|MUX1|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~9_combout\ = ( \RAM4|dado_out[6]~7_combout\ & ( \CPU|MUX1|saida_MUX[6]~2_combout\ ) ) # ( !\RAM4|dado_out[6]~7_combout\ & ( \CPU|MUX1|saida_MUX[6]~2_combout\ ) ) # ( !\RAM4|dado_out[6]~7_combout\ & ( 
-- !\CPU|MUX1|saida_MUX[6]~2_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[6]~28_combout\ & ((!\comb~9_combout\) # (\SW[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \RAM0|ALT_INV_dado_out[6]~28_combout\,
	datae => \RAM4|ALT_INV_dado_out[6]~7_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[6]~2_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~9_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoderInstru|saida~2_combout\) # ((!\CPU|decoderInstru|Equal11~2_combout\ & ((\CPU|decoderInstru|saida~3_combout\) # (\CPU|decoderInstru|Equal11~3_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~3_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~3_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ 
-- ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~3_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \ROM1|memROM~12_combout\ & ( (\CPU|PC|DOUT\(3) & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~10_combout\ & 
-- \ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000001000000000000001100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \comb~2_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\buff3_K4|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K4|saida~1_combout\ = ( \FPGA_RESET_N~input_o\ & ( (\ROM1|memROM~9_combout\ & (\comb~2_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_comb~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \buff3_K4|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \buff3_K4|saida~1_combout\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\ROM1|memROM~9_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datac => \buff3_K4|ALT_INV_saida~0_combout\,
	combout => \comb~8_combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\RAM0|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~10_combout\ = ( \KEY[1]~input_o\ & ( \KEY[3]~input_o\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & \comb~8_combout\)) ) ) ) # ( !\KEY[1]~input_o\ & ( \KEY[3]~input_o\ & ( (\ROM1|memROM~13_combout\ & 
-- (\ROM1|memROM~14_combout\ & (\ROM1|memROM~15_combout\ & \comb~8_combout\))) ) ) ) # ( \KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~15_combout\ & \comb~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \RAM0|dado_out[0]~10_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\RAM0|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~11_combout\ = ( \comb~8_combout\ & ( \KEY[2]~input_o\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~15_combout\ & !\SW[0]~input_o\)) # (\ROM1|memROM~14_combout\ & (\ROM1|memROM~15_combout\)))) ) ) ) # ( 
-- \comb~8_combout\ & ( !\KEY[2]~input_o\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~15_combout\ & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_comb~8_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \RAM0|dado_out[0]~11_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\detectorK0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorK0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorK0|saidaQ~0_combout\);

\detectorK0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorK0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorK0|saidaQ~q\);

\detectorK0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorK0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorK0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorK0|ALT_INV_saidaQ~q\,
	combout => \detectorK0|saida~combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(3) & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \comb~5_combout\);

\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \ROM1|memROM~9_combout\ & ( \comb~5_combout\ & ( (\ROM1|memROM~22_combout\ & (\ROM1|memROM~21_combout\ & (\ROM1|memROM~20_combout\ & \CPU|decoderInstru|Equal11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ALT_INV_comb~5_combout\,
	combout => \comb~10_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorK0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\buff3_K0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_K0|saida~0_combout\ = ( !\FLAG|DOUT~q\ & ( (!\ROM1|memROM~9_combout\ & (\comb~2_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_comb~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \buff3_K4|ALT_INV_saida~0_combout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	combout => \buff3_K0|saida~0_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\RAM0|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~12_combout\ = ( !\SW[8]~input_o\ & ( \SW[9]~input_o\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~15_combout\ & \comb~8_combout\))) ) ) ) # ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ & ( 
-- (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~15_combout\ & \comb~8_combout\))) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[9]~input_o\ & ( (!\ROM1|memROM~14_combout\ & (\comb~8_combout\ & (!\ROM1|memROM~13_combout\ $ 
-- (!\ROM1|memROM~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000000100000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \RAM0|dado_out[0]~12_combout\);

\RAM0|dado_out[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~32_combout\ = ( !\buff3_K0|saida~0_combout\ & ( !\RAM0|dado_out[0]~12_combout\ & ( (!\RAM0|dado_out[0]~9_combout\ & (!\buff3_K4|saida~1_combout\ & (!\RAM0|dado_out[0]~10_combout\ & !\RAM0|dado_out[0]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[0]~9_combout\,
	datab => \buff3_K4|ALT_INV_saida~1_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~10_combout\,
	datad => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datae => \buff3_K0|ALT_INV_saida~0_combout\,
	dataf => \RAM0|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM0|dado_out[0]~32_combout\);

\RAM0|dado_out[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~15_combout\ = ( \CPU|decoderInstru|saida[1]~1_combout\ & ( \buff3_K4|saida~0_combout\ & ( (!\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~13_combout\ $ (!\ROM1|memROM~15_combout\)) # (\ROM1|memROM~14_combout\))) # (\ROM1|memROM~9_combout\ & 
-- (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	dataf => \buff3_K4|ALT_INV_saida~0_combout\,
	combout => \RAM0|dado_out[0]~15_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (!\CPU|decoderInstru|Equal11~1_combout\ & (((!\RAM0|dado_out[0]~15_combout\ & !\RAM0|dado_out[1]~16_combout\)))) # (\CPU|decoderInstru|Equal11~1_combout\ & (\ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100010001110100010001000111010001000100011101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~15_combout\,
	datad => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|ULA1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida~0_combout\ = ( \RAM0|dado_out[0]~32_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\RAM0|dado_out[0]~32_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ & ( 
-- (!\CPU|decoderInstru|saida~2_combout\) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( \RAM0|dado_out[0]~32_combout\ & ( !\CPU|MUX1|saida_MUX[0]~0_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\CPU|decoderInstru|Equal11~1_combout\ & 
-- !\RAM4|dado_out[0]~1_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\CPU|REGA|DOUT\(0))) ) ) ) # ( !\RAM0|dado_out[0]~32_combout\ & ( !\CPU|MUX1|saida_MUX[0]~0_combout\ & ( (\CPU|REGA|DOUT\(0) & \CPU|decoderInstru|saida~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datab => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~1_combout\,
	datae => \RAM0|ALT_INV_dado_out[0]~32_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|ULA1|saida~0_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\RAM0|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~225_q\);

\RAM0|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~529_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~225_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~529_combout\);

\RAM0|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~521_q\);

\RAM0|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~530_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~521_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~530_combout\);

\RAM0|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~531_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~529_combout\,
	datad => \RAM0|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~531_combout\);

\RAM0|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~17_q\);

\RAM0|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~25_q\);

\RAM0|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~33_q\);

\RAM0|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~532_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~33_q\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~25_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~17_q\,
	datab => \RAM0|ALT_INV_ram~25_q\,
	datac => \RAM0|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~532_combout\);

\RAM0|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~273_q\);

\RAM0|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~289_q\);

\RAM0|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~533_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~289_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~273_q\,
	datac => \RAM0|ALT_INV_ram~289_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~533_combout\);

\RAM0|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~57_q\);

\RAM0|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~534_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~57_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~534_combout\);

\RAM0|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~313_q\);

\RAM0|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~535_combout\ = ( \ROM1|memROM~13_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~313_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~535_combout\);

\RAM0|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~536_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~534_combout\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~533_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~532_combout\,
	datab => \RAM0|ALT_INV_ram~533_combout\,
	datac => \RAM0|ALT_INV_ram~534_combout\,
	datad => \RAM0|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~536_combout\);

\RAM0|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~9_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~536_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000001110010000000000111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_ram~531_combout\,
	datac => \RAM0|ALT_INV_ram~536_combout\,
	datad => \RAM0|ALT_INV_dado_out~8_combout\,
	combout => \RAM0|dado_out[0]~9_combout\);

\RAM0|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~13_combout\ = ( !\RAM0|dado_out[0]~11_combout\ & ( !\RAM0|dado_out[0]~12_combout\ & ( (!\RAM0|dado_out[0]~10_combout\ & ((!\comb~2_combout\) # ((!\comb~8_combout\) # (\FLAG|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \FLAG|ALT_INV_DOUT~q\,
	datad => \RAM0|ALT_INV_dado_out[0]~10_combout\,
	datae => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	dataf => \RAM0|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM0|dado_out[0]~13_combout\);

\CPU|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~3_combout\ = ( \RAM0|dado_out[0]~13_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ ) ) # ( !\RAM0|dado_out[0]~13_combout\ & ( \CPU|MUX1|saida_MUX[0]~0_combout\ ) ) # ( \RAM0|dado_out[0]~13_combout\ & ( 
-- !\CPU|MUX1|saida_MUX[0]~0_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM4|dado_out[0]~1_combout\ & (!\RAM0|dado_out[0]~9_combout\ & !\buff3_K4|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM4|ALT_INV_dado_out[0]~1_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~9_combout\,
	datad => \buff3_K4|ALT_INV_saida~1_combout\,
	datae => \RAM0|ALT_INV_dado_out[0]~13_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~3_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~5_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~5_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\buff3_7_0|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_7_0|saida[1]~0_combout\ = ( !\SW[1]~input_o\ & ( (!\ROM1|memROM~9_combout\ & (!\comb~0_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \buff3_K4|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \buff3_7_0|saida[1]~0_combout\);

\RAM4|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~226_q\);

\RAM4|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~537_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~226_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~226_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~537_combout\);

\RAM4|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~522_q\);

\RAM4|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~538_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~522_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~538_combout\);

\RAM4|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~539_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~537_combout\,
	datad => \RAM4|ALT_INV_ram~538_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~539_combout\);

\RAM4|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~18_q\);

\RAM4|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~274_q\);

\RAM4|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~34_q\);

\RAM4|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~290_q\);

\RAM4|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~540_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~290_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~34_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~274_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~18_q\,
	datab => \RAM4|ALT_INV_ram~274_q\,
	datac => \RAM4|ALT_INV_ram~34_q\,
	datad => \RAM4|ALT_INV_ram~290_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~540_combout\);

\RAM4|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~26_q\);

\RAM4|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~541_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~541_combout\);

\RAM4|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~58_q\);

\RAM4|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~314_q\);

\RAM4|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~542_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~314_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~58_q\,
	datab => \RAM4|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~542_combout\);

\RAM4|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~543_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~541_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~540_combout\,
	datac => \RAM4|ALT_INV_ram~541_combout\,
	datad => \RAM4|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~543_combout\);

\RAM4|dado_out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[1]~2_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~543_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~539_combout\,
	datad => \RAM4|ALT_INV_ram~543_combout\,
	combout => \RAM4|dado_out[1]~2_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\RAM0|dado_out[1]~16_combout\))) # (\CPU|decoderInstru|Equal11~1_combout\ & (\ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \RAM4|dado_out[1]~2_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ & ( !\CPU|decoderInstru|saida~2_combout\ ) ) ) # ( !\RAM4|dado_out[1]~2_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ & ( 
-- !\CPU|decoderInstru|saida~2_combout\ ) ) ) # ( !\RAM4|dado_out[1]~2_combout\ & ( !\CPU|MUX1|saida_MUX[1]~1_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\buff3_7_0|saida[1]~0_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- !\RAM0|dado_out[1]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \buff3_7_0|ALT_INV_saida[1]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM0|ALT_INV_dado_out[1]~18_combout\,
	datae => \RAM4|ALT_INV_dado_out[1]~2_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\RAM0|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~226_q\);

\RAM0|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~537_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~226_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~226_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~537_combout\);

\RAM0|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~522_q\);

\RAM0|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~538_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~522_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~538_combout\);

\RAM0|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~539_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~537_combout\,
	datad => \RAM0|ALT_INV_ram~538_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~539_combout\);

\RAM0|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~18_q\);

\RAM0|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~274_q\);

\RAM0|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~34_q\);

\RAM0|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~290_q\);

\RAM0|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~540_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~290_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~34_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~274_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~18_q\,
	datab => \RAM0|ALT_INV_ram~274_q\,
	datac => \RAM0|ALT_INV_ram~34_q\,
	datad => \RAM0|ALT_INV_ram~290_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~540_combout\);

\RAM0|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~26_q\);

\RAM0|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~541_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~541_combout\);

\RAM0|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~58_q\);

\RAM0|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~314_q\);

\RAM0|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~542_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~314_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~58_q\,
	datab => \RAM0|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~542_combout\);

\RAM0|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~543_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~541_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~540_combout\,
	datac => \RAM0|ALT_INV_ram~541_combout\,
	datad => \RAM0|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~543_combout\);

\RAM0|dado_out[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[1]~18_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~543_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~539_combout\,
	datad => \RAM0|ALT_INV_ram~543_combout\,
	combout => \RAM0|dado_out[1]~18_combout\);

\CPU|MUX1|saida_MUX[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~5_combout\ = ( \RAM4|dado_out[1]~2_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) ) # ( !\RAM4|dado_out[1]~2_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) ) # ( !\RAM4|dado_out[1]~2_combout\ & ( 
-- !\CPU|MUX1|saida_MUX[1]~1_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~18_combout\ & ((!\comb~9_combout\) # (\SW[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RAM0|ALT_INV_dado_out[1]~18_combout\,
	datae => \RAM4|ALT_INV_dado_out[1]~2_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~5_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~4_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~4_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\buff3_7_0|saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \buff3_7_0|saida[2]~1_combout\ = ( !\SW[2]~input_o\ & ( (!\ROM1|memROM~9_combout\ & (!\comb~0_combout\ & (\CPU|decoderInstru|saida[1]~1_combout\ & \buff3_K4|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \buff3_K4|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \buff3_7_0|saida[2]~1_combout\);

\RAM4|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~227_q\);

\RAM4|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~544_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~227_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~544_combout\);

\RAM4|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~523_q\);

\RAM4|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~545_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~523_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~545_combout\);

\RAM4|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~546_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~544_combout\,
	datad => \RAM4|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~546_combout\);

\RAM4|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~19_q\);

\RAM4|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~275_q\);

\RAM4|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~35_q\);

\RAM4|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~291_q\);

\RAM4|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~547_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~291_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~35_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~275_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~19_q\,
	datab => \RAM4|ALT_INV_ram~275_q\,
	datac => \RAM4|ALT_INV_ram~35_q\,
	datad => \RAM4|ALT_INV_ram~291_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~547_combout\);

\RAM4|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~27_q\);

\RAM4|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~548_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~548_combout\);

\RAM4|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~59_q\);

\RAM4|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~315_q\);

\RAM4|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~549_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~315_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~59_q\,
	datab => \RAM4|ALT_INV_ram~315_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~549_combout\);

\RAM4|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~550_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~548_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~547_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~547_combout\,
	datac => \RAM4|ALT_INV_ram~548_combout\,
	datad => \RAM4|ALT_INV_ram~549_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~550_combout\);

\RAM4|dado_out[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[2]~3_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~550_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~546_combout\,
	datad => \RAM4|ALT_INV_ram~550_combout\,
	combout => \RAM4|dado_out[2]~3_combout\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \RAM0|dado_out[2]~20_combout\ & ( \RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) ) # ( 
-- !\RAM0|dado_out[2]~20_combout\ & ( \RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) ) # ( \RAM0|dado_out[2]~20_combout\ & ( 
-- !\RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) ) # ( !\RAM0|dado_out[2]~20_combout\ & ( !\RAM4|dado_out[2]~3_combout\ & ( 
-- (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[1]~16_combout\) # (!\buff3_7_0|saida[2]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \buff3_7_0|ALT_INV_saida[2]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datae => \RAM0|ALT_INV_dado_out[2]~20_combout\,
	dataf => \RAM4|ALT_INV_dado_out[2]~3_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\RAM0|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~227_q\);

\RAM0|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~544_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~227_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~544_combout\);

\RAM0|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~523_q\);

\RAM0|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~545_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~523_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~545_combout\);

\RAM0|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~546_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~544_combout\,
	datad => \RAM0|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~546_combout\);

\RAM0|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~19_q\);

\RAM0|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~275_q\);

\RAM0|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~35_q\);

\RAM0|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~291_q\);

\RAM0|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~547_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~291_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~35_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~275_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~19_q\,
	datab => \RAM0|ALT_INV_ram~275_q\,
	datac => \RAM0|ALT_INV_ram~35_q\,
	datad => \RAM0|ALT_INV_ram~291_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~547_combout\);

\RAM0|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~27_q\);

\RAM0|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~548_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~548_combout\);

\RAM0|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~59_q\);

\RAM0|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~315_q\);

\RAM0|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~549_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~315_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~59_q\,
	datab => \RAM0|ALT_INV_ram~315_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~549_combout\);

\RAM0|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~550_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~548_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~547_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~547_combout\,
	datac => \RAM0|ALT_INV_ram~548_combout\,
	datad => \RAM0|ALT_INV_ram~549_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~550_combout\);

\RAM0|dado_out[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[2]~20_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~550_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~546_combout\,
	datad => \RAM0|ALT_INV_ram~550_combout\,
	combout => \RAM0|dado_out[2]~20_combout\);

\CPU|MUX1|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~4_combout\ = ( \RAM0|dado_out[2]~20_combout\ & ( \RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( !\RAM0|dado_out[2]~20_combout\ & ( \RAM4|dado_out[2]~3_combout\ & 
-- ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( \RAM0|dado_out[2]~20_combout\ & ( !\RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( 
-- !\RAM0|dado_out[2]~20_combout\ & ( !\RAM4|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\comb~9_combout\) # ((!\RAM0|dado_out[1]~16_combout\) # (\SW[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \RAM0|ALT_INV_dado_out[2]~20_combout\,
	dataf => \RAM4|ALT_INV_dado_out[2]~3_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~4_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~6_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~6_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\RAM4|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~228_q\);

\RAM4|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~551_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~228_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~228_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~551_combout\);

\RAM4|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~524_q\);

\RAM4|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~552_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~524_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~552_combout\);

\RAM4|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~553_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~551_combout\,
	datad => \RAM4|ALT_INV_ram~552_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~553_combout\);

\RAM4|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~20_q\);

\RAM4|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~276_q\);

\RAM4|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~36_q\);

\RAM4|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~292_q\);

\RAM4|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~554_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~292_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~36_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~276_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~20_q\,
	datab => \RAM4|ALT_INV_ram~276_q\,
	datac => \RAM4|ALT_INV_ram~36_q\,
	datad => \RAM4|ALT_INV_ram~292_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~554_combout\);

\RAM4|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~28_q\);

\RAM4|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~555_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~555_combout\);

\RAM4|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~60_q\);

\RAM4|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~316_q\);

\RAM4|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~556_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~316_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~60_q\,
	datab => \RAM4|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~556_combout\);

\RAM4|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~557_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~556_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~554_combout\,
	datac => \RAM4|ALT_INV_ram~555_combout\,
	datad => \RAM4|ALT_INV_ram~556_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~557_combout\);

\RAM0|dado_out[3]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[3]~33_combout\ = ( \RAM4|ram~557_combout\ & ( \SW[3]~input_o\ & ( (\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~553_combout\)) ) ) ) # ( !\RAM4|ram~557_combout\ & ( \SW[3]~input_o\ & ( (\RAM4|dado_out~0_combout\ & 
-- ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~553_combout\))) ) ) ) # ( \RAM4|ram~557_combout\ & ( !\SW[3]~input_o\ & ( ((\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~553_combout\))) # (\comb~9_combout\) ) ) ) # ( 
-- !\RAM4|ram~557_combout\ & ( !\SW[3]~input_o\ & ( ((\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~553_combout\)))) # (\comb~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101111000111110000111100110011001000100001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM4|ALT_INV_ram~553_combout\,
	datae => \RAM4|ALT_INV_ram~557_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \RAM0|dado_out[3]~33_combout\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \RAM0|dado_out[3]~33_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) # ( !\RAM0|dado_out[3]~33_combout\ & ( 
-- (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[1]~16_combout\) # (!\RAM0|dado_out[3]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000100000001000000010100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM0|ALT_INV_dado_out[3]~22_combout\,
	datae => \RAM0|ALT_INV_dado_out[3]~33_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\RAM0|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~228_q\);

\RAM0|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~551_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~228_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~228_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~551_combout\);

\RAM0|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~524_q\);

\RAM0|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~552_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~524_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~552_combout\);

\RAM0|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~553_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~551_combout\,
	datad => \RAM0|ALT_INV_ram~552_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~553_combout\);

\RAM0|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~20_q\);

\RAM0|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~276_q\);

\RAM0|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~36_q\);

\RAM0|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~292_q\);

\RAM0|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~554_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~292_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~36_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~276_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~20_q\,
	datab => \RAM0|ALT_INV_ram~276_q\,
	datac => \RAM0|ALT_INV_ram~36_q\,
	datad => \RAM0|ALT_INV_ram~292_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~554_combout\);

\RAM0|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~28_q\);

\RAM0|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~555_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~555_combout\);

\RAM0|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~60_q\);

\RAM0|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~316_q\);

\RAM0|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~556_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~316_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~60_q\,
	datab => \RAM0|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~556_combout\);

\RAM0|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~557_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~556_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~554_combout\,
	datac => \RAM0|ALT_INV_ram~555_combout\,
	datad => \RAM0|ALT_INV_ram~556_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~557_combout\);

\RAM0|dado_out[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[3]~22_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~557_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~553_combout\,
	datad => \RAM0|ALT_INV_ram~557_combout\,
	combout => \RAM0|dado_out[3]~22_combout\);

\RAM4|dado_out[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[3]~4_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~557_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~553_combout\,
	datad => \RAM4|ALT_INV_ram~557_combout\,
	combout => \RAM4|dado_out[3]~4_combout\);

\CPU|MUX1|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~6_combout\ = ( \RAM0|dado_out[3]~22_combout\ & ( \RAM4|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( !\RAM0|dado_out[3]~22_combout\ & ( \RAM4|dado_out[3]~4_combout\ & 
-- ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( \RAM0|dado_out[3]~22_combout\ & ( !\RAM4|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( 
-- !\RAM0|dado_out[3]~22_combout\ & ( !\RAM4|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\comb~9_combout\) # ((!\RAM0|dado_out[1]~16_combout\) # (\SW[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \RAM0|ALT_INV_dado_out[3]~22_combout\,
	dataf => \RAM4|ALT_INV_dado_out[3]~4_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~6_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~7_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~7_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\RAM4|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~229_q\);

\RAM4|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~558_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~229_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~229_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~558_combout\);

\RAM4|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~525_q\);

\RAM4|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~559_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~525_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~559_combout\);

\RAM4|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~560_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~559_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~558_combout\,
	datad => \RAM4|ALT_INV_ram~559_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~560_combout\);

\RAM4|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~21_q\);

\RAM4|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~277_q\);

\RAM4|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~37_q\);

\RAM4|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~293_q\);

\RAM4|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~561_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~293_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~37_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~277_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~21_q\,
	datab => \RAM4|ALT_INV_ram~277_q\,
	datac => \RAM4|ALT_INV_ram~37_q\,
	datad => \RAM4|ALT_INV_ram~293_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~561_combout\);

\RAM4|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~29_q\);

\RAM4|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~562_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~562_combout\);

\RAM4|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~61_q\);

\RAM4|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~317_q\);

\RAM4|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~563_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~317_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~61_q\,
	datab => \RAM4|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~563_combout\);

\RAM4|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~564_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~563_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~562_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~561_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~561_combout\,
	datac => \RAM4|ALT_INV_ram~562_combout\,
	datad => \RAM4|ALT_INV_ram~563_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~564_combout\);

\RAM0|dado_out[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[4]~34_combout\ = ( \RAM4|ram~564_combout\ & ( \SW[4]~input_o\ & ( (\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~560_combout\)) ) ) ) # ( !\RAM4|ram~564_combout\ & ( \SW[4]~input_o\ & ( (\RAM4|dado_out~0_combout\ & 
-- ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~560_combout\))) ) ) ) # ( \RAM4|ram~564_combout\ & ( !\SW[4]~input_o\ & ( ((\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~560_combout\))) # (\comb~9_combout\) ) ) ) # ( 
-- !\RAM4|ram~564_combout\ & ( !\SW[4]~input_o\ & ( ((\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~560_combout\)))) # (\comb~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101111000111110000111100110011001000100001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM4|ALT_INV_ram~560_combout\,
	datae => \RAM4|ALT_INV_ram~564_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \RAM0|dado_out[4]~34_combout\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \RAM0|dado_out[4]~34_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) # ( !\RAM0|dado_out[4]~34_combout\ & ( 
-- (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[1]~16_combout\) # (!\RAM0|dado_out[4]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000100000001000000010100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM0|ALT_INV_dado_out[4]~24_combout\,
	datae => \RAM0|ALT_INV_dado_out[4]~34_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\RAM0|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~229_q\);

\RAM0|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~558_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~229_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~229_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~558_combout\);

\RAM0|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~525_q\);

\RAM0|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~559_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~525_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~559_combout\);

\RAM0|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~560_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~559_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~558_combout\,
	datad => \RAM0|ALT_INV_ram~559_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~560_combout\);

\RAM0|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~21_q\);

\RAM0|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~277_q\);

\RAM0|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~37_q\);

\RAM0|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~293_q\);

\RAM0|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~561_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~293_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~37_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~277_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~21_q\,
	datab => \RAM0|ALT_INV_ram~277_q\,
	datac => \RAM0|ALT_INV_ram~37_q\,
	datad => \RAM0|ALT_INV_ram~293_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~561_combout\);

\RAM0|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~29_q\);

\RAM0|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~562_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~562_combout\);

\RAM0|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~61_q\);

\RAM0|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~317_q\);

\RAM0|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~563_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~317_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~61_q\,
	datab => \RAM0|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~563_combout\);

\RAM0|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~564_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~563_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~562_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~561_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~561_combout\,
	datac => \RAM0|ALT_INV_ram~562_combout\,
	datad => \RAM0|ALT_INV_ram~563_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~564_combout\);

\RAM0|dado_out[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[4]~24_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~564_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~560_combout\,
	datad => \RAM0|ALT_INV_ram~564_combout\,
	combout => \RAM0|dado_out[4]~24_combout\);

\RAM4|dado_out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[4]~5_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~564_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~560_combout\,
	datad => \RAM4|ALT_INV_ram~564_combout\,
	combout => \RAM4|dado_out[4]~5_combout\);

\CPU|MUX1|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~7_combout\ = ( \RAM0|dado_out[4]~24_combout\ & ( \RAM4|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( !\RAM0|dado_out[4]~24_combout\ & ( \RAM4|dado_out[4]~5_combout\ & 
-- ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( \RAM0|dado_out[4]~24_combout\ & ( !\RAM4|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( 
-- !\RAM0|dado_out[4]~24_combout\ & ( !\RAM4|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\comb~9_combout\) # ((!\RAM0|dado_out[1]~16_combout\) # (\SW[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \RAM0|ALT_INV_dado_out[4]~24_combout\,
	dataf => \RAM4|ALT_INV_dado_out[4]~5_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~7_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~8_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~8_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\RAM4|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~230_q\);

\RAM4|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~565_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~230_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~230_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~565_combout\);

\RAM4|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~526_q\);

\RAM4|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~566_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~526_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~566_combout\);

\RAM4|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~567_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~566_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~565_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~565_combout\,
	datad => \RAM4|ALT_INV_ram~566_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~567_combout\);

\RAM4|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~22_q\);

\RAM4|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~278_q\);

\RAM4|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~38_q\);

\RAM4|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~294_q\);

\RAM4|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~568_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~294_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~38_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~278_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~22_q\,
	datab => \RAM4|ALT_INV_ram~278_q\,
	datac => \RAM4|ALT_INV_ram~38_q\,
	datad => \RAM4|ALT_INV_ram~294_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~568_combout\);

\RAM4|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~30_q\);

\RAM4|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~569_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~569_combout\);

\RAM4|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~62_q\);

\RAM4|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~318_q\);

\RAM4|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~570_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~318_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~62_q\,
	datab => \RAM4|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~570_combout\);

\RAM4|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~571_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~569_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~568_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~568_combout\,
	datac => \RAM4|ALT_INV_ram~569_combout\,
	datad => \RAM4|ALT_INV_ram~570_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~571_combout\);

\RAM0|dado_out[5]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~35_combout\ = ( \RAM4|ram~571_combout\ & ( \SW[5]~input_o\ & ( (\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~567_combout\)) ) ) ) # ( !\RAM4|ram~571_combout\ & ( \SW[5]~input_o\ & ( (\RAM4|dado_out~0_combout\ & 
-- ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~567_combout\))) ) ) ) # ( \RAM4|ram~571_combout\ & ( !\SW[5]~input_o\ & ( ((\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~567_combout\))) # (\comb~9_combout\) ) ) ) # ( 
-- !\RAM4|ram~571_combout\ & ( !\SW[5]~input_o\ & ( ((\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~567_combout\)))) # (\comb~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101111000111110000111100110011001000100001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM4|ALT_INV_ram~567_combout\,
	datae => \RAM4|ALT_INV_ram~571_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \RAM0|dado_out[5]~35_combout\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \RAM0|dado_out[5]~35_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) # ( !\RAM0|dado_out[5]~35_combout\ & ( 
-- (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[1]~16_combout\) # (!\RAM0|dado_out[5]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000100000001000000010100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM0|ALT_INV_dado_out[5]~26_combout\,
	datae => \RAM0|ALT_INV_dado_out[5]~35_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\RAM0|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~230_q\);

\RAM0|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~565_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~230_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~230_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~565_combout\);

\RAM0|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~526_q\);

\RAM0|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~566_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~526_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~566_combout\);

\RAM0|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~567_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~566_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~565_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~565_combout\,
	datad => \RAM0|ALT_INV_ram~566_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~567_combout\);

\RAM0|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~22_q\);

\RAM0|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~278_q\);

\RAM0|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~38_q\);

\RAM0|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~294_q\);

\RAM0|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~568_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~294_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~38_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~278_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~22_q\,
	datab => \RAM0|ALT_INV_ram~278_q\,
	datac => \RAM0|ALT_INV_ram~38_q\,
	datad => \RAM0|ALT_INV_ram~294_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~568_combout\);

\RAM0|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~30_q\);

\RAM0|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~569_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~569_combout\);

\RAM0|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~62_q\);

\RAM0|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~318_q\);

\RAM0|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~570_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~318_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~62_q\,
	datab => \RAM0|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~570_combout\);

\RAM0|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~571_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~569_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~568_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~568_combout\,
	datac => \RAM0|ALT_INV_ram~569_combout\,
	datad => \RAM0|ALT_INV_ram~570_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~571_combout\);

\RAM0|dado_out[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~26_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~571_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~567_combout\,
	datad => \RAM0|ALT_INV_ram~571_combout\,
	combout => \RAM0|dado_out[5]~26_combout\);

\RAM4|dado_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[5]~6_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~571_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~567_combout\,
	datad => \RAM4|ALT_INV_ram~571_combout\,
	combout => \RAM4|dado_out[5]~6_combout\);

\CPU|MUX1|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~8_combout\ = ( \RAM0|dado_out[5]~26_combout\ & ( \RAM4|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( !\RAM0|dado_out[5]~26_combout\ & ( \RAM4|dado_out[5]~6_combout\ & 
-- ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( \RAM0|dado_out[5]~26_combout\ & ( !\RAM4|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( 
-- !\RAM0|dado_out[5]~26_combout\ & ( !\RAM4|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\comb~9_combout\) # ((!\RAM0|dado_out[1]~16_combout\) # (\SW[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \RAM0|ALT_INV_dado_out[5]~26_combout\,
	dataf => \RAM4|ALT_INV_dado_out[5]~6_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~8_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~9_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~9_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\RAM4|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~232_q\);

\RAM4|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~579_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~232_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~232_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~579_combout\);

\RAM4|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~528_q\);

\RAM4|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~580_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~528_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~528_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~580_combout\);

\RAM4|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~581_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~579_combout\,
	datad => \RAM4|ALT_INV_ram~580_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~581_combout\);

\RAM4|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~24_q\);

\RAM4|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~280_q\);

\RAM4|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~40_q\);

\RAM4|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~296_q\);

\RAM4|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~582_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~296_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~40_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM4|ram~280_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~24_q\,
	datab => \RAM4|ALT_INV_ram~280_q\,
	datac => \RAM4|ALT_INV_ram~40_q\,
	datad => \RAM4|ALT_INV_ram~296_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~582_combout\);

\RAM4|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~32_q\);

\RAM4|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~583_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~583_combout\);

\RAM4|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~64_q\);

\RAM4|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~320_q\);

\RAM4|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~584_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~320_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~64_q\,
	datab => \RAM4|ALT_INV_ram~320_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~584_combout\);

\RAM4|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~585_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~584_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~583_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~582_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~582_combout\,
	datac => \RAM4|ALT_INV_ram~583_combout\,
	datad => \RAM4|ALT_INV_ram~584_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~585_combout\);

\RAM0|dado_out[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~37_combout\ = ( \RAM4|ram~585_combout\ & ( \SW[7]~input_o\ & ( (\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~581_combout\)) ) ) ) # ( !\RAM4|ram~585_combout\ & ( \SW[7]~input_o\ & ( (\RAM4|dado_out~0_combout\ & 
-- ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~581_combout\))) ) ) ) # ( \RAM4|ram~585_combout\ & ( !\SW[7]~input_o\ & ( ((\ROM1|memROM~20_combout\ & (\RAM4|dado_out~0_combout\ & !\RAM4|ram~581_combout\))) # (\comb~9_combout\) ) ) ) # ( 
-- !\RAM4|ram~585_combout\ & ( !\SW[7]~input_o\ & ( ((\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\) # (!\RAM4|ram~581_combout\)))) # (\comb~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101111000111110000111100110011001000100001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \RAM4|ALT_INV_ram~581_combout\,
	datae => \RAM4|ALT_INV_ram~585_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \RAM0|dado_out[7]~37_combout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \RAM0|dado_out[7]~37_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & !\CPU|decoderInstru|saida~2_combout\)) ) ) # ( !\RAM0|dado_out[7]~37_combout\ & ( 
-- (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[1]~16_combout\) # (!\RAM0|dado_out[7]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000100000001000000010100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \RAM0|ALT_INV_dado_out[7]~30_combout\,
	datae => \RAM0|ALT_INV_dado_out[7]~37_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\RAM0|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~232_q\);

\RAM0|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~579_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~232_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~232_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~579_combout\);

\RAM0|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~528_q\);

\RAM0|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~580_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~528_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM0|ALT_INV_ram~528_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~580_combout\);

\RAM0|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~581_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM0|ALT_INV_ram~579_combout\,
	datad => \RAM0|ALT_INV_ram~580_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~581_combout\);

\RAM0|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~24_q\);

\RAM0|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~280_q\);

\RAM0|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~40_q\);

\RAM0|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~296_q\);

\RAM0|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~582_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~296_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~40_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( 
-- \RAM0|ram~280_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~24_q\,
	datab => \RAM0|ALT_INV_ram~280_q\,
	datac => \RAM0|ALT_INV_ram~40_q\,
	datad => \RAM0|ALT_INV_ram~296_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~582_combout\);

\RAM0|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~32_q\);

\RAM0|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~583_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~583_combout\);

\RAM0|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~64_q\);

\RAM0|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM0|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~320_q\);

\RAM0|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~584_combout\ = ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~320_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~64_q\,
	datab => \RAM0|ALT_INV_ram~320_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~584_combout\);

\RAM0|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~585_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~584_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM0|ram~583_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM0|ram~582_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~582_combout\,
	datac => \RAM0|ALT_INV_ram~583_combout\,
	datad => \RAM0|ALT_INV_ram~584_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM0|ram~585_combout\);

\RAM0|dado_out[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~30_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM0|ram~585_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM0|ram~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~581_combout\,
	datad => \RAM0|ALT_INV_ram~585_combout\,
	combout => \RAM0|dado_out[7]~30_combout\);

\RAM4|dado_out[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[7]~8_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~585_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~581_combout\,
	datad => \RAM4|ALT_INV_ram~585_combout\,
	combout => \RAM4|dado_out[7]~8_combout\);

\CPU|MUX1|saida_MUX[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~10_combout\ = ( \RAM0|dado_out[7]~30_combout\ & ( \RAM4|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( !\RAM0|dado_out[7]~30_combout\ & ( \RAM4|dado_out[7]~8_combout\ & 
-- ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( \RAM0|dado_out[7]~30_combout\ & ( !\RAM4|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & !\RAM0|dado_out[1]~16_combout\) ) ) ) # ( 
-- !\RAM0|dado_out[7]~30_combout\ & ( !\RAM4|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & ((!\comb~9_combout\) # ((!\RAM0|dado_out[1]~16_combout\) # (\SW[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \RAM0|ALT_INV_dado_out[7]~30_combout\,
	dataf => \RAM4|ALT_INV_dado_out[7]~8_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~10_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~10_combout\ $ (((\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[4]~7_combout\) # (\CPU|decoderInstru|Equal11~2_combout\))))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~10_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|decoderInstru|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[2]~6_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(5) & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|decoderInstru|saida[2]~6_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = (\CPU|FLAG|DOUT~q\ & !\CPU|decoderInstru|saida[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAG|ALT_INV_DOUT~q\,
	datab => \CPU|decoderInstru|ALT_INV_saida[2]~6_combout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~8_combout\ = ( \RAM0|dado_out[7]~30_combout\ & ( \RAM0|dado_out[7]~37_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[7]~30_combout\ & ( \RAM0|dado_out[7]~37_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( \RAM0|dado_out[7]~30_combout\ & ( !\RAM0|dado_out[7]~37_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[7]~30_combout\ & ( !\RAM0|dado_out[7]~37_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datae => \RAM0|ALT_INV_dado_out[7]~30_combout\,
	dataf => \RAM0|ALT_INV_dado_out[7]~37_combout\,
	combout => \CPU|ULA1|saida[7]~8_combout\);

\CPU|ULA1|saida[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~9_combout\ = ( \RAM0|dado_out[6]~36_combout\ & ( \CPU|MUX1|saida_MUX[6]~2_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( !\RAM0|dado_out[6]~36_combout\ & ( 
-- \CPU|MUX1|saida_MUX[6]~2_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( !\RAM0|dado_out[6]~36_combout\ & ( !\CPU|MUX1|saida_MUX[6]~2_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & 
-- (!\CPU|decoderInstru|saida~2_combout\ & (\CPU|decoderInstru|saida[4]~4_combout\ & !\RAM0|dado_out[6]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datad => \RAM0|ALT_INV_dado_out[6]~28_combout\,
	datae => \RAM0|ALT_INV_dado_out[6]~36_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[6]~2_combout\,
	combout => \CPU|ULA1|saida[6]~9_combout\);

\CPU|ULA1|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~10_combout\ = ( \RAM0|dado_out[5]~26_combout\ & ( \RAM0|dado_out[5]~35_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[5]~26_combout\ & ( \RAM0|dado_out[5]~35_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( \RAM0|dado_out[5]~26_combout\ & ( !\RAM0|dado_out[5]~35_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[5]~26_combout\ & ( !\RAM0|dado_out[5]~35_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datae => \RAM0|ALT_INV_dado_out[5]~26_combout\,
	dataf => \RAM0|ALT_INV_dado_out[5]~35_combout\,
	combout => \CPU|ULA1|saida[5]~10_combout\);

\CPU|ULA1|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~11_combout\ = ( \RAM0|dado_out[4]~24_combout\ & ( \RAM0|dado_out[4]~34_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[4]~24_combout\ & ( \RAM0|dado_out[4]~34_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( \RAM0|dado_out[4]~24_combout\ & ( !\RAM0|dado_out[4]~34_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[4]~24_combout\ & ( !\RAM0|dado_out[4]~34_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datae => \RAM0|ALT_INV_dado_out[4]~24_combout\,
	dataf => \RAM0|ALT_INV_dado_out[4]~34_combout\,
	combout => \CPU|ULA1|saida[4]~11_combout\);

\CPU|ULA1|saida[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~12_combout\ = ( \RAM0|dado_out[3]~22_combout\ & ( \RAM0|dado_out[3]~33_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[3]~22_combout\ & ( \RAM0|dado_out[3]~33_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( \RAM0|dado_out[3]~22_combout\ & ( !\RAM0|dado_out[3]~33_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\RAM0|dado_out[1]~16_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & 
-- \CPU|decoderInstru|saida[4]~4_combout\))) ) ) ) # ( !\RAM0|dado_out[3]~22_combout\ & ( !\RAM0|dado_out[3]~33_combout\ & ( (!\CPU|decoderInstru|Equal11~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & \CPU|decoderInstru|saida[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datae => \RAM0|ALT_INV_dado_out[3]~22_combout\,
	dataf => \RAM0|ALT_INV_dado_out[3]~33_combout\,
	combout => \CPU|ULA1|saida[3]~12_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\CPU|ULA1|saida[4]~11_combout\ & ( !\CPU|ULA1|saida[3]~12_combout\ & ( (\CPU|decoderInstru|saida[2]~6_combout\ & (!\CPU|ULA1|saida[7]~8_combout\ & (!\CPU|ULA1|saida[6]~9_combout\ & !\CPU|ULA1|saida[5]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[2]~6_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[7]~8_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[6]~9_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[5]~10_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[4]~11_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[3]~12_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|ULA1|saida[1]~1_combout\ & ( \CPU|MUX1|saida_MUX[2]~4_combout\ & ( \CPU|decoderInstru|saida[4]~4_combout\ ) ) ) # ( !\CPU|ULA1|saida[1]~1_combout\ & ( \CPU|MUX1|saida_MUX[2]~4_combout\ & ( 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & ((!\CPU|decoderInstru|saida~2_combout\) # (\CPU|REGA|DOUT\(0)))) ) ) ) # ( \CPU|ULA1|saida[1]~1_combout\ & ( !\CPU|MUX1|saida_MUX[2]~4_combout\ & ( \CPU|decoderInstru|saida[4]~4_combout\ ) ) ) # ( 
-- !\CPU|ULA1|saida[1]~1_combout\ & ( !\CPU|MUX1|saida_MUX[2]~4_combout\ & ( (\CPU|decoderInstru|saida[4]~4_combout\ & ((!\CPU|decoderInstru|saida~2_combout\ & ((\CPU|MUX1|saida_MUX[0]~3_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & 
-- (\CPU|REGA|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000001111111100000000110111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~4_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~3_combout\ = ( \CPU|FLAG|DOUT~1_combout\ & ( !\CPU|FLAG|DOUT~2_combout\ & ( ((!\CPU|ULA1|Add0~1_sumout\ & (!\CPU|ULA1|Add0~5_sumout\ & !\CPU|ULA1|Add0~9_sumout\))) # (\CPU|decoderInstru|saida[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~3_combout\);

\CPU|FLAG|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~4_combout\ = (!\CPU|decoderInstru|saida[4]~4_combout\ & (((\CPU|ULA1|Add0~21_sumout\) # (\CPU|ULA1|Add0~17_sumout\)) # (\CPU|ULA1|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FLAG|DOUT~4_combout\);

\CPU|FLAG|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~5_combout\ = ( \CPU|FLAG|DOUT~3_combout\ & ( \CPU|FLAG|DOUT~4_combout\ & ( \CPU|FLAG|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAG|DOUT~3_combout\ & ( \CPU|FLAG|DOUT~4_combout\ & ( \CPU|FLAG|DOUT~0_combout\ ) ) ) # ( \CPU|FLAG|DOUT~3_combout\ & ( 
-- !\CPU|FLAG|DOUT~4_combout\ & ( (((!\CPU|ULA1|Add0~25_sumout\ & !\CPU|ULA1|Add0~29_sumout\)) # (\CPU|FLAG|DOUT~0_combout\)) # (\CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( !\CPU|FLAG|DOUT~3_combout\ & ( !\CPU|FLAG|DOUT~4_combout\ & ( 
-- \CPU|FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~3_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~4_combout\,
	combout => \CPU|FLAG|DOUT~5_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|FLAG|DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|LDESV|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LDESV|saida[0]~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~18_combout\ & \ROM1|memROM~19_combout\))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~18_combout\ & 
-- !\ROM1|memROM~19_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~17_combout\ & (\ROM1|memROM~18_combout\ & !\ROM1|memROM~19_combout\))) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & 
-- (!\ROM1|memROM~18_combout\ & \ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|LDESV|saida[0]~0_combout\);

\CPU|RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|LDESV|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(3));

\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RET|DOUT\(3))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) ) # ( 
-- !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|decoderInstru|saida[9]~0_combout\ & \CPU|RET|DOUT\(3))))) # (\CPU|LDESV|saida[0]~0_combout\ & (\ROM1|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datad => \CPU|RET|ALT_INV_DOUT\(3),
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~20_combout\);

\RAM4|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~225_q\);

\RAM4|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~529_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~225_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~529_combout\);

\RAM4|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~587_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~521_q\);

\RAM4|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~530_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~521_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM4|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~530_combout\);

\RAM4|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~531_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM4|ALT_INV_ram~529_combout\,
	datad => \RAM4|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~531_combout\);

\RAM4|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~17_q\);

\RAM4|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~589_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~33_q\);

\RAM4|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~532_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~33_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~17_q\,
	datac => \RAM4|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~532_combout\);

\RAM4|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~273_q\);

\RAM4|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~289_q\);

\RAM4|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~533_combout\ = ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~289_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~273_q\,
	datac => \RAM4|ALT_INV_ram~289_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~533_combout\);

\RAM4|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~25_q\);

\RAM4|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~57_q\);

\RAM4|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~534_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~57_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~25_q\,
	datab => \RAM4|ALT_INV_ram~57_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~534_combout\);

\RAM4|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM4|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~313_q\);

\RAM4|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~535_combout\ = ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM4|ALT_INV_ram~313_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~535_combout\);

\RAM4|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~536_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~13_combout\ & ( \RAM4|ram~534_combout\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \RAM4|ram~533_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM4|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~532_combout\,
	datab => \RAM4|ALT_INV_ram~533_combout\,
	datac => \RAM4|ALT_INV_ram~534_combout\,
	datad => \RAM4|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM4|ram~536_combout\);

\RAM4|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~1_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~20_combout\ & ((!\RAM4|ram~536_combout\))) # (\ROM1|memROM~20_combout\ & (!\RAM4|ram~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~531_combout\,
	datad => \RAM4|ALT_INV_ram~536_combout\,
	combout => \RAM4|dado_out[0]~1_combout\);

\RAM0|dado_out[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~14_combout\ = (!\RAM4|dado_out[0]~1_combout\ & (!\RAM0|dado_out[0]~9_combout\ & (!\buff3_K4|saida~1_combout\ & \RAM0|dado_out[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_dado_out[0]~1_combout\,
	datab => \RAM0|ALT_INV_dado_out[0]~9_combout\,
	datac => \buff3_K4|ALT_INV_saida~1_combout\,
	datad => \RAM0|ALT_INV_dado_out[0]~13_combout\,
	combout => \RAM0|dado_out[0]~14_combout\);

\RAM0|dado_out[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~17_combout\ = (\RAM0|dado_out[1]~16_combout\) # (\RAM0|dado_out[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[0]~15_combout\,
	datab => \RAM0|ALT_INV_dado_out[1]~16_combout\,
	combout => \RAM0|dado_out[0]~17_combout\);

\RAM0|dado_out[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[1]~19_combout\ = (!\RAM0|dado_out[1]~18_combout\ & (!\RAM4|dado_out[1]~2_combout\ & ((!\comb~9_combout\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[1]~18_combout\,
	datad => \RAM4|ALT_INV_dado_out[1]~2_combout\,
	combout => \RAM0|dado_out[1]~19_combout\);

\RAM0|dado_out[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[2]~21_combout\ = (!\RAM0|dado_out[2]~20_combout\ & (!\RAM4|dado_out[2]~3_combout\ & ((!\comb~9_combout\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[2]~20_combout\,
	datad => \RAM4|ALT_INV_dado_out[2]~3_combout\,
	combout => \RAM0|dado_out[2]~21_combout\);

\RAM0|dado_out[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[3]~23_combout\ = (!\RAM0|dado_out[3]~22_combout\ & (!\RAM4|dado_out[3]~4_combout\ & ((!\comb~9_combout\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[3]~22_combout\,
	datad => \RAM4|ALT_INV_dado_out[3]~4_combout\,
	combout => \RAM0|dado_out[3]~23_combout\);

\RAM0|dado_out[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[4]~25_combout\ = (!\RAM0|dado_out[4]~24_combout\ & (!\RAM4|dado_out[4]~5_combout\ & ((!\comb~9_combout\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[4]~24_combout\,
	datad => \RAM4|ALT_INV_dado_out[4]~5_combout\,
	combout => \RAM0|dado_out[4]~25_combout\);

\RAM0|dado_out[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~27_combout\ = (!\RAM0|dado_out[5]~26_combout\ & (!\RAM4|dado_out[5]~6_combout\ & ((!\comb~9_combout\) # (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[5]~26_combout\,
	datad => \RAM4|ALT_INV_dado_out[5]~6_combout\,
	combout => \RAM0|dado_out[5]~27_combout\);

\RAM0|dado_out[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~29_combout\ = (!\RAM0|dado_out[6]~28_combout\ & (!\RAM4|dado_out[6]~7_combout\ & ((!\comb~9_combout\) # (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[6]~28_combout\,
	datad => \RAM4|ALT_INV_dado_out[6]~7_combout\,
	combout => \RAM0|dado_out[6]~29_combout\);

\RAM0|dado_out[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~31_combout\ = (!\RAM0|dado_out[7]~30_combout\ & (!\RAM4|dado_out[7]~8_combout\ & ((!\comb~9_combout\) # (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~9_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \RAM0|ALT_INV_dado_out[7]~30_combout\,
	datad => \RAM4|ALT_INV_dado_out[7]~8_combout\,
	combout => \RAM0|dado_out[7]~31_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\DEC1|Mux3~0_combout\ & (\CPU|decoderInstru|Equal11~0_combout\ & (!\ROM1|memROM~9_combout\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_comb~0_combout\,
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

\REGled2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGled2|DOUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGled2|DOUT~q\);

\REGled1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGled1|DOUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGled1|DOUT~q\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\DEC1|Mux3~0_combout\ & (\CPU|decoderInstru|Equal11~0_combout\ & (!\ROM1|memROM~9_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

\reg4b0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~3_combout\,
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
	ena => \comb~3_combout\,
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
	ena => \comb~3_combout\,
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
	ena => \comb~3_combout\,
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

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~15_combout\ & ( (\DEC1|Mux3~0_combout\ & (\CPU|decoderInstru|Equal11~0_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \comb~4_combout\);

\reg4b2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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
	ena => \comb~4_combout\,
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

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\DEC1|Mux3~0_combout\ & (\CPU|decoderInstru|Equal11~0_combout\ & (!\ROM1|memROM~9_combout\ & \comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_comb~5_combout\,
	combout => \comb~6_combout\);

\reg4b3|DOUT[0]\ : dffeas
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
	ena => \comb~6_combout\,
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
	ena => \comb~6_combout\,
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
	ena => \comb~6_combout\,
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

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\DEC1|Mux3~0_combout\ & (\CPU|decoderInstru|Equal11~0_combout\ & (\ROM1|memROM~9_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Mux3~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_comb~2_combout\,
	combout => \comb~7_combout\);

\reg4b4|DOUT[0]\ : dffeas
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
	ena => \comb~7_combout\,
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
	ena => \comb~7_combout\,
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
	ena => \comb~7_combout\,
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


