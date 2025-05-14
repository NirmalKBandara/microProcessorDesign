----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:38:50 PM
-- Design Name: 
-- Module Name: Sim_Instruction_Decoder - Behavioral
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

entity Sim_Instruction_Decoder is
--  Port ( );
end Sim_Instruction_Decoder;

architecture Behavioral of Sim_Instruction_Decoder is

component InstructionDecoder
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
end component;

signal InstructionBus: STD_LOGIC_VECTOR(11 downto 0);
signal RegisterCheck, ImediateValue : STD_LOGIC_VECTOR(3 downto 0);
signal RegSelect_1, RegSelect_2, RegSelect_3, JumpAddress: STD_LOGIC_VECTOR(2 downto 0);
signal LoadSelect, OperationSelect, JumpFlag: STD_LOGIC;

begin

UUT : InstructionDecoder
port Map(
      InstructionBus => InstructionBus,
      RegisterCheck => RegisterCheck,
      RegSelect_1 => RegSelect_1,
      RegSelect_2 => RegSelect_2,
      RegSelect_3 => RegSelect_3,
      LoadSelect => LoadSelect,
      ImediateValue => ImediateValue,
      OperationSelect => OperationSelect,
      JumpFlag => JumpFlag,
      JumpAddress => JumpAddress);

process begin
    InstructionBus <= "100010001010";
    wait for 100 ns;
    
    InstructionBus <= "010100000000";
    wait for 100 ns;
    
    InstructionBus <= "000100010000";
    wait for 100 ns;
    
    InstructionBus <= "110010000011";
    RegisterCheck <= "0000";
    wait;
end process;


end Behavioral;
