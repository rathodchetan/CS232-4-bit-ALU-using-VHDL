library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
	port (X,Y: in std_logic; Z: out std_logic);
	
end xor_gate;

architecture xor_arc of xor_gate is 

	signal S1: std_logic;
	signal S2: std_logic;
	signal S3: std_logic;
	signal S4: std_logic;
	
	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	component or_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	component not_gate 
		port (A: in std_logic; B: out std_logic); 
	end component;
	
begin

	NOTINST1: not_gate
		port map ( A=>X, B=>S1);
		
	ANDINST1: and_gate
		port map (A=>S1,B=>Y,C=>S2);
		
	NOTINST2: not_gate
		port map ( A=>Y, B=>S3);
		
	ANDINST2: and_gate
		port map (A=>X,B=>S3,C=>S4);
		
	ORINST1: or_gate
		port map (A=>S2,B=>S4,C=>Z);
		
		
end architecture;
