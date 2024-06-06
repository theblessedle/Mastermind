library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux is
port (
saida: out std_logic_vector(3 downto 0)
);
component topo is
port (F1, F2, F3, F4: out std_logic_vector(3 downto 0);
end component;
end mux;

architecture circuito of mux is

begin

--topo port map(F1,F2,F3,F4);

saida <= w when sel = "00" else
x when sel = "01" else
y when sel = "10" else
z;
end circuito;