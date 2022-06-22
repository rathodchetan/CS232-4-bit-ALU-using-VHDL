library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate is 
	
	port (X,Y: in std_logic; Z: out std_logic);

end nor_gate;

architecture nor_arc of nor_gate is

	signal S: std_logic;

	component or_gate 
		port (A,B: in std_logic; C: out std_logic); 
	end component;

	component not_gate 
		port (A: in std_logic; B: out std_logic); 
	end component;
	
begin

	OrInst1: or_gate

		port map (A=>X, B=>Y, C=>S); 
	
	NotInst1: not_gate 
		
		port map (A=>S, B=>Z);

end architecture;
