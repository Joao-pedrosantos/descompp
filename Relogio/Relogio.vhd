library ieee;
use ieee.std_logic_1164.all;

entity Relogio is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 13;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port(
    CLOCK_50 : in std_logic;

	 KEY: in std_logic_vector(3 downto 0);
	 SW : in std_logic_vector(9 downto 0);
	 
	 FPGA_RESET_N : in std_logic;
	 
	 LEDR  : out std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(8 downto 0);
	 
	 HEX0  : out std_logic_vector(6 downto 0);
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0);

	 MEM   : out std_logic_vector(larguraDados-6 downto 0);
	 bolso : out std_logic_vector(7 downto 0);
	 adrs  : out std_logic_vector(2 downto 0)
	 
	 
	);
  
end entity;


architecture arquitetura of Relogio is

  signal Endereco        : std_logic_vector (8 downto 0);
  signal PC              : std_logic_vector (8 downto 0);
  signal saidaMEM        : std_logic_vector (larguraDados-6 downto 0);
  signal Comando 			 : std_logic_vector (15 downto 0);
  signal DOut				 : std_logic_vector (7 downto 0);
  signal habRAM			 : std_logic_vector (7 downto 0);
  signal habLED			 : std_logic_vector (7 downto 0);
  signal sreg8b		    : std_logic_vector (7 downto 0);
  signal hexnb0 			 : std_logic_vector (6 downto 0);
  
  
  
  signal sghex0		    : std_logic_vector (3 downto 0);
  signal sghex1		    : std_logic_vector (3 downto 0);
  signal sghex2		    : std_logic_vector (3 downto 0);
  signal sghex3		    : std_logic_vector (3 downto 0);
  signal sghex4		    : std_logic_vector (3 downto 0);
  signal sghex5		    : std_logic_vector (3 downto 0);
   
  
  
  signal habEscritaMEM   : std_logic;
  signal habLeituraMEM   : std_logic;
  signal CLK             : std_logic;
  signal sreg1b			 : std_logic;
  signal sreg1b2			 : std_logic;
  signal k0buff          : std_logic;
  signal k0saida			 : std_logic;
  signal limpa0			 : std_logic;
  signal saida_deb0      : std_logic;
  signal saida_deb0_1    : std_logic;
  signal saida_reg_deb0  : std_logic;
  signal hab_key0			 : std_logic;
  
  signal limpa1			 : std_logic;
  signal saida_deb1      : std_logic; 
  signal saida_reg_deb1  : std_logic;
  signal hab_key1			 : std_logic;
  
  signal segundos			 : std_logic;
  signal rapidao			 : std_logic;
  signal hab_rel         : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => not(KEY(0)), saida => CLK);
end generate;



CPU  : entity work.CPU			  generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
			port map  (clk_sim => CLK, ROM_Address=> PC, Instruction_IN => Comando, Data_IN=> saidaMEM, Data_OUT => DOut, Data_Address => Endereco, rd => habLeituraMEM, wr =>habEscritaMEM, reg =>bolso, adds => adrs);
			
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraDados+3, addrWidth => larguraEnderecos)
          port map (Endereco => PC, Dado => Comando);
			 
RAM0 : entity work.memoriaRAM   generic map (dataWidth => (8))
          port map (addr => Endereco(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => habRAM(0), clk => CLK, dado_in => Dout, dado_out =>saidaMEM);		 
			 
			 
RAM4 : entity work.memoriaRAM   generic map (dataWidth => (8))
          port map (addr => Endereco(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => habRAM(4), clk => CLK, dado_in => Dout, dado_out =>saidaMEM);

RAM8 : entity work.memoriaRAM   generic map (dataWidth => (8))
          port map (addr => Endereco(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => habRAM(7), clk => CLK, dado_in => Dout, dado_out =>saidaMEM);
	

DEC1  : entity work.decoderGenerico3x8
			 port map (entrada => Endereco(8 downto 6), saida => habRAM);
			 
DEC2  : entity work.decoderGenerico3x8
			 port map (entrada => Endereco(2 downto 0), saida => habLED);
			 

REGled1 : entity work.registradorFlag
			 port map (DIN => Dout(0), DOUT => sreg1b, ENABLE => (habEscritaMEM AND habLED(2) AND habRAM(4) AND not(Endereco(5))), clk => CLK, RST => '0');
			 
REGled2 : entity work.registradorFlag
			 port map (DIN => Dout(0), DOUT => sreg1b2, ENABLE => (habEscritaMEM AND habLED(1) AND habRAM(4) AND not(Endereco(5))), clk => CLK, RST => '0');

REGleds : entity work.registrador8bit
			 port map (DIN => Dout, DOUT => sreg8b, ENABLE => (habEscritaMEM AND habLED(0) AND habRAM(4) AND not(Endereco(5))), clk => CLK, RST => '0');
			 
			 
			 
reg4b0: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex0, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(0)), CLK => CLK, RST => '0');
			 
reg4b1: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex1, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(1)), CLK => CLK, RST => '0');

