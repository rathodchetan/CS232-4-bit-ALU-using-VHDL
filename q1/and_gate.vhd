library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity and_gate is

    port(A : in std_logic;      -- AND gate input
         B : in std_logic;      -- AND gate input
         C : out std_logic);    -- AND gate output

end and_gate;

-- Architecture definition

architecture andLogic of and_gate is

 begin
    
    C <= A AND B;

end andLogic;