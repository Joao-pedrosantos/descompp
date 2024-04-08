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
  constant ND   : std_logic_vector(3 downto 0) := "1011";
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
			tmp(0)  := LDI  &  "000000000"; --0
			tmp(1)  := STA  &  "000000000"; --0
			tmp(2)  := LDI  &  "000000101";
			tmp(3)  := STA  &  "000000010"; --2
			tmp(4)  := LDI  &  "000000001"; --1
			tmp(5)  := STA  &  "000000001"; --1
			
			
			
			
			
			tmp(6)  := NOP  &  "000000000"; --NOP
			tmp(7)  := LDA  &  "101100001"; --352
			tmp(8)  := ND   &  "000000000";
			tmp(9)  := STA  &  "100100000"; --288
			tmp(10) := CEQ  &  "000000000"; --0
			tmp(11) := JEQ  &  "000000000"; --12
			tmp(12) := JSR  &  "000100000"; --291
			
			
			
			
			
			tmp(13) := NOP  &  "000000000"; --353
			tmp(14) := JMP  &  "000000110"; --6
			
			
			
			tmp(32) := STA  &  "111111111"; --511
			tmp(33) := LDA  &  "000000010"; --354
			tmp(34) := ND   &  "000000000";
			tmp(35) := SOMA &  "000000001"; --0
			tmp(36) := STA  &  "000000010"; --293
			tmp(37) := STA  &  "100000010"; --355
			tmp(38) := STA  &  "100100101"; --0
			tmp(39) := RET  &  "000000000"; --257
			
			
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;