--VHDL for a 4 to 1 Multiplexer
--Ben Marmoll

Entity 4to1MUX IS
 Port(a3,a2,a1,a0 : IN std_logic_vector(3 downto 0);
                s : IN std_logic_vector(1 downto 0);
                y : OUT std_logic_vector(3 downto 0));
End Entity 4to1MUX;

Architecture behave of 4to1MUX IS
 Begin
  with s select
  y <=  a3 when "11",
        a2 when "10",
        a1 when "01",
        a0 when OTHERS;
End behave;
