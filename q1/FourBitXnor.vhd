library IEEE;
use IEEE.std_logic_1164.all;

entity FourBitXnor is
	port (a,b: in std_logic_vector(3 downto 0); output: out std_logic_vector(7 downto 0));
	
end entity;

architecture fourbitxnor_arc of FourBitXnor is 
	
	component xnor_gate
			port (X,Y: in std_logic; Z: out std_logic);
	end component;

	
begin

	XNORINST1: xnor_gate
		port map (a(0),b(0),output(0));
		
	XNORINST2: xnor_gate
		port map (a(1),b(1),output(1));
		
	XNORINST3: xnor_gate
		port map ( a(2),b(2),output(2));
		
	XNORINST4: xnor_gate
		port map (a(3),b(3),output(3));
	
		
end architecture;
