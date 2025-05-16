
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

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

signal count : integer := 1;             -- Counter to control clock toggling
signal clk_status : STD_LOGIC :='0';     -- Internal signal to hold clock status (high/low)

begin

    -- Process that runs on every rising edge of Clk_in
    process (Clk_in) begin
        if rising_edge(Clk_in) then
            count <= count+1;            -- Increment the counter
            if (count = 1) then          -- If counter equals 1 (this condition is always true due to line below)
                clk_status <= NOT(clk_status);  -- Toggle clk_status signal
                Clk_out<= clk_status;           -- Assign the toggled signal to output
                count<= 1;                      -- Reset the counter back to 1
            end if;
       end if;
    end process;

end Behavioral;

