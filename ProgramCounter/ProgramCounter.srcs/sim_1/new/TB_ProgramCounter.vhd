----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 10:08:41 PM
-- Design Name: 
-- Module Name: TB_ProgramCounter - Behavioral
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

entity TB_ProgramCounter is
--  Port ( );
end TB_ProgramCounter;

architecture Behavioral of TB_ProgramCounter is

 component ProgramCounter
        Port (
            Clk_in  : in  STD_LOGIC;
            Res     : in  STD_LOGIC;
            NextVal : in  STD_LOGIC_VECTOR(2 downto 0);
            Q       : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal Clk_in  : STD_LOGIC := '0';
    signal Res     : STD_LOGIC := '0';
    signal NextVal : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal Q       : STD_LOGIC_VECTOR(2 downto 0);

begin
UUT: ProgramCounter
        port map (
            Clk_in  => Clk_in,
            Res     => Res,
            NextVal => NextVal,
            Q       => Q
        );

    -- Generate 50 MHz Clock: toggle every 10 ns
    Clk_Process : process
    begin
        Clk_in <= '0';
        wait for 10 ns;
        Clk_in <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus Process
    Stim_Process: process
    begin
        -- Initial reset pulse
        wait for 100 ns;
        Res <= '1';
        wait for 50 ns;
        Res <= '0';

        -- First NextVal value
        NextVal <= "001";  -- Expect Q = 001 on next slow clock
        wait for 100 ns;

        -- Change NextVal
        NextVal <= "011";  -- Expect Q = 011
        wait for 100 ns;

        -- Change NextVal again
        NextVal <= "101";  -- Expect Q = 101
        wait for 100 ns;

        -- Hold value
        NextVal <= "101";
        wait for 100 ns;

        -- Reset again
        Res <= '1';
        wait for 50 ns;
        Res <= '0';
        wait for 100 ns;

        wait;
    end process;

end Behavioral;