reg4b2: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex2, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(2)), CLK => CLK, RST => '0');
			 
reg4b3: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex3, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(3)), CLK => CLK, RST => '0');
			 
reg4b4: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex4, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(4)), CLK => CLK, RST => '0');
			 
reg4b5: entity work.registrador4bit
          port map (DIN => Dout(3 downto 0), DOUT => sghex5, ENABLE => (habEscritaMEM AND Endereco(5) AND habRAM(4) AND habLED(5)), CLK => CLK, RST => '0');
			 
			 
			 
conv0 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);

conv1 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
					  
conv2 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
					  
conv3 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);

conv4 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);
					  
conv5 :  entity work.conversorHex7Seg
        port map(dadoHex => sghex5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  
					 
					  
					  
					  
					  
buff3_7_0 :  entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0), habilita =>  (habLeituraMEM AND not(Endereco(5)) AND habLED(0) AND habRAM(5)), saida => saidaMEM);


buff3_8 :  entity work.buffer_3_state_1porta
        port map(entrada => SW(8), habilita =>  (habLeituraMEM AND not(Endereco(5)) AND habLED(1) AND habRAM(5)), saida => saidaMEM(0));
		  
buff3_9 :  entity work.buffer_3_state_1porta
        port map(entrada => SW(9), habilita =>  (habLeituraMEM AND not(Endereco(5)) AND habLED(2) AND habRAM(5)), saida => saidaMEM(0));

		  
		  
		  
key0: entity work.buffer_3_state_8portas
			port map (entrada => "0000000" & saida_reg_deb0, habilita => hab_key0, saida => saidaMEM);
			
key1: entity work.buffer_3_state_8portas
			port map (entrada => "0000000" & saida_reg_deb1, habilita => hab_key1, saida => saidaMEM);
		  
		  
		    
buff3_K2 :  entity work.buffer_3_state_1porta
        port map(entrada => not(KEY(2)), habilita =>  (habLeituraMEM AND Endereco(5) AND habLED(2) AND habRAM(5)), saida => saidaMEM(0));
		    
buff3_K3 :  entity work.buffer_3_state_1porta
        port map(entrada => not(KEY(3)), habilita =>  (habLeituraMEM AND Endereco(5) AND habLED(3) AND habRAM(5)), saida => saidaMEM(0));
		    
		  	  
buff3_K4 :  entity work.buffer_3_state_1porta
        port map(entrada => not(FPGA_RESET_N), habilita =>  (habLeituraMEM AND Endereco(5) AND habLED(4) AND habRAM(5)), saida => saidaMEM(0));
		    
		  	   
debounce0: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not(KEY(0))), saida => saida_deb0);


fdebounce0 : entity work.registradorFlag   
          port map (DIN => '1', DOUT => saida_reg_deb0, ENABLE => '1', CLK => (hab_rel), RST => limpa0);

hab_rel <= ((segundos AND (not (SW(9)))) OR (rapidao AND SW(9)));


debounce1: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(1)), saida => saida_deb1);


fdebounce1 : entity work.registradorFlag   
          port map (DIN => '1', DOUT => saida_reg_deb1, ENABLE => '1', CLK => (saida_deb1), RST => limpa1);


			 
divisor : entity work.divisorGenerico
            generic map (divisor => 25000000)   -- divide por 10.
            port map (clk => CLK, saida_clk => segundos);

divisorrapidao : entity work.divisorGenerico
            generic map (divisor => 2500000)   -- divide por 10.
            port map (clk => CLK, saida_clk => rapidao);
				
PC_OUT <= PC;

MEM <= saidaMEM;

limpa0 <= (habEscritaMEM AND Endereco(8) AND Endereco(7) AND Endereco(6) AND Endereco(5) AND Endereco(4) AND Endereco(3) AND Endereco(2) AND Endereco(1) AND Endereco(0));
limpa1 <= (habEscritaMEM AND Endereco(8) AND Endereco(7) AND Endereco(6) AND Endereco(5) AND Endereco(4) AND Endereco(3) AND Endereco(2) AND Endereco(1) AND not(Endereco(0)));

hab_key0 <= (habLeituraMEM and Endereco(5) and habLED(0) and habRAM(5));
hab_key1 <= (habLeituraMEM and Endereco(5) and habLED(1) and habRAM(5));

LEDR(7 downto 0) <= sreg8b;
LEDR(9) <= sreg1b;
LEDR(8) <= sreg1b2;

end architecture;