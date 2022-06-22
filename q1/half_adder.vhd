library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	port (T1,T2: in std_logic; Carry,S: out std_logic);
	
end entity;

architecture half_adder_arc of half_adder is

	component and_gate
		port( A,B: in std_logic; C: out std_logic);
	end component;
	
	component xor_gate
		port( X,Y: in std_logic; Z: out std_logic);
	end component;
	
	
begin
	
	XORINST: xor_gate
		port map (X=>T1, Y=>T2,Z=>S);
		
	ANDINST: and_gate
		port map (A=>T1,B=>T2,C=>Carry);
		
		
end architecture;