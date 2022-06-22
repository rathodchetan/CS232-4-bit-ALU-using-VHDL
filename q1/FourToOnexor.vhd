library IEEE;
use IEEE.std_logic_1164.all;

entity FourToOnexor is

 port(A : in std_logic_vector(3 downto 0);      -- AND gate input
         cin : in std_logic;      -- AND gate input
         C : out std_logic_vector(3 downto 0));    -- AND gate output

end entity;

architecture fourtoonexor_arc of FourToOnexor is
	
	component xor_gate
		port( X,Y: in std_logic; Z: out std_logic);
	end component;
	
	
begin
	
	XORINST1: xor_gate
		port map (A(0),cin,C(0));
	
	XORINST2: xor_gate
		port map (A(1),cin,C(1));
	
	XORINST3: xor_gate
		port map (A(2),cin,C(2));
	
	XORINST4: xor_gate
		port map (A(3),cin,C(3));
	
		
end architecture;