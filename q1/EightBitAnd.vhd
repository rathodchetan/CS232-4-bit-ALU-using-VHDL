library IEEE;
use IEEE.std_logic_1164.all;

entity EightBitAnd is
	port (a: in std_logic_vector(7 downto 0);b: in std_logic; s: out std_logic_vector(7 downto 0));
	
end entity;

architecture eightbit_arc of EightBitAnd is 
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ANDINST1: and_gate
		port map (a(0),b,s(0));
	
	ANDINST2: and_gate
		port map (a(1),b,s(1));
		
	ANDINST3: and_gate
		port map (a(2),b,s(2));
		
			
	ANDINST4: and_gate
		port map (a(3),b,s(3));
		
				
	ANDINST5: and_gate
		port map (a(4),b,s(4));
		
				
	ANDINST6: and_gate
		port map (a(5),b,s(5));
		
				
	ANDINST7: and_gate
		port map (a(6),b,s(6));
		
				
	ANDINST8: and_gate
		port map (a(7),b,s(7));
		
end architecture;