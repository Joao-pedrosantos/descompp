library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( dataWidth : natural := 13;
        addrWidth : natural := 9
  );
  port   (
    clk_sim : in std_logic;
	 rd, wr : out std_logic;
	 ROM_Address : out std_logic_vector (8 downto 0);
	 Instruction_IN : in std_Logic_vector (15 downto 0);
	 Data_IN : in std_logic_vector (7 downto 0);
	 Data_OUT : out std_logic_vector (7 downto 0);
	 Data_Address : out std_logic_vector (8 downto 0);
	 reg	: out std_logic_vector (7 downto 0);
	 adds : out std_logic_vector (5 downto 0)
  );
  
end entity;


architecture arquitetura of CPU is
  
  signal ROM_Addr : std_logic_vector (8 downto 0);
  signal Sinais_Controle : std_logic_vector (14 downto 0);
  signal PC_JMP : std_logic_vector (8 downto 0); 
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC   : std_logic_vector (8 downto 0);
  

  
  
  
  
  
  
  
  
  signal MUX_ULA : std_logic_vector (dataWidth-6 downto 0);
  signal REG1_ULA_A : std_logic_vector (dataWidth-6 downto 0);
  signal Saida_ULA : std_logic_vector (dataWidth-6 downto 0);
  signal Comando : std_logic_vector (15 downto 0);
  signal saidaMEM : std_logic_vector (dataWidth-6 downto 0);
  signal OpCode : std_logic_vector (3 downto 0);
  signal saida_RET : std_logic_vector (dataWidth-5 downto 0);
  signal endReg   : std_logic_vector  (2 downto 0);
  
  
  
  
  signal end_ret  : std_logic_vector (5 downto 0);
  signal saida_Reg : std_logic_vector (5 downto 0);
  signal reg_ret  : std_logic_vector (5 downto 0);
  signal end_ram  : std_logic_vector (5 downto 0);
  
 
  
  
  
  
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Operacao_ULA_ret : std_logic;
  signal SelMUXRet : std_logic_vector (1 downto 0);
  signal MUXPILHA : std_logic;
  
  
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal habEscritaRET : std_logic;
  signal JMP : std_logic;
  signal JEQ : std_logic;
  signal JSR : std_logic;
  signal RETnr : std_logic;
  signal flg : std_logic;
  signal saida_Flag : std_logic;
  signal habFlag : std_logic;
  signal habLeituraMEM_RET : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
CLK <= clk_sim;

Comando <= Instruction_IN;
saidaMEM <= Data_IN;
Data_OUT <= REG1_ULA_A;
Data_Address <= Comando(8 downto 0);

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => dataWidth-5)
        port map( entradaA_MUX => saidaMEM,
                 entradaB_MUX =>  Comando(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA);
 
-- O port map completo do Acumulador.
FLAG : entity work.registradorFlag   generic map (larguraDados => (dataWidth-5))
          port map (DIN => flg, DOUT => saida_Flag, ENABLE => habFlag, CLK => CLK, RST => '0');

-- O port map completo do Acumulador.
--RET : entity work.registradorGenerico   generic map (larguraDados => (dataWidth-4))
--          port map (DIN => proxPC, DOUT => saida_Ret, ENABLE => habEscritaRET, CLK => CLK, RST => '0');



MUXRET   :  entity work.muxGenerico2x1  generic map (larguraDados => 6)
					port map( entradaA_MUX => saida_Reg,
                 entradaB_MUX =>  reg_ret,
                 seletor_MUX => MUXPILHA,
                 saida_MUX => end_ram);
			
ULA_sr : entity work.ULASomaSubRET  generic map(larguraDados => (6))
          port map (entradaA => saida_Reg, entradaB => "000001", saida => reg_ret, seletor => Operacao_ULA_ret);


RET : entity work.registradorGenerico   generic map (larguraDados => (6))
          port map (DIN => reg_ret, DOUT => saida_Reg, ENABLE => habEscritaRET, CLK => CLK, RST => '0');	

			
RAM_RET  : entity work.memoriaRAM   generic map (dataWidth => (9), addrWidth => (9))
          port map (addr => end_ram, we => habEscritaRET, re => habLeituraMEM_RET, habilita => '1', clk => CLK, dado_in => proxPC, dado_out =>saida_Ret);		 

 

				  
REGS : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => (dataWidth-5), larguraEndBancoRegs => 3)
          port map ( clk => CLK,
              endereco => Comando(15 downto 13),
              dadoEscrita => Saida_ULA,
              habilitaEscrita => Habilita_A,
              saida  => REG1_ULA_A);

reg <= REG1_ULA_A;
		
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN => PC_JMP, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => addrWidth, constante => 1)
			 port map( entrada => Endereco, saida => proxPC);


  -- port map do decoder
decoderInstru :  entity work.decoderInstru
        port map( opcode => Comando(12 downto 9), fg => saida_Flag, saida => Sinais_Controle);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => (dataWidth-5))
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, seletor => Operacao_ULA, sinal_Flag => flg);



MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => dataWidth-4)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Comando(8 downto 0),
					  entradaC_MUX =>  saida_Ret,
					  entradaD_MUX => Comando(8 downto 0),
                 seletor_MUX => selMUXRET,
                 saida_MUX => PC_JMP);

ROM_Addr <= saida_Ret;
	  

LDESV :   entity work.decoderJMP
          port map( entradaA_MUX => JMP,
                 entradaB_MUX =>  JEQ,
					  entradaC_MUX =>  RETnr,
					  entradaD_MUX => JSR,
                 flg => saida_Flag,
                 saida => selMUXRET);
					  

adds <= end_ram;
ROM_Address <= Endereco;



habLeituraMEM_RET <= Sinais_Controle(14);
MUXPILHA <= Sinais_Controle(13);
Operacao_ULA_ret <= Sinais_Controle(12);
habEscritaRET <= Sinais_Controle(11);
JMP <= Sinais_Controle(10);
RETnr <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);
JEQ <= Sinais_Controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habFlag <= Sinais_Controle(2);
habLeituraMEM <= Sinais_Controle(1);
habEscritaMEM <= Sinais_Controle(0);

rd <= habLeituraMEM;
wr <= habEscritaMEM; 

end architecture;