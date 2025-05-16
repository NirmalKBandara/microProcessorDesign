----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 08:44:04 PM
-- Design Name: 
-- Module Name: Nano_Processor - Behavioral
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

entity Nano_Processor is
    Port (
        Res, Clk :in STD_LOGIC;
        Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0);
        OverFlow, Zero: out STD_LOGIC;
        Display_7_Segment: out STD_LOGIC_VECTOR(6 downto 0);
        an: out STD_LOGIC_VECTOR(3 downto 0));
end Nano_Processor;

architecture Behavioral of Nano_Processor is

    component Register_Bank
        Port ( 
            Reg_EN      : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input to select which register to enable
            Clk         : in STD_LOGIC;                      -- Clock signal
            D           : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input
            Res         : in STD_LOGIC;                      -- Reset signal for all registers
            Reg_0_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 0
            Reg_1_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 1
            Reg_2_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 2
            Reg_3_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 3
            Reg_4_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 4
            Reg_5_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 5
            Reg_6_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 6
            Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0)  -- Output of Register 7
       );
    end component;
    
    component AdderSubtractor4bitUnit
        Port (
            A        : in  STD_LOGIC_VECTOR(3 downto 0);
            B        : in  STD_LOGIC_VECTOR(3 downto 0);
            ADD_SUB  : in  STD_LOGIC;
            RESULT   : out STD_LOGIC_VECTOR(3 downto 0);
            OVERFLOW : out STD_LOGIC;
            ZERO     : out STD_LOGIC
        );
    end component;
    
    component Mux_2_Way_4_Bit
        Port (
            A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input A
            B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input B
            S : in STD_LOGIC;                     -- Select signal
            Y : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit output Y
        );
    end component;
    
    component Mux_2_Way_3_Bit
        Port (
            A : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input A
            B : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input B
            S : in STD_LOGIC;                      -- Select signal
            Y : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output
        );
    end component;
    
    component Mux_8_Way_4_Bit
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
   end component;
   
   component InstructionDecoder
       Port (
        InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);    -- 12-bit instruction input
        RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);      -- 4-bit input for register condition checking
        Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 1
        RegSelect_A : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 2
        RegSelect_B : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 3
        LoadSelect : out STD_LOGIC;                             -- Control signal for load selection
        ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);     -- 4-bit immediate value output
        OperationSelect : out STD_LOGIC;                        -- Control signal for operation selection
        JumpFlag: out STD_LOGIC;                               -- Flag indicating if jump instruction is active
        JumpAddress: out STD_LOGIC_VECTOR(2 downto 0)           -- 3-bit jump address output
      );
    end component;
    
    component ProgramCounter
        Port (
            Clk_in  : in STD_LOGIC;                       -- Clock input
            Res     : in STD_LOGIC;                       -- Reset signal (active high)
            NextVal : in STD_LOGIC_VECTOR (2 downto 0);   -- Next value to load
            Q       : out STD_LOGIC_VECTOR (2 downto 0)   -- Current PC value
        );
    end component;
    
    component Slow_Clk
        Port ( Clk_in : in STD_LOGIC;        -- Input clock signal
               Clk_out : out STD_LOGIC);     -- Output clock signal
    end component;    
    
    component adder_3bit
        Port ( INPUT : in STD_LOGIC_VECTOR (2 downto 0);   -- 3-bit input vector
               OUTPUT : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output vector (result of input + 1)
        );
    end component;
    
    component program_rom
        Port ( 
            address : in STD_LOGIC_VECTOR (2 downto 0);      -- 3-bit address input
            instruction : out STD_LOGIC_VECTOR (11 downto 0) -- 12-bit instruction output
        );
    end component;
    
    component LUT_16_7
        Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
               data : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal Clk_out,Jump_Flag, LoadSelect, OperationSelect, write_enable : STD_LOGIC;  
    signal Instruction_Bus_1: STD_LOGIC_VECTOR(11 downto 0);
    signal Next_Rom_Address, Rom_Address_Add,Rom_Address,Jump_Address,Reg_EN,RegSelect_A,RegSelect_B: STD_LOGIC_VECTOR(2 downto 0);
    signal Reg_A,Reg_B, ImmediateValue, Result,Value, Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7 : STD_LOGIC_VECTOR(3 downto 0);
begin
    Slow_Clk_0: Slow_Clk
    port map(
        Clk_in => Clk,
        Clk_out => Clk_out);
    
    Program_Counter: ProgramCounter
    port map(
        Clk_in => Clk_out,
        Res => Res,
        NextVal => Next_Rom_Address,
        Q => Rom_Address);
   
    Adder_3_Bit: adder_3bit
    port map(
        INPUT => Rom_Address,
        OUTPUT => Rom_Address_Add);
    
    Mux_2_Way_3_Bit_0: Mux_2_Way_3_Bit
    port map(
        A => Jump_Address,
        B => Rom_Address_Add,
        S => Jump_Flag,
        Y => Next_Rom_Address);
        
    Program_Rom_0: Program_Rom
    port map(
        address => Rom_Address,
        Instruction => Instruction_Bus_1);
    
    Instruction_Decoder: InstructionDecoder
    port map(
        InstructionBus => Instruction_Bus_1,
        RegisterCheck => Reg_A,
        Reg_EN => Reg_EN,
        RegSelect_A => RegSelect_A,
        RegSelect_B => RegSelect_B,
        LoadSelect => LoadSelect,
        ImmediateValue => ImmediateValue,
        OperationSelect => OperationSelect,
        JumpFlag => Jump_Flag,
        JumpAddress => Jump_Address);
   
    Register_Bank_0: Register_Bank
    port map(
        Reg_EN => Reg_EN,
        Clk => Clk_out,
        D => Value,
        Res => Res,
        Reg_0_out => Reg_0,
        Reg_1_out => Reg_1,
        Reg_2_out => Reg_2,
        Reg_3_out => Reg_3,
        Reg_4_out => Reg_4,
        Reg_5_out => Reg_5,
        Reg_6_out => Reg_6,
        Reg_7_out => Reg_7);
    
    Mux_2_Way_4_Bit_0: Mux_2_Way_4_Bit
    port map(
        A => Result ,
        B => ImmediateValue,
        S => LoadSelect,
        Y => Value);
   
    Mux_8_Way_4_Bit_0: Mux_8_Way_4_Bit
    port map(
        I0 => Reg_0,
        I1 => Reg_1,
        I2 => Reg_2,
        I3 => Reg_3,
        I4 => Reg_4,
        I5 => Reg_5,
        I6 => Reg_6,
        I7 => Reg_7,
        S => RegSelect_A,
        Y => Reg_A);
        
    Mux_8_Way_4_Bit_1: Mux_8_Way_4_Bit
        port map(
            I0 => Reg_0,
            I1 => Reg_1,
            I2 => Reg_2,
            I3 => Reg_3,
            I4 => Reg_4,
            I5 => Reg_5,
            I6 => Reg_6,
            I7 => Reg_7,
            S => RegSelect_B,
            Y => Reg_B);
            
    Adder_Substractor_4BitUnit: AdderSubtractor4bitUnit
    port map(
        A => Reg_A,
        B => Reg_B,
        ADD_SUB => OperationSelect,
        Result => Result,
        OverFlow => OverFlow,
        ZERO => Zero); 
            
             
    LUT_16_7_0: LUT_16_7
    port map(
        address => Reg_7,
        data => Display_7_Segment);
        
   Reg_7_out <= Reg_7;
   an <= "1110";
     
end Behavioral;