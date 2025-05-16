----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:46:25 PM
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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

entity RCA_4 is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           C_IN : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(3 downto 0);
           C_OUT : out STD_LOGIC);
end RCA_4;

architecture Behavioral of RCA_4 is

COMPONENT FA 
PORT( A : in STD_LOGIC;
      B : in STD_LOGIC;
      C_IN : in STD_LOGIC;
      S : out STD_LOGIC;
      C_OUT : out STD_LOGIC);
 
 END COMPONENT;
 
 SIGNAL FA0_C,FA1_C,FA2_C : STD_LOGIC;

begin

FA_0: FA
PORT MAP(
    A => A(0),
    B => B(0),
    C_IN => '0',
    S => S(0),
    C_OUT => FA0_C);
    
 FA_1 : FA
 PORT MAP(
    A => A(1),
    B => B(1),
    C_IN => FA0_C,
    S => S(1),
    C_OUT => FA1_C);
 
  FA_2 : FA
    PORT MAP(
       A => A(2),
       B => B(2),
       C_IN => FA1_C,
       S => S(2),
       C_OUT => FA2_C);
       
   FA_3 : FA
       PORT MAP(
          A => A(3),
          B => B(3),
          C_IN => FA2_C,
          S => S(3),
          C_OUT => C_OUT);
     
end Behavioral;
