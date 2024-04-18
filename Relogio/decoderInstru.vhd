library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
			fg	    : in std_logic;
         saida  : out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000"; --0
  constant LDA  : std_logic_vector(3 downto 0) := "0001"; --1
  constant SOMA : std_logic_vector(3 downto 0) := "0010"; --2
  constant SUB  : std_logic_vector(3 downto 0) := "0011"; --3
  constant LDI  : std_logic_vector(3 downto 0) := "0100"; --4
  constant STA  : std_logic_vector(3 downto 0) := "0101"; --5
  constant JMP  : std_logic_vector(3 downto 0) := "0110"; --6
  constant JEQ  : std_logic_vector(3 downto 0) := "0111"; --7
  constant CEQ  : std_logic_vector(3 downto 0) := "1000"; --8
  constant JSR  : std_logic_vector(3 downto 0) := "1001"; --9
  constant RET  : std_logic_vector(3 downto 0) := "1010"; --10
  constant ANDi : std_logic_vector(3 downto 0) := "1011"; --11

  begin
saida <= "000000000000000" when opcode = NOP  else
         "000000000110010" when opcode = LDA  else
         "000000000101010" when opcode = SOMA else
         "000000000100010" when opcode = SUB  else
			"000000001111000" when opcode = ANDi else
         "000000001110000" when opcode = LDI  else
         "000000000000001" when opcode = STA  else
			"000010000000000" when opcode = JMP  else
			"000000010000000" when (opcode = JEQ and fg = '1')  else
			"000000000000110" when opcode = CEQ  else
			"011100100000000" when opcode = JSR  else
			"100001000000000" when opcode = RET  else
			"000000000000000";  -- NOP para os opcodes Indefinidos
			
			

	end architecture;