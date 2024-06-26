library IEEE;
use IEEE.Std_Logic_1164.all;

entity decoder is
port (C: in std_logic_vector(2 downto 0);
F: out std_logic_vector(6 downto 0)
);
end decoder;

architecture decod of decoder is
begin
F <= "1000001" when C = "000" else -- U
"0001110" when C = "001" else -- F
"0010010" when C = "010" else -- S
"1000110" when C = "011" else -- C

"1111111";
end decod;