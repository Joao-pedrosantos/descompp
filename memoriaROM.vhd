library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
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
  constant ANDi : std_logic_vector(3 downto 0) := "1011";
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
		
		--IMPORTANTE: LOCAIS DE MEMORIA PARA NUMEROS: 
		--UNIDADE: 000000100 (4)
		--DEZENA : 000000101 (5)
		--CENTENA: 000000111 (7)
		--MILHAR : 000001000 (8)
		--DMILHAR: 000001001 (9)
		--CMILHAR: 000001010 (10)
		
		--IMPORTANTE: ROTINA DE INCREMENTO FUNCIONAL: (NAO USAR NESSAS POSICOES DE MEMORIA PF)
		--tmp(6)  := LDA  &  "101100000"; 	--carrega K0
		--tmp(7)  := ANDi &  "000000001";  --tira ruido
		--tmp(8)  := CEQ  &  "000000000";
		--tmp(9)  := JEQ  &  "000000110";
		--tmp(10)  := JSR  &  "000100000"; 
		--tmp(11) := JMP  &  "000000110";

		--tmp(32)  := LDI  & "111111111";
		--tmp(33)  := STA  & "111111111";
		--tmp(34)  := LDA  & "000000010";
		--tmp(35)  := SOMA & "000000001";
		--tmp(36)  := STA  & "000000010";
		--tmp(37)  := STA  & "100100000";
		--tmp(38)  := RET  & "000000000";
		
		
		
tmp(0)  := LDI  &  "000000000"; --320
tmp(1)  := STA  &  "000000000"; --288
tmp(2)  := STA  &  "000000010";
tmp(3)  := STA  &  "111111111";
tmp(4)  := STA  &  "100100001"; --Zera HEX1
tmp(5)  := STA  &  "100100000"; --Zera HEX0
tmp(6)  := STA  &  "100100010"; --Zera HEX2
tmp(7)  := STA  &  "100100011"; --Zera HEX3
tmp(8)  := STA  &  "100100100"; --Zera HEX4
tmp(9)  := STA  &  "100100101"; --Zera HEX5



tmp(10)  := LDI  &  "000000001";
tmp(11)  := STA  &  "000000001"; --Carrega 1 pra mem(1)


tmp(12)  := LDA  &  "101100001"; --k1
tmp(13)  := ANDi &  "000000001";

tmp(14)  := CEQ  &  "000000000";
tmp(15)  := JEQ  &  "000001100";

tmp(16)  := JSR  &  "001000000";
tmp(17)  := NOP  &  "000000000"; -- ja salvou a unidade

tmp(18)  := LDA  &  "101100001"; --k1
tmp(19)  := ANDi &  "000000001";

tmp(20)  := CEQ  &  "000000000";
tmp(21)  := JEQ  &  "000010010";

tmp(22)  := JSR  &  "001000110";
tmp(23)  := NOP  &  "000000000"; -- salvou dezena

tmp(24)  := LDA  &  "101100001"; --k1
tmp(25)  := ANDi &  "000000001";

tmp(26)  := CEQ  &  "000000000";
tmp(27)  := JEQ  &  "000011000";

tmp(28)  := JSR  &  "001001100";
tmp(29)  := NOP  &  "000000000"; -- salvou centena



tmp(30)  := LDA  &  "101100001"; --k1
tmp(31)  := ANDi &  "000000001";

tmp(32)  := CEQ  &  "000000000";
tmp(33)  := JEQ  &  "000011110";

tmp(34)  := JSR  &  "001010010";
tmp(35)  := NOP  &  "000000000"; -- salvou milhar



tmp(36)  := LDA  &  "101100001"; --k1
tmp(37)  := ANDi &  "000000001";

tmp(38)  := CEQ  &  "000000000";
tmp(39)  := JEQ  &  "000100100";

tmp(40)  := JSR  &  "001011000";
tmp(41)  := NOP  &  "000000000"; -- salvou dezena de milhar


tmp(42)  := LDA  &  "101100001"; --k1
tmp(43)  := ANDi &  "000000001";

tmp(44)  := CEQ  &  "000000000";
tmp(45)  := JEQ  &  "000101010";

tmp(46)  := JSR  &  "001011110";
tmp(47)  := NOP  &  "000000000"; -- salvou centena de milhar


tmp(48)  := LDA  &  "101100001"; --k1
tmp(49)  := ANDi &  "000000001";

tmp(50)  := CEQ  &  "000000000";
tmp(51)  := JEQ  &  "000110000";

tmp(52)  := JSR  &  "001100100"; -- comeca a contar e apaga displays
tmp(53)  := NOP  &  "000000000";

tmp(54)  := JMP  &  "000110110"; -- trocar esse endereco pelo  "001101110" para implementar soma


tmp(64) := LDI & "111111111";
tmp(65) := STA & "111111110";
tmp(66) := LDA & "101000000"; --pega o numero de sw0-sw7
tmp(67) := STA & "000000100"; --salva unidade
tmp(68) := STA & "100100000";
tmp(69) := RET & "000000000";

tmp(70) := LDI & "111111111";
tmp(71) := STA & "111111110";
tmp(72) := LDA & "101000000";
tmp(73) := STA & "000000101"; --salva dezena
tmp(74) := STA & "100100001";
tmp(75) := RET & "000000000";

tmp(76) := LDI & "111111111";
tmp(77) := STA & "111111110";
tmp(78) := LDA & "101000000";
tmp(79) := STA & "000000111"; --salva centena
tmp(80) := STA & "100100010";
tmp(81) := RET & "000000000";

tmp(82) := LDI & "111111111";
tmp(83) := STA & "111111110";
tmp(84) := LDA & "101000000";
tmp(85) := STA & "000001000"; --salva milhar
tmp(86) := STA & "100100011";
tmp(87) := RET & "000000000";

tmp(88) := LDI & "111111111";
tmp(89) := STA & "111111110";
tmp(90) := LDA & "101000000";
tmp(91) := STA & "000001001"; --salva dezena de milhar
tmp(92) := STA & "100100100";
tmp(93) := RET & "000000000";

tmp(94) := LDI & "111111111";
tmp(95) := STA & "111111110";
tmp(96) := LDA & "101000000";
tmp(97) := STA & "000001010"; --salva centena de milhar
tmp(98) := STA & "100100101";
tmp(99) := RET & "000000000";

tmp(100) := LDI & "111111111";
tmp(101) := STA & "111111110";
tmp(102) := LDI & "000000000";
tmp(103) := STA  &  "100100001"; --Zera HEX1
tmp(104) := STA  &  "100100000"; --Zera HEX0
tmp(105) := STA  &  "100100010"; --Zera HEX2
tmp(106) := STA  &  "100100011"; --Zera HEX3
tmp(107) := STA  &  "100100100"; --Zera HEX4
tmp(108) := STA  &  "100100101"; --Zera HEX5
tmp(109) := RET  &  "000000000";
 

		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;