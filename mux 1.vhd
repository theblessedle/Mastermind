library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux is
port (sel: in std_logic_vector(1 downto 0);
w: in std_logic_vector(3 downto 0);
x: in std_logic_vector(3 downto 0);
y: in std_logic_vector(3 downto 0);
z: in std_logic_vector(3 downto 0);
saida: out std_logic_vector(3 downto 0)
);
end mux;

architecture circuito of mux is
begin
saida <= w when sel = "00" else
x when sel = "01" else
y when sel = "10" else
z;
end circuito;