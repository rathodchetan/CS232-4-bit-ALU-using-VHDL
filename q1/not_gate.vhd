library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity not_gate is

    port(A : in std_logic;      -- NOT gate input
         B : out std_logic);    -- NOT gate output

end not_gate;

-- Architecture definition

architecture notLogic of not_gate is

 begin
    
    B <= NOT A;

end notLogic;