
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Entity declaration for Slow_Clk
-- It takes an input clock (Clk_in) and generates a slower clock (Clk_out)
entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;        -- Input clock signal
           Clk_out : out STD_LOGIC);     -- Output slower clock signal
end Slow_Clk;

-- Architecture definition for the behavior of Slow_Clk
architecture Behavioral of Slow_Clk is

     -- 26-bit counter => 2^26 = 67,108,864 (e.g., for 1 Hz from 50 MHz clock)
    signal counter : unsigned(25 downto 0) := (others => '0');
    signal clk_div : STD_LOGIC := '0';

begin

    process(Clk_in)
    begin
        if rising_edge(Clk_in) then
            counter <= counter + 1;
            clk_div <= counter(25);  -- Use MSB as divided clock
        end if;
    end process;

    Clk_out <= clk_div;

end Behavioral;
