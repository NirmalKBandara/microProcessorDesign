----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 14:43:41
-- Design Name: 
-- Module Name: 2_Way_3_Bit_Mux - Behavioral
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

entity Mux_2_Way_3_Bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_Way_3_Bit;

architecture Behavioral of Mux_2_Way_3_Bit is
component Mux_2_to_1
    Port ( D : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
SIGNAL D0, D1, D2: STD_LOGIC_VECTOR(1 downto 0);

begin
Mux_2_to_1_0 : Mux_2_to_1
        PORT map
            (D => D0,
             S => S,
             EN => '1',
             Y => Y(0));
        
Mux_2_to_1_1 : Mux_2_to_1
        PORT map
            (D => D1,
             S => S,
             EN => '1',
             Y => Y(1));
        
Mux_2_to_1_2 : Mux_2_to_1
        PORT map
            (D => D2,
             S => S,
             EN => '1',
             Y => Y(2));

D0(1) <= A(0); D0(0) <= B(0);
D1(1) <= A(1); D1(0) <= B(1);
D2(1) <= A(2); D2(0) <= B(2);

end Behavioral;
