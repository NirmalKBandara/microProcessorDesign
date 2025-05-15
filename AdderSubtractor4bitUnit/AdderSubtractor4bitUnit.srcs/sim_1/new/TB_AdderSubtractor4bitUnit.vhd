----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 08:28:12 PM
-- Design Name: 
-- Module Name: TB_AdderSubtractor4bitUnit - Behavioral
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

entity TB_AdderSubtractor4bitUnit is
--  Port ( );
end TB_AdderSubtractor4bitUnit;

architecture Behavioral of TB_AdderSubtractor4bitUnit is
component AdderSubtractor4bitUnit
        Port (
            A        : in  STD_LOGIC_VECTOR(3 downto 0);
            B        : in  STD_LOGIC_VECTOR(3 downto 0);
            ADD_SUB  : in  STD_LOGIC;
            RESULT   : out STD_LOGIC_VECTOR(3 downto 0);
            C_OUT    : out STD_LOGIC;
            OVERFLOW : out STD_LOGIC;
            ZERO     : out STD_LOGIC
        );
    end component;

    -- Signals for test
    signal A, B       : STD_LOGIC_VECTOR(3 downto 0);
    signal ADD_SUB    : STD_LOGIC;
    signal RESULT     : STD_LOGIC_VECTOR(3 downto 0);
    signal C_OUT      : STD_LOGIC;
    signal OVERFLOW   : STD_LOGIC;
    signal ZERO       : STD_LOGIC;

begin

    UUT: AdderSubtractor4bitUnit
        port map (
            A        => A,
            B        => B,
            ADD_SUB  => ADD_SUB,
            RESULT   => RESULT,
            C_OUT    => C_OUT,
            OVERFLOW => OVERFLOW,
            ZERO     => ZERO
        );

    -- Test process
    process
    begin
        -- Test case 1: 5 + 7
        A <= "0101"; -- 5
        B <= "0111"; -- 7
        ADD_SUB <= '0'; -- Add
        wait for 10 ns;-- 1100

        
        A <= "0111"; -- 7
        B <= "0011"; -- 3
        ADD_SUB <= '1'; -- Subtract
        wait for 10 ns; --1001

       
        A <= "0010"; -- 2
        B <= "0101"; -- 5
        ADD_SUB <= '1'; -- Subtract
        wait for 10 ns;--1110

        -- Test case 4: 8 + 8 (expect overflow)
        A <= "1000"; -- 8
        B <= "1000"; -- 8
        ADD_SUB <= '0';
        wait for 10 ns;--0000

        
        A <= "0100"; -- 4
        B <= "0100"; -- 4
        ADD_SUB <= '1';-- Subtract
        wait for 10 ns; --1100

        wait; -- Stop simulation
    end process;

end Behavioral;