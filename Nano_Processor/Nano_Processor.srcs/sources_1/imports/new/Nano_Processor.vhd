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
-- Description: A simplified 4-bit Nano Processor implementation using structural VHDL
-- 
-- Dependencies: Requires multiple submodules like Register_Bank, ALU, MUXes, etc.
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the Nano Processor
entity Nano_Processor is
    Port (
        Res, Clk : in STD_LOGIC;                           -- Reset and Clock inputs
        Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0);   -- Output of Register 7
        OverFlow, Zero: out STD_LOGIC;                     -- ALU status flags
        Display_7_Segment: out STD_LOGIC_VECTOR(6 downto 0); -- Output to 7-segment display
        an: out STD_LOGIC_VECTOR(3 downto 0)               -- Anode control for 7-segment display
    );
end Nano_Processor;

architecture Behavioral of Nano_Processor is

    -- Register bank: 8 registers, 4-bit wide
    component Register_Bank
        Port ( 
            Reg_EN      : in STD_LOGIC_VECTOR (2 downto 0);  
            Clk         : in STD_LOGIC;
            D           : in STD_LOGIC_VECTOR (3 downto 0);
            Res         : in STD_LOGIC;
            Reg_0_out, Reg_1_out, Reg_2_out, Reg_3_out : out STD_LOGIC_VECTOR (3 downto 0);
            Reg_4_out, Reg_5_out, Reg_6_out, Reg_7_out : out STD_LOGIC_VECTOR (3 downto 0)
       );
    end component;

    -- ALU: 4-bit Adder/Subtractor
    component AdderSubtractor4bitUnit
        Port (
            A, B     : in  STD_LOGIC_VECTOR(3 downto 0);
            ADD_SUB  : in  STD_LOGIC;
            RESULT   : out STD_LOGIC_VECTOR(3 downto 0);
            OVERFLOW : out STD_LOGIC;
            ZERO     : out STD_LOGIC
        );
    end component;

    -- 2-to-1 multiplexer for 4-bit data
    component Mux_2_Way_4_Bit
        Port (
            A, B : in STD_LOGIC_VECTOR (3 downto 0);
            S   : in STD_LOGIC;
            Y   : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- 2-to-1 multiplexer for 3-bit addresses
    component Mux_2_Way_3_Bit
        Port (
            A, B : in STD_LOGIC_VECTOR (2 downto 0);
            S   : in STD_LOGIC;
            Y   : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    -- 8-to-1 multiplexer for selecting one of 8 registers
    component Mux_8_Way_4_Bit
        Port ( 
            I0, I1, I2, I3, I4, I5, I6, I7 : in STD_LOGIC_VECTOR (3 downto 0);
            S  : in STD_LOGIC_VECTOR (2 downto 0);
            Y  : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Instruction decoder: decodes 12-bit instruction to control signals
    component InstructionDecoder
       Port (
            InstructionBus  : in STD_LOGIC_VECTOR (11 downto 0);
            RegisterCheck   : in STD_LOGIC_VECTOR (3 downto 0);
            Reg_EN          : out STD_LOGIC_VECTOR (2 downto 0);
            RegSelect_A     : out STD_LOGIC_VECTOR (2 downto 0);
            RegSelect_B     : out STD_LOGIC_VECTOR (2 downto 0);
            LoadSelect      : out STD_LOGIC;
            ImmediateValue  : out STD_LOGIC_VECTOR (3 downto 0);
            OperationSelect : out STD_LOGIC;
            JumpFlag        : out STD_LOGIC;
            JumpAddress     : out STD_LOGIC_VECTOR(2 downto 0)
      );
    end component;

    -- Program Counter: holds current instruction address
    component ProgramCounter
        Port (
            Clk_in  : in STD_LOGIC;
            Res     : in STD_LOGIC;
            NextVal : in STD_LOGIC_VECTOR (2 downto 0);
            Q       : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    -- Clock divider to slow down clock signal
    component Slow_Clk
        Port (
            Clk_in  : in STD_LOGIC;
            Clk_out : out STD_LOGIC
        );
    end component;

    -- Adds 1 to 3-bit input (used for next instruction address)
    component adder_3bit
        Port (
            INPUT  : in STD_LOGIC_VECTOR (2 downto 0);
            OUTPUT : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    -- ROM: instruction memory
    component program_rom
        Port ( 
            address     : in STD_LOGIC_VECTOR (2 downto 0);
            instruction : out STD_LOGIC_VECTOR (11 downto 0)
        );
    end component;

    -- Lookup table to convert 4-bit value to 7-segment display pattern
    component LUT_16_7
        Port ( 
            address : in STD_LOGIC_VECTOR (3 downto 0);
            data    : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    -- Internal signals
    signal Clk_out, Jump_Flag, LoadSelect, OperationSelect, write_enable : STD_LOGIC;
    signal Instruction_Bus_1 : STD_LOGIC_VECTOR(11 downto 0);
    signal Next_Rom_Address, Rom_Address_Add, Rom_Address, Jump_Address : STD_LOGIC_VECTOR(2 downto 0);
    signal Reg_EN, RegSelect_A, RegSelect_B : STD_LOGIC_VECTOR(2 downto 0);
    signal Reg_A, Reg_B, ImmediateValue, Result, Value : STD_LOGIC_VECTOR(3 downto 0);
    signal Reg_0, Reg_1, Reg_2, Reg_3, Reg_4, Reg_5, Reg_6, Reg_7 : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Slow clock generator
    Slow_Clk_0: Slow_Clk
    port map(Clk_in => Clk, Clk_out => Clk_out);

    -- Program counter
    Program_Counter: ProgramCounter
    port map(Clk_in => Clk_out, Res => Res, NextVal => Next_Rom_Address, Q => Rom_Address);

    -- PC + 1 adder
    Adder_3_Bit: adder_3bit
    port map(INPUT => Rom_Address, OUTPUT => Rom_Address_Add);

    -- Select between jump address and next address
    Mux_2_Way_3_Bit_0: Mux_2_Way_3_Bit
    port map(A => Jump_Address, B => Rom_Address_Add, S => Jump_Flag, Y => Next_Rom_Address);

    -- Fetch instruction from ROM
    Program_Rom_0: Program_Rom
    port map(address => Rom_Address, Instruction => Instruction_Bus_1);

    -- Instruction decoder
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

    -- Register bank
    Register_Bank_0: Register_Bank
    port map(
        Reg_EN => Reg_EN,
        Clk => Clk_out,
        D => Value,
        Res => Res,
        Reg_0_out => Reg_0, Reg_1_out => Reg_1, Reg_2_out => Reg_2, Reg_3_out => Reg_3,
        Reg_4_out => Reg_4, Reg_5_out => Reg_5, Reg_6_out => Reg_6, Reg_7_out => Reg_7);

    -- Select between ALU result and immediate value
    Mux_2_Way_4_Bit_0: Mux_2_Way_4_Bit
    port map(A => Result, B => ImmediateValue, S => LoadSelect, Y => Value);

    -- Select register A
    Mux_8_Way_4_Bit_0: Mux_8_Way_4_Bit
    port map(
        I0 => Reg_0, I1 => Reg_1, I2 => Reg_2, I3 => Reg_3,
        I4 => Reg_4, I5 => Reg_5, I6 => Reg_6, I7 => Reg_7,
        S => RegSelect_A, Y => Reg_A);

    -- Select register B
    Mux_8_Way_4_Bit_1: Mux_8_Way_4_Bit
    port map(
        I0 => Reg_0, I1 => Reg_1, I2 => Reg_2, I3 => Reg_3,
        I4 => Reg_4, I5 => Reg_5, I6 => Reg_6, I7 => Reg_7,
        S => RegSelect_B, Y => Reg_B);

    -- ALU: 4-bit add/subtract
    Adder_Substractor_4BitUnit: AdderSubtractor4bitUnit
    port map(
        A => Reg_A, B => Reg_B, ADD_SUB => OperationSelect,
        Result => Result, OverFlow => OverFlow, ZERO => Zero);

    -- Output Register 7 to 7-segment decoder
    LUT_16_7_0: LUT_16_7
    port map(address => Reg_7, data => Display_7_Segment);

    -- Output assignments
    Reg_7_out <= Reg_7;
    an <= "1110"; -- Enables only the first digit of 7-segment (active low)

end Behavioral;
