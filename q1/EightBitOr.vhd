library IEEE;
use IEEE.std_logic_1164.all;

entity EightBitOr is
	port (a,b: in std_logic_vector(7 downto 0); s: out std_logic_vector(7 downto 0));
	
end entity;

architecture eightbit_arc of EightBitOr is 

	
	component or_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	
begin


		
	ORINST1: or_gate
		port map (a(0),b(0),s(0));
	
	ORINST2: or_gate
		port map (a(1),b(1),s(1));
		
	ORINST3: or_gate
		port map (a(2),b(2),s(2));
		
	ORINST4: or_gate
		port map (a(3),b(3),s(3));

	ORINST5: or_gate
		port map (a(4),b(4),s(4));
		
	ORINST6: or_gate
		port map (a(5),b(5),s(5));
		
	ORINST7: or_gate
		port map (a(6),b(6),s(6));
		
	ORINST8: or_gate
		port map (a(7),b(7),s(7));
		
end architecture;