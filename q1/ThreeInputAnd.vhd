library IEEE;
use IEEE.std_logic_1164.all;

entity ThreeInputAnd is
	port (a,b,c: in std_logic; s: out std_logic);
	
end entity;

architecture threeinputand_arc of ThreeInputAnd is 

	signal S1: std_logic;
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ANDINST1: and_gate
		port map (a,b,S1);
	
	ANDINST2: and_gate
		port map (S1,c,s);
		

		
end architecture;