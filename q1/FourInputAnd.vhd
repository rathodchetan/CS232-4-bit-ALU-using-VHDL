library IEEE;
use IEEE.std_logic_1164.all;

entity FourInputAnd is
	port (a,b,c,d: in std_logic; s: out std_logic);
	
end entity;

architecture fourinputand_arc of FourInputAnd is 

	signal S1: std_logic;
	signal S2: std_logic;
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ANDINST1: and_gate
		port map (a,b,S1);
	
	ANDINST2: and_gate
		port map (S1,c,S2);
		
	ANDINST3: and_gate
		port map (S2,d,s);
		

		
end architecture;