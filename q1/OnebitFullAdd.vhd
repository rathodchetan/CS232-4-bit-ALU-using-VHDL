library IEEE;
use IEEE.std_logic_1164.all;

entity OnebitFullAdd is
	port ( a, b, cin : in std_logic;
			sum, cout: out std_logic);
end entity;

architecture onebitfulladd_arc of OnebitFullAdd is

	signal S1: std_logic;
	signal C1: std_logic;
	signal C2: std_logic;
	signal C3: std_logic;
	
	
	component half_adder
		port (T1,T2: in std_logic; Carry,S: out std_logic);
	end component;
	
begin

	HADDINST1: half_adder
		port map ( T1=>a, T2=>b,Carry=>C1,S=>S1);
		
	HADDINST2: half_adder
		port map ( T1=>S1, T2=>cin,Carry=>C2,S=>sum);
		
	HADDINST3: half_adder
		port map ( T1=>C1, T2=>C2,Carry=>C3,S=>cout);
		
end architecture;


	
	
	