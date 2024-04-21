library IEEE;
use ieee.std_logic_1164.all;

entity double7Seg is
    port
    (
        -- Input ports
        dado : in  std_logic_vector(7 downto 0);
        -- Output ports
        saidaDezena : out std_logic_vector(3 downto 0);
		  saidaUnidade : out std_logic_vector(3 downto 0)
    );
end entity;

architecture comportamento of double7Seg is

begin

	saidaDezena <= "0000" when dado="00000000" else -- (0) 0
						"0000" when dado="00000001" else -- (0) 1
						"0000" when dado="00000010" else -- (0) 2
						"0000" when dado="00000011" else -- (0) 3
						"0000" when dado="00000100" else -- (0) 4
						"0000" when dado="00000101" else -- (0) 5
						"0000" when dado="00000110" else -- (0) 6
						"0000" when dado="00000111" else -- (0) 7
						"0000" when dado="00001000" else -- (0) 8
						"0000" when dado="00001001" else -- (0) 9
						"0001" when dado="00001010" else -- (1) 10
						"0001" when dado="00001011" else -- (1) 11
						"0001" when dado="00001100" else -- (1) 12
						"0001" when dado="00001101" else -- (1) 13
						"0001" when dado="00001110" else -- (1) 14
						"0001" when dado="00001111" else -- (1) 15
						"0001" when dado="00010000" else -- (1) 16
						"0001" when dado="00010001" else -- (1) 17
						"0001" when dado="00010010" else -- (1) 18
						"0001" when dado="00010011" else -- (1) 19
						"0010" when dado="00010100" else -- (2) 20
						"0010" when dado="00010101" else -- (2) 21
						"0010" when dado="00010110" else -- (2) 22
						"0010" when dado="00010111" else -- (2) 23
						"0010" when dado="00011000" else -- (2) 24
						"0010" when dado="00011001" else -- (2) 25
						"0010" when dado="00011010" else -- (2) 26
						"0010" when dado="00011011" else -- (2) 27
						"0010" when dado="00011100" else -- (2) 28
						"0010" when dado="00011101" else -- (2) 29
						"0011" when dado="00011110" else -- (3) 30
						"0011" when dado="00011111" else -- (3) 31
						"0011" when dado="00100000" else -- (3) 32
						"0011" when dado="00100001" else -- (3) 33
						"0011" when dado="00100010" else -- (3) 34
						"0011" when dado="00100011" else -- (3) 35
						"0011" when dado="00100100" else -- (3) 36
						"0011" when dado="00100101" else -- (3) 37
						"0011" when dado="00100110" else -- (3) 38
						"0011" when dado="00100111" else -- (3) 39
						"0100" when dado="00101000" else -- (4) 40
						"0100" when dado="00101001" else -- (4) 41
						"0100" when dado="00101010" else -- (4) 42
						"0100" when dado="00101011" else -- (4) 43
						"0100" when dado="00101100" else -- (4) 44
						"0100" when dado="00101101" else -- (4) 45
						"0100" when dado="00101110" else -- (4) 46
						"0100" when dado="00101111" else -- (4) 47
						"0100" when dado="00110000" else -- (4) 48
						"0100" when dado="00110001" else -- (4) 49
						"0101" when dado="00110010" else -- (5) 50
						"0101" when dado="00110011" else -- (5) 51
						"0101" when dado="00110100" else -- (5) 52
						"0101" when dado="00110101" else -- (5) 53
						"0101" when dado="00110110" else -- (5) 54
						"0101" when dado="00110111" else -- (5) 55
						"0101" when dado="00111000" else -- (5) 56
						"0101" when dado="00111001" else -- (5) 57
						"0101" when dado="00111010" else -- (5) 58
						"0101" when dado="00111011" else -- (5) 59
						"0110" when dado="00111100" else -- (6) 60
						"0110" when dado="00111101" else -- (6) 61
						"0110" when dado="00111110" else -- (6) 62
						"0110" when dado="00111111" else -- (6) 63
						"0110" when dado="01000000" else -- (6) 64
						"0110" when dado="01000001" else -- (6) 65
						"0110" when dado="01000010" else -- (6) 66
						"0110" when dado="01000011" else -- (6) 67
						"0110" when dado="01000100" else -- (6) 68
						"0110" when dado="01000101" else -- (6) 69
						"0111" when dado="01000110" else -- (7) 70
						"0111" when dado="01000111" else -- (7) 71
						"0111" when dado="01001000" else -- (7) 72
						"0111" when dado="01001001" else -- (7) 73
						"0111" when dado="01001010" else -- (7) 74
						"0111" when dado="01001011" else -- (7) 75
						"0111" when dado="01001100" else -- (7) 76
						"0111" when dado="01001101" else -- (7) 77
						"0111" when dado="01001110" else -- (7) 78
						"0111" when dado="01001111" else -- (7) 79
						"1000" when dado="01010000" else -- (8) 80
						"1000" when dado="01010001" else -- (8) 81
						"1000" when dado="01010010" else -- (8) 82
						"1000" when dado="01010011" else -- (8) 83
						"1000" when dado="01010100" else -- (8) 84
						"1000" when dado="01010101" else -- (8) 85
						"1000" when dado="01010110" else -- (8) 86
						"1000" when dado="01010111" else -- (8) 87
						"1000" when dado="01011000" else -- (8) 88
						"1000" when dado="01011001" else -- (8) 89
						"1001" when dado="01011010" else -- (9) 90
						"1001" when dado="01011011" else -- (9) 91
						"1001" when dado="01011100" else -- (9) 92
						"1001" when dado="01011101" else -- (9) 93
						"1001" when dado="01011110" else -- (9) 94
						"1001" when dado="01011111" else -- (9) 95
						"1001" when dado="01100000" else -- (9) 96
						"1001" when dado="01100001" else -- (9) 97
						"1001" when dado="01100010" else -- (9) 98
						"1001" when dado="01100011" else -- (9) 99
						"1111";
						
	saidaUnidade  <= 	"0000" when dado="00000000" else -- (0) 0
							"0001" when dado="00000001" else -- (1) 1
							"0010" when dado="00000010" else -- (2) 2
							"0011" when dado="00000011" else -- (3) 3
							"0100" when dado="00000100" else -- (4) 4
							"0101" when dado="00000101" else -- (5) 5
							"0110" when dado="00000110" else -- (6) 6
							"0111" when dado="00000111" else -- (7) 7
							"1000" when dado="00001000" else -- (8) 8
							"1001" when dado="00001001" else -- (9) 9
							"0000" when dado="00001010" else -- (0) 10
							"0001" when dado="00001011" else -- (1) 11
							"0010" when dado="00001100" else -- (2) 12
							"0011" when dado="00001101" else -- (3) 13
							"0100" when dado="00001110" else -- (4) 14
							"0101" when dado="00001111" else -- (5) 15
							"0110" when dado="00010000" else -- (6) 16
							"0111" when dado="00010001" else -- (7) 17
							"1000" when dado="00010010" else -- (8) 18
							"1001" when dado="00010011" else -- (9) 19
							"0000" when dado="00010100" else -- (0) 20
							"0001" when dado="00010101" else -- (1) 21
							"0010" when dado="00010110" else -- (2) 22
							"0011" when dado="00010111" else -- (3) 23
							"0100" when dado="00011000" else -- (4) 24
							"0101" when dado="00011001" else -- (5) 25
							"0110" when dado="00011010" else -- (6) 26
							"0111" when dado="00011011" else -- (7) 27
							"1000" when dado="00011100" else -- (8) 28
							"1001" when dado="00011101" else -- (9) 29
							"0000" when dado="00011110" else -- (0) 30
							"0001" when dado="00011111" else -- (1) 31
							"0010" when dado="00100000" else -- (2) 32
							"0011" when dado="00100001" else -- (3) 33
							"0100" when dado="00100010" else -- (4) 34
							"0101" when dado="00100011" else -- (5) 35
							"0110" when dado="00100100" else -- (6) 36
							"0111" when dado="00100101" else -- (7) 37
							"1000" when dado="00100110" else -- (8) 38
							"1001" when dado="00100111" else -- (9) 39
							"0000" when dado="00101000" else -- (0) 40
							"0001" when dado="00101001" else -- (1) 41
							"0010" when dado="00101010" else -- (2) 42
							"0011" when dado="00101011" else -- (3) 43
							"0100" when dado="00101100" else -- (4) 44
							"0101" when dado="00101101" else -- (5) 45
							"0110" when dado="00101110" else -- (6) 46
							"0111" when dado="00101111" else -- (7) 47
							"1000" when dado="00110000" else -- (8) 48
							"1001" when dado="00110001" else -- (9) 49
							"0000" when dado="00110010" else -- (0) 50
							"0001" when dado="00110011" else -- (1) 51
							"0010" when dado="00110100" else -- (2) 52
							"0011" when dado="00110101" else -- (3) 53
							"0100" when dado="00110110" else -- (4) 54
							"0101" when dado="00110111" else -- (5) 55
							"0110" when dado="00111000" else -- (6) 56
							"0111" when dado="00111001" else -- (7) 57
							"1000" when dado="00111010" else -- (8) 58
							"1001" when dado="00111011" else -- (9) 59
							"0000" when dado="00111100" else -- (0) 60
							"0001" when dado="00111101" else -- (1) 61
							"0010" when dado="00111110" else -- (2) 62
							"0011" when dado="00111111" else -- (3) 63
							"0100" when dado="01000000" else -- (4) 64
							"0101" when dado="01000001" else -- (5) 65
							"0110" when dado="01000010" else -- (6) 66
							"0111" when dado="01000011" else -- (7) 67
							"1000" when dado="01000100" else -- (8) 68
							"1001" when dado="01000101" else -- (9) 69
							"0000" when dado="01000110" else -- (0) 70
							"0001" when dado="01000111" else -- (1) 71
							"0010" when dado="01001000" else -- (2) 72
							"0011" when dado="01001001" else -- (3) 73
							"0100" when dado="01001010" else -- (4) 74
							"0101" when dado="01001011" else -- (5) 75
							"0110" when dado="01001100" else -- (6) 76
							"0111" when dado="01001101" else -- (7) 77
							"1000" when dado="01001110" else -- (8) 78
							"1001" when dado="01001111" else -- (9) 79
							"0000" when dado="01010000" else -- (0) 80
							"0001" when dado="01010001" else -- (1) 81
							"0010" when dado="01010010" else -- (2) 82
							"0011" when dado="01010011" else -- (3) 83
							"0100" when dado="01010100" else -- (4) 84
							"0101" when dado="01010101" else -- (5) 85
							"0110" when dado="01010110" else -- (6) 86
							"0111" when dado="01010111" else -- (7) 87
							"1000" when dado="01011000" else -- (8) 88
							"1001" when dado="01011001" else -- (9) 89
							"0000" when dado="01011010" else -- (0) 90
							"0001" when dado="01011011" else -- (1) 91
							"0010" when dado="01011100" else -- (2) 92
							"0011" when dado="01011101" else -- (3) 93
							"0100" when dado="01011110" else -- (4) 94
							"0101" when dado="01011111" else -- (5) 95
							"0110" when dado="01100000" else -- (6) 96
							"0111" when dado="01100001" else -- (7) 97
							"1000" when dado="01100010" else -- (8) 98
							"1001" when dado="01100011" else -- (9) 99
							"1111";

end architecture;