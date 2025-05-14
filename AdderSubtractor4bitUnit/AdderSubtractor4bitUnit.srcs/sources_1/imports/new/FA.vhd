----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2025 11:59:16 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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

entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           S : out STD_LOGIC;
           C_OUT : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

component HA port(
      A : in STD_LOGIC;
      B : in STD_LOGIC;
      S : out STD_LOGIC;
      C : out STD_LOGIC
);
end component;

signal HA0_S,HA0_C,HA1_S,HA1_C : std_logic;

begin
HA0 : HA 
port map(
    A=>A,
    B=>B,
    S=>HA0_S,
    C=>HA0_C);

HA1 : HA 
port map(
    A=>C_IN,
    B=>HA0_S,
    S=>HA1_S,
    C=>HA1_C);
    
   S <= HA1_S;
   C_OUT <= HA0_C OR  HA1_C;
end Behavioral;
