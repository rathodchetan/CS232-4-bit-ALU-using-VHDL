library IEEE;
use IEEE.std_logic_1164.all;

entity FiveInputAnd is
	port (a,b,c,d,e: in std_logic; s: out std_logic);
	
end entity;

architecture fiveinputand_arc of FiveInputAnd is 

	signal S1: std_logic;
	signal S2: std_logic;
	signal S3: std_logic;
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ANDINST1: and_gate
		port map (a,b,S1);
	
	ANDINST2: and_gate
		port map (S1,c,S2);
		
	ANDINST3: and_gate
		port map (S2,d,S3);
		
	ANDINST4: and_gate
		port map (S3,e,s);
		

		
end architecture;