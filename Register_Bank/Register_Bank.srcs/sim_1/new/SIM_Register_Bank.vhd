----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:48:57 PM
-- Design Name: 
-- Module Name: SIM_Register_Bank - Behavioral
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

entity SIM_Register_Bank is
--  Port ( );
end SIM_Register_Bank;

architecture Behavioral of SIM_Register_Bank is

component Register_Bank
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
end component;

signal Reg_EN: STD_LOGIC_VECTOR(2 downto 0);
signal Clk: STD_LOGIC;
signal D,Reg_0_out,Reg_1_out,Reg_2_out,Reg_3_out,Reg_4_out,Reg_5_out,Reg_6_out,Reg_7_out: STD_LOGIC_VECTOR(3 downto 0);

begin

UUT: Register_Bank
    port map(
        Reg_EN => Reg_EN,
        Clk => Clk,
        D => D,
        Reg_0_out => Reg_0_out,
        Reg_1_out => Reg_1_out,
        Reg_2_out => Reg_2_out,
        Reg_3_out => Reg_3_out,
        Reg_4_out => Reg_4_out,
        Reg_5_out => Reg_5_out,
        Reg_6_out => Reg_6_out,
        Reg_7_out => Reg_7_out);

Register_bank_process: process begin
    Reg_EN <= "000";
    D <= "0010";
    wait for 100ns;
    
    Reg_EN <= "001";
    D <= "0011";
    wait for 100ns;
    
    Reg_EN <= "010";
    D <= "0000";
    wait for 100ns;
    
    Reg_EN <= "011";
    D <= "0111";
    wait for 100ns;
    
    Reg_EN <="100";
    D <= "0000";
    wait for 100ns;
    
    Reg_EN <= "101";
    D <= "0011";
    wait; 
    
end process;

Clk_process: process begin
    while true loop
        Clk <= '0';
        wait for 1ns;
        Clk <= '1';
        wait for 1ns;
    end loop;
end process;

end Behavioral;
