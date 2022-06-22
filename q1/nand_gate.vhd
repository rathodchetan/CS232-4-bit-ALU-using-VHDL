library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is 
	port ( X,Y: in std_logic;
				Z: out std_logic);
end nand_gate;

architecture nand_arc of nand_gate is
	signal S : std_logic;
	
	component and_gate
		port( A,B: in std_logic;
				C: out std_logic);
		end component;
				
	component not_gate
		port( A: in std_logic;
				B: out std_logic);
		end component;
	
begin

	ANDINST1: and_gate
		port map(A=>X,B=>Y,C=>S);
		
	NOTINST1: not_gate
		port map(A=>S,B=>Z);
		
end architecture;	