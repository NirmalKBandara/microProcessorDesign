----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:02:33 PM
-- Design Name: 
-- Module Name: InstructionDecoder - Behavioral
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

entity InstructionDecoder is
    Port ( InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);
           RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);
           RegSelect_1 : out STD_LOGIC_VECTOR (2 downto 0);
           RegSelect_2 : out STD_LOGIC_VECTOR (2 downto 0);
           RegSelect_3 : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;
           ImediateValue : out STD_LOGIC_VECTOR (3 downto 0);
           OperationSelect : out STD_LOGIC;
           JumpFlag: out STD_LOGIC;
           JumpAddress: out STD_LOGIC_VECTOR(2 downto 0));
end InstructionDecoder;

architecture Behavioral of InstructionDecoder is

signal Instruction: STD_LOGIC_VECTOR(1 downto 0);

begin
    Instruction <= InstructionBus(11 downto 10);
    RegSelect_1 <= InstructionBus(9 downto 7);
    RegSelect_2 <= InstructionBus(9 downto 7);
    RegSelect_3 <= InstructionBus(6 downto 4);
    ImediateValue <= InstructionBus(3 downto 0);
    JumpAddress <= InstructionBus(2 downto 0);
    
    process (Instruction, RegisterCheck) begin
        if (Instruction = "00") then
            LoadSelect<='1';
            OperationSelect<='0';
        elsif (Instruction = "01")then
            LoadSelect<='1';
            OperationSelect<='1';
        elsif (Instruction = "10") then
            LoadSelect <= '0';
        else
            if (RegisterCheck="0000")then
                JumpFlag <= '1';
            else
                JumpFlag <= '0';
            end if;
        end if;
    end process;
    

end Behavioral;
