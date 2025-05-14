----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:36:54 PM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

entity Register_Bank is
    Port ( Reg_EN : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Reg_0_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_1_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_2_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_3_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_4_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_5_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_6_out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_7_out : out STD_LOGIC_VECTOR (3 downto 0));
end Register_Bank;

architecture Behavioral of Register_Bank is

component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Slow_Clk
    Port ( Clk_IN : in STD_LOGIC;
       Clk_OUT : out STD_LOGIC);
end component;

signal Y: STD_LOGIC_VECTOR(7 downto 0);
signal Clk_out: STD_LOGIC;

begin

Decoder_3_to_8_0: Decoder_3_to_8
    port map(
        I => Reg_EN,
        Y => Y);
 
 Slow_Clk_0: Slow_Clk
    port map(
        Clk_IN => Clk,
        Clk_OUT => Clk_out);

Reg_0: Reg
    port map(
        D => D,
        EN => Y(0),
        Clk => Clk_out,
        Q => Reg_0_out);

Reg_1: Reg
    port map(
        D => D,
        EN => Y(1),
        Clk => Clk_out,
        Q => Reg_1_out);

Reg_2: Reg
    port map(
        D => D,
        EN => Y(2),
        Clk => Clk_out,
        Q => Reg_2_out);
        
Reg_3: Reg
    port map(
        D => D,
        EN => Y(3),
        Clk => Clk_out,
        Q => Reg_3_out); 

Reg_4: Reg
    port map(
        D => D,
        EN => Y(4),
        Clk => Clk_out,
        Q => Reg_4_out);

Reg_5: Reg
    port map(
        D => D,
        EN => Y(5),
        Clk => Clk_out,
        Q => Reg_5_out); 
                        
Reg_6: Reg
    port map(
        D => D,
        EN => Y(6),
        Clk => Clk_out,
        Q => Reg_6_out); 

Reg_7: Reg
    port map(
        D => D,
        EN => Y(7),
        Clk => Clk_out,
        Q => Reg_7_out);

end Behavioral;
