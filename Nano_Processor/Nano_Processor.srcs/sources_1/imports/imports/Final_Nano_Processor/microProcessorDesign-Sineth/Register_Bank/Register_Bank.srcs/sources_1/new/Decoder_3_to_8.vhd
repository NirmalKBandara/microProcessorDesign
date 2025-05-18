----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:07:41 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 3-to-8 line decoder. Converts a 3-bit binary input into a one-hot 8-bit output.
--              Only one output line is HIGH ('1') for each input combination.
-- 
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Include IEEE standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

-- Entity declaration for 3-to-8 decoder
entity Decoder_3_to_8 is
    Port ( 
        I : in STD_LOGIC_VECTOR (2 downto 0);    -- 3-bit input
        Y : out STD_LOGIC_VECTOR (7 downto 0)    -- 8-bit one-hot output
    );
end Decoder_3_to_8;

-- Behavioral architecture
architecture Behavioral of Decoder_3_to_8 is

begin

    -- Process that triggers whenever input I changes
    process (I) begin
        -- Based on the 3-bit input, assign a corresponding one-hot value to Y
        case (I) is
            when "000" => Y <= "00000001"; -- Output 0 active
            when "001" => Y <= "00000010"; -- Output 1 active
            when "010" => Y <= "00000100"; -- Output 2 active
            when "011" => Y <= "00001000"; -- Output 3 active
            when "100" => Y <= "00010000"; -- Output 4 active
            when "101" => Y <= "00100000"; -- Output 5 active
            when "110" => Y <= "01000000"; -- Output 6 active
            when others => Y <= "10000000"; -- Covers "111" case: Output 7 active
        end case;
    end process;
   
end Behavioral;
