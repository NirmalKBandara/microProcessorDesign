----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 08:08:23 PM
-- Design Name: 
-- Module Name: Sim_Mux_2_Way_3_Bit - Behavioral
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

entity Sim_Mux_2_Way_3_Bit is
--  Port ( );
end Sim_Mux_2_Way_3_Bit;

-- Testbench architecture for Mux_2_Way_3_Bit
architecture Behavioral of Sim_Mux_2_Way_3_Bit is

    -- Component declaration of the Unit Under Test (UUT)
    component Mux_2_Way_3_Bit
        Port (
            A : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input A
            B : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input B
            S : in STD_LOGIC;                      -- Select signal
            Y : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output
        );
    end component;

    -- Signals to connect to UUT ports
    signal A, B, Y : STD_LOGIC_VECTOR(2 downto 0);
    signal S : STD_LOGIC;

begin

    -- Instantiation of the UUT
    UUT: Mux_2_Way_3_Bit
        port map(
            A => A,
            B => B,
            S => S,
            Y => Y
        );

    -- Stimulus process to drive inputs
    process
    begin
        -- Test Case 1: Select B (S = 0)
        A <= "010";  -- Binary 2
        B <= "101";  -- Binary 5
        S <= '0';
        wait for 100ns;

        -- At this point, Y should be equal to B => "101"

        -- Test Case 2: Select A (S = 1)
        S <= '1';
        wait;

        -- Now, Y should be equal to A => "010"
    end process;

end Behavioral;

