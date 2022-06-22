library IEEE;
use IEEE.std_logic_1164.all;

entity FourBitMultiplier is 
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	
end entity;

architecture fourbitmultiplier_arc of FourBitMultiplier is 
	
	signal S1: std_logic;
	signal S2: std_logic;
	signal S3: std_logic;
	signal S4: std_logic;
	signal S5: std_logic;
	signal S6: std_logic;
	signal S7: std_logic;
	signal S8: std_logic;
	signal S9: std_logic;
	signal S10: std_logic;
	signal S11: std_logic;
	signal S12: std_logic;
	signal S13: std_logic;
	signal S14: std_logic;
	signal S15: std_logic;
	signal t1: std_logic;
	signal t2: std_logic;
	signal t3: std_logic;
	signal t4: std_logic;
	signal t5: std_logic;
	signal t6: std_logic;
	signal t7: std_logic;
	signal c1: std_logic;
	signal c2: std_logic;
	signal c3: std_logic;
	signal c4: std_logic;
	signal c5: std_logic;
	signal c6: std_logic;
	signal c7: std_logic;
	signal c8: std_logic;
	signal c9: std_logic;
	signal c10: std_logic;
	signal c11: std_logic;
	
	component and_gate
			port(A : in std_logic;      
         B : in std_logic;     
         C : out std_logic);    

	end component;
	
	component OnebitFullAdd 
		port ( a, b, cin : in std_logic;
			sum, cout: out std_logic);
	end component;
	
	component half_adder
	port (T1,T2: in std_logic; Carry,S: out std_logic);
	
	end component;

	
begin

	ANDINST1: and_gate
		port map (a(0),b(0),output(0));
		
	ANDINST2: and_gate
		port map (a(1),b(0),S1);
		
	ANDINST3: and_gate
		port map ( a(2),b(0),S2);
		
	ANDINST4: and_gate
		port map (a(3),b(0),S3);
	
		
--------------------------------------------------
		
	ANDINST5: and_gate
		port map (a(0),b(1),S4);
		
	ANDINST6: and_gate
		port map (a(1),b(1),S5);
		
	ANDINST7: and_gate
		port map ( a(2),b(1),S6);
		
	ANDINST8: and_gate
		port map (a(3),b(1),S7);
		
---------------------------------------------------
		
	ANDINST9: and_gate
		port map (a(0),b(2),S8);
		
	ANDINST10: and_gate
		port map (a(1),b(2),S9);
		
	ANDINST11: and_gate
		port map ( a(2),b(2),S10);
		
	ANDINST12: and_gate
		port map (a(3),b(2),S11);
		
----------------------------------------------------
		
	ANDINST13: and_gate
		port map (a(0),b(3),S12);
		
	ANDINST14: and_gate
		port map (a(1),b(3),S13);
		
	ANDINST15: and_gate
		port map ( a(2),b(3),S14);
		
	ANDINST16: and_gate
		port map (a(3),b(3),S15);
		
-----------------------------------------------------

	HA1: half_adder
		port map(S4,S1,c1,output(1));
	
	FA1: OnebitFullAdd
		port map(S5,S2,c1,t1,c2);
		
	FA2: OnebitFullAdd
		port map(S6,S3,c2,t2,c3);
		
	HA2: half_adder
		port map(S7,c3,c4,t3);
		
------------------------------------------------------

	HA3: half_adder
		port map(S8,t1,c5,output(2));
		
	FA3: OnebitFullAdd
		port map(S9,t2,c5,t4,c6);
		
	FA4: OnebitFullAdd
		port map(S10,t3,c6,t5,c7);
		
	FA5: OnebitFullAdd
		port map(S11,c4,c7,t6,c8);
		
--------------------------------------------------------

	HA4: half_adder
		port map(S12,t4,c9,output(3));
		
	FA6: OnebitFullAdd
		port map(S13,t5,c9,output(4),c10);
		
	FA7: OnebitFullAdd
		port map(S14,t6,c10,output(5),c11);
		
	FA8: OnebitFullAdd
		port map(S15,c8,c11,output(6),output(7));
		
end architecture;
