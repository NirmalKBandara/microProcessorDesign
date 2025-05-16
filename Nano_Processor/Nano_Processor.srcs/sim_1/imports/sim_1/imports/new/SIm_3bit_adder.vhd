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

-- Entity declaration for the simulation of the 3-bit adder
-- No ports are required for a testbench entity
entity Sim_3bit_adder is
--  Port ( );
end Sim_3bit_adder;

-- Architecture defining the testbench behavior
architecture Behavioral of Sim_3bit_adder is

-- Component declaration for the 3-bit adder being tested
component adder_3bit
    port(
        INPUT : in std_logic_vector(2 downto 0);   -- Input to the adder
        OUTPUT : out std_logic_vector(2 downto 0)  -- Output from the adder
    );
end component;

-- Signals to connect to the adder component
signal INPUT : std_logic_vector(2 downto 0);       -- Signal for test inputs
signal OUTPUT : std_logic_vector(2 downto 0);      -- Signal to capture outputs

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT : adder_3bit
        port map(
            INPUT => INPUT,
            OUTPUT => OUTPUT
        );

    -- Test process to apply different input values and observe the output
    process
    begin
        INPUT <= "000";              -- Apply input 000
        wait for 10 ns;             -- Wait 10 ns
        
        INPUT <= "001";              -- Apply input 001
        wait for 10 ns;             -- Wait 10 ns
        
        INPUT <= "010";              -- Apply input 010
        wait for 10 ns;             -- Wait 10 ns

        wait;                        -- Wait indefinitely (end of simulation)
    end process;

end Behavioral;

