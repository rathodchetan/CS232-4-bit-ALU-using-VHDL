library IEEE;
use IEEE.std_logic_1164.all;

entity FourBitComparator is

    port(A : in std_logic_vector(3 downto 0);      
         B : in std_logic_vector(3 downto 0);     
         output : out std_logic_vector(7 downto 0) );    
end entity;

architecture comparator_arc of FourBitComparator is

	signal x: std_logic_vector(3 downto 0);
	signal A_E_B: std_logic;
	signal A_L_B: std_logic;
	signal A_G_B: std_logic;
	signal A_not: std_logic_vector(3 downto 0);
	signal B_not: std_logic_vector(3 downto 0);
	signal S1: std_logic;
	signal S2: std_logic;
	signal S3: std_logic;
	signal S4: std_logic;
	signal S5: std_logic;
	signal S6: std_logic;
	signal S7: std_logic;
	signal S8: std_logic;
	
	component xnor_gate
		port (X,Y: in std_logic; Z: out std_logic);
	end component;
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
			
	component ThreeInputAnd 
		port (a,b,c: in std_logic; s: out std_logic);
	end component;

	component FourInputAnd 
		port (a,b,c,d: in std_logic; s: out std_logic);
	end component;
	
	component FiveInputAnd 
		port (a,b,c,d,e: in std_logic; s: out std_logic);
	end component;
	
	component FourInputOr
		port (a,b,c,d: in std_logic; s: out std_logic);
	end component;

	component FourInputNot
	port(a: in std_logic_vector(3 downto 0); s: out std_logic_vector(3 downto 0));
	end component;
	
begin

	--A NOT B
	XNORINST1: xnor_gate
		port map (A(0),B(0),x(0));
		
	XNORINST2: xnor_gate
		port map (A(1),B(1),x(1));
	
	XNORINST3: xnor_gate
		port map (A(2),B(2),x(2));
		
	XNORINST4: xnor_gate
		port map (A(3),B(3),x(3));
		
	FOURANDINST0:FourInputAnd 
		port map(x(3),x(2),x(1),x(0),A_E_B);
	
	FOURNOTINST1:FourInputNot
		port map(A,A_not);
	
	FOURNOTINST2:FourInputNot
		port map(B,B_not);
	
	--A>B
	ANDINST1: and_gate
		port map(A(3),B_not(3),S1);
		
	THREEANDINST1: ThreeInputAnd 
		port map(x(3),A(2),B_not(2),S2);
	
	FOURANDINST1: FourInputAnd
		port map(x(3),x(2),A(1),B_not(1),S3);
		
	FIVEANDINST1: FiveInputAnd
		port map(x(3),x(2),x(1),A(0),B_not(0),S4);
		
	FOURORINST1: FourInputOr
		port map(S1,S2,S3,S4,A_G_B);
	
	--A<B
	ANDINST2: and_gate
		port map(A_not(3),B(3),S5);
		
	THREEANDINST2: ThreeInputAnd 
		port map(x(3),A_not(2),B(2),S6);
	
	FOURANDINST2: FourInputAnd
		port map(x(3),x(2),A_not(1),B(1),S7);
		
	FIVEANDINST2: FiveInputAnd
		port map(x(3),x(2),x(1),A_not(0),B(0),S8);
		
	FOURORINST2: FourInputOr
		port map(S5,S6,S7,S8,A_L_B);
	
	ANDINST3:and_gate
		port map('1',A_L_B,output(0));
		
	ANDINST4:and_gate
		port map('1',A_E_B,output(1));
	
	ANDINST5:and_gate
		port map('1',A_G_B,output(2));
	
end architecture;