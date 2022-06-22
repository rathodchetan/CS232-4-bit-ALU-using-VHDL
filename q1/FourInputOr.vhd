library IEEE;
use IEEE.std_logic_1164.all;

entity FourInputOr is
	port (a,b,c,d: in std_logic; s: out std_logic);
	
end entity;

architecture fourinputor_arc of FourInputOr is 

	signal S1: std_logic;
	signal S2: std_logic;
	
	component or_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ORINST1: or_gate
		port map (a,b,S1);
	
	ORINST2: or_gate
		port map (S1,c,S2);
		
	ORINST3: or_gate
		port map (S2,d,s);

		
end architecture;