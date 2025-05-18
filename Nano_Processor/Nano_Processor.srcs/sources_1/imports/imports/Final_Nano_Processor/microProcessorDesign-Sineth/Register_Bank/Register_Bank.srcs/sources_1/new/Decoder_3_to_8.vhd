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

-- Entity declaration for 3-to-8 decoder
entity Decoder_3_to_8 is
    Port ( 
        I : in STD_LOGIC_VECTOR (2 downto 0);    -- 3-bit input
        Y : out STD_LOGIC_VECTOR (7 downto 0)    -- 8-bit output
    );
end Decoder_3_to_8;

-- Behavioral architecture
architecture Behavioral of Decoder_3_to_8 is

begin

    process (I) begin
        case (I) is
            when "000" => Y <= "00000001";
            when "001" => Y <= "00000010";
            when "010" => Y <= "00000100";
            when "011" => Y <= "00001000";
            when "100" => Y <= "00010000";
            when "101" => Y <= "00100000";
            when "110" => Y <= "01000000";
            when others => Y <= "10000000";
        end case;
    end process;
   

end Behavioral;
