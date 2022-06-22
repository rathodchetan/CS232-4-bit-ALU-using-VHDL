library IEEE;
use IEEE.std_logic_1164.all;

entity Adder_Substracter is
    port(a : in std_logic_vector(3 downto 0);     
         b : in std_logic_vector(3 downto 0);      
         s : in std_logic;
			output: out std_logic_vector(7 downto 0));    

end entity;

architecture add_sub_arc of Adder_Substracter is
	
	signal d: std_logic_vector(3 downto 0);
	signal p: std_logic_vector(3 downto 0);
	signal g: std_logic_vector(3 downto 0);
	signal c: std_logic_vector(3 downto 0);
	signal t: std_logic_vector(3 downto 0);
	
	
	component FourToOnexor
		 port(A : in std_logic_vector(3 downto 0);      
         cin : in std_logic;      
         C : out std_logic_vector(3 downto 0));    
	end component;

	component and_gate 
		port(A : in std_logic;      
         B : in std_logic;      
         C : out std_logic);    
	end component;
	
	component or_gate 
		port(A : in std_logic;      
         B : in std_logic;      
         C : out std_logic);    
	end component;
	
	component xor_gate 
		port (X,Y: in std_logic; Z: out std_logic);   
	end component;
	

 begin
    
----------------------------------------------	 
	XORINST: FourToOnexor
		port map (b,s,d);
-----------------------------------------------
		
	XORINST11: xor_gate
		port map(a(0),d(0),p(0));
	XORINST21: xor_gate
		port map(a(1),d(1),p(1));
	XORINST31: xor_gate
		port map(a(2),d(2),p(2));		
	XORINST41: xor_gate
		port map(a(3),d(3),p(3));
		
------------------------------------------------	

	ANDINST1: and_gate
		port map(a(0),d(0),g(0));
	ANDINST21: and_gate
		port map(a(1),d(1),g(1));
	ANDINST31: and_gate
		port map(a(2),d(2),g(2));
	ANDINST41: and_gate
		port map(a(3),d(3),g(3));
		
---------------------------------------------------	

c(0)<= g(0) or (p(0) and s);
c(1)<= g(1) or (p(1) and g(0)) or (p(1) and p(0) and s);
c(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and s);
output(4) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(2) and p(2) and p(1) and p(0) and s);

----------------------------------------------------	
	XORINST12: xor_gate
		port map(p(0),s,output(0));
		
--	ANDINST12: and_gate
--		port map(p(0),s,t(0));
--	ORINST1: or_gate
--		port map(g(0),t(0),c(1));
		

	XORINST22: xor_gate
		port map(p(1),c(0),output(1));
--	ANDINST22: and_gate
--		port map(p(1),c(1),t(1));
--	ORINST2: or_gate
--		port map(g(1),t(1),c(2));
		


	XORINST32: xor_gate
		port map(p(2),c(1),output(2));
--	ANDINST32: and_gate
--		port map(p(2),c(2),t(2));
--	ORINST3: or_gate
--		port map(g(2),t(2),c(3));


	XORINST42: xor_gate
		port map(p(3),c(2),output(3));
--	ANDINST42: and_gate
--		port map(p(3),c(3),t(3));
--	ORINST4: or_gate
--		port map(g(3),t(3),output(4));
		
	
	 
    

end add_sub_arc;