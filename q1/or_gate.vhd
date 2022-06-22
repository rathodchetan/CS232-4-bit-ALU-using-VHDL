library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity or_gate is

    port(A : in std_logic;      -- OR gate input
         B : in std_logic;      -- OR gate input
         C : out std_logic);    -- OR gate output

end or_gate;

-- Architecture definition

architecture orLogic of or_gate is

 begin
    
    C <= A OR B;

end orLogic;