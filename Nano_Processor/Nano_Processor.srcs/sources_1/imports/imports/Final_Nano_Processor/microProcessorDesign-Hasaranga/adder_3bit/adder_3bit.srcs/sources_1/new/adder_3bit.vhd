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

-- Entity declaration for a 3-bit adder
-- It adds 1 to a 3-bit input and provides the result as output
entity adder_3bit is
    Port ( INPUT : in STD_LOGIC_VECTOR (2 downto 0);   -- 3-bit input vector
           OUTPUT : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output vector (result of input + 1)
         );
end adder_3bit;

-- Architecture defining the behavior of the 3-bit adder
architecture Behavioral of adder_3bit is

signal temp : unsigned(2 downto 0);   -- Temporary signal to hold the intermediate result in unsigned format

begin

    -- Convert the input to unsigned, add 1, and assign it to temp
    temp <= unsigned(INPUT) + 1;

    -- Convert the result back to std_logic_vector and assign it to the output
    OUTPUT <= std_logic_vector(temp);
    
end Behavioral;

