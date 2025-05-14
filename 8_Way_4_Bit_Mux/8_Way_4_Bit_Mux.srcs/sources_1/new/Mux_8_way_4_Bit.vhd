----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 15:56:40
-- Design Name: 
-- Module Name: Mux_8_way_4_Bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_8_way_4_Bit is
    Port ( I0 : in STD_LOGIC_VECTOR (3 downto 0);
           I1 : in STD_LOGIC_VECTOR (3 downto 0);
           I2 : in STD_LOGIC_VECTOR (3 downto 0);
           I3 : in STD_LOGIC_VECTOR (3 downto 0);
           I4 : in STD_LOGIC_VECTOR (3 downto 0);
           I5 : in STD_LOGIC_VECTOR (3 downto 0);
           I6 : in STD_LOGIC_VECTOR (3 downto 0);
           I7 : in STD_LOGIC_VECTOR (3 downto 0);                                 
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_way_4_Bit;

architecture Behavioral of Mux_8_way_4_Bit is
component Mux_8_to_1
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
SIGNAL D0, D1, D2, D3: STD_LOGIC_VECTOR(7 downto 0);

begin
Mux_8_to_1_0 : Mux_8_to_1
        PORT map
            (D => D0,
             S => S,
             EN => '1',
             Y => Y(0));
        
Mux_8_to_1_1 : Mux_8_to_1
        PORT map
            (D => D1,
             S => S,
             EN => '1',
             Y => Y(1));
        
Mux_8_to_1_2 : Mux_8_to_1
        PORT map
            (D => D2,
             S => S,
             EN => '1',
             Y => Y(2));

Mux_8_to_1_3 : Mux_8_to_1
        PORT map
            (D => D3,
             S => S,
             EN => '1',
             Y => Y(3));

D0(7) <= I7(0); D0(6) <= I6(0); D0(5) <= I5(0); D0(4) <= I4(0); D0(3) <= I3(0); D0(2) <= I2(0); D0(1) <= I1(0); D0(0) <= I0(0);
D1(7) <= I7(1); D1(6) <= I6(1); D1(5) <= I5(1); D1(4) <= I4(1); D1(3) <= I3(1); D1(2) <= I2(1); D1(1) <= I1(1); D1(0) <= I0(1);
D2(7) <= I7(2); D2(6) <= I6(2); D2(5) <= I5(2); D2(4) <= I4(2); D2(3) <= I3(2); D2(2) <= I2(2); D2(1) <= I1(2); D2(0) <= I0(2);
D3(7) <= I7(3); D3(6) <= I6(3); D3(5) <= I5(3); D3(4) <= I4(3); D3(3) <= I3(3); D3(2) <= I2(3); D3(1) <= I1(3); D3(0) <= I0(3);

end Behavioral;
