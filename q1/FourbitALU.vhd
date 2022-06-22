library IEEE;
use IEEE.std_logic_1164.all;

entity FourbitALU is
	port ( a, b: in std_logic_vector (3 downto 0);
	sel: in std_logic_vector (2 downto 0);
	result: out std_logic_vector (7 downto 0));
end entity;

architecture fourbitalu_arc of FourBitALU is 
	
	signal v: std_logic_vector(6 downto 0);
	signal add_sub: std_logic_vector(7 downto 0);
	signal mult: std_logic_vector(7 downto 0);
	signal comp: std_logic_vector(7 downto 0);
	signal nand_op: std_logic_vector(7 downto 0);
	signal nor_op: std_logic_vector(7 downto 0);
	signal xor_op: std_logic_vector(7 downto 0);
	signal xnor_op: std_logic_vector(7 downto 0);	
	signal add_sub_a: std_logic_vector(7 downto 0);
	signal mult_a: std_logic_vector(7 downto 0);
	signal comp_a: std_logic_vector(7 downto 0);
	signal nand_op_a: std_logic_vector(7 downto 0);
	signal nor_op_a: std_logic_vector(7 downto 0);
	signal xor_op_a: std_logic_vector(7 downto 0);
	signal xnor_op_a: std_logic_vector(7 downto 0);	
	signal nsel: std_logic_vector(2 downto 0);
	signal s1: std_logic_vector(7 downto 0);
	signal s2: std_logic_vector(7 downto 0);
	signal s3: std_logic_vector(7 downto 0);
	signal s4: std_logic_vector(7 downto 0);
	signal s5: std_logic_vector(7 downto 0);
	
	
	component Adder_Substracter
    port(a : in std_logic_vector(3 downto 0);     
         b : in std_logic_vector(3 downto 0);      
         s : in std_logic;
			output: out std_logic_vector(7 downto 0));   
	end component;
	
	component FourBitComparator 

    port(A : in std_logic_vector(3 downto 0);      
         B : in std_logic_vector(3 downto 0);     
         output : out std_logic_vector(7 downto 0) );  
	end component;
	
	component FourBitNand 
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	end component;
	
	component FourBitNor
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	end component;
	
	component FourBitXor 
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	end component;
	
	component FourBitXnor
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	end component;
	
	component FourBitMultiplier
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	
	end component;
	
	component not_gate 

    port(A : in std_logic;      
         B : out std_logic);   

	end component;
	
	component ThreeInputAnd 
		port (a,b,c: in std_logic; s: out std_logic);
	end component;
	
	component and_gate

    port(A : in std_logic;      
         B : in std_logic;      
         C : out std_logic);    

	end component;
	
	component EightBitAnd 
	port (a: in std_logic_vector(7 downto 0);b: in std_logic; s: out std_logic_vector(7 downto 0));
	end component;
	
	component EightBitOr
	port (a,b: in std_logic_vector(7 downto 0); s: out std_logic_vector(7 downto 0));
	end component;
begin

	NOTINST1: not_gate
		port map(sel(0),nsel(0));
		
	NOTINST2: not_gate
		port map(sel(1),nsel(1));
		
	NOTINST3: not_gate
		port map(sel(2),nsel(2));
		
	ANDINST1: and_gate
		port map(nsel(2),nsel(1),v(0));
	
		
	THREEANDINST1: ThreeInputAnd 
		port map(nsel(0),sel(1),nsel(2),v(1));

	THREEANDINST2: ThreeInputAnd 
		port map(sel(0),sel(1),nsel(2),v(2));
	
	THREEANDINST3: ThreeInputAnd 
		port map(nsel(0),nsel(1),sel(2),v(3));
		
	THREEANDINST4: ThreeInputAnd 
		port map(sel(0),nsel(1),sel(2),v(4));
		
	THREEANDINST5: ThreeInputAnd 
		port map(nsel(0),sel(1),sel(2),v(5));
		
	THREEANDINST6: ThreeInputAnd 
		port map(sel(0),sel(1),sel(2),v(6));

	ASINST: Adder_Substracter
		port map(a,b,sel(0),add_sub);

	MINST: FourBitMultiplier 
		port map(a,b,mult);

	CINST: FourBitComparator
		port map(a,b,comp);

	NAINST: FourBitNand
		port map(a,b,nand_op);

	NOINST: FourBitNor
		port map(a,b,nor_op);

	XOINST: FourBitXor
		port map(a,b,xor_op);

	AXNINST: FourBitXnor
		port map(a,b,xnor_op);		
	
	EAINST1: EightBitAnd 
		port map(add_sub, v(0),add_sub_a);
		 
	EAINST2: EightBitAnd 
		port map(mult,v(1),mult_a);
		
	EAINST3: EightBitAnd 
		port map(comp,v(2),comp_a);
		
	EAINST4: EightBitAnd 
		port map(nand_op,v(3),nand_op_a);
		
	EAINST5: EightBitAnd 
		port map(nor_op,v(4),nor_op_a);
		
	EAINST6: EightBitAnd 
		port map(xor_op,v(5),xor_op_a);	
		
	EAINST7: EightBitAnd 
		port map(xnor_op,v(6),xnor_op_a);
		
	ORINST1:	EightBitOr
		port map(add_sub_a,mult_a,s1);

	ORINST2:	EightBitOr
		port map(comp_a,nand_op_a,s2);

	ORINST3:	EightBitOr
		port map(nor_op_a,xor_op_a,s3);

	ORINST4:	EightBitOr
		port map(xnor_op_a,s1,s4);

	ORINST5:	EightBitOr
		port map(s2,s3,s5);

	ORINST6:	EightBitOr
		port map(s4,s5,result);
	
		
end architecture;
