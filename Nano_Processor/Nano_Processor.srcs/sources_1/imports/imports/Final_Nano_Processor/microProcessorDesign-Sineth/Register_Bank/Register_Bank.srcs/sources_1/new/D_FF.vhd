----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 07:49:56 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

-- Entity declaration for a D Flip-Flop with Enable and Reset
entity D_FF is
    Port ( 
        D   : in STD_LOGIC;   -- Data input
        EN  : in STD_LOGIC;   -- Enable signal
        Res : in STD_LOGIC;   -- Synchronous reset signal
        Clk : in STD_LOGIC;   -- Clock signal
        Q   : out STD_LOGIC   -- Output
    );
end D_FF;

-- Behavioral architecture of the D Flip-Flop
architecture Behavioral of D_FF is

begin

    -- Process triggered on rising edge of the clock
    process(Clk) 
    begin
        if (rising_edge(Clk)) then   -- Check for rising clock edge
            if (Res = '0') then      -- If reset is active
                if (EN = '1') then   -- If enable is active
                    Q <= D;         -- Load input D into output Q
                end if;
            else
                Q <= '0';
            end if;
        end if;
    end process;

end Behavioral;

