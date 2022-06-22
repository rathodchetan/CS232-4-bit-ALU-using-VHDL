library IEEE;
use IEEE.std_logic_1164.all;

entity FourInputNot is
	port(a: in std_logic_vector(3 downto 0); s: out std_logic_vector(3 downto 0));
end entity;	

architecture fourinputnot_arc of FourInputNot is 

	
	component not_gate
	    port(A : in std_logic;   
         B : out std_logic);    
	end component;
	
	
begin

	
	NOTINST1: not_gate
		port map (a(0),s(0));
	
	NOTINST2: not_gate
		port map (a(1),s(1));
	
	NOTINST3: not_gate
		port map (a(2),s(2));
			
	NOTINST4: not_gate
		port map (a(3),s(3));

		
end architecture;