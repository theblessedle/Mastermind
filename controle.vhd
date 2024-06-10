
library ieee;
use ieee.std_logic_1164.all;


entity controle is port (
c, Tm, clock, reset: in std_logic;
Tc, Tw: out std_logic);
end controle;

architecture control of controle is

type STATES is (init, esp, count);
signal state, proximo: STATES;

begin
process(clock, reset)
begin
if reset = '0' then
state <= init;

else if clock'event and clock= '0' then
state <= proximo;

end if;

end process;

process (state, c, tm)
begin

tc <= '0';
tw <= '0';
proximo <= state;

case state is
  when init =>
tc <= '1';
tw <= '0';
if tm = '0' then
proximo <= esp;
	end if ;

when count =>
tc <= '0';
tw <= '1';
proximo <= esp;
	
	when esp =>
tc <= '0';
tw <= '0';
if reset = '0' then
proximo <= init;
else if c = '0' and Tm = '1' then
proximo <= esp;
else
proximo <= count;
	end if;
	

end case;
end process;
end architecture;
