----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2025 01:38:26 AM
-- Design Name: 
-- Module Name: adder_3bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_3bit is
    Port ( INPUT : in STD_LOGIC_VECTOR (2 downto 0);
           OUTPUT : out STD_LOGIC_VECTOR (2 downto 0));
end adder_3bit;

architecture Behavioral of adder_3bit is

signal temp : unsigned(2 downto 0);

begin

    temp <= unsigned(INPUT) + 1;
    OUTPUT <= std_logic_vector(temp);
    
end Behavioral;
