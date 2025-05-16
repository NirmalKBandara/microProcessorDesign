// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri May 16 01:47:51 2025
// Host        : CITeS-FOE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {E:/Vivado
//               project/Nano_Processor/Nano_Processor.sim/sim_1/impl/func/xsim/Sim_Nano_Processor_func_impl.v}
// Design      : Nano_Processor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module D_FF
   (LED_OBUF,
    Zero,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    data6,
    RegSelect_A,
    data5,
    data4);
  output [0:0]LED_OBUF;
  output Zero;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input [0:0]data6;
  input [1:0]RegSelect_A;
  input [0:0]data5;
  input [0:0]data4;

  wire Clk_out_reg;
  wire [0:0]LED_OBUF;
  wire \PC_reg[0] ;
  wire [1:0]RegSelect_A;
  wire Res_IBUF;
  wire Zero;
  wire [0:0]data4;
  wire [0:0]data5;
  wire [0:0]data6;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(LED_OBUF),
        .R(Res_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_7
       (.I0(LED_OBUF),
        .I1(data6),
        .I2(RegSelect_A[1]),
        .I3(data5),
        .I4(RegSelect_A[0]),
        .I5(data4),
        .O(Zero));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_10
   (data5,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data5;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data5;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data5),
        .Q(data5),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_11
   (data5,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data5;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data5;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data5),
        .Q(data5),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_12
   (data4,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data4;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data4;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data4),
        .Q(data4),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_13
   (data4,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data4;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data4;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data4),
        .Q(data4),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_14
   (data3,
    Zero_OBUF,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    Q_reg_0,
    \PC_reg[2] ,
    RegSelect_A,
    Q_reg_1,
    data2,
    data1,
    data0,
    RegSelect_B);
  output [0:0]data3;
  output Zero_OBUF;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input [0:0]Q_reg_0;
  input [0:0]\PC_reg[2] ;
  input [2:0]RegSelect_A;
  input Q_reg_1;
  input [0:0]data2;
  input [0:0]data1;
  input [0:0]data0;
  input [1:0]RegSelect_B;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire [0:0]\PC_reg[2] ;
  wire [0:0]Q_reg_0;
  wire Q_reg_1;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;
  wire [0:0]Reg_A;
  wire [0:0]Reg_B;
  wire Res_IBUF;
  wire Zero_OBUF;
  wire Zero_OBUF_inst_i_6_n_0;
  wire [0:0]data0;
  wire [0:0]data1;
  wire [0:0]data2;
  wire [0:0]data3;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data3),
        .R(Res_IBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_OBUF_inst_i_1
       (.I0(Reg_B),
        .I1(Reg_A),
        .I2(\PC_reg[2] ),
        .I3(Q_reg_0),
        .O(Zero_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_2
       (.I0(data3),
        .I1(data2),
        .I2(RegSelect_B[1]),
        .I3(data1),
        .I4(RegSelect_B[0]),
        .I5(data0),
        .O(Reg_B));
  MUXF7 Zero_OBUF_inst_i_3
       (.I0(Zero_OBUF_inst_i_6_n_0),
        .I1(Q_reg_1),
        .O(Reg_A),
        .S(RegSelect_A[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_6
       (.I0(data3),
        .I1(data2),
        .I2(RegSelect_A[1]),
        .I3(data1),
        .I4(RegSelect_A[0]),
        .I5(data0),
        .O(Zero_OBUF_inst_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_15
   (data3,
    Zero,
    Zero_0,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    RegSelect_A,
    Q_reg_0,
    data2,
    data1,
    data0,
    RegSelect_B);
  output [0:0]data3;
  output [0:0]Zero;
  output [0:0]Zero_0;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input [2:0]RegSelect_A;
  input Q_reg_0;
  input [0:0]data2;
  input [0:0]data1;
  input [0:0]data0;
  input [1:0]RegSelect_B;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Q_reg_0;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;
  wire Res_IBUF;
  wire [0:0]Zero;
  wire [0:0]Zero_0;
  wire Zero_OBUF_inst_i_8_n_0;
  wire [0:0]data0;
  wire [0:0]data1;
  wire [0:0]data2;
  wire [0:0]data3;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data3),
        .R(Res_IBUF));
  MUXF7 Zero_OBUF_inst_i_4
       (.I0(Zero_OBUF_inst_i_8_n_0),
        .I1(Q_reg_0),
        .O(Zero),
        .S(RegSelect_A[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_5
       (.I0(data3),
        .I1(data2),
        .I2(RegSelect_B[1]),
        .I3(data1),
        .I4(RegSelect_B[0]),
        .I5(data0),
        .O(Zero_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_8
       (.I0(data3),
        .I1(data2),
        .I2(RegSelect_A[1]),
        .I3(data1),
        .I4(RegSelect_A[0]),
        .I5(data0),
        .O(Zero_OBUF_inst_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_16
   (data2,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data2;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data2;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data2),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_17
   (data2,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data2;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data2;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data2),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_18
   (data1,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data1;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data1;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data1),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_19
   (data1,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data1;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data1;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data1),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_20
   (data0,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data0;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data0;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data0),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_21
   (data0,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg);
  output [0:0]data0;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire Res_IBUF;
  wire [0:0]data0;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(data0),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_7
   (LED_OBUF,
    Zero,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    data6,
    RegSelect_A,
    data5,
    data4);
  output [0:0]LED_OBUF;
  output Zero;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input [0:0]data6;
  input [1:0]RegSelect_A;
  input [0:0]data5;
  input [0:0]data4;

  wire Clk_out_reg;
  wire [0:0]LED_OBUF;
  wire \PC_reg[0] ;
  wire [1:0]RegSelect_A;
  wire Res_IBUF;
  wire Zero;
  wire [0:0]data4;
  wire [0:0]data5;
  wire [0:0]data6;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC_reg[0] ),
        .Q(LED_OBUF),
        .R(Res_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Zero_OBUF_inst_i_9
       (.I0(LED_OBUF),
        .I1(data6),
        .I2(RegSelect_A[1]),
        .I3(data5),
        .I4(RegSelect_A[0]),
        .I5(data4),
        .O(Zero));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_8
   (data6,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data6;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data6;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data6),
        .Q(data6),
        .R(Res_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_9
   (data6,
    Res_IBUF,
    Clk_out_reg);
  output [0:0]data6;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [0:0]data6;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(data6),
        .Q(data6),
        .R(Res_IBUF));
endmodule

module InstructionDecoder
   (RegSelect_A,
    RegSelect_B,
    ImmediateValue,
    Instruction,
    Q);
  output [2:0]RegSelect_A;
  output [1:0]RegSelect_B;
  output [1:0]ImmediateValue;
  input [7:0]Instruction;
  input [0:0]Q;

  wire [1:0]ImmediateValue;
  wire [7:0]Instruction;
  wire [0:0]Q;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \ImmediateValue_reg[0] 
       (.CLR(1'b0),
        .D(Instruction[0]),
        .G(Instruction[7]),
        .GE(1'b1),
        .Q(ImmediateValue[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \ImmediateValue_reg[1] 
       (.CLR(1'b0),
        .D(Instruction[1]),
        .G(Instruction[7]),
        .GE(1'b1),
        .Q(ImmediateValue[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegSelect_A_reg[0] 
       (.CLR(1'b0),
        .D(Instruction[4]),
        .G(Q),
        .GE(1'b1),
        .Q(RegSelect_A[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegSelect_A_reg[1] 
       (.CLR(1'b0),
        .D(Instruction[5]),
        .G(Q),
        .GE(1'b1),
        .Q(RegSelect_A[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegSelect_A_reg[2] 
       (.CLR(1'b0),
        .D(Instruction[6]),
        .G(Q),
        .GE(1'b1),
        .Q(RegSelect_A[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegSelect_B_reg[0] 
       (.CLR(1'b0),
        .D(Instruction[2]),
        .G(Q),
        .GE(1'b1),
        .Q(RegSelect_B[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegSelect_B_reg[1] 
       (.CLR(1'b0),
        .D(Instruction[3]),
        .G(Q),
        .GE(1'b1),
        .Q(RegSelect_B[1]));
endmodule

(* ECO_CHECKSUM = "a675584d" *) 
(* NotValidForBitStream *)
module Nano_Processor
   (Res,
    Clk,
    LED,
    Over_Flow,
    Zero);
  input Res;
  input Clk;
  output [3:0]LED;
  output Over_Flow;
  output Zero;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [1:0]ImmediateValue;
  wire [11:0]Instruction;
  wire [3:0]LED;
  wire [1:0]LED_OBUF;
  wire Over_Flow;
  wire Program_Counter_n_0;
  wire Program_Counter_n_10;
  wire Program_Counter_n_11;
  wire Program_Counter_n_12;
  wire Program_Counter_n_4;
  wire Program_Counter_n_5;
  wire Program_Counter_n_6;
  wire Program_Counter_n_7;
  wire Program_Counter_n_8;
  wire Program_Counter_n_9;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;
  wire Res;
  wire Res_IBUF;
  wire [2:0]Rom_Address;
  wire [2:0]Rom_Address_Add;
  wire Slow_Clk_0_n_0;
  wire Zero;
  wire Zero_OBUF;
  wire [1:0]data0;
  wire [1:0]data1;
  wire [1:0]data2;
  wire [1:0]data3;

  adder_3bit Adder_3_Bit
       (.D({Rom_Address_Add[2],Rom_Address_Add[0]}),
        .Q(Rom_Address));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  InstructionDecoder Instruction_Decoder
       (.ImmediateValue(ImmediateValue),
        .Instruction({Instruction[11],Instruction[9:7],Instruction[5:4],Instruction[1:0]}),
        .Q(Rom_Address[2]),
        .RegSelect_A(RegSelect_A),
        .RegSelect_B(RegSelect_B));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]));
  OBUF Over_Flow_OBUF_inst
       (.I(1'b0),
        .O(Over_Flow));
  ProgramCounter Program_Counter
       (.Clk_out_reg(Slow_Clk_0_n_0),
        .D({Rom_Address_Add[2],Rom_Address_Add[0]}),
        .ImmediateValue(ImmediateValue),
        .Instruction({Instruction[11],Instruction[9:7],Instruction[5:4],Instruction[1:0]}),
        .LED_OBUF(LED_OBUF),
        .Q(Rom_Address),
        .Q_reg(Program_Counter_n_0),
        .Q_reg_0(Program_Counter_n_4),
        .Q_reg_1(Program_Counter_n_5),
        .Q_reg_2(Program_Counter_n_6),
        .Q_reg_3(Program_Counter_n_7),
        .Q_reg_4(Program_Counter_n_8),
        .Q_reg_5(Program_Counter_n_9),
        .Q_reg_6(Program_Counter_n_10),
        .Q_reg_7(Program_Counter_n_11),
        .Q_reg_8(Program_Counter_n_12),
        .Res_IBUF(Res_IBUF),
        .data0(data0),
        .data1(data1),
        .data2(data2),
        .data3(data3));
  Register_Bank Register_Bank_0
       (.Clk_out_reg(Slow_Clk_0_n_0),
        .LED_OBUF(LED_OBUF),
        .\PC_reg[0] (Program_Counter_n_8),
        .\PC_reg[0]_0 (Program_Counter_n_7),
        .\PC_reg[0]_1 (Program_Counter_n_12),
        .\PC_reg[0]_2 (Program_Counter_n_11),
        .\PC_reg[0]_3 (Program_Counter_n_6),
        .\PC_reg[0]_4 (Program_Counter_n_5),
        .\PC_reg[0]_5 (Program_Counter_n_10),
        .\PC_reg[0]_6 (Program_Counter_n_9),
        .\PC_reg[0]_7 (Program_Counter_n_4),
        .\PC_reg[0]_8 (Program_Counter_n_0),
        .RegSelect_A(RegSelect_A),
        .RegSelect_B(RegSelect_B),
        .Res_IBUF(Res_IBUF),
        .Zero_OBUF(Zero_OBUF),
        .data0(data0),
        .data1(data1),
        .data2(data2),
        .data3(data3));
  IBUF Res_IBUF_inst
       (.I(Res),
        .O(Res_IBUF));
  Slow_Clk Slow_Clk_0
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q_reg(Slow_Clk_0_n_0));
  OBUF Zero_OBUF_inst
       (.I(Zero_OBUF),
        .O(Zero));
endmodule

module ProgramCounter
   (Q_reg,
    Q,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Instruction,
    ImmediateValue,
    data3,
    data1,
    LED_OBUF,
    data2,
    data0,
    Res_IBUF,
    D,
    Clk_out_reg);
  output Q_reg;
  output [2:0]Q;
  output Q_reg_0;
  output Q_reg_1;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  output Q_reg_7;
  output Q_reg_8;
  output [7:0]Instruction;
  input [1:0]ImmediateValue;
  input [1:0]data3;
  input [1:0]data1;
  input [1:0]LED_OBUF;
  input [1:0]data2;
  input [1:0]data0;
  input Res_IBUF;
  input [1:0]D;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire [1:0]D;
  wire [1:0]ImmediateValue;
  wire [7:0]\^Instruction ;
  wire [1:0]LED_OBUF;
  wire \PC[1]_i_1_n_0 ;
  wire [2:0]Q;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Res_IBUF;
  wire [1:0]data0;
  wire [1:0]data1;
  wire [1:0]data2;
  wire [1:0]data3;

  assign Instruction[7] = Q[2];
  assign Instruction[6:0] = \^Instruction [6:0];
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ImmediateValue_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\^Instruction [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ImmediateValue_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\^Instruction [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\PC[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(Res_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(\PC[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(Res_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(Clk_out_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[2]),
        .R(Res_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    Q_i_1
       (.I0(ImmediateValue[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data3[1]),
        .O(Q_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    Q_i_1__0
       (.I0(ImmediateValue[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data3[0]),
        .O(Q_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    Q_i_1__1
       (.I0(ImmediateValue[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data1[1]),
        .O(Q_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    Q_i_1__2
       (.I0(ImmediateValue[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data1[0]),
        .O(Q_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    Q_i_1__3
       (.I0(ImmediateValue[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(LED_OBUF[1]),
        .O(Q_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    Q_i_1__4
       (.I0(ImmediateValue[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(LED_OBUF[0]),
        .O(Q_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    Q_i_1__5
       (.I0(ImmediateValue[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data2[1]),
        .O(Q_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    Q_i_1__6
       (.I0(ImmediateValue[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data2[0]),
        .O(Q_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    Q_i_1__7
       (.I0(ImmediateValue[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(data0[1]),
        .O(Q_reg_7));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    Q_i_1__8
       (.I0(ImmediateValue[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(data0[0]),
        .O(Q_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \RegSelect_A_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\^Instruction [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \RegSelect_A_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\^Instruction [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \RegSelect_A_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\^Instruction [6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RegSelect_B_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\^Instruction [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \RegSelect_B_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\^Instruction [3]));
endmodule

module Reg
   (data0,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 );
  output [1:0]data0;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire Res_IBUF;
  wire [1:0]data0;

  D_FF_20 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0] ),
        .Res_IBUF(Res_IBUF),
        .data0(data0[0]));
  D_FF_21 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_0 ),
        .Res_IBUF(Res_IBUF),
        .data0(data0[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_0
   (data1,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 );
  output [1:0]data1;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire Res_IBUF;
  wire [1:0]data1;

  D_FF_18 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0] ),
        .Res_IBUF(Res_IBUF),
        .data1(data1[0]));
  D_FF_19 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_0 ),
        .Res_IBUF(Res_IBUF),
        .data1(data1[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_1
   (data2,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 );
  output [1:0]data2;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire Res_IBUF;
  wire [1:0]data2;

  D_FF_16 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0] ),
        .Res_IBUF(Res_IBUF),
        .data2(data2[0]));
  D_FF_17 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_0 ),
        .Res_IBUF(Res_IBUF),
        .data2(data2[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_2
   (data3,
    Zero_OBUF,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 ,
    RegSelect_A,
    Q_reg,
    data2,
    data1,
    data0,
    Q_reg_0,
    RegSelect_B);
  output [1:0]data3;
  output Zero_OBUF;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;
  input [2:0]RegSelect_A;
  input Q_reg;
  input [1:0]data2;
  input [1:0]data1;
  input [1:0]data0;
  input Q_reg_0;
  input [1:0]RegSelect_B;

  wire Clk_out_reg;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire Q_reg;
  wire Q_reg_0;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;
  wire [1:1]Reg_A;
  wire [1:1]Reg_B;
  wire Res_IBUF;
  wire Zero_OBUF;
  wire [1:0]data0;
  wire [1:0]data1;
  wire [1:0]data2;
  wire [1:0]data3;

  D_FF_14 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0] ),
        .\PC_reg[2] (Reg_A),
        .Q_reg_0(Reg_B),
        .Q_reg_1(Q_reg),
        .RegSelect_A(RegSelect_A),
        .RegSelect_B(RegSelect_B),
        .Res_IBUF(Res_IBUF),
        .Zero_OBUF(Zero_OBUF),
        .data0(data0[0]),
        .data1(data1[0]),
        .data2(data2[0]),
        .data3(data3[0]));
  D_FF_15 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_0 ),
        .Q_reg_0(Q_reg_0),
        .RegSelect_A(RegSelect_A),
        .RegSelect_B(RegSelect_B),
        .Res_IBUF(Res_IBUF),
        .Zero(Reg_A),
        .Zero_0(Reg_B),
        .data0(data0[1]),
        .data1(data1[1]),
        .data2(data2[1]),
        .data3(data3[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_3
   (data4,
    Res_IBUF,
    Clk_out_reg);
  output [1:0]data4;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [1:0]data4;

  D_FF_12 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data4(data4[0]));
  D_FF_13 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data4(data4[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_4
   (data5,
    Res_IBUF,
    Clk_out_reg);
  output [1:0]data5;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [1:0]data5;

  D_FF_10 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data5(data5[0]));
  D_FF_11 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data5(data5[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_5
   (data6,
    Res_IBUF,
    Clk_out_reg);
  output [1:0]data6;
  input Res_IBUF;
  input Clk_out_reg;

  wire Clk_out_reg;
  wire Res_IBUF;
  wire [1:0]data6;

  D_FF_8 D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data6(data6[0]));
  D_FF_9 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data6(data6[1]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_6
   (LED_OBUF,
    Zero,
    Zero_0,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 ,
    data6,
    RegSelect_A,
    data5,
    data4);
  output [1:0]LED_OBUF;
  output Zero;
  output Zero_0;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;
  input [1:0]data6;
  input [1:0]RegSelect_A;
  input [1:0]data5;
  input [1:0]data4;

  wire Clk_out_reg;
  wire [1:0]LED_OBUF;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire [1:0]RegSelect_A;
  wire Res_IBUF;
  wire Zero;
  wire Zero_0;
  wire [1:0]data4;
  wire [1:0]data5;
  wire [1:0]data6;

  D_FF D_FF_0
       (.Clk_out_reg(Clk_out_reg),
        .LED_OBUF(LED_OBUF[0]),
        .\PC_reg[0] (\PC_reg[0] ),
        .RegSelect_A(RegSelect_A),
        .Res_IBUF(Res_IBUF),
        .Zero(Zero),
        .data4(data4[0]),
        .data5(data5[0]),
        .data6(data6[0]));
  D_FF_7 D_FF_1
       (.Clk_out_reg(Clk_out_reg),
        .LED_OBUF(LED_OBUF[1]),
        .\PC_reg[0] (\PC_reg[0]_0 ),
        .RegSelect_A(RegSelect_A),
        .Res_IBUF(Res_IBUF),
        .Zero(Zero_0),
        .data4(data4[1]),
        .data5(data5[1]),
        .data6(data6[1]));
endmodule

module Register_Bank
   (LED_OBUF,
    data0,
    data1,
    data2,
    data3,
    Zero_OBUF,
    Res_IBUF,
    \PC_reg[0] ,
    Clk_out_reg,
    \PC_reg[0]_0 ,
    \PC_reg[0]_1 ,
    \PC_reg[0]_2 ,
    \PC_reg[0]_3 ,
    \PC_reg[0]_4 ,
    \PC_reg[0]_5 ,
    \PC_reg[0]_6 ,
    \PC_reg[0]_7 ,
    \PC_reg[0]_8 ,
    RegSelect_A,
    RegSelect_B);
  output [1:0]LED_OBUF;
  output [1:0]data0;
  output [1:0]data1;
  output [1:0]data2;
  output [1:0]data3;
  output Zero_OBUF;
  input Res_IBUF;
  input \PC_reg[0] ;
  input Clk_out_reg;
  input \PC_reg[0]_0 ;
  input \PC_reg[0]_1 ;
  input \PC_reg[0]_2 ;
  input \PC_reg[0]_3 ;
  input \PC_reg[0]_4 ;
  input \PC_reg[0]_5 ;
  input \PC_reg[0]_6 ;
  input \PC_reg[0]_7 ;
  input \PC_reg[0]_8 ;
  input [2:0]RegSelect_A;
  input [1:0]RegSelect_B;

  wire Clk_out_reg;
  wire [1:0]LED_OBUF;
  wire \PC_reg[0] ;
  wire \PC_reg[0]_0 ;
  wire \PC_reg[0]_1 ;
  wire \PC_reg[0]_2 ;
  wire \PC_reg[0]_3 ;
  wire \PC_reg[0]_4 ;
  wire \PC_reg[0]_5 ;
  wire \PC_reg[0]_6 ;
  wire \PC_reg[0]_7 ;
  wire \PC_reg[0]_8 ;
  wire [2:0]RegSelect_A;
  wire [1:0]RegSelect_B;
  wire Reg_7_n_2;
  wire Reg_7_n_3;
  wire Res_IBUF;
  wire Zero_OBUF;
  wire [1:0]data0;
  wire [1:0]data1;
  wire [1:0]data2;
  wire [1:0]data3;
  wire [1:0]data4;
  wire [1:0]data5;
  wire [1:0]data6;

  Reg Reg_0
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_1 ),
        .\PC_reg[0]_0 (\PC_reg[0]_2 ),
        .Res_IBUF(Res_IBUF),
        .data0(data0));
  Reg_0 Reg_1
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_3 ),
        .\PC_reg[0]_0 (\PC_reg[0]_4 ),
        .Res_IBUF(Res_IBUF),
        .data1(data1));
  Reg_1 Reg_2
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_5 ),
        .\PC_reg[0]_0 (\PC_reg[0]_6 ),
        .Res_IBUF(Res_IBUF),
        .data2(data2));
  Reg_2 Reg_3
       (.Clk_out_reg(Clk_out_reg),
        .\PC_reg[0] (\PC_reg[0]_7 ),
        .\PC_reg[0]_0 (\PC_reg[0]_8 ),
        .Q_reg(Reg_7_n_2),
        .Q_reg_0(Reg_7_n_3),
        .RegSelect_A(RegSelect_A),
        .RegSelect_B(RegSelect_B),
        .Res_IBUF(Res_IBUF),
        .Zero_OBUF(Zero_OBUF),
        .data0(data0),
        .data1(data1),
        .data2(data2),
        .data3(data3));
  Reg_3 Reg_4
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data4(data4));
  Reg_4 Reg_5
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data5(data5));
  Reg_5 Reg_6
       (.Clk_out_reg(Clk_out_reg),
        .Res_IBUF(Res_IBUF),
        .data6(data6));
  Reg_6 Reg_7
       (.Clk_out_reg(Clk_out_reg),
        .LED_OBUF(LED_OBUF),
        .\PC_reg[0] (\PC_reg[0] ),
        .\PC_reg[0]_0 (\PC_reg[0]_0 ),
        .RegSelect_A(RegSelect_A[1:0]),
        .Res_IBUF(Res_IBUF),
        .Zero(Reg_7_n_2),
        .Zero_0(Reg_7_n_3),
        .data4(data4),
        .data5(data5),
        .data6(data6));
endmodule

module Slow_Clk
   (Q_reg,
    Clk_IBUF_BUFG);
  output Q_reg;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire Clk_out_i_1_n_0;
  wire Q_reg;
  wire clk_status;
  wire clk_status_i_1_n_0;
  wire [31:0]count;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire [0:0]count_0;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[31]_i_2_n_5 ;
  wire \count_reg[31]_i_2_n_6 ;
  wire \count_reg[31]_i_2_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    Clk_out_i_1
       (.I0(clk_status),
        .I1(count[0]),
        .I2(\count[0]_i_2_n_0 ),
        .I3(\count[0]_i_3_n_0 ),
        .I4(\count[0]_i_4_n_0 ),
        .I5(Q_reg),
        .O(Clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_out_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_out_i_1_n_0),
        .Q(Q_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    clk_status_i_1
       (.I0(\count[0]_i_4_n_0 ),
        .I1(\count[0]_i_3_n_0 ),
        .I2(\count[0]_i_2_n_0 ),
        .I3(count[0]),
        .I4(clk_status),
        .O(clk_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_status_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_status_i_1_n_0),
        .Q(clk_status),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count[0]_i_3_n_0 ),
        .I2(\count[0]_i_4_n_0 ),
        .I3(count[0]),
        .O(count_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_5_n_0 ),
        .I1(\count[0]_i_6_n_0 ),
        .I2(count[31]),
        .I3(count[30]),
        .I4(count[1]),
        .I5(\count[0]_i_7_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_3 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[2]),
        .I3(count[3]),
        .I4(\count[0]_i_8_n_0 ),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_4 
       (.I0(count[12]),
        .I1(count[13]),
        .I2(count[10]),
        .I3(count[11]),
        .I4(\count[0]_i_9_n_0 ),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_5 
       (.I0(count[23]),
        .I1(count[22]),
        .I2(count[25]),
        .I3(count[24]),
        .O(\count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_6 
       (.I0(count[19]),
        .I1(count[18]),
        .I2(count[21]),
        .I3(count[20]),
        .O(\count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_7 
       (.I0(count[27]),
        .I1(count[26]),
        .I2(count[29]),
        .I3(count[28]),
        .O(\count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_8 
       (.I0(count[7]),
        .I1(count[6]),
        .I2(count[9]),
        .I3(count[8]),
        .O(\count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_9 
       (.I0(count[15]),
        .I1(count[14]),
        .I2(count[17]),
        .I3(count[16]),
        .O(\count[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \count[31]_i_1 
       (.I0(count[0]),
        .I1(\count[0]_i_2_n_0 ),
        .I2(\count[0]_i_3_n_0 ),
        .I3(\count[0]_i_4_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\NLW_count_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_7 ),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_6 ),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_5 ),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[31]_i_2 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO(\NLW_count_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2_O_UNCONNECTED [3],\count_reg[31]_i_2_n_5 ,\count_reg[31]_i_2_n_6 ,\count_reg[31]_i_2_n_7 }),
        .S({1'b0,count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
endmodule

module adder_3bit
   (D,
    Q);
  output [1:0]D;
  input [2:0]Q;

  wire [1:0]D;
  wire [2:0]Q;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PC[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PC[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(D[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
