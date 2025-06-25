----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 07:14:44 PM
-- Design Name: 
-- Module Name: Sim_Mux_8_Way_4_Bit - Behavioral
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

entity Sim_Mux_8_Way_4_Bit is
--  Port ( );
end Sim_Mux_8_Way_4_Bit;

architecture Behavioral of Sim_Mux_8_Way_4_Bit is

-- Component declaration for the multiplexer
component Mux_8_Way_4_Bit
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
end component;

-- Signal declarations for inputs, output, and select lines
signal I0,I1,I2,I3,I4,I5,I6,I7,Y : STD_LOGIC_VECTOR(3 downto 0);
signal S: STD_LOGIC_VECTOR(2 downto 0);

begin

-- Instantiate the Mux_8_Way_4_Bit component
UUT: Mux_8_Way_4_Bit
port map(
    I0 => I0,
    I1 => I1,
    I2 => I2,
    I3 => I3,
    I4 => I4,
    I5 => I5,
    I6 => I6,
    I7 => I7,
    S => S,
    Y => Y);

-- Testbench process to apply input stimulus
process begin
    I0 <= "0000"; --0
    I1 <= "0001"; --1
    I2 <= "0010"; --2
    I3 <= "0011"; --3
    I4 <= "0100"; --4
    I5 <= "0101"; --5
    I6 <= "0110"; --6
    I7 <= "0111"; --7
    
    -- Apply select signal and wait for output
    S <= "000"; -- Select Data from I0
    wait for 100ns;
    
    S <= "001"; -- Select Data form I1
    wait for 100ns;
    
    S <= "011"; -- Select Data from I2
    wait for 100ns;
    
    S <= "111"; -- Select Data from I7
    wait;
end process;

end Behavioral;
