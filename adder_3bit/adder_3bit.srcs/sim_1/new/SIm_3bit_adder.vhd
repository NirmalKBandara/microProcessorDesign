----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2025 01:51:17 AM
-- Design Name: 
-- Module Name: SIm_3bit_adder - Behavioral
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

entity SIm_3bit_adder is
--  Port ( );
end SIm_3bit_adder;

architecture Behavioral of SIm_3bit_adder is

component adder_3bit
    port(INPUT : in std_logic_vector(2 downto 0);
         OUTPUT : out std_logic_vector(2 downto 0));
end component;

signal INPUT : std_logic_vector(2 downto 0);
signal OUTPUT : std_logic_vector(2 downto 0);

begin

    UUT : adder_3bit
        port map(INPUT => INPUT,
                 OUTPUT => OUTPUT
                 );
    process
        begin
            INPUT <= "000";
            wait for 10 ns;
            
            INPUT <= "001";
            wait for 10 ns;
            
            INPUT <= "010";
            wait for 10 ns;
         wait;   
    end process;
end Behavioral;
