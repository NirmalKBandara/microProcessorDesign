----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 15:56:40
-- Design Name: 
-- Module Name: Mux_8_way_4_Bit - Behavioral
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

-- Entity declaration for the 8-way 4-bit multiplexer
entity Mux_8_Way_4_Bit is
    Port ( 
        I0 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 0
        I1 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 1
        I2 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 2
        I3 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 3
        I4 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 4
        I5 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 5
        I6 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 6
        I7 : in STD_LOGIC_VECTOR (3 downto 0);  -- Input 7
        S  : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit select signal
        Y  : out STD_LOGIC_VECTOR (3 downto 0)  -- Output
    );
end Mux_8_Way_4_Bit;

-- Architecture describing the behavior of the multiplexer
architecture Behavioral of Mux_8_Way_4_Bit is

begin
    -- Process sensitive to the select signal S
    process (S) 
    begin
        -- Case statement to select the appropriate input based on S
        case S is
            when "000" => Y <= I0;  -- Select input I0
            when "001" => Y <= I1;  -- Select input I1
            when "010" => Y <= I2;  -- Select input I2
            when "011" => Y <= I3;  -- Select input I3
            when "100" => Y <= I4;  -- Select input I4
            when "101" => Y <= I5;  -- Select input I5
            when "110" => Y <= I6;  -- Select input I6
            when others => Y <= I7; -- Default: select input I7 for "111" or invalid values
        end case;
    end process;

end Behavioral;

