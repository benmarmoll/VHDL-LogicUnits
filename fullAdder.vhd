--VHDL for a Full Adder
--Ben Marmoll

library ieee;
use ieee.std_logic_1164.all;

Entity fullAdder IS
 Port(a,b,cin : IN std_logic;
       s,cout : OUT std_logic);
End fullAdder;

Architecture behave of fullAdder IS
 Begin
   s <= a XOR b XOR c;
	cout <= (a AND b) OR (c AND (a XOR b));
End behave;