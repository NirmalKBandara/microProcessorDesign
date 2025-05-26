----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 08:08:53 PM
-- Design Name: 
-- Module Name: Sim_Mux_2_Way_4_Bit - Behavioral
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

-- Entity declaration for the testbench of 2-Way 4-Bit Multiplexer
entity Sim_Mux_2_Way_4_Bit is
-- No ports needed for a testbench
end Sim_Mux_2_Way_4_Bit;

architecture Behavioral of Sim_Mux_2_Way_4_Bit is

-- Component declaration for the 2-Way 4-Bit Multiplexer to be tested
component Mux_2_Way_4_Bit
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input A
        B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input B
        S : in STD_LOGIC;                     -- Select signal
        Y : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit output
    );
end component;

-- Internal signals to connect to the MUX under test (UUT)
signal A, B, Y : STD_LOGIC_VECTOR(3 downto 0); -- Inputs A, B and output Y
signal S : STD_LOGIC;                          -- Select line

begin

-- Instantiate the Unit Under Test (UUT)
UUT: Mux_2_Way_4_Bit
    port map(
        A => A,  -- Connect test signal A
        B => B,  -- Connect test signal B
        S => S,  -- Connect test select line
        Y => Y   -- Observe output Y
    );

-- Test process to apply stimulus to the UUT
process
begin
    -- Set initial values
    A <= "0101";  -- A = 0101
    B <= "1011";  -- B = 1011

    S <= '0';     -- Select B (S = 0 ? output = B)
    wait for 100ns;

    S <= '1';     -- Select A (S = 1 ? output = A)
    wait;         -- Wait indefinitely (end of simulation)
end process;

end Behavioral;
