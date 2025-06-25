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
use IEEE.NUMERIC_STD.ALL;

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
            NextVal : in  UNSIGNED(2 downto 0);
            Q       : out UNSIGNED(2 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal Clk_in  : STD_LOGIC := '0';
    signal Res     : STD_LOGIC := '0';
    signal NextVal : UNSIGNED(2 downto 0) := "000";
    signal Q       : UNSIGNED(2 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: ProgramCounter
        port map (
            Clk_in  => Clk_in,
            Res     => Res,
            NextVal => NextVal,
            Q       => Q
        );

    -- Clock generation process: 50 MHz (20 ns period)
    Clk_Process : process
    begin
        while true loop
            Clk_in <= '0';
            wait for 10 ns;
            Clk_in <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimulus process
    Stim_Process: process
    begin
        -- Initial wait before reset
        wait for 100 ns;
        
        -- Apply reset
        Res <= '1';
        wait for 50 ns;
        Res <= '0';

        -- Test normal value change
        NextVal <= "001";  -- Expect Q = 001
        wait for 100 ns;

        NextVal <= "011";  -- Expect Q = 011
        wait for 100 ns;

        NextVal <= "101";  -- Expect Q = 101
        wait for 100 ns;

        -- Test special case: NextVal = "111"
        NextVal <= "111";  -- Expect Q = 110 due to override
        wait for 100 ns;

        -- Hold same value
        NextVal <= "111";  -- Should remain 110 if not overwritten
        wait for 100 ns;

        -- Apply reset again
        Res <= '1';
        wait for 50 ns;
        Res <= '0';
        wait for 100 ns;

        wait; -- End simulation
    end process;

end Behavioral;
