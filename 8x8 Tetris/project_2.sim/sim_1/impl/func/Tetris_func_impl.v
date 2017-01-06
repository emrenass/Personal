// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sat Dec 17 01:13:47 2016
// Host        : DESKTOP-9SR4PEB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Emre/Desktop/CS223
//               IvZr/Tetris2015/Tetris2015.sim/sim_1/impl/func/Tetris_func_impl.v}
// Design      : Tetris
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "b733449c" *) (* debounceConstant = "1000000" *) 
(* NotValidForBitStream *)
module Tetris
   (clock,
    toLeftButton,
    toRightButton,
    reset,
    oe,
    SH_CP,
    ST_CP,
    MR,
    DS,
    cathode);
  input clock;
  input toLeftButton;
  input toRightButton;
  input reset;
  output oe;
  output SH_CP;
  output ST_CP;
  output MR;
  output DS;
  output [7:0]cathode;

  wire DS;
  wire DS2;
  wire DS_OBUF;
  wire DS_OBUF_inst_i_10_n_0;
  wire DS_OBUF_inst_i_11_n_0;
  wire DS_OBUF_inst_i_12_n_0;
  wire DS_OBUF_inst_i_13_n_0;
  wire DS_OBUF_inst_i_14_n_0;
  wire DS_OBUF_inst_i_15_n_0;
  wire DS_OBUF_inst_i_16_n_0;
  wire DS_OBUF_inst_i_17_n_0;
  wire DS_OBUF_inst_i_18_n_0;
  wire DS_OBUF_inst_i_19_n_0;
  wire DS_OBUF_inst_i_20_n_0;
  wire DS_OBUF_inst_i_21_n_0;
  wire DS_OBUF_inst_i_22_n_0;
  wire DS_OBUF_inst_i_23_n_0;
  wire DS_OBUF_inst_i_24_n_0;
  wire DS_OBUF_inst_i_25_n_0;
  wire DS_OBUF_inst_i_26_n_0;
  wire DS_OBUF_inst_i_27_n_0;
  wire DS_OBUF_inst_i_28_n_0;
  wire DS_OBUF_inst_i_29_n_0;
  wire DS_OBUF_inst_i_2_n_0;
  wire DS_OBUF_inst_i_30_n_0;
  wire DS_OBUF_inst_i_31_n_0;
  wire DS_OBUF_inst_i_32_n_0;
  wire DS_OBUF_inst_i_33_n_0;
  wire DS_OBUF_inst_i_34_n_0;
  wire DS_OBUF_inst_i_35_n_0;
  wire DS_OBUF_inst_i_36_n_0;
  wire DS_OBUF_inst_i_37_n_0;
  wire DS_OBUF_inst_i_38_n_0;
  wire DS_OBUF_inst_i_39_n_0;
  wire DS_OBUF_inst_i_3_n_0;
  wire DS_OBUF_inst_i_4_n_0;
  wire DS_OBUF_inst_i_6_n_0;
  wire DS_OBUF_inst_i_7_n_0;
  wire DS_OBUF_inst_i_8_n_0;
  wire DS_OBUF_inst_i_9_n_0;
  wire MR;
  wire MR1;
  wire MR_OBUF;
  wire MR_OBUF_inst_i_10_n_0;
  wire MR_OBUF_inst_i_11_n_0;
  wire MR_OBUF_inst_i_12_n_0;
  wire MR_OBUF_inst_i_13_n_0;
  wire MR_OBUF_inst_i_14_n_0;
  wire MR_OBUF_inst_i_15_n_0;
  wire MR_OBUF_inst_i_16_n_0;
  wire MR_OBUF_inst_i_17_n_0;
  wire MR_OBUF_inst_i_18_n_0;
  wire MR_OBUF_inst_i_19_n_0;
  wire MR_OBUF_inst_i_20_n_0;
  wire MR_OBUF_inst_i_21_n_0;
  wire MR_OBUF_inst_i_3_n_0;
  wire MR_OBUF_inst_i_4_n_0;
  wire MR_OBUF_inst_i_5_n_0;
  wire MR_OBUF_inst_i_6_n_0;
  wire MR_OBUF_inst_i_7_n_0;
  wire MR_OBUF_inst_i_8_n_0;
  wire MR_OBUF_inst_i_9_n_0;
  wire SH_CP;
  wire SH_CP1;
  wire SH_CP_OBUF;
  wire SH_CP_OBUF_inst_i_10_n_0;
  wire SH_CP_OBUF_inst_i_11_n_0;
  wire SH_CP_OBUF_inst_i_12_n_0;
  wire SH_CP_OBUF_inst_i_13_n_0;
  wire SH_CP_OBUF_inst_i_14_n_0;
  wire SH_CP_OBUF_inst_i_15_n_0;
  wire SH_CP_OBUF_inst_i_16_n_0;
  wire SH_CP_OBUF_inst_i_17_n_0;
  wire SH_CP_OBUF_inst_i_18_n_0;
  wire SH_CP_OBUF_inst_i_19_n_0;
  wire SH_CP_OBUF_inst_i_20_n_0;
  wire SH_CP_OBUF_inst_i_21_n_0;
  wire SH_CP_OBUF_inst_i_22_n_0;
  wire SH_CP_OBUF_inst_i_3_n_0;
  wire SH_CP_OBUF_inst_i_4_n_0;
  wire SH_CP_OBUF_inst_i_5_n_0;
  wire SH_CP_OBUF_inst_i_6_n_0;
  wire SH_CP_OBUF_inst_i_7_n_0;
  wire SH_CP_OBUF_inst_i_8_n_0;
  wire SH_CP_OBUF_inst_i_9_n_0;
  wire ST_CP;
  wire ST_CP_OBUF;
  wire a1;
  wire \a[0]_i_12_n_0 ;
  wire \a[0]_i_14_n_0 ;
  wire \a[0]_i_15_n_0 ;
  wire \a[0]_i_16_n_0 ;
  wire \a[0]_i_17_n_0 ;
  wire \a[0]_i_19_n_0 ;
  wire \a[0]_i_1_n_0 ;
  wire \a[0]_i_20_n_0 ;
  wire \a[0]_i_21_n_0 ;
  wire \a[0]_i_22_n_0 ;
  wire \a[0]_i_24_n_0 ;
  wire \a[0]_i_25_n_0 ;
  wire \a[0]_i_26_n_0 ;
  wire \a[0]_i_27_n_0 ;
  wire \a[0]_i_28_n_0 ;
  wire \a[0]_i_29_n_0 ;
  wire \a[0]_i_30_n_0 ;
  wire \a[0]_i_31_n_0 ;
  wire \a[0]_i_33_n_0 ;
  wire \a[0]_i_34_n_0 ;
  wire \a[0]_i_35_n_0 ;
  wire \a[0]_i_36_n_0 ;
  wire \a[0]_i_37_n_0 ;
  wire \a[0]_i_38_n_0 ;
  wire \a[0]_i_39_n_0 ;
  wire \a[0]_i_40_n_0 ;
  wire \a[0]_i_41_n_0 ;
  wire \a[0]_i_42_n_0 ;
  wire \a[0]_i_6_n_0 ;
  wire \a[0]_i_7_n_0 ;
  wire \a[0]_i_8_n_0 ;
  wire [31:0]a_reg;
  wire \a_reg[0]_i_13_n_0 ;
  wire \a_reg[0]_i_18_n_0 ;
  wire \a_reg[0]_i_23_n_0 ;
  wire \a_reg[0]_i_2_n_1 ;
  wire \a_reg[0]_i_32_n_0 ;
  wire \a_reg[0]_i_3_n_0 ;
  wire \a_reg[0]_i_3_n_4 ;
  wire \a_reg[0]_i_3_n_5 ;
  wire \a_reg[0]_i_3_n_6 ;
  wire \a_reg[0]_i_3_n_7 ;
  wire \a_reg[0]_i_5_n_0 ;
  wire \a_reg[12]_i_1_n_0 ;
  wire \a_reg[12]_i_1_n_4 ;
  wire \a_reg[12]_i_1_n_5 ;
  wire \a_reg[12]_i_1_n_6 ;
  wire \a_reg[12]_i_1_n_7 ;
  wire \a_reg[16]_i_1_n_0 ;
  wire \a_reg[16]_i_1_n_4 ;
  wire \a_reg[16]_i_1_n_5 ;
  wire \a_reg[16]_i_1_n_6 ;
  wire \a_reg[16]_i_1_n_7 ;
  wire \a_reg[20]_i_1_n_0 ;
  wire \a_reg[20]_i_1_n_4 ;
  wire \a_reg[20]_i_1_n_5 ;
  wire \a_reg[20]_i_1_n_6 ;
  wire \a_reg[20]_i_1_n_7 ;
  wire \a_reg[24]_i_1_n_0 ;
  wire \a_reg[24]_i_1_n_4 ;
  wire \a_reg[24]_i_1_n_5 ;
  wire \a_reg[24]_i_1_n_6 ;
  wire \a_reg[24]_i_1_n_7 ;
  wire \a_reg[28]_i_1_n_4 ;
  wire \a_reg[28]_i_1_n_5 ;
  wire \a_reg[28]_i_1_n_6 ;
  wire \a_reg[28]_i_1_n_7 ;
  wire \a_reg[4]_i_1_n_0 ;
  wire \a_reg[4]_i_1_n_4 ;
  wire \a_reg[4]_i_1_n_5 ;
  wire \a_reg[4]_i_1_n_6 ;
  wire \a_reg[4]_i_1_n_7 ;
  wire \a_reg[8]_i_1_n_0 ;
  wire \a_reg[8]_i_1_n_4 ;
  wire \a_reg[8]_i_1_n_5 ;
  wire \a_reg[8]_i_1_n_6 ;
  wire \a_reg[8]_i_1_n_7 ;
  wire [7:0]cathode;
  wire [7:0]cathode_OBUF;
  wire \cathode_OBUF[1]_inst_i_10_n_0 ;
  wire \cathode_OBUF[1]_inst_i_11_n_0 ;
  wire \cathode_OBUF[1]_inst_i_12_n_0 ;
  wire \cathode_OBUF[1]_inst_i_13_n_0 ;
  wire \cathode_OBUF[1]_inst_i_14_n_0 ;
  wire \cathode_OBUF[1]_inst_i_15_n_0 ;
  wire \cathode_OBUF[1]_inst_i_16_n_0 ;
  wire \cathode_OBUF[1]_inst_i_2_n_1 ;
  wire \cathode_OBUF[1]_inst_i_3_n_0 ;
  wire \cathode_OBUF[1]_inst_i_4_n_0 ;
  wire \cathode_OBUF[1]_inst_i_5_n_0 ;
  wire \cathode_OBUF[1]_inst_i_6_n_0 ;
  wire \cathode_OBUF[1]_inst_i_7_n_0 ;
  wire \cathode_OBUF[1]_inst_i_8_n_0 ;
  wire \cathode_OBUF[1]_inst_i_9_n_0 ;
  wire \cathode_OBUF[2]_inst_i_10_n_0 ;
  wire \cathode_OBUF[2]_inst_i_11_n_0 ;
  wire \cathode_OBUF[2]_inst_i_12_n_0 ;
  wire \cathode_OBUF[2]_inst_i_13_n_0 ;
  wire \cathode_OBUF[2]_inst_i_14_n_0 ;
  wire \cathode_OBUF[2]_inst_i_15_n_0 ;
  wire \cathode_OBUF[2]_inst_i_2_n_1 ;
  wire \cathode_OBUF[2]_inst_i_3_n_0 ;
  wire \cathode_OBUF[2]_inst_i_4_n_0 ;
  wire \cathode_OBUF[2]_inst_i_5_n_0 ;
  wire \cathode_OBUF[2]_inst_i_6_n_0 ;
  wire \cathode_OBUF[2]_inst_i_7_n_0 ;
  wire \cathode_OBUF[2]_inst_i_8_n_0 ;
  wire \cathode_OBUF[2]_inst_i_9_n_0 ;
  wire \cathode_OBUF[3]_inst_i_10_n_0 ;
  wire \cathode_OBUF[3]_inst_i_11_n_0 ;
  wire \cathode_OBUF[3]_inst_i_12_n_0 ;
  wire \cathode_OBUF[3]_inst_i_13_n_0 ;
  wire \cathode_OBUF[3]_inst_i_14_n_0 ;
  wire \cathode_OBUF[3]_inst_i_15_n_0 ;
  wire \cathode_OBUF[3]_inst_i_2_n_1 ;
  wire \cathode_OBUF[3]_inst_i_3_n_0 ;
  wire \cathode_OBUF[3]_inst_i_4_n_0 ;
  wire \cathode_OBUF[3]_inst_i_5_n_0 ;
  wire \cathode_OBUF[3]_inst_i_6_n_0 ;
  wire \cathode_OBUF[3]_inst_i_7_n_0 ;
  wire \cathode_OBUF[3]_inst_i_8_n_0 ;
  wire \cathode_OBUF[3]_inst_i_9_n_0 ;
  wire \cathode_OBUF[4]_inst_i_10_n_0 ;
  wire \cathode_OBUF[4]_inst_i_11_n_0 ;
  wire \cathode_OBUF[4]_inst_i_12_n_0 ;
  wire \cathode_OBUF[4]_inst_i_13_n_0 ;
  wire \cathode_OBUF[4]_inst_i_14_n_0 ;
  wire \cathode_OBUF[4]_inst_i_15_n_0 ;
  wire \cathode_OBUF[4]_inst_i_2_n_1 ;
  wire \cathode_OBUF[4]_inst_i_3_n_0 ;
  wire \cathode_OBUF[4]_inst_i_4_n_0 ;
  wire \cathode_OBUF[4]_inst_i_5_n_0 ;
  wire \cathode_OBUF[4]_inst_i_6_n_0 ;
  wire \cathode_OBUF[4]_inst_i_7_n_0 ;
  wire \cathode_OBUF[4]_inst_i_8_n_0 ;
  wire \cathode_OBUF[4]_inst_i_9_n_0 ;
  wire \cathode_OBUF[5]_inst_i_10_n_0 ;
  wire \cathode_OBUF[5]_inst_i_11_n_0 ;
  wire \cathode_OBUF[5]_inst_i_12_n_0 ;
  wire \cathode_OBUF[5]_inst_i_13_n_0 ;
  wire \cathode_OBUF[5]_inst_i_14_n_0 ;
  wire \cathode_OBUF[5]_inst_i_15_n_0 ;
  wire \cathode_OBUF[5]_inst_i_2_n_1 ;
  wire \cathode_OBUF[5]_inst_i_3_n_0 ;
  wire \cathode_OBUF[5]_inst_i_4_n_0 ;
  wire \cathode_OBUF[5]_inst_i_5_n_0 ;
  wire \cathode_OBUF[5]_inst_i_6_n_0 ;
  wire \cathode_OBUF[5]_inst_i_7_n_0 ;
  wire \cathode_OBUF[5]_inst_i_8_n_0 ;
  wire \cathode_OBUF[5]_inst_i_9_n_0 ;
  wire \cathode_OBUF[6]_inst_i_10_n_0 ;
  wire \cathode_OBUF[6]_inst_i_11_n_0 ;
  wire \cathode_OBUF[6]_inst_i_12_n_0 ;
  wire \cathode_OBUF[6]_inst_i_13_n_0 ;
  wire \cathode_OBUF[6]_inst_i_14_n_0 ;
  wire \cathode_OBUF[6]_inst_i_15_n_0 ;
  wire \cathode_OBUF[6]_inst_i_2_n_1 ;
  wire \cathode_OBUF[6]_inst_i_3_n_0 ;
  wire \cathode_OBUF[6]_inst_i_4_n_0 ;
  wire \cathode_OBUF[6]_inst_i_5_n_0 ;
  wire \cathode_OBUF[6]_inst_i_6_n_0 ;
  wire \cathode_OBUF[6]_inst_i_7_n_0 ;
  wire \cathode_OBUF[6]_inst_i_8_n_0 ;
  wire \cathode_OBUF[6]_inst_i_9_n_0 ;
  wire \cathode_OBUF[7]_inst_i_10_n_0 ;
  wire \cathode_OBUF[7]_inst_i_11_n_0 ;
  wire \cathode_OBUF[7]_inst_i_12_n_0 ;
  wire \cathode_OBUF[7]_inst_i_13_n_0 ;
  wire \cathode_OBUF[7]_inst_i_14_n_0 ;
  wire \cathode_OBUF[7]_inst_i_2_n_0 ;
  wire \cathode_OBUF[7]_inst_i_3_n_0 ;
  wire \cathode_OBUF[7]_inst_i_4_n_0 ;
  wire \cathode_OBUF[7]_inst_i_5_n_0 ;
  wire \cathode_OBUF[7]_inst_i_6_n_0 ;
  wire \cathode_OBUF[7]_inst_i_7_n_0 ;
  wire \cathode_OBUF[7]_inst_i_8_n_0 ;
  wire \cathode_OBUF[7]_inst_i_9_n_0 ;
  wire clear;
  wire clock;
  wire clockDebounce;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire \counterDebounce[0]_i_5_n_0 ;
  wire [19:0]counterDebounce_reg;
  wire \counterDebounce_reg[0]_i_1_n_0 ;
  wire \counterDebounce_reg[0]_i_1_n_4 ;
  wire \counterDebounce_reg[0]_i_1_n_5 ;
  wire \counterDebounce_reg[0]_i_1_n_6 ;
  wire \counterDebounce_reg[0]_i_1_n_7 ;
  wire \counterDebounce_reg[12]_i_1_n_0 ;
  wire \counterDebounce_reg[12]_i_1_n_4 ;
  wire \counterDebounce_reg[12]_i_1_n_5 ;
  wire \counterDebounce_reg[12]_i_1_n_6 ;
  wire \counterDebounce_reg[12]_i_1_n_7 ;
  wire \counterDebounce_reg[16]_i_1_n_4 ;
  wire \counterDebounce_reg[16]_i_1_n_5 ;
  wire \counterDebounce_reg[16]_i_1_n_6 ;
  wire \counterDebounce_reg[16]_i_1_n_7 ;
  wire \counterDebounce_reg[4]_i_1_n_0 ;
  wire \counterDebounce_reg[4]_i_1_n_4 ;
  wire \counterDebounce_reg[4]_i_1_n_5 ;
  wire \counterDebounce_reg[4]_i_1_n_6 ;
  wire \counterDebounce_reg[4]_i_1_n_7 ;
  wire \counterDebounce_reg[8]_i_1_n_0 ;
  wire \counterDebounce_reg[8]_i_1_n_4 ;
  wire \counterDebounce_reg[8]_i_1_n_5 ;
  wire \counterDebounce_reg[8]_i_1_n_6 ;
  wire \counterDebounce_reg[8]_i_1_n_7 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire [31:0]d;
  wire [31:1]d0;
  wire d1;
  wire \d[0]_i_1_n_0 ;
  wire \d[31]_i_10_n_0 ;
  wire \d[31]_i_11_n_0 ;
  wire \d[31]_i_12_n_0 ;
  wire \d[31]_i_14_n_0 ;
  wire \d[31]_i_15_n_0 ;
  wire \d[31]_i_16_n_0 ;
  wire \d[31]_i_17_n_0 ;
  wire \d[31]_i_19_n_0 ;
  wire \d[31]_i_1_n_0 ;
  wire \d[31]_i_20_n_0 ;
  wire \d[31]_i_21_n_0 ;
  wire \d[31]_i_22_n_0 ;
  wire \d[31]_i_23_n_0 ;
  wire \d[31]_i_24_n_0 ;
  wire \d[31]_i_25_n_0 ;
  wire \d[31]_i_26_n_0 ;
  wire \d[31]_i_27_n_0 ;
  wire \d[31]_i_28_n_0 ;
  wire \d[31]_i_2_n_0 ;
  wire \d[31]_i_9_n_0 ;
  wire \d_reg[12]_i_1_n_0 ;
  wire \d_reg[16]_i_1_n_0 ;
  wire \d_reg[20]_i_1_n_0 ;
  wire \d_reg[24]_i_1_n_0 ;
  wire \d_reg[28]_i_1_n_0 ;
  wire \d_reg[31]_i_13_n_0 ;
  wire \d_reg[31]_i_18_n_0 ;
  wire \d_reg[31]_i_8_n_0 ;
  wire \d_reg[4]_i_1_n_0 ;
  wire \d_reg[8]_i_1_n_0 ;
  wire f;
  wire f_BUFG;
  wire i1;
  wire \i[0]_i_10_n_0 ;
  wire \i[0]_i_11_n_0 ;
  wire \i[0]_i_12_n_0 ;
  wire \i[0]_i_13_n_0 ;
  wire \i[0]_i_15_n_0 ;
  wire \i[0]_i_16_n_0 ;
  wire \i[0]_i_17_n_0 ;
  wire \i[0]_i_18_n_0 ;
  wire \i[0]_i_20_n_0 ;
  wire \i[0]_i_21_n_0 ;
  wire \i[0]_i_22_n_0 ;
  wire \i[0]_i_23_n_0 ;
  wire \i[0]_i_24_n_0 ;
  wire \i[0]_i_25_n_0 ;
  wire \i[0]_i_26_n_0 ;
  wire \i[0]_i_27_n_0 ;
  wire \i[0]_i_28_n_0 ;
  wire \i[0]_i_29_n_0 ;
  wire \i[0]_i_30_n_0 ;
  wire \i[0]_i_31_n_0 ;
  wire \i[0]_i_32_n_0 ;
  wire \i[0]_i_8_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_14_n_0 ;
  wire \i_reg[0]_i_19_n_0 ;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[0]_i_9_n_0 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [1:1]leftBtnState;
  wire \leftBtnState[1]_i_2_n_0 ;
  wire \leftBtnState[1]_i_3_n_0 ;
  wire \leftBtnState[1]_i_4_n_0 ;
  wire oe;
  wire oe1;
  wire oe10_in;
  wire oe_OBUF;
  wire oe_i_10_n_0;
  wire oe_i_11_n_0;
  wire oe_i_12_n_0;
  wire oe_i_14_n_0;
  wire oe_i_15_n_0;
  wire oe_i_16_n_0;
  wire oe_i_17_n_0;
  wire oe_i_19_n_0;
  wire oe_i_1_n_0;
  wire oe_i_20_n_0;
  wire oe_i_21_n_0;
  wire oe_i_22_n_0;
  wire oe_i_23_n_0;
  wire oe_i_24_n_0;
  wire oe_i_25_n_0;
  wire oe_i_26_n_0;
  wire oe_i_28_n_0;
  wire oe_i_29_n_0;
  wire oe_i_30_n_0;
  wire oe_i_31_n_0;
  wire oe_i_33_n_0;
  wire oe_i_34_n_0;
  wire oe_i_35_n_0;
  wire oe_i_36_n_0;
  wire oe_i_37_n_0;
  wire oe_i_38_n_0;
  wire oe_i_39_n_0;
  wire oe_i_40_n_0;
  wire oe_i_42_n_0;
  wire oe_i_43_n_0;
  wire oe_i_44_n_0;
  wire oe_i_45_n_0;
  wire oe_i_46_n_0;
  wire oe_i_47_n_0;
  wire oe_i_48_n_0;
  wire oe_i_49_n_0;
  wire oe_i_50_n_0;
  wire oe_i_51_n_0;
  wire oe_i_52_n_0;
  wire oe_i_53_n_0;
  wire oe_i_54_n_0;
  wire oe_i_55_n_0;
  wire oe_i_56_n_0;
  wire oe_i_57_n_0;
  wire oe_i_58_n_0;
  wire oe_i_59_n_0;
  wire oe_i_5_n_0;
  wire oe_i_60_n_0;
  wire oe_i_6_n_0;
  wire oe_i_7_n_0;
  wire oe_i_8_n_0;
  wire oe_i_9_n_0;
  wire oe_reg_i_13_n_0;
  wire oe_reg_i_18_n_0;
  wire oe_reg_i_27_n_0;
  wire oe_reg_i_32_n_0;
  wire oe_reg_i_41_n_0;
  wire oe_reg_i_4_n_0;
  wire p_0_in;
  wire [1:1]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [7:0]red;
  wire \redBlock[0]_i_1_n_0 ;
  wire \redBlock[1]_i_1_n_0 ;
  wire \redBlock[2]_i_1_n_0 ;
  wire \redBlock[3]_i_1_n_0 ;
  wire \redBlock[4]_i_1_n_0 ;
  wire \redBlock[5]_i_1_n_0 ;
  wire \redBlock[6]_i_1_n_0 ;
  wire \redBlock[7]_i_1_n_0 ;
  wire \redBlock[7]_i_2_n_0 ;
  wire \redBlock_reg_n_0_[0] ;
  wire \redBlock_reg_n_0_[1] ;
  wire \redBlock_reg_n_0_[2] ;
  wire \redBlock_reg_n_0_[3] ;
  wire \redBlock_reg_n_0_[4] ;
  wire \redBlock_reg_n_0_[5] ;
  wire \redBlock_reg_n_0_[6] ;
  wire \red_reg[0]_i_1_n_0 ;
  wire \red_reg[1]_i_1_n_0 ;
  wire \red_reg[2]_i_1_n_0 ;
  wire \red_reg[3]_i_1_n_0 ;
  wire \red_reg[4]_i_1_n_0 ;
  wire \red_reg[5]_i_1_n_0 ;
  wire \red_reg[6]_i_1_n_0 ;
  wire \red_reg[7]_i_100_n_0 ;
  wire \red_reg[7]_i_101_n_0 ;
  wire \red_reg[7]_i_102_n_0 ;
  wire \red_reg[7]_i_103_n_0 ;
  wire \red_reg[7]_i_104_n_0 ;
  wire \red_reg[7]_i_105_n_0 ;
  wire \red_reg[7]_i_106_n_0 ;
  wire \red_reg[7]_i_107_n_0 ;
  wire \red_reg[7]_i_108_n_0 ;
  wire \red_reg[7]_i_109_n_0 ;
  wire \red_reg[7]_i_10_n_0 ;
  wire \red_reg[7]_i_110_n_0 ;
  wire \red_reg[7]_i_111_n_0 ;
  wire \red_reg[7]_i_112_n_0 ;
  wire \red_reg[7]_i_113_n_0 ;
  wire \red_reg[7]_i_114_n_0 ;
  wire \red_reg[7]_i_115_n_0 ;
  wire \red_reg[7]_i_116_n_0 ;
  wire \red_reg[7]_i_117_n_0 ;
  wire \red_reg[7]_i_118_n_0 ;
  wire \red_reg[7]_i_119_n_0 ;
  wire \red_reg[7]_i_11_n_0 ;
  wire \red_reg[7]_i_120_n_0 ;
  wire \red_reg[7]_i_121_n_0 ;
  wire \red_reg[7]_i_122_n_0 ;
  wire \red_reg[7]_i_123_n_0 ;
  wire \red_reg[7]_i_124_n_0 ;
  wire \red_reg[7]_i_125_n_0 ;
  wire \red_reg[7]_i_126_n_0 ;
  wire \red_reg[7]_i_127_n_0 ;
  wire \red_reg[7]_i_128_n_0 ;
  wire \red_reg[7]_i_129_n_0 ;
  wire \red_reg[7]_i_12_n_0 ;
  wire \red_reg[7]_i_130_n_0 ;
  wire \red_reg[7]_i_131_n_0 ;
  wire \red_reg[7]_i_132_n_0 ;
  wire \red_reg[7]_i_133_n_0 ;
  wire \red_reg[7]_i_134_n_0 ;
  wire \red_reg[7]_i_135_n_0 ;
  wire \red_reg[7]_i_136_n_0 ;
  wire \red_reg[7]_i_137_n_0 ;
  wire \red_reg[7]_i_138_n_0 ;
  wire \red_reg[7]_i_139_n_0 ;
  wire \red_reg[7]_i_13_n_0 ;
  wire \red_reg[7]_i_140_n_0 ;
  wire \red_reg[7]_i_141_n_0 ;
  wire \red_reg[7]_i_142_n_0 ;
  wire \red_reg[7]_i_143_n_0 ;
  wire \red_reg[7]_i_144_n_0 ;
  wire \red_reg[7]_i_145_n_0 ;
  wire \red_reg[7]_i_146_n_0 ;
  wire \red_reg[7]_i_147_n_0 ;
  wire \red_reg[7]_i_148_n_0 ;
  wire \red_reg[7]_i_149_n_0 ;
  wire \red_reg[7]_i_14_n_0 ;
  wire \red_reg[7]_i_150_n_0 ;
  wire \red_reg[7]_i_151_n_0 ;
  wire \red_reg[7]_i_152_n_0 ;
  wire \red_reg[7]_i_153_n_0 ;
  wire \red_reg[7]_i_154_n_0 ;
  wire \red_reg[7]_i_155_n_0 ;
  wire \red_reg[7]_i_156_n_0 ;
  wire \red_reg[7]_i_157_n_0 ;
  wire \red_reg[7]_i_158_n_0 ;
  wire \red_reg[7]_i_159_n_0 ;
  wire \red_reg[7]_i_15_n_0 ;
  wire \red_reg[7]_i_160_n_0 ;
  wire \red_reg[7]_i_161_n_0 ;
  wire \red_reg[7]_i_162_n_0 ;
  wire \red_reg[7]_i_163_n_0 ;
  wire \red_reg[7]_i_164_n_0 ;
  wire \red_reg[7]_i_165_n_0 ;
  wire \red_reg[7]_i_166_n_0 ;
  wire \red_reg[7]_i_167_n_0 ;
  wire \red_reg[7]_i_168_n_0 ;
  wire \red_reg[7]_i_169_n_0 ;
  wire \red_reg[7]_i_16_n_0 ;
  wire \red_reg[7]_i_170_n_0 ;
  wire \red_reg[7]_i_171_n_0 ;
  wire \red_reg[7]_i_172_n_0 ;
  wire \red_reg[7]_i_173_n_0 ;
  wire \red_reg[7]_i_174_n_0 ;
  wire \red_reg[7]_i_175_n_0 ;
  wire \red_reg[7]_i_176_n_0 ;
  wire \red_reg[7]_i_177_n_0 ;
  wire \red_reg[7]_i_178_n_0 ;
  wire \red_reg[7]_i_179_n_0 ;
  wire \red_reg[7]_i_17_n_0 ;
  wire \red_reg[7]_i_180_n_0 ;
  wire \red_reg[7]_i_181_n_0 ;
  wire \red_reg[7]_i_182_n_0 ;
  wire \red_reg[7]_i_183_n_0 ;
  wire \red_reg[7]_i_184_n_0 ;
  wire \red_reg[7]_i_185_n_0 ;
  wire \red_reg[7]_i_186_n_0 ;
  wire \red_reg[7]_i_187_n_0 ;
  wire \red_reg[7]_i_188_n_0 ;
  wire \red_reg[7]_i_189_n_0 ;
  wire \red_reg[7]_i_18_n_0 ;
  wire \red_reg[7]_i_190_n_0 ;
  wire \red_reg[7]_i_191_n_0 ;
  wire \red_reg[7]_i_192_n_0 ;
  wire \red_reg[7]_i_193_n_0 ;
  wire \red_reg[7]_i_194_n_0 ;
  wire \red_reg[7]_i_195_n_0 ;
  wire \red_reg[7]_i_196_n_0 ;
  wire \red_reg[7]_i_197_n_0 ;
  wire \red_reg[7]_i_198_n_0 ;
  wire \red_reg[7]_i_199_n_0 ;
  wire \red_reg[7]_i_19_n_1 ;
  wire \red_reg[7]_i_1_n_0 ;
  wire \red_reg[7]_i_200_n_0 ;
  wire \red_reg[7]_i_201_n_0 ;
  wire \red_reg[7]_i_202_n_0 ;
  wire \red_reg[7]_i_203_n_0 ;
  wire \red_reg[7]_i_204_n_0 ;
  wire \red_reg[7]_i_205_n_0 ;
  wire \red_reg[7]_i_206_n_0 ;
  wire \red_reg[7]_i_207_n_0 ;
  wire \red_reg[7]_i_208_n_0 ;
  wire \red_reg[7]_i_209_n_0 ;
  wire \red_reg[7]_i_20_n_0 ;
  wire \red_reg[7]_i_210_n_0 ;
  wire \red_reg[7]_i_211_n_0 ;
  wire \red_reg[7]_i_212_n_0 ;
  wire \red_reg[7]_i_213_n_0 ;
  wire \red_reg[7]_i_214_n_0 ;
  wire \red_reg[7]_i_215_n_0 ;
  wire \red_reg[7]_i_216_n_0 ;
  wire \red_reg[7]_i_217_n_0 ;
  wire \red_reg[7]_i_218_n_0 ;
  wire \red_reg[7]_i_219_n_0 ;
  wire \red_reg[7]_i_21_n_0 ;
  wire \red_reg[7]_i_220_n_0 ;
  wire \red_reg[7]_i_221_n_0 ;
  wire \red_reg[7]_i_222_n_0 ;
  wire \red_reg[7]_i_223_n_0 ;
  wire \red_reg[7]_i_224_n_0 ;
  wire \red_reg[7]_i_225_n_0 ;
  wire \red_reg[7]_i_226_n_0 ;
  wire \red_reg[7]_i_227_n_0 ;
  wire \red_reg[7]_i_228_n_0 ;
  wire \red_reg[7]_i_229_n_0 ;
  wire \red_reg[7]_i_22_n_0 ;
  wire \red_reg[7]_i_230_n_0 ;
  wire \red_reg[7]_i_231_n_0 ;
  wire \red_reg[7]_i_232_n_0 ;
  wire \red_reg[7]_i_23_n_0 ;
  wire \red_reg[7]_i_24_n_0 ;
  wire \red_reg[7]_i_25_n_0 ;
  wire \red_reg[7]_i_26_n_0 ;
  wire \red_reg[7]_i_27_n_0 ;
  wire \red_reg[7]_i_28_n_0 ;
  wire \red_reg[7]_i_29_n_0 ;
  wire \red_reg[7]_i_2_n_0 ;
  wire \red_reg[7]_i_30_n_0 ;
  wire \red_reg[7]_i_31_n_0 ;
  wire \red_reg[7]_i_32_n_0 ;
  wire \red_reg[7]_i_33_n_0 ;
  wire \red_reg[7]_i_34_n_0 ;
  wire \red_reg[7]_i_35_n_0 ;
  wire \red_reg[7]_i_36_n_0 ;
  wire \red_reg[7]_i_37_n_0 ;
  wire \red_reg[7]_i_38_n_0 ;
  wire \red_reg[7]_i_39_n_0 ;
  wire \red_reg[7]_i_3_n_0 ;
  wire \red_reg[7]_i_40_n_0 ;
  wire \red_reg[7]_i_41_n_0 ;
  wire \red_reg[7]_i_42_n_0 ;
  wire \red_reg[7]_i_43_n_0 ;
  wire \red_reg[7]_i_44_n_0 ;
  wire \red_reg[7]_i_45_n_0 ;
  wire \red_reg[7]_i_46_n_0 ;
  wire \red_reg[7]_i_47_n_0 ;
  wire \red_reg[7]_i_48_n_0 ;
  wire \red_reg[7]_i_49_n_0 ;
  wire \red_reg[7]_i_4_n_0 ;
  wire \red_reg[7]_i_50_n_0 ;
  wire \red_reg[7]_i_51_n_0 ;
  wire \red_reg[7]_i_52_n_0 ;
  wire \red_reg[7]_i_53_n_0 ;
  wire \red_reg[7]_i_54_n_0 ;
  wire \red_reg[7]_i_55_n_0 ;
  wire \red_reg[7]_i_56_n_0 ;
  wire \red_reg[7]_i_57_n_0 ;
  wire \red_reg[7]_i_58_n_0 ;
  wire \red_reg[7]_i_59_n_0 ;
  wire \red_reg[7]_i_5_n_0 ;
  wire \red_reg[7]_i_60_n_0 ;
  wire \red_reg[7]_i_61_n_0 ;
  wire \red_reg[7]_i_62_n_0 ;
  wire \red_reg[7]_i_63_n_0 ;
  wire \red_reg[7]_i_64_n_0 ;
  wire \red_reg[7]_i_65_n_0 ;
  wire \red_reg[7]_i_66_n_0 ;
  wire \red_reg[7]_i_67_n_0 ;
  wire \red_reg[7]_i_68_n_0 ;
  wire \red_reg[7]_i_69_n_0 ;
  wire \red_reg[7]_i_6_n_0 ;
  wire \red_reg[7]_i_70_n_0 ;
  wire \red_reg[7]_i_71_n_0 ;
  wire \red_reg[7]_i_72_n_0 ;
  wire \red_reg[7]_i_73_n_0 ;
  wire \red_reg[7]_i_74_n_0 ;
  wire \red_reg[7]_i_75_n_0 ;
  wire \red_reg[7]_i_76_n_0 ;
  wire \red_reg[7]_i_77_n_0 ;
  wire \red_reg[7]_i_78_n_0 ;
  wire \red_reg[7]_i_79_n_0 ;
  wire \red_reg[7]_i_7_n_1 ;
  wire \red_reg[7]_i_80_n_0 ;
  wire \red_reg[7]_i_81_n_0 ;
  wire \red_reg[7]_i_82_n_0 ;
  wire \red_reg[7]_i_83_n_0 ;
  wire \red_reg[7]_i_84_n_0 ;
  wire \red_reg[7]_i_85_n_0 ;
  wire \red_reg[7]_i_86_n_0 ;
  wire \red_reg[7]_i_87_n_0 ;
  wire \red_reg[7]_i_88_n_0 ;
  wire \red_reg[7]_i_89_n_0 ;
  wire \red_reg[7]_i_8_n_1 ;
  wire \red_reg[7]_i_90_n_0 ;
  wire \red_reg[7]_i_91_n_0 ;
  wire \red_reg[7]_i_92_n_0 ;
  wire \red_reg[7]_i_93_n_0 ;
  wire \red_reg[7]_i_94_n_0 ;
  wire \red_reg[7]_i_95_n_0 ;
  wire \red_reg[7]_i_96_n_0 ;
  wire \red_reg[7]_i_97_n_0 ;
  wire \red_reg[7]_i_98_n_0 ;
  wire \red_reg[7]_i_99_n_0 ;
  wire \red_reg[7]_i_9_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire [1:0]rightBtnState;
  wire toLeftButton;
  wire toLeftButton_IBUF;
  wire toRightButton;
  wire toRightButton_IBUF;
  wire [2:0]NLW_DS_OBUF_inst_i_15_CO_UNCONNECTED;
  wire [3:0]NLW_DS_OBUF_inst_i_15_O_UNCONNECTED;
  wire [2:0]NLW_DS_OBUF_inst_i_24_CO_UNCONNECTED;
  wire [3:0]NLW_DS_OBUF_inst_i_24_O_UNCONNECTED;
  wire [2:0]NLW_DS_OBUF_inst_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_DS_OBUF_inst_i_5_O_UNCONNECTED;
  wire [2:0]NLW_DS_OBUF_inst_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_DS_OBUF_inst_i_6_O_UNCONNECTED;
  wire [2:0]NLW_MR_OBUF_inst_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_MR_OBUF_inst_i_12_O_UNCONNECTED;
  wire [3:0]NLW_MR_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_MR_OBUF_inst_i_2_O_UNCONNECTED;
  wire [2:0]NLW_MR_OBUF_inst_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_MR_OBUF_inst_i_3_O_UNCONNECTED;
  wire [2:0]NLW_MR_OBUF_inst_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_MR_OBUF_inst_i_7_O_UNCONNECTED;
  wire [2:0]NLW_SH_CP_OBUF_inst_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_SH_CP_OBUF_inst_i_12_O_UNCONNECTED;
  wire [3:0]NLW_SH_CP_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_SH_CP_OBUF_inst_i_2_O_UNCONNECTED;
  wire [2:0]NLW_SH_CP_OBUF_inst_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_SH_CP_OBUF_inst_i_3_O_UNCONNECTED;
  wire [2:0]NLW_SH_CP_OBUF_inst_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_SH_CP_OBUF_inst_i_7_O_UNCONNECTED;
  wire [2:0]\NLW_a_reg[0]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_32_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[1]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[1]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[1]_inst_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[1]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[1]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[1]_inst_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[2]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[2]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[2]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[2]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[2]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[2]_inst_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[3]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[3]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[3]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[3]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[3]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[3]_inst_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[4]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[4]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[4]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[4]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[4]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[4]_inst_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[5]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[5]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[5]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[5]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[5]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[5]_inst_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[6]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[6]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[6]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[6]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[6]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[6]_inst_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[7]_inst_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[7]_inst_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[7]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[7]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cathode_OBUF[7]_inst_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_cathode_OBUF[7]_inst_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_counterDebounce_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counterDebounce_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counterDebounce_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counterDebounce_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counterDebounce_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[31]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[31]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[31]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[31]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_d_reg[31]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[31]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[31]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_reg[31]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[0]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[0]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_oe_reg_i_13_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_13_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_18_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_18_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_27_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_27_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_32_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_32_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_4_O_UNCONNECTED;
  wire [2:0]NLW_oe_reg_i_41_CO_UNCONNECTED;
  wire [3:0]NLW_oe_reg_i_41_O_UNCONNECTED;
  wire [2:0]\NLW_red_reg[7]_i_102_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_102_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_107_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_107_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_112_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_112_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_117_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_117_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_122_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_122_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_127_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_127_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_132_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_132_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_141_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_141_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_146_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_146_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_151_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_151_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_156_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_156_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_161_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_161_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_166_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_166_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_171_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_171_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_22_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_28_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_32_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_50_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_50_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_55_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_55_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_60_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_60_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_64_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_64_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_69_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_69_O_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_74_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_74_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_79_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_79_O_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_84_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_84_O_UNCONNECTED ;
  wire [2:0]\NLW_red_reg[7]_i_89_CO_UNCONNECTED ;
  wire [3:0]\NLW_red_reg[7]_i_89_O_UNCONNECTED ;

  OBUF DS_OBUF_inst
       (.I(DS_OBUF),
        .O(DS));
  LUT5 #(
    .INIT(32'h0C800080)) 
    DS_OBUF_inst_i_1
       (.I0(DS_OBUF_inst_i_2_n_0),
        .I1(DS_OBUF_inst_i_3_n_0),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(DS_OBUF_inst_i_4_n_0),
        .O(DS_OBUF));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_10
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(DS_OBUF_inst_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_11
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(DS_OBUF_inst_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_12
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(DS_OBUF_inst_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_13
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(DS_OBUF_inst_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_14
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(DS_OBUF_inst_i_14_n_0));
  CARRY4 DS_OBUF_inst_i_15
       (.CI(DS_OBUF_inst_i_24_n_0),
        .CO({DS_OBUF_inst_i_15_n_0,NLW_DS_OBUF_inst_i_15_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DS_OBUF_inst_i_25_n_0,DS_OBUF_inst_i_26_n_0,DS_OBUF_inst_i_27_n_0,DS_OBUF_inst_i_28_n_0}),
        .O(NLW_DS_OBUF_inst_i_15_O_UNCONNECTED[3:0]),
        .S({DS_OBUF_inst_i_29_n_0,DS_OBUF_inst_i_30_n_0,DS_OBUF_inst_i_31_n_0,DS_OBUF_inst_i_32_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_16
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(DS_OBUF_inst_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_17
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(DS_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_18
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(DS_OBUF_inst_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_19
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(DS_OBUF_inst_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    DS_OBUF_inst_i_2
       (.I0(red[7]),
        .I1(red[5]),
        .I2(i_reg[0]),
        .I3(red[6]),
        .I4(i_reg[1]),
        .I5(red[4]),
        .O(DS_OBUF_inst_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_20
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(DS_OBUF_inst_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_21
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(DS_OBUF_inst_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_22
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(DS_OBUF_inst_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_23
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(DS_OBUF_inst_i_23_n_0));
  CARRY4 DS_OBUF_inst_i_24
       (.CI(1'b0),
        .CO({DS_OBUF_inst_i_24_n_0,NLW_DS_OBUF_inst_i_24_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DS_OBUF_inst_i_33_n_0,DS_OBUF_inst_i_34_n_0,i_reg[3],DS_OBUF_inst_i_35_n_0}),
        .O(NLW_DS_OBUF_inst_i_24_O_UNCONNECTED[3:0]),
        .S({DS_OBUF_inst_i_36_n_0,DS_OBUF_inst_i_37_n_0,DS_OBUF_inst_i_38_n_0,DS_OBUF_inst_i_39_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_25
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(DS_OBUF_inst_i_25_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_26
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(DS_OBUF_inst_i_26_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_27
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(DS_OBUF_inst_i_27_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_28
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(DS_OBUF_inst_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_29
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(DS_OBUF_inst_i_29_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    DS_OBUF_inst_i_3
       (.I0(i_reg[4]),
        .I1(DS2),
        .I2(SH_CP1),
        .O(DS_OBUF_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_30
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(DS_OBUF_inst_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_31
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(DS_OBUF_inst_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_32
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(DS_OBUF_inst_i_32_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_33
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(DS_OBUF_inst_i_33_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_34
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .O(DS_OBUF_inst_i_34_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_35
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(DS_OBUF_inst_i_35_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_36
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(DS_OBUF_inst_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_37
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(DS_OBUF_inst_i_37_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    DS_OBUF_inst_i_38
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(DS_OBUF_inst_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DS_OBUF_inst_i_39
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(DS_OBUF_inst_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    DS_OBUF_inst_i_4
       (.I0(red[3]),
        .I1(red[1]),
        .I2(i_reg[0]),
        .I3(red[2]),
        .I4(i_reg[1]),
        .I5(red[0]),
        .O(DS_OBUF_inst_i_4_n_0));
  CARRY4 DS_OBUF_inst_i_5
       (.CI(DS_OBUF_inst_i_6_n_0),
        .CO({DS2,NLW_DS_OBUF_inst_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DS_OBUF_inst_i_7_n_0,DS_OBUF_inst_i_8_n_0,DS_OBUF_inst_i_9_n_0,DS_OBUF_inst_i_10_n_0}),
        .O(NLW_DS_OBUF_inst_i_5_O_UNCONNECTED[3:0]),
        .S({DS_OBUF_inst_i_11_n_0,DS_OBUF_inst_i_12_n_0,DS_OBUF_inst_i_13_n_0,DS_OBUF_inst_i_14_n_0}));
  CARRY4 DS_OBUF_inst_i_6
       (.CI(DS_OBUF_inst_i_15_n_0),
        .CO({DS_OBUF_inst_i_6_n_0,NLW_DS_OBUF_inst_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DS_OBUF_inst_i_16_n_0,DS_OBUF_inst_i_17_n_0,DS_OBUF_inst_i_18_n_0,DS_OBUF_inst_i_19_n_0}),
        .O(NLW_DS_OBUF_inst_i_6_O_UNCONNECTED[3:0]),
        .S({DS_OBUF_inst_i_20_n_0,DS_OBUF_inst_i_21_n_0,DS_OBUF_inst_i_22_n_0,DS_OBUF_inst_i_23_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    DS_OBUF_inst_i_7
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(DS_OBUF_inst_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_8
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(DS_OBUF_inst_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    DS_OBUF_inst_i_9
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(DS_OBUF_inst_i_9_n_0));
  OBUF MR_OBUF_inst
       (.I(MR_OBUF),
        .O(MR));
  LUT1 #(
    .INIT(2'h1)) 
    MR_OBUF_inst_i_1
       (.I0(MR1),
        .O(MR_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_10
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(MR_OBUF_inst_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_11
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(MR_OBUF_inst_i_11_n_0));
  CARRY4 MR_OBUF_inst_i_12
       (.CI(1'b0),
        .CO({MR_OBUF_inst_i_12_n_0,NLW_MR_OBUF_inst_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,MR_OBUF_inst_i_17_n_0}),
        .O(NLW_MR_OBUF_inst_i_12_O_UNCONNECTED[3:0]),
        .S({MR_OBUF_inst_i_18_n_0,MR_OBUF_inst_i_19_n_0,MR_OBUF_inst_i_20_n_0,MR_OBUF_inst_i_21_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_13
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(MR_OBUF_inst_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_14
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(MR_OBUF_inst_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_15
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(MR_OBUF_inst_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_16
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(MR_OBUF_inst_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_17
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(MR_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_18
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(MR_OBUF_inst_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_19
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(MR_OBUF_inst_i_19_n_0));
  CARRY4 MR_OBUF_inst_i_2
       (.CI(MR_OBUF_inst_i_3_n_0),
        .CO({NLW_MR_OBUF_inst_i_2_CO_UNCONNECTED[3],MR1,NLW_MR_OBUF_inst_i_2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,i_reg[31],1'b0,1'b0}),
        .O(NLW_MR_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,MR_OBUF_inst_i_4_n_0,MR_OBUF_inst_i_5_n_0,MR_OBUF_inst_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_20
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(MR_OBUF_inst_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MR_OBUF_inst_i_21
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(MR_OBUF_inst_i_21_n_0));
  CARRY4 MR_OBUF_inst_i_3
       (.CI(MR_OBUF_inst_i_7_n_0),
        .CO({MR_OBUF_inst_i_3_n_0,NLW_MR_OBUF_inst_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MR_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({MR_OBUF_inst_i_8_n_0,MR_OBUF_inst_i_9_n_0,MR_OBUF_inst_i_10_n_0,MR_OBUF_inst_i_11_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_4
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(MR_OBUF_inst_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_5
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(MR_OBUF_inst_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_6
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(MR_OBUF_inst_i_6_n_0));
  CARRY4 MR_OBUF_inst_i_7
       (.CI(MR_OBUF_inst_i_12_n_0),
        .CO({MR_OBUF_inst_i_7_n_0,NLW_MR_OBUF_inst_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MR_OBUF_inst_i_7_O_UNCONNECTED[3:0]),
        .S({MR_OBUF_inst_i_13_n_0,MR_OBUF_inst_i_14_n_0,MR_OBUF_inst_i_15_n_0,MR_OBUF_inst_i_16_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_8
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(MR_OBUF_inst_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MR_OBUF_inst_i_9
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(MR_OBUF_inst_i_9_n_0));
  OBUF SH_CP_OBUF_inst
       (.I(SH_CP_OBUF),
        .O(SH_CP));
  LUT2 #(
    .INIT(4'h8)) 
    SH_CP_OBUF_inst_i_1
       (.I0(SH_CP1),
        .I1(f),
        .O(SH_CP_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_10
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(SH_CP_OBUF_inst_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_11
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(SH_CP_OBUF_inst_i_11_n_0));
  CARRY4 SH_CP_OBUF_inst_i_12
       (.CI(1'b0),
        .CO({SH_CP_OBUF_inst_i_12_n_0,NLW_SH_CP_OBUF_inst_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,SH_CP_OBUF_inst_i_17_n_0,SH_CP_OBUF_inst_i_18_n_0}),
        .O(NLW_SH_CP_OBUF_inst_i_12_O_UNCONNECTED[3:0]),
        .S({SH_CP_OBUF_inst_i_19_n_0,SH_CP_OBUF_inst_i_20_n_0,SH_CP_OBUF_inst_i_21_n_0,SH_CP_OBUF_inst_i_22_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_13
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(SH_CP_OBUF_inst_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_14
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(SH_CP_OBUF_inst_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_15
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(SH_CP_OBUF_inst_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_16
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(SH_CP_OBUF_inst_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_17
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(SH_CP_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    SH_CP_OBUF_inst_i_18
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(SH_CP_OBUF_inst_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_19
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(SH_CP_OBUF_inst_i_19_n_0));
  CARRY4 SH_CP_OBUF_inst_i_2
       (.CI(SH_CP_OBUF_inst_i_3_n_0),
        .CO({NLW_SH_CP_OBUF_inst_i_2_CO_UNCONNECTED[3],SH_CP1,NLW_SH_CP_OBUF_inst_i_2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,i_reg[31],1'b0,1'b0}),
        .O(NLW_SH_CP_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,SH_CP_OBUF_inst_i_4_n_0,SH_CP_OBUF_inst_i_5_n_0,SH_CP_OBUF_inst_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_20
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(SH_CP_OBUF_inst_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    SH_CP_OBUF_inst_i_21
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(SH_CP_OBUF_inst_i_21_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    SH_CP_OBUF_inst_i_22
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(SH_CP_OBUF_inst_i_22_n_0));
  CARRY4 SH_CP_OBUF_inst_i_3
       (.CI(SH_CP_OBUF_inst_i_7_n_0),
        .CO({SH_CP_OBUF_inst_i_3_n_0,NLW_SH_CP_OBUF_inst_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SH_CP_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({SH_CP_OBUF_inst_i_8_n_0,SH_CP_OBUF_inst_i_9_n_0,SH_CP_OBUF_inst_i_10_n_0,SH_CP_OBUF_inst_i_11_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_4
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(SH_CP_OBUF_inst_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_5
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(SH_CP_OBUF_inst_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_6
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(SH_CP_OBUF_inst_i_6_n_0));
  CARRY4 SH_CP_OBUF_inst_i_7
       (.CI(SH_CP_OBUF_inst_i_12_n_0),
        .CO({SH_CP_OBUF_inst_i_7_n_0,NLW_SH_CP_OBUF_inst_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SH_CP_OBUF_inst_i_7_O_UNCONNECTED[3:0]),
        .S({SH_CP_OBUF_inst_i_13_n_0,SH_CP_OBUF_inst_i_14_n_0,SH_CP_OBUF_inst_i_15_n_0,SH_CP_OBUF_inst_i_16_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_8
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(SH_CP_OBUF_inst_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    SH_CP_OBUF_inst_i_9
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(SH_CP_OBUF_inst_i_9_n_0));
  OBUF ST_CP_OBUF_inst
       (.I(ST_CP_OBUF),
        .O(ST_CP));
  LUT2 #(
    .INIT(4'h7)) 
    ST_CP_OBUF_inst_i_1
       (.I0(f),
        .I1(SH_CP1),
        .O(ST_CP_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \a[0]_i_1 
       (.I0(\a_reg[0]_i_2_n_1 ),
        .I1(a1),
        .O(\a[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a[0]_i_12 
       (.I0(a_reg[0]),
        .O(\a[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_14 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\a[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_15 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .O(\a[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_16 
       (.I0(a_reg[27]),
        .I1(a_reg[26]),
        .O(\a[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_17 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .O(\a[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_19 
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .I2(i_reg[21]),
        .O(\a[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_20 
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .I2(i_reg[20]),
        .O(\a[0]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_21 
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .I2(i_reg[15]),
        .O(\a[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_22 
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .I2(i_reg[14]),
        .O(\a[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_24 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .O(\a[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_25 
       (.I0(a_reg[21]),
        .I1(a_reg[20]),
        .O(\a[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_26 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .O(\a[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_27 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .O(\a[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_28 
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .I2(i_reg[9]),
        .O(\a[0]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \a[0]_i_29 
       (.I0(i_reg[8]),
        .I1(i_reg[7]),
        .I2(i_reg[6]),
        .O(\a[0]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \a[0]_i_30 
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .I2(i_reg[3]),
        .O(\a[0]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \a[0]_i_31 
       (.I0(i_reg[2]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .O(\a[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_33 
       (.I0(a_reg[15]),
        .I1(a_reg[14]),
        .O(\a[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_34 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .O(\a[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_35 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .O(\a[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_36 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .O(\a[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_37 
       (.I0(a_reg[2]),
        .I1(a_reg[3]),
        .O(\a[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \a[0]_i_38 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .O(\a[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_39 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .O(\a[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_40 
       (.I0(a_reg[5]),
        .I1(a_reg[4]),
        .O(\a[0]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a[0]_i_41 
       (.I0(a_reg[2]),
        .I1(a_reg[3]),
        .O(\a[0]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a[0]_i_42 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .O(\a[0]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[0]_i_6 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\a[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_7 
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .I2(i_reg[27]),
        .O(\a[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \a[0]_i_8 
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .I2(i_reg[26]),
        .O(\a[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[0]_i_3_n_7 ),
        .Q(a_reg[0]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[0]_i_13 
       (.CI(\a_reg[0]_i_23_n_0 ),
        .CO({\a_reg[0]_i_13_n_0 ,\NLW_a_reg[0]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_24_n_0 ,\a[0]_i_25_n_0 ,\a[0]_i_26_n_0 ,\a[0]_i_27_n_0 }));
  CARRY4 \a_reg[0]_i_18 
       (.CI(1'b0),
        .CO({\a_reg[0]_i_18_n_0 ,\NLW_a_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_28_n_0 ,\a[0]_i_29_n_0 ,\a[0]_i_30_n_0 ,\a[0]_i_31_n_0 }));
  CARRY4 \a_reg[0]_i_2 
       (.CI(\a_reg[0]_i_5_n_0 ),
        .CO({\NLW_a_reg[0]_i_2_CO_UNCONNECTED [3],\a_reg[0]_i_2_n_1 ,\NLW_a_reg[0]_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\a[0]_i_6_n_0 ,\a[0]_i_7_n_0 ,\a[0]_i_8_n_0 }));
  CARRY4 \a_reg[0]_i_23 
       (.CI(\a_reg[0]_i_32_n_0 ),
        .CO({\a_reg[0]_i_23_n_0 ,\NLW_a_reg[0]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_33_n_0 ,\a[0]_i_34_n_0 ,\a[0]_i_35_n_0 ,\a[0]_i_36_n_0 }));
  CARRY4 \a_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\a_reg[0]_i_3_n_0 ,\NLW_a_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\a_reg[0]_i_3_n_4 ,\a_reg[0]_i_3_n_5 ,\a_reg[0]_i_3_n_6 ,\a_reg[0]_i_3_n_7 }),
        .S({a_reg[3:1],\a[0]_i_12_n_0 }));
  CARRY4 \a_reg[0]_i_32 
       (.CI(1'b0),
        .CO({\a_reg[0]_i_32_n_0 ,\NLW_a_reg[0]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\a[0]_i_37_n_0 ,\a[0]_i_38_n_0 }),
        .O(\NLW_a_reg[0]_i_32_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_39_n_0 ,\a[0]_i_40_n_0 ,\a[0]_i_41_n_0 ,\a[0]_i_42_n_0 }));
  CARRY4 \a_reg[0]_i_4 
       (.CI(\a_reg[0]_i_13_n_0 ),
        .CO({a1,\NLW_a_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({a_reg[31],1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_14_n_0 ,\a[0]_i_15_n_0 ,\a[0]_i_16_n_0 ,\a[0]_i_17_n_0 }));
  CARRY4 \a_reg[0]_i_5 
       (.CI(\a_reg[0]_i_18_n_0 ),
        .CO({\a_reg[0]_i_5_n_0 ,\NLW_a_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_a_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\a[0]_i_19_n_0 ,\a[0]_i_20_n_0 ,\a[0]_i_21_n_0 ,\a[0]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[10] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[8]_i_1_n_5 ),
        .Q(a_reg[10]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[11] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[8]_i_1_n_4 ),
        .Q(a_reg[11]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[12] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[12]_i_1_n_7 ),
        .Q(a_reg[12]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[12]_i_1 
       (.CI(\a_reg[8]_i_1_n_0 ),
        .CO({\a_reg[12]_i_1_n_0 ,\NLW_a_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[12]_i_1_n_4 ,\a_reg[12]_i_1_n_5 ,\a_reg[12]_i_1_n_6 ,\a_reg[12]_i_1_n_7 }),
        .S(a_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[13] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[12]_i_1_n_6 ),
        .Q(a_reg[13]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[14] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[12]_i_1_n_5 ),
        .Q(a_reg[14]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[15] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[12]_i_1_n_4 ),
        .Q(a_reg[15]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[16] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[16]_i_1_n_7 ),
        .Q(a_reg[16]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[16]_i_1 
       (.CI(\a_reg[12]_i_1_n_0 ),
        .CO({\a_reg[16]_i_1_n_0 ,\NLW_a_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[16]_i_1_n_4 ,\a_reg[16]_i_1_n_5 ,\a_reg[16]_i_1_n_6 ,\a_reg[16]_i_1_n_7 }),
        .S(a_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[17] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[16]_i_1_n_6 ),
        .Q(a_reg[17]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[18] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[16]_i_1_n_5 ),
        .Q(a_reg[18]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[19] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[16]_i_1_n_4 ),
        .Q(a_reg[19]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[0]_i_3_n_6 ),
        .Q(a_reg[1]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[20] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[20]_i_1_n_7 ),
        .Q(a_reg[20]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[20]_i_1 
       (.CI(\a_reg[16]_i_1_n_0 ),
        .CO({\a_reg[20]_i_1_n_0 ,\NLW_a_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[20]_i_1_n_4 ,\a_reg[20]_i_1_n_5 ,\a_reg[20]_i_1_n_6 ,\a_reg[20]_i_1_n_7 }),
        .S(a_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[21] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[20]_i_1_n_6 ),
        .Q(a_reg[21]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[22] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[20]_i_1_n_5 ),
        .Q(a_reg[22]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[23] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[20]_i_1_n_4 ),
        .Q(a_reg[23]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[24] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[24]_i_1_n_7 ),
        .Q(a_reg[24]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[24]_i_1 
       (.CI(\a_reg[20]_i_1_n_0 ),
        .CO({\a_reg[24]_i_1_n_0 ,\NLW_a_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[24]_i_1_n_4 ,\a_reg[24]_i_1_n_5 ,\a_reg[24]_i_1_n_6 ,\a_reg[24]_i_1_n_7 }),
        .S(a_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[25] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[24]_i_1_n_6 ),
        .Q(a_reg[25]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[26] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[24]_i_1_n_5 ),
        .Q(a_reg[26]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[27] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[24]_i_1_n_4 ),
        .Q(a_reg[27]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[28] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[28]_i_1_n_7 ),
        .Q(a_reg[28]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[28]_i_1 
       (.CI(\a_reg[24]_i_1_n_0 ),
        .CO(\NLW_a_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[28]_i_1_n_4 ,\a_reg[28]_i_1_n_5 ,\a_reg[28]_i_1_n_6 ,\a_reg[28]_i_1_n_7 }),
        .S(a_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[29] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[28]_i_1_n_6 ),
        .Q(a_reg[29]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[0]_i_3_n_5 ),
        .Q(a_reg[2]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[30] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[28]_i_1_n_5 ),
        .Q(a_reg[30]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[31] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[28]_i_1_n_4 ),
        .Q(a_reg[31]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[0]_i_3_n_4 ),
        .Q(a_reg[3]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[4]_i_1_n_7 ),
        .Q(a_reg[4]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[4]_i_1 
       (.CI(\a_reg[0]_i_3_n_0 ),
        .CO({\a_reg[4]_i_1_n_0 ,\NLW_a_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[4]_i_1_n_4 ,\a_reg[4]_i_1_n_5 ,\a_reg[4]_i_1_n_6 ,\a_reg[4]_i_1_n_7 }),
        .S(a_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[4]_i_1_n_6 ),
        .Q(a_reg[5]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[4]_i_1_n_5 ),
        .Q(a_reg[6]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[4]_i_1_n_4 ),
        .Q(a_reg[7]),
        .R(\a[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[8] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[8]_i_1_n_7 ),
        .Q(a_reg[8]),
        .R(\a[0]_i_1_n_0 ));
  CARRY4 \a_reg[8]_i_1 
       (.CI(\a_reg[4]_i_1_n_0 ),
        .CO({\a_reg[8]_i_1_n_0 ,\NLW_a_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\a_reg[8]_i_1_n_4 ,\a_reg[8]_i_1_n_5 ,\a_reg[8]_i_1_n_6 ,\a_reg[8]_i_1_n_7 }),
        .S(a_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[9] 
       (.C(f_BUFG),
        .CE(\a_reg[0]_i_2_n_1 ),
        .D(\a_reg[8]_i_1_n_6 ),
        .Q(a_reg[9]),
        .R(\a[0]_i_1_n_0 ));
  OBUF \cathode_OBUF[0]_inst 
       (.I(cathode_OBUF[0]),
        .O(cathode[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \cathode_OBUF[0]_inst_i_1 
       (.I0(\cathode_OBUF[1]_inst_i_2_n_1 ),
        .I1(\cathode_OBUF[2]_inst_i_2_n_1 ),
        .I2(\cathode_OBUF[3]_inst_i_2_n_1 ),
        .I3(\cathode_OBUF[1]_inst_i_3_n_0 ),
        .O(cathode_OBUF[0]));
  OBUF \cathode_OBUF[1]_inst 
       (.I(cathode_OBUF[1]),
        .O(cathode[1]));
  LUT4 #(
    .INIT(16'h0200)) 
    \cathode_OBUF[1]_inst_i_1 
       (.I0(\cathode_OBUF[1]_inst_i_2_n_1 ),
        .I1(\cathode_OBUF[2]_inst_i_2_n_1 ),
        .I2(\cathode_OBUF[3]_inst_i_2_n_1 ),
        .I3(\cathode_OBUF[1]_inst_i_3_n_0 ),
        .O(cathode_OBUF[1]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_10 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[1]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_11 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[1]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_12 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[1]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_13 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[1]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_14 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[1]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_15 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[1]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cathode_OBUF[1]_inst_i_16 
       (.I0(a_reg[2]),
        .I1(a_reg[1]),
        .I2(a_reg[0]),
        .O(\cathode_OBUF[1]_inst_i_16_n_0 ));
  CARRY4 \cathode_OBUF[1]_inst_i_2 
       (.CI(\cathode_OBUF[1]_inst_i_4_n_0 ),
        .CO({\NLW_cathode_OBUF[1]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[1]_inst_i_2_n_1 ,\NLW_cathode_OBUF[1]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[1]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[1]_inst_i_5_n_0 ,\cathode_OBUF[1]_inst_i_6_n_0 ,\cathode_OBUF[1]_inst_i_7_n_0 }));
  LUT4 #(
    .INIT(16'h0001)) 
    \cathode_OBUF[1]_inst_i_3 
       (.I0(\cathode_OBUF[5]_inst_i_2_n_1 ),
        .I1(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I2(cathode_OBUF[7]),
        .I3(\cathode_OBUF[4]_inst_i_2_n_1 ),
        .O(\cathode_OBUF[1]_inst_i_3_n_0 ));
  CARRY4 \cathode_OBUF[1]_inst_i_4 
       (.CI(\cathode_OBUF[1]_inst_i_8_n_0 ),
        .CO({\cathode_OBUF[1]_inst_i_4_n_0 ,\NLW_cathode_OBUF[1]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[1]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[1]_inst_i_9_n_0 ,\cathode_OBUF[1]_inst_i_10_n_0 ,\cathode_OBUF[1]_inst_i_11_n_0 ,\cathode_OBUF[1]_inst_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[1]_inst_i_5 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[1]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_6 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[1]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_7 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[1]_inst_i_7_n_0 ));
  CARRY4 \cathode_OBUF[1]_inst_i_8 
       (.CI(1'b0),
        .CO({\cathode_OBUF[1]_inst_i_8_n_0 ,\NLW_cathode_OBUF[1]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[1]_inst_i_8_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[1]_inst_i_13_n_0 ,\cathode_OBUF[1]_inst_i_14_n_0 ,\cathode_OBUF[1]_inst_i_15_n_0 ,\cathode_OBUF[1]_inst_i_16_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[1]_inst_i_9 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[1]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[2]_inst 
       (.I(cathode_OBUF[2]),
        .O(cathode[2]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cathode_OBUF[2]_inst_i_1 
       (.I0(\cathode_OBUF[3]_inst_i_2_n_1 ),
        .I1(\cathode_OBUF[2]_inst_i_2_n_1 ),
        .I2(\cathode_OBUF[4]_inst_i_2_n_1 ),
        .I3(cathode_OBUF[7]),
        .I4(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I5(\cathode_OBUF[5]_inst_i_2_n_1 ),
        .O(cathode_OBUF[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_10 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[2]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_11 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[2]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_12 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[2]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_13 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[2]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_14 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[2]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cathode_OBUF[2]_inst_i_15 
       (.I0(a_reg[2]),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .O(\cathode_OBUF[2]_inst_i_15_n_0 ));
  CARRY4 \cathode_OBUF[2]_inst_i_2 
       (.CI(\cathode_OBUF[2]_inst_i_3_n_0 ),
        .CO({\NLW_cathode_OBUF[2]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[2]_inst_i_2_n_1 ,\NLW_cathode_OBUF[2]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[2]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[2]_inst_i_4_n_0 ,\cathode_OBUF[2]_inst_i_5_n_0 ,\cathode_OBUF[2]_inst_i_6_n_0 }));
  CARRY4 \cathode_OBUF[2]_inst_i_3 
       (.CI(\cathode_OBUF[2]_inst_i_7_n_0 ),
        .CO({\cathode_OBUF[2]_inst_i_3_n_0 ,\NLW_cathode_OBUF[2]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[2]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[2]_inst_i_8_n_0 ,\cathode_OBUF[2]_inst_i_9_n_0 ,\cathode_OBUF[2]_inst_i_10_n_0 ,\cathode_OBUF[2]_inst_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[2]_inst_i_4 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[2]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_5 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[2]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_6 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[2]_inst_i_6_n_0 ));
  CARRY4 \cathode_OBUF[2]_inst_i_7 
       (.CI(1'b0),
        .CO({\cathode_OBUF[2]_inst_i_7_n_0 ,\NLW_cathode_OBUF[2]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[2]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[2]_inst_i_12_n_0 ,\cathode_OBUF[2]_inst_i_13_n_0 ,\cathode_OBUF[2]_inst_i_14_n_0 ,\cathode_OBUF[2]_inst_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_8 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[2]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[2]_inst_i_9 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[2]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[3]_inst 
       (.I(cathode_OBUF[3]),
        .O(cathode[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \cathode_OBUF[3]_inst_i_1 
       (.I0(\cathode_OBUF[4]_inst_i_2_n_1 ),
        .I1(cathode_OBUF[7]),
        .I2(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I3(\cathode_OBUF[5]_inst_i_2_n_1 ),
        .I4(\cathode_OBUF[3]_inst_i_2_n_1 ),
        .O(cathode_OBUF[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_10 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[3]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_11 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[3]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_12 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[3]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_13 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[3]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_14 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[3]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \cathode_OBUF[3]_inst_i_15 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .I2(a_reg[2]),
        .O(\cathode_OBUF[3]_inst_i_15_n_0 ));
  CARRY4 \cathode_OBUF[3]_inst_i_2 
       (.CI(\cathode_OBUF[3]_inst_i_3_n_0 ),
        .CO({\NLW_cathode_OBUF[3]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[3]_inst_i_2_n_1 ,\NLW_cathode_OBUF[3]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[3]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[3]_inst_i_4_n_0 ,\cathode_OBUF[3]_inst_i_5_n_0 ,\cathode_OBUF[3]_inst_i_6_n_0 }));
  CARRY4 \cathode_OBUF[3]_inst_i_3 
       (.CI(\cathode_OBUF[3]_inst_i_7_n_0 ),
        .CO({\cathode_OBUF[3]_inst_i_3_n_0 ,\NLW_cathode_OBUF[3]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[3]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[3]_inst_i_8_n_0 ,\cathode_OBUF[3]_inst_i_9_n_0 ,\cathode_OBUF[3]_inst_i_10_n_0 ,\cathode_OBUF[3]_inst_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[3]_inst_i_4 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[3]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_5 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[3]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_6 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[3]_inst_i_6_n_0 ));
  CARRY4 \cathode_OBUF[3]_inst_i_7 
       (.CI(1'b0),
        .CO({\cathode_OBUF[3]_inst_i_7_n_0 ,\NLW_cathode_OBUF[3]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[3]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[3]_inst_i_12_n_0 ,\cathode_OBUF[3]_inst_i_13_n_0 ,\cathode_OBUF[3]_inst_i_14_n_0 ,\cathode_OBUF[3]_inst_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_8 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[3]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[3]_inst_i_9 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[3]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[4]_inst 
       (.I(cathode_OBUF[4]),
        .O(cathode[4]));
  LUT4 #(
    .INIT(16'h0100)) 
    \cathode_OBUF[4]_inst_i_1 
       (.I0(\cathode_OBUF[5]_inst_i_2_n_1 ),
        .I1(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I2(cathode_OBUF[7]),
        .I3(\cathode_OBUF[4]_inst_i_2_n_1 ),
        .O(cathode_OBUF[4]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_10 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[4]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_11 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[4]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_12 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[4]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_13 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[4]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_14 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[4]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cathode_OBUF[4]_inst_i_15 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .I2(a_reg[2]),
        .O(\cathode_OBUF[4]_inst_i_15_n_0 ));
  CARRY4 \cathode_OBUF[4]_inst_i_2 
       (.CI(\cathode_OBUF[4]_inst_i_3_n_0 ),
        .CO({\NLW_cathode_OBUF[4]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[4]_inst_i_2_n_1 ,\NLW_cathode_OBUF[4]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[4]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[4]_inst_i_4_n_0 ,\cathode_OBUF[4]_inst_i_5_n_0 ,\cathode_OBUF[4]_inst_i_6_n_0 }));
  CARRY4 \cathode_OBUF[4]_inst_i_3 
       (.CI(\cathode_OBUF[4]_inst_i_7_n_0 ),
        .CO({\cathode_OBUF[4]_inst_i_3_n_0 ,\NLW_cathode_OBUF[4]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[4]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[4]_inst_i_8_n_0 ,\cathode_OBUF[4]_inst_i_9_n_0 ,\cathode_OBUF[4]_inst_i_10_n_0 ,\cathode_OBUF[4]_inst_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[4]_inst_i_4 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[4]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_5 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[4]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_6 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[4]_inst_i_6_n_0 ));
  CARRY4 \cathode_OBUF[4]_inst_i_7 
       (.CI(1'b0),
        .CO({\cathode_OBUF[4]_inst_i_7_n_0 ,\NLW_cathode_OBUF[4]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[4]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[4]_inst_i_12_n_0 ,\cathode_OBUF[4]_inst_i_13_n_0 ,\cathode_OBUF[4]_inst_i_14_n_0 ,\cathode_OBUF[4]_inst_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_8 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[4]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[4]_inst_i_9 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[4]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[5]_inst 
       (.I(cathode_OBUF[5]),
        .O(cathode[5]));
  LUT3 #(
    .INIT(8'h10)) 
    \cathode_OBUF[5]_inst_i_1 
       (.I0(cathode_OBUF[7]),
        .I1(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I2(\cathode_OBUF[5]_inst_i_2_n_1 ),
        .O(cathode_OBUF[5]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_10 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[5]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_11 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[5]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_12 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[5]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_13 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[5]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_14 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[5]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cathode_OBUF[5]_inst_i_15 
       (.I0(a_reg[2]),
        .I1(a_reg[1]),
        .I2(a_reg[0]),
        .O(\cathode_OBUF[5]_inst_i_15_n_0 ));
  CARRY4 \cathode_OBUF[5]_inst_i_2 
       (.CI(\cathode_OBUF[5]_inst_i_3_n_0 ),
        .CO({\NLW_cathode_OBUF[5]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[5]_inst_i_2_n_1 ,\NLW_cathode_OBUF[5]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[5]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[5]_inst_i_4_n_0 ,\cathode_OBUF[5]_inst_i_5_n_0 ,\cathode_OBUF[5]_inst_i_6_n_0 }));
  CARRY4 \cathode_OBUF[5]_inst_i_3 
       (.CI(\cathode_OBUF[5]_inst_i_7_n_0 ),
        .CO({\cathode_OBUF[5]_inst_i_3_n_0 ,\NLW_cathode_OBUF[5]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[5]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[5]_inst_i_8_n_0 ,\cathode_OBUF[5]_inst_i_9_n_0 ,\cathode_OBUF[5]_inst_i_10_n_0 ,\cathode_OBUF[5]_inst_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[5]_inst_i_4 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[5]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_5 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[5]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_6 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[5]_inst_i_6_n_0 ));
  CARRY4 \cathode_OBUF[5]_inst_i_7 
       (.CI(1'b0),
        .CO({\cathode_OBUF[5]_inst_i_7_n_0 ,\NLW_cathode_OBUF[5]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[5]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[5]_inst_i_12_n_0 ,\cathode_OBUF[5]_inst_i_13_n_0 ,\cathode_OBUF[5]_inst_i_14_n_0 ,\cathode_OBUF[5]_inst_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_8 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[5]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[5]_inst_i_9 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[5]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[6]_inst 
       (.I(cathode_OBUF[6]),
        .O(cathode[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \cathode_OBUF[6]_inst_i_1 
       (.I0(\cathode_OBUF[6]_inst_i_2_n_1 ),
        .I1(cathode_OBUF[7]),
        .O(cathode_OBUF[6]));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_10 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[6]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_11 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[6]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_12 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[6]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_13 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[6]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_14 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[6]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \cathode_OBUF[6]_inst_i_15 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .O(\cathode_OBUF[6]_inst_i_15_n_0 ));
  CARRY4 \cathode_OBUF[6]_inst_i_2 
       (.CI(\cathode_OBUF[6]_inst_i_3_n_0 ),
        .CO({\NLW_cathode_OBUF[6]_inst_i_2_CO_UNCONNECTED [3],\cathode_OBUF[6]_inst_i_2_n_1 ,\NLW_cathode_OBUF[6]_inst_i_2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[6]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[6]_inst_i_4_n_0 ,\cathode_OBUF[6]_inst_i_5_n_0 ,\cathode_OBUF[6]_inst_i_6_n_0 }));
  CARRY4 \cathode_OBUF[6]_inst_i_3 
       (.CI(\cathode_OBUF[6]_inst_i_7_n_0 ),
        .CO({\cathode_OBUF[6]_inst_i_3_n_0 ,\NLW_cathode_OBUF[6]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[6]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[6]_inst_i_8_n_0 ,\cathode_OBUF[6]_inst_i_9_n_0 ,\cathode_OBUF[6]_inst_i_10_n_0 ,\cathode_OBUF[6]_inst_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[6]_inst_i_4 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[6]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_5 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[6]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_6 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[6]_inst_i_6_n_0 ));
  CARRY4 \cathode_OBUF[6]_inst_i_7 
       (.CI(1'b0),
        .CO({\cathode_OBUF[6]_inst_i_7_n_0 ,\NLW_cathode_OBUF[6]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[6]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[6]_inst_i_12_n_0 ,\cathode_OBUF[6]_inst_i_13_n_0 ,\cathode_OBUF[6]_inst_i_14_n_0 ,\cathode_OBUF[6]_inst_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_8 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[6]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[6]_inst_i_9 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[6]_inst_i_9_n_0 ));
  OBUF \cathode_OBUF[7]_inst 
       (.I(cathode_OBUF[7]),
        .O(cathode[7]));
  CARRY4 \cathode_OBUF[7]_inst_i_1 
       (.CI(\cathode_OBUF[7]_inst_i_2_n_0 ),
        .CO({\NLW_cathode_OBUF[7]_inst_i_1_CO_UNCONNECTED [3],cathode_OBUF[7],\NLW_cathode_OBUF[7]_inst_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[7]_inst_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\cathode_OBUF[7]_inst_i_3_n_0 ,\cathode_OBUF[7]_inst_i_4_n_0 ,\cathode_OBUF[7]_inst_i_5_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_10 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\cathode_OBUF[7]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_11 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\cathode_OBUF[7]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_12 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\cathode_OBUF[7]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_13 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\cathode_OBUF[7]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_14 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .I2(a_reg[2]),
        .O(\cathode_OBUF[7]_inst_i_14_n_0 ));
  CARRY4 \cathode_OBUF[7]_inst_i_2 
       (.CI(\cathode_OBUF[7]_inst_i_6_n_0 ),
        .CO({\cathode_OBUF[7]_inst_i_2_n_0 ,\NLW_cathode_OBUF[7]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[7]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[7]_inst_i_7_n_0 ,\cathode_OBUF[7]_inst_i_8_n_0 ,\cathode_OBUF[7]_inst_i_9_n_0 ,\cathode_OBUF[7]_inst_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \cathode_OBUF[7]_inst_i_3 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\cathode_OBUF[7]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_4 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\cathode_OBUF[7]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_5 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\cathode_OBUF[7]_inst_i_5_n_0 ));
  CARRY4 \cathode_OBUF[7]_inst_i_6 
       (.CI(1'b0),
        .CO({\cathode_OBUF[7]_inst_i_6_n_0 ,\NLW_cathode_OBUF[7]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cathode_OBUF[7]_inst_i_6_O_UNCONNECTED [3:0]),
        .S({\cathode_OBUF[7]_inst_i_11_n_0 ,\cathode_OBUF[7]_inst_i_12_n_0 ,\cathode_OBUF[7]_inst_i_13_n_0 ,\cathode_OBUF[7]_inst_i_14_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_7 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\cathode_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_8 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\cathode_OBUF[7]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cathode_OBUF[7]_inst_i_9 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\cathode_OBUF[7]_inst_i_9_n_0 ));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counterDebounce[0]_i_5 
       (.I0(counterDebounce_reg[0]),
        .O(\counterDebounce[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[0]_i_1_n_7 ),
        .Q(counterDebounce_reg[0]));
  CARRY4 \counterDebounce_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counterDebounce_reg[0]_i_1_n_0 ,\NLW_counterDebounce_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counterDebounce_reg[0]_i_1_n_4 ,\counterDebounce_reg[0]_i_1_n_5 ,\counterDebounce_reg[0]_i_1_n_6 ,\counterDebounce_reg[0]_i_1_n_7 }),
        .S({counterDebounce_reg[3:1],\counterDebounce[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[8]_i_1_n_5 ),
        .Q(counterDebounce_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[8]_i_1_n_4 ),
        .Q(counterDebounce_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[12]_i_1_n_7 ),
        .Q(counterDebounce_reg[12]));
  CARRY4 \counterDebounce_reg[12]_i_1 
       (.CI(\counterDebounce_reg[8]_i_1_n_0 ),
        .CO({\counterDebounce_reg[12]_i_1_n_0 ,\NLW_counterDebounce_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterDebounce_reg[12]_i_1_n_4 ,\counterDebounce_reg[12]_i_1_n_5 ,\counterDebounce_reg[12]_i_1_n_6 ,\counterDebounce_reg[12]_i_1_n_7 }),
        .S(counterDebounce_reg[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[12]_i_1_n_6 ),
        .Q(counterDebounce_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[12]_i_1_n_5 ),
        .Q(counterDebounce_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[12]_i_1_n_4 ),
        .Q(counterDebounce_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[16]_i_1_n_7 ),
        .Q(counterDebounce_reg[16]));
  CARRY4 \counterDebounce_reg[16]_i_1 
       (.CI(\counterDebounce_reg[12]_i_1_n_0 ),
        .CO(\NLW_counterDebounce_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterDebounce_reg[16]_i_1_n_4 ,\counterDebounce_reg[16]_i_1_n_5 ,\counterDebounce_reg[16]_i_1_n_6 ,\counterDebounce_reg[16]_i_1_n_7 }),
        .S(counterDebounce_reg[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[16]_i_1_n_6 ),
        .Q(counterDebounce_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[16]_i_1_n_5 ),
        .Q(counterDebounce_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[16]_i_1_n_4 ),
        .Q(counterDebounce_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[0]_i_1_n_6 ),
        .Q(counterDebounce_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[0]_i_1_n_5 ),
        .Q(counterDebounce_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[0]_i_1_n_4 ),
        .Q(counterDebounce_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[4]_i_1_n_7 ),
        .Q(counterDebounce_reg[4]));
  CARRY4 \counterDebounce_reg[4]_i_1 
       (.CI(\counterDebounce_reg[0]_i_1_n_0 ),
        .CO({\counterDebounce_reg[4]_i_1_n_0 ,\NLW_counterDebounce_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterDebounce_reg[4]_i_1_n_4 ,\counterDebounce_reg[4]_i_1_n_5 ,\counterDebounce_reg[4]_i_1_n_6 ,\counterDebounce_reg[4]_i_1_n_7 }),
        .S(counterDebounce_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[4]_i_1_n_6 ),
        .Q(counterDebounce_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[4]_i_1_n_5 ),
        .Q(counterDebounce_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[4]_i_1_n_4 ),
        .Q(counterDebounce_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[8]_i_1_n_7 ),
        .Q(counterDebounce_reg[8]));
  CARRY4 \counterDebounce_reg[8]_i_1 
       (.CI(\counterDebounce_reg[4]_i_1_n_0 ),
        .CO({\counterDebounce_reg[8]_i_1_n_0 ,\NLW_counterDebounce_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counterDebounce_reg[8]_i_1_n_4 ,\counterDebounce_reg[8]_i_1_n_5 ,\counterDebounce_reg[8]_i_1_n_6 ,\counterDebounce_reg[8]_i_1_n_7 }),
        .S(counterDebounce_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \counterDebounce_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counterDebounce_reg[8]_i_1_n_6 ),
        .Q(counterDebounce_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[7] ),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \counter[8]_i_1 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(f),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[8]_i_2 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\counter[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[8]),
        .Q(f),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \d[0]_i_1 
       (.I0(d[0]),
        .O(\d[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \d[31]_i_1 
       (.I0(d1),
        .I1(\red_reg[7]_i_7_n_1 ),
        .I2(\a_reg[0]_i_2_n_1 ),
        .O(\d[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_10 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\d[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_11 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\d[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_12 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\d[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_14 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\d[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_15 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\d[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_16 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\d[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_17 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\d[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_19 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\d[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[31]_i_2 
       (.I0(\red_reg[7]_i_7_n_1 ),
        .I1(\a_reg[0]_i_2_n_1 ),
        .O(\d[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_20 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\d[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_21 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\d[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_22 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\d[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \d[31]_i_23 
       (.I0(d[6]),
        .I1(d[7]),
        .O(\d[31]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \d[31]_i_24 
       (.I0(d[3]),
        .O(\d[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d[31]_i_25 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\d[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_26 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\d[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \d[31]_i_27 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\d[31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_28 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\d[31]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d[31]_i_9 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\d[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(\d[0]_i_1_n_0 ),
        .Q(d[0]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[10] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[10]),
        .Q(d[10]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[11] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[11]),
        .Q(d[11]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[12] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[12]),
        .Q(d[12]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[12]_i_1 
       (.CI(\d_reg[8]_i_1_n_0 ),
        .CO({\d_reg[12]_i_1_n_0 ,\NLW_d_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[12:9]),
        .S(d[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[13] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[13]),
        .Q(d[13]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[14] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[14]),
        .Q(d[14]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[15] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[15]),
        .Q(d[15]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[16] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[16]),
        .Q(d[16]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[16]_i_1 
       (.CI(\d_reg[12]_i_1_n_0 ),
        .CO({\d_reg[16]_i_1_n_0 ,\NLW_d_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[16:13]),
        .S(d[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[17] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[17]),
        .Q(d[17]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[18] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[18]),
        .Q(d[18]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[19] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[19]),
        .Q(d[19]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[1]),
        .Q(d[1]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[20] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[20]),
        .Q(d[20]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[20]_i_1 
       (.CI(\d_reg[16]_i_1_n_0 ),
        .CO({\d_reg[20]_i_1_n_0 ,\NLW_d_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[20:17]),
        .S(d[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[21] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[21]),
        .Q(d[21]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[22] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[22]),
        .Q(d[22]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[23] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[23]),
        .Q(d[23]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[24] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[24]),
        .Q(d[24]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[24]_i_1 
       (.CI(\d_reg[20]_i_1_n_0 ),
        .CO({\d_reg[24]_i_1_n_0 ,\NLW_d_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[24:21]),
        .S(d[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[25] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[25]),
        .Q(d[25]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[26] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[26]),
        .Q(d[26]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[27] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[27]),
        .Q(d[27]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[28] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[28]),
        .Q(d[28]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[28]_i_1 
       (.CI(\d_reg[24]_i_1_n_0 ),
        .CO({\d_reg[28]_i_1_n_0 ,\NLW_d_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[28:25]),
        .S(d[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[29] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[29]),
        .Q(d[29]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[2]),
        .Q(d[2]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[30] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[30]),
        .Q(d[30]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[31] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[31]),
        .Q(d[31]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[31]_i_13 
       (.CI(\d_reg[31]_i_18_n_0 ),
        .CO({\d_reg[31]_i_13_n_0 ,\NLW_d_reg[31]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_d_reg[31]_i_13_O_UNCONNECTED [3:0]),
        .S({\d[31]_i_19_n_0 ,\d[31]_i_20_n_0 ,\d[31]_i_21_n_0 ,\d[31]_i_22_n_0 }));
  CARRY4 \d_reg[31]_i_18 
       (.CI(1'b0),
        .CO({\d_reg[31]_i_18_n_0 ,\NLW_d_reg[31]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\d[31]_i_23_n_0 ,1'b0,\d[31]_i_24_n_0 ,1'b0}),
        .O(\NLW_d_reg[31]_i_18_O_UNCONNECTED [3:0]),
        .S({\d[31]_i_25_n_0 ,\d[31]_i_26_n_0 ,\d[31]_i_27_n_0 ,\d[31]_i_28_n_0 }));
  CARRY4 \d_reg[31]_i_3 
       (.CI(\d_reg[28]_i_1_n_0 ),
        .CO(\NLW_d_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_d_reg[31]_i_3_O_UNCONNECTED [3],d0[31:29]}),
        .S({1'b0,d[31:29]}));
  CARRY4 \d_reg[31]_i_4 
       (.CI(\d_reg[31]_i_8_n_0 ),
        .CO({d1,\NLW_d_reg[31]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_d_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\d[31]_i_9_n_0 ,\d[31]_i_10_n_0 ,\d[31]_i_11_n_0 ,\d[31]_i_12_n_0 }));
  CARRY4 \d_reg[31]_i_8 
       (.CI(\d_reg[31]_i_13_n_0 ),
        .CO({\d_reg[31]_i_8_n_0 ,\NLW_d_reg[31]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_d_reg[31]_i_8_O_UNCONNECTED [3:0]),
        .S({\d[31]_i_14_n_0 ,\d[31]_i_15_n_0 ,\d[31]_i_16_n_0 ,\d[31]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[3]),
        .Q(d[3]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[4]),
        .Q(d[4]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\d_reg[4]_i_1_n_0 ,\NLW_d_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(d[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[4:1]),
        .S(d[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[5]),
        .Q(d[5]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[6]),
        .Q(d[6]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[7]),
        .Q(d[7]),
        .R(\d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[8] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[8]),
        .Q(d[8]),
        .R(\d[31]_i_1_n_0 ));
  CARRY4 \d_reg[8]_i_1 
       (.CI(\d_reg[4]_i_1_n_0 ),
        .CO({\d_reg[8]_i_1_n_0 ,\NLW_d_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[8:5]),
        .S(d[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[9] 
       (.C(f_BUFG),
        .CE(\d[31]_i_2_n_0 ),
        .D(d0[9]),
        .Q(d[9]),
        .R(\d[31]_i_1_n_0 ));
  BUFG f_BUFG_inst
       (.I(f),
        .O(f_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i1),
        .O(clear));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_10 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\i[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_11 
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(\i[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_12 
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(\i[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_13 
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(\i[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_15 
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(\i[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_16 
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(\i[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_17 
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(\i[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_18 
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(\i[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_20 
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(\i[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_21 
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(\i[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_22 
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(\i[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_23 
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(\i[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_24 
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(\i[0]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_25 
       (.I0(i_reg[7]),
        .O(\i[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_26 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\i[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_27 
       (.I0(i_reg[3]),
        .O(\i[0]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_28 
       (.I0(i_reg[1]),
        .O(\i[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_29 
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(\i[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_30 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\i[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_31 
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(\i[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_32 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(\i[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_8 
       (.I0(i_reg[0]),
        .O(\i[0]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[0] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .S(clear));
  CARRY4 \i_reg[0]_i_14 
       (.CI(\i_reg[0]_i_19_n_0 ),
        .CO({\i_reg[0]_i_14_n_0 ,\NLW_i_reg[0]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\i[0]_i_20_n_0 }),
        .O(\NLW_i_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\i[0]_i_21_n_0 ,\i[0]_i_22_n_0 ,\i[0]_i_23_n_0 ,\i[0]_i_24_n_0 }));
  CARRY4 \i_reg[0]_i_19 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_19_n_0 ,\NLW_i_reg[0]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\i[0]_i_25_n_0 ,\i[0]_i_26_n_0 ,\i[0]_i_27_n_0 ,\i[0]_i_28_n_0 }),
        .O(\NLW_i_reg[0]_i_19_O_UNCONNECTED [3:0]),
        .S({\i[0]_i_29_n_0 ,\i[0]_i_30_n_0 ,\i[0]_i_31_n_0 ,\i[0]_i_32_n_0 }));
  CARRY4 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2_n_0 ,\NLW_i_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({i_reg[3:1],\i[0]_i_8_n_0 }));
  CARRY4 \i_reg[0]_i_4 
       (.CI(\i_reg[0]_i_9_n_0 ),
        .CO({i1,\NLW_i_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i_reg[31],1'b0,1'b0,1'b0}),
        .O(\NLW_i_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\i[0]_i_10_n_0 ,\i[0]_i_11_n_0 ,\i[0]_i_12_n_0 ,\i[0]_i_13_n_0 }));
  CARRY4 \i_reg[0]_i_9 
       (.CI(\i_reg[0]_i_14_n_0 ),
        .CO({\i_reg[0]_i_9_n_0 ,\NLW_i_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\i[0]_i_15_n_0 ,\i[0]_i_16_n_0 ,\i[0]_i_17_n_0 ,\i[0]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[10] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[11] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[12] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(clear));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\NLW_i_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[13] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[14] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[15] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[16] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(clear));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\NLW_i_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg[19:16]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[17] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[18] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[19] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[1] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[20] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(clear));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\NLW_i_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg[23:20]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[21] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[22] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[23] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[24] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(clear));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\NLW_i_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S(i_reg[27:24]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[25] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[26] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[27] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[28] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg[28]),
        .R(clear));
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO(\NLW_i_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S(i_reg[31:28]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[29] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[2] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[30] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[31] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[3] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[0]_i_2_n_4 ),
        .Q(i_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[4] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(clear));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\NLW_i_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[5] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[6] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[7] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[8] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(clear));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\NLW_i_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \i_reg[9] 
       (.C(f_BUFG),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00000080)) 
    \leftBtnState[1]_i_1 
       (.I0(\leftBtnState[1]_i_2_n_0 ),
        .I1(\leftBtnState[1]_i_3_n_0 ),
        .I2(\leftBtnState[1]_i_4_n_0 ),
        .I3(counterDebounce_reg[0]),
        .I4(counterDebounce_reg[1]),
        .O(clockDebounce));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \leftBtnState[1]_i_2 
       (.I0(counterDebounce_reg[16]),
        .I1(counterDebounce_reg[17]),
        .I2(counterDebounce_reg[14]),
        .I3(counterDebounce_reg[15]),
        .I4(counterDebounce_reg[19]),
        .I5(counterDebounce_reg[18]),
        .O(\leftBtnState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \leftBtnState[1]_i_3 
       (.I0(counterDebounce_reg[4]),
        .I1(counterDebounce_reg[5]),
        .I2(counterDebounce_reg[2]),
        .I3(counterDebounce_reg[3]),
        .I4(counterDebounce_reg[7]),
        .I5(counterDebounce_reg[6]),
        .O(\leftBtnState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \leftBtnState[1]_i_4 
       (.I0(counterDebounce_reg[10]),
        .I1(counterDebounce_reg[11]),
        .I2(counterDebounce_reg[9]),
        .I3(counterDebounce_reg[8]),
        .I4(counterDebounce_reg[13]),
        .I5(counterDebounce_reg[12]),
        .O(\leftBtnState[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \leftBtnState_reg[0] 
       (.C(clockDebounce),
        .CE(1'b1),
        .D(toLeftButton_IBUF),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftBtnState_reg[1] 
       (.C(clockDebounce),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(leftBtnState),
        .R(1'b0));
  OBUF oe_OBUF_inst
       (.I(oe_OBUF),
        .O(oe));
  LUT2 #(
    .INIT(4'h7)) 
    oe_i_1
       (.I0(oe10_in),
        .I1(oe1),
        .O(oe_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_10
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(oe_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_11
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(oe_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_12
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(oe_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_14
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(oe_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_15
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(oe_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_16
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(oe_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_17
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(oe_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_19
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(oe_i_19_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_20
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(oe_i_20_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_21
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(oe_i_21_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_22
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(oe_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_23
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(oe_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_24
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(oe_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_25
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(oe_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_26
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(oe_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_28
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(oe_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_29
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(oe_i_29_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_30
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(oe_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_31
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(oe_i_31_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_33
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(oe_i_33_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_34
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(oe_i_34_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_35
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(oe_i_35_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_36
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(oe_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_37
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(oe_i_37_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_38
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(oe_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_39
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(oe_i_39_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_40
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(oe_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_42
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(oe_i_42_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_43
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(oe_i_43_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_44
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(oe_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_45
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(oe_i_45_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_46
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(oe_i_46_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_47
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(oe_i_47_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_48
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(oe_i_48_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_49
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(oe_i_49_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_5
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(oe_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_50
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(oe_i_50_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    oe_i_51
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(oe_i_51_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_52
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(oe_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    oe_i_53
       (.I0(i_reg[7]),
        .O(oe_i_53_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_54
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(oe_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    oe_i_55
       (.I0(i_reg[3]),
        .O(oe_i_55_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_56
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(oe_i_56_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_57
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(oe_i_57_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_58
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(oe_i_58_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_59
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(oe_i_59_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_6
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(oe_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oe_i_60
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(oe_i_60_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_7
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(oe_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    oe_i_8
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(oe_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    oe_i_9
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(oe_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    oe_reg
       (.C(f_BUFG),
        .CE(1'b1),
        .D(oe_i_1_n_0),
        .Q(oe_OBUF),
        .R(1'b0));
  CARRY4 oe_reg_i_13
       (.CI(oe_reg_i_27_n_0),
        .CO({oe_reg_i_13_n_0,NLW_oe_reg_i_13_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_oe_reg_i_13_O_UNCONNECTED[3:0]),
        .S({oe_i_28_n_0,oe_i_29_n_0,oe_i_30_n_0,oe_i_31_n_0}));
  CARRY4 oe_reg_i_18
       (.CI(oe_reg_i_32_n_0),
        .CO({oe_reg_i_18_n_0,NLW_oe_reg_i_18_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({oe_i_33_n_0,oe_i_34_n_0,oe_i_35_n_0,oe_i_36_n_0}),
        .O(NLW_oe_reg_i_18_O_UNCONNECTED[3:0]),
        .S({oe_i_37_n_0,oe_i_38_n_0,oe_i_39_n_0,oe_i_40_n_0}));
  CARRY4 oe_reg_i_2
       (.CI(oe_reg_i_4_n_0),
        .CO({oe10_in,NLW_oe_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({oe_i_5_n_0,oe_i_6_n_0,oe_i_7_n_0,oe_i_8_n_0}),
        .O(NLW_oe_reg_i_2_O_UNCONNECTED[3:0]),
        .S({oe_i_9_n_0,oe_i_10_n_0,oe_i_11_n_0,oe_i_12_n_0}));
  CARRY4 oe_reg_i_27
       (.CI(oe_reg_i_41_n_0),
        .CO({oe_reg_i_27_n_0,NLW_oe_reg_i_27_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,oe_i_42_n_0}),
        .O(NLW_oe_reg_i_27_O_UNCONNECTED[3:0]),
        .S({oe_i_43_n_0,oe_i_44_n_0,oe_i_45_n_0,oe_i_46_n_0}));
  CARRY4 oe_reg_i_3
       (.CI(oe_reg_i_13_n_0),
        .CO({oe1,NLW_oe_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({i_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_oe_reg_i_3_O_UNCONNECTED[3:0]),
        .S({oe_i_14_n_0,oe_i_15_n_0,oe_i_16_n_0,oe_i_17_n_0}));
  CARRY4 oe_reg_i_32
       (.CI(1'b0),
        .CO({oe_reg_i_32_n_0,NLW_oe_reg_i_32_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({oe_i_47_n_0,i_reg[5],1'b0,oe_i_48_n_0}),
        .O(NLW_oe_reg_i_32_O_UNCONNECTED[3:0]),
        .S({oe_i_49_n_0,oe_i_50_n_0,oe_i_51_n_0,oe_i_52_n_0}));
  CARRY4 oe_reg_i_4
       (.CI(oe_reg_i_18_n_0),
        .CO({oe_reg_i_4_n_0,NLW_oe_reg_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({oe_i_19_n_0,oe_i_20_n_0,oe_i_21_n_0,oe_i_22_n_0}),
        .O(NLW_oe_reg_i_4_O_UNCONNECTED[3:0]),
        .S({oe_i_23_n_0,oe_i_24_n_0,oe_i_25_n_0,oe_i_26_n_0}));
  CARRY4 oe_reg_i_41
       (.CI(1'b0),
        .CO({oe_reg_i_41_n_0,NLW_oe_reg_i_41_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({oe_i_53_n_0,oe_i_54_n_0,oe_i_55_n_0,oe_i_56_n_0}),
        .O(NLW_oe_reg_i_41_O_UNCONNECTED[3:0]),
        .S({oe_i_57_n_0,oe_i_58_n_0,oe_i_59_n_0,oe_i_60_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \redBlock[0]_i_1 
       (.I0(\redBlock_reg_n_0_[1] ),
        .I1(p_0_in__0),
        .I2(leftBtnState),
        .O(\redBlock[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[1]_i_1 
       (.I0(\redBlock_reg_n_0_[0] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(\redBlock_reg_n_0_[2] ),
        .O(\redBlock[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[2]_i_1 
       (.I0(\redBlock_reg_n_0_[1] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(\redBlock_reg_n_0_[3] ),
        .O(\redBlock[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[3]_i_1 
       (.I0(\redBlock_reg_n_0_[2] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(\redBlock_reg_n_0_[4] ),
        .O(\redBlock[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[4]_i_1 
       (.I0(\redBlock_reg_n_0_[3] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(\redBlock_reg_n_0_[5] ),
        .O(\redBlock[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[5]_i_1 
       (.I0(\redBlock_reg_n_0_[4] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(\redBlock_reg_n_0_[6] ),
        .O(\redBlock[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \redBlock[6]_i_1 
       (.I0(\redBlock_reg_n_0_[5] ),
        .I1(leftBtnState),
        .I2(p_0_in__0),
        .I3(p_0_in),
        .O(\redBlock[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040400FF04040404)) 
    \redBlock[7]_i_1 
       (.I0(rightBtnState[1]),
        .I1(rightBtnState[0]),
        .I2(p_0_in),
        .I3(\redBlock_reg_n_0_[0] ),
        .I4(leftBtnState),
        .I5(p_0_in__0),
        .O(\redBlock[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \redBlock[7]_i_2 
       (.I0(p_0_in__0),
        .I1(leftBtnState),
        .I2(\redBlock_reg_n_0_[6] ),
        .O(\redBlock[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[0] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[0]_i_1_n_0 ),
        .Q(\redBlock_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[1] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[1]_i_1_n_0 ),
        .Q(\redBlock_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[2] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[2]_i_1_n_0 ),
        .Q(\redBlock_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \redBlock_reg[3] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .D(\redBlock[3]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\redBlock_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \redBlock_reg[4] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .D(\redBlock[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\redBlock_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[5] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[5]_i_1_n_0 ),
        .Q(\redBlock_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[6] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[6]_i_1_n_0 ),
        .Q(\redBlock_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \redBlock_reg[7] 
       (.C(clockDebounce),
        .CE(\redBlock[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\redBlock[7]_i_2_n_0 ),
        .Q(p_0_in));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[0] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[0]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[0]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[0] ),
        .O(\red_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[1] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[1]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[1]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[1] ),
        .O(\red_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[2] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[2]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[2]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[2] ),
        .O(\red_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[3] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[3]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[3]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[3] ),
        .O(\red_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[4] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[4]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[4]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[4] ),
        .O(\red_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[5] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[5]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[5]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[5] ),
        .O(\red_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[6] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[6]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[6]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(\redBlock_reg_n_0_[6] ),
        .O(\red_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \red_reg[7] 
       (.CLR(\red_reg[7]_i_3_n_0 ),
        .D(\red_reg[7]_i_1_n_0 ),
        .G(\red_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(red[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_1 
       (.I0(\red_reg[7]_i_4_n_0 ),
        .I1(p_0_in),
        .O(\red_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \red_reg[7]_i_10 
       (.I0(\red_reg[7]_i_6_n_0 ),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(\red_reg[7]_i_39_n_0 ),
        .O(\red_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \red_reg[7]_i_100 
       (.I0(a_reg[28]),
        .I1(a_reg[29]),
        .O(\red_reg[7]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \red_reg[7]_i_101 
       (.I0(a_reg[24]),
        .I1(a_reg[25]),
        .O(\red_reg[7]_i_101_n_0 ));
  CARRY4 \red_reg[7]_i_102 
       (.CI(\red_reg[7]_i_146_n_0 ),
        .CO({\red_reg[7]_i_102_n_0 ,\NLW_red_reg[7]_i_102_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_102_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_147_n_0 ,\red_reg[7]_i_148_n_0 ,\red_reg[7]_i_149_n_0 ,\red_reg[7]_i_150_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_103 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_104 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_105 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_105_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_106 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_106_n_0 ));
  CARRY4 \red_reg[7]_i_107 
       (.CI(\red_reg[7]_i_151_n_0 ),
        .CO({\red_reg[7]_i_107_n_0 ,\NLW_red_reg[7]_i_107_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_107_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_152_n_0 ,\red_reg[7]_i_153_n_0 ,\red_reg[7]_i_154_n_0 ,\red_reg[7]_i_155_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_108 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_109 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88FF88FF88F8)) 
    \red_reg[7]_i_11 
       (.I0(\red_reg[7]_i_40_n_0 ),
        .I1(\red_reg[7]_i_41_n_0 ),
        .I2(\red_reg[7]_i_42_n_0 ),
        .I3(\red_reg[7]_i_15_n_0 ),
        .I4(\red_reg[7]_i_43_n_0 ),
        .I5(\red_reg[7]_i_44_n_0 ),
        .O(\red_reg[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_110 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_111 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_111_n_0 ));
  CARRY4 \red_reg[7]_i_112 
       (.CI(\red_reg[7]_i_156_n_0 ),
        .CO({\red_reg[7]_i_112_n_0 ,\NLW_red_reg[7]_i_112_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_112_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_157_n_0 ,\red_reg[7]_i_158_n_0 ,\red_reg[7]_i_159_n_0 ,\red_reg[7]_i_160_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_113 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_114 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_115 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_116 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_116_n_0 ));
  CARRY4 \red_reg[7]_i_117 
       (.CI(\red_reg[7]_i_161_n_0 ),
        .CO({\red_reg[7]_i_117_n_0 ,\NLW_red_reg[7]_i_117_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_117_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_162_n_0 ,\red_reg[7]_i_163_n_0 ,\red_reg[7]_i_164_n_0 ,\red_reg[7]_i_165_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_118 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_119 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'h4404)) 
    \red_reg[7]_i_12 
       (.I0(\red_reg[7]_i_6_n_0 ),
        .I1(\red_reg[7]_i_17_n_0 ),
        .I2(a_reg[0]),
        .I3(a_reg[1]),
        .O(\red_reg[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_120 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_121 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_121_n_0 ));
  CARRY4 \red_reg[7]_i_122 
       (.CI(\red_reg[7]_i_166_n_0 ),
        .CO({\red_reg[7]_i_122_n_0 ,\NLW_red_reg[7]_i_122_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_122_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_167_n_0 ,\red_reg[7]_i_168_n_0 ,\red_reg[7]_i_169_n_0 ,\red_reg[7]_i_170_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_123 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_123_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_124 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_125 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_125_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_126 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_126_n_0 ));
  CARRY4 \red_reg[7]_i_127 
       (.CI(\red_reg[7]_i_171_n_0 ),
        .CO({\red_reg[7]_i_127_n_0 ,\NLW_red_reg[7]_i_127_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_127_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_172_n_0 ,\red_reg[7]_i_173_n_0 ,\red_reg[7]_i_174_n_0 ,\red_reg[7]_i_175_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_128 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_128_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_129 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_129_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \red_reg[7]_i_13 
       (.I0(\red_reg[7]_i_6_n_0 ),
        .I1(\red_reg[7]_i_18_n_0 ),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .O(\red_reg[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_130 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_131 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_131_n_0 ));
  CARRY4 \red_reg[7]_i_132 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_132_n_0 ,\NLW_red_reg[7]_i_132_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\red_reg[7]_i_176_n_0 ,\red_reg[7]_i_177_n_0 ,\red_reg[7]_i_178_n_0 }),
        .O(\NLW_red_reg[7]_i_132_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_179_n_0 ,\red_reg[7]_i_180_n_0 ,\red_reg[7]_i_181_n_0 ,\red_reg[7]_i_182_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_133 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_133_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_134 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_134_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_135 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_136 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_136_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_137 
       (.I0(a_reg[11]),
        .I1(a_reg[10]),
        .I2(a_reg[9]),
        .O(\red_reg[7]_i_137_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_138 
       (.I0(a_reg[7]),
        .I1(a_reg[6]),
        .I2(a_reg[8]),
        .O(\red_reg[7]_i_138_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_139 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .O(\red_reg[7]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hDD00DD00FFF0CC00)) 
    \red_reg[7]_i_14 
       (.I0(a_reg[2]),
        .I1(\red_reg[7]_i_21_n_0 ),
        .I2(\red_reg[7]_i_45_n_0 ),
        .I3(\red_reg[7]_i_41_n_0 ),
        .I4(\red_reg[7]_i_20_n_0 ),
        .I5(\red_reg[7]_i_22_n_0 ),
        .O(\red_reg[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \red_reg[7]_i_140 
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .I2(a_reg[0]),
        .O(\red_reg[7]_i_140_n_0 ));
  CARRY4 \red_reg[7]_i_141 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_141_n_0 ,\NLW_red_reg[7]_i_141_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\red_reg[7]_i_183_n_0 ,1'b0,\red_reg[7]_i_184_n_0 }),
        .O(\NLW_red_reg[7]_i_141_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_185_n_0 ,\red_reg[7]_i_186_n_0 ,\red_reg[7]_i_187_n_0 ,\red_reg[7]_i_188_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_142 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_142_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_143 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_143_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_144 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_145 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_145_n_0 ));
  CARRY4 \red_reg[7]_i_146 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_146_n_0 ,\NLW_red_reg[7]_i_146_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\red_reg[7]_i_189_n_0 ,1'b0,\red_reg[7]_i_190_n_0 }),
        .O(\NLW_red_reg[7]_i_146_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_191_n_0 ,\red_reg[7]_i_192_n_0 ,\red_reg[7]_i_193_n_0 ,\red_reg[7]_i_194_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_147 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_147_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_148 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_149 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red_reg[7]_i_15 
       (.I0(\red_reg[7]_i_46_n_0 ),
        .I1(\red_reg[7]_i_47_n_0 ),
        .I2(\red_reg[7]_i_48_n_0 ),
        .I3(a_reg[9]),
        .I4(a_reg[8]),
        .I5(\red_reg[7]_i_49_n_0 ),
        .O(\red_reg[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_150 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_150_n_0 ));
  CARRY4 \red_reg[7]_i_151 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_151_n_0 ,\NLW_red_reg[7]_i_151_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\red_reg[7]_i_195_n_0 ,1'b0,\red_reg[7]_i_196_n_0 ,\red_reg[7]_i_197_n_0 }),
        .O(\NLW_red_reg[7]_i_151_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_198_n_0 ,\red_reg[7]_i_199_n_0 ,\red_reg[7]_i_200_n_0 ,\red_reg[7]_i_201_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_152 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_152_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_153 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_154 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_154_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_155 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_155_n_0 ));
  CARRY4 \red_reg[7]_i_156 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_156_n_0 ,\NLW_red_reg[7]_i_156_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\red_reg[7]_i_202_n_0 ,\red_reg[7]_i_203_n_0 ,\red_reg[7]_i_204_n_0 }),
        .O(\NLW_red_reg[7]_i_156_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_205_n_0 ,\red_reg[7]_i_206_n_0 ,\red_reg[7]_i_207_n_0 ,\red_reg[7]_i_208_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_157 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_158 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_158_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_159 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_159_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_16 
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .O(\red_reg[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_160 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_160_n_0 ));
  CARRY4 \red_reg[7]_i_161 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_161_n_0 ,\NLW_red_reg[7]_i_161_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\red_reg[7]_i_209_n_0 ,\red_reg[7]_i_210_n_0 ,\red_reg[7]_i_211_n_0 ,\red_reg[7]_i_212_n_0 }),
        .O(\NLW_red_reg[7]_i_161_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_213_n_0 ,\red_reg[7]_i_214_n_0 ,\red_reg[7]_i_215_n_0 ,\red_reg[7]_i_216_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_162 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_162_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_163 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_163_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_164 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_164_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_165 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_165_n_0 ));
  CARRY4 \red_reg[7]_i_166 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_166_n_0 ,\NLW_red_reg[7]_i_166_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\red_reg[7]_i_217_n_0 ,\red_reg[7]_i_218_n_0 ,\red_reg[7]_i_219_n_0 ,\red_reg[7]_i_220_n_0 }),
        .O(\NLW_red_reg[7]_i_166_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_221_n_0 ,\red_reg[7]_i_222_n_0 ,\red_reg[7]_i_223_n_0 ,\red_reg[7]_i_224_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_167 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_167_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_168 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_169 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_169_n_0 ));
  CARRY4 \red_reg[7]_i_17 
       (.CI(\red_reg[7]_i_50_n_0 ),
        .CO({\red_reg[7]_i_17_n_0 ,\NLW_red_reg[7]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_17_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_51_n_0 ,\red_reg[7]_i_52_n_0 ,\red_reg[7]_i_53_n_0 ,\red_reg[7]_i_54_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_170 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_170_n_0 ));
  CARRY4 \red_reg[7]_i_171 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_171_n_0 ,\NLW_red_reg[7]_i_171_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\red_reg[7]_i_225_n_0 ,\red_reg[7]_i_226_n_0 ,\red_reg[7]_i_227_n_0 ,\red_reg[7]_i_228_n_0 }),
        .O(\NLW_red_reg[7]_i_171_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_229_n_0 ,\red_reg[7]_i_230_n_0 ,\red_reg[7]_i_231_n_0 ,\red_reg[7]_i_232_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_172 
       (.I0(d[15]),
        .I1(d[14]),
        .O(\red_reg[7]_i_172_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_173 
       (.I0(d[13]),
        .I1(d[12]),
        .O(\red_reg[7]_i_173_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_174 
       (.I0(d[11]),
        .I1(d[10]),
        .O(\red_reg[7]_i_174_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_175 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_175_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_176 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_176_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_177 
       (.I0(d[3]),
        .O(\red_reg[7]_i_177_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_178 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_178_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_179 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_179_n_0 ));
  CARRY4 \red_reg[7]_i_18 
       (.CI(\red_reg[7]_i_55_n_0 ),
        .CO({\red_reg[7]_i_18_n_0 ,\NLW_red_reg[7]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_18_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_56_n_0 ,\red_reg[7]_i_57_n_0 ,\red_reg[7]_i_58_n_0 ,\red_reg[7]_i_59_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_180 
       (.I0(d[4]),
        .I1(d[5]),
        .O(\red_reg[7]_i_180_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_181 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_181_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_182 
       (.I0(d[0]),
        .I1(d[1]),
        .O(\red_reg[7]_i_182_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_183 
       (.I0(d[6]),
        .I1(d[7]),
        .O(\red_reg[7]_i_183_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_184 
       (.I0(d[3]),
        .O(\red_reg[7]_i_184_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_185 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_185_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_186 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_186_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_187 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_187_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_188 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_188_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_189 
       (.I0(d[4]),
        .I1(d[5]),
        .O(\red_reg[7]_i_189_n_0 ));
  CARRY4 \red_reg[7]_i_19 
       (.CI(\red_reg[7]_i_60_n_0 ),
        .CO({\NLW_red_reg[7]_i_19_CO_UNCONNECTED [3],\red_reg[7]_i_19_n_1 ,\NLW_red_reg[7]_i_19_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,d[31],1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_19_O_UNCONNECTED [3:0]),
        .S({1'b0,\red_reg[7]_i_61_n_0 ,\red_reg[7]_i_62_n_0 ,\red_reg[7]_i_63_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_190 
       (.I0(d[1]),
        .O(\red_reg[7]_i_190_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_191 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_191_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_192 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_192_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_193 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_193_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_194 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_194_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_195 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_195_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_196 
       (.I0(d[3]),
        .O(\red_reg[7]_i_196_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_197 
       (.I0(d[0]),
        .I1(d[1]),
        .O(\red_reg[7]_i_197_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_198 
       (.I0(d[6]),
        .I1(d[7]),
        .O(\red_reg[7]_i_198_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_199 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_199_n_0 ));
  LUT5 #(
    .INIT(32'hFFCFFACA)) 
    \red_reg[7]_i_2 
       (.I0(\red_reg[7]_i_5_n_0 ),
        .I1(cathode_OBUF[7]),
        .I2(\red_reg[7]_i_6_n_0 ),
        .I3(\red_reg[7]_i_7_n_1 ),
        .I4(\red_reg[7]_i_8_n_1 ),
        .O(\red_reg[7]_i_2_n_0 ));
  CARRY4 \red_reg[7]_i_20 
       (.CI(\red_reg[7]_i_64_n_0 ),
        .CO({\red_reg[7]_i_20_n_0 ,\NLW_red_reg[7]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_20_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_65_n_0 ,\red_reg[7]_i_66_n_0 ,\red_reg[7]_i_67_n_0 ,\red_reg[7]_i_68_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_200 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_200_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_201 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_201_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_202 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_202_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_203 
       (.I0(d[5]),
        .O(\red_reg[7]_i_203_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_204 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_204_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_205 
       (.I0(d[9]),
        .I1(d[8]),
        .O(\red_reg[7]_i_205_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_206 
       (.I0(d[6]),
        .I1(d[7]),
        .O(\red_reg[7]_i_206_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_207 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_207_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_208 
       (.I0(d[2]),
        .I1(d[3]),
        .O(\red_reg[7]_i_208_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_209 
       (.I0(d[7]),
        .O(\red_reg[7]_i_209_n_0 ));
  CARRY4 \red_reg[7]_i_21 
       (.CI(\red_reg[7]_i_69_n_0 ),
        .CO({\red_reg[7]_i_21_n_0 ,\NLW_red_reg[7]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_21_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_70_n_0 ,\red_reg[7]_i_71_n_0 ,\red_reg[7]_i_72_n_0 ,\red_reg[7]_i_73_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_210 
       (.I0(d[5]),
        .O(\red_reg[7]_i_210_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_211 
       (.I0(d[2]),
        .I1(d[3]),
        .O(\red_reg[7]_i_211_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_212 
       (.I0(d[0]),
        .I1(d[1]),
        .O(\red_reg[7]_i_212_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_213 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_213_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_214 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_214_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_215 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_215_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_216 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_216_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_217 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_217_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_218 
       (.I0(d[4]),
        .I1(d[5]),
        .O(\red_reg[7]_i_218_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_219 
       (.I0(d[2]),
        .I1(d[3]),
        .O(\red_reg[7]_i_219_n_0 ));
  CARRY4 \red_reg[7]_i_22 
       (.CI(\red_reg[7]_i_74_n_0 ),
        .CO({\red_reg[7]_i_22_n_0 ,\NLW_red_reg[7]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_22_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_75_n_0 ,\red_reg[7]_i_76_n_0 ,\red_reg[7]_i_77_n_0 ,\red_reg[7]_i_78_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_220 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_220_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_221 
       (.I0(d[6]),
        .I1(d[7]),
        .O(\red_reg[7]_i_221_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_222 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_222_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red_reg[7]_i_223 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_223_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_224 
       (.I0(d[0]),
        .I1(d[1]),
        .O(\red_reg[7]_i_224_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_225 
       (.I0(d[7]),
        .O(\red_reg[7]_i_225_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_226 
       (.I0(d[5]),
        .I1(d[4]),
        .O(\red_reg[7]_i_226_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_227 
       (.I0(d[3]),
        .I1(d[2]),
        .O(\red_reg[7]_i_227_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \red_reg[7]_i_228 
       (.I0(d[1]),
        .O(\red_reg[7]_i_228_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_229 
       (.I0(d[7]),
        .I1(d[6]),
        .O(\red_reg[7]_i_229_n_0 ));
  CARRY4 \red_reg[7]_i_23 
       (.CI(\red_reg[7]_i_79_n_0 ),
        .CO({\red_reg[7]_i_23_n_0 ,\NLW_red_reg[7]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_23_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_80_n_0 ,\red_reg[7]_i_81_n_0 ,\red_reg[7]_i_82_n_0 ,\red_reg[7]_i_83_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_230 
       (.I0(d[4]),
        .I1(d[5]),
        .O(\red_reg[7]_i_230_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_231 
       (.I0(d[2]),
        .I1(d[3]),
        .O(\red_reg[7]_i_231_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \red_reg[7]_i_232 
       (.I0(d[1]),
        .I1(d[0]),
        .O(\red_reg[7]_i_232_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_24 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_25 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_26 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_27 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_27_n_0 ));
  CARRY4 \red_reg[7]_i_28 
       (.CI(\red_reg[7]_i_84_n_0 ),
        .CO({\red_reg[7]_i_28_n_0 ,\NLW_red_reg[7]_i_28_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_28_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_85_n_0 ,\red_reg[7]_i_86_n_0 ,\red_reg[7]_i_87_n_0 ,\red_reg[7]_i_88_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_29 
       (.I0(a_reg[31]),
        .I1(a_reg[30]),
        .O(\red_reg[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red_reg[7]_i_3 
       (.I0(\red_reg[7]_i_9_n_0 ),
        .I1(\red_reg[7]_i_10_n_0 ),
        .I2(\red_reg[7]_i_11_n_0 ),
        .I3(\red_reg[7]_i_12_n_0 ),
        .I4(\red_reg[7]_i_13_n_0 ),
        .I5(\red_reg[7]_i_14_n_0 ),
        .O(\red_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_30 
       (.I0(a_reg[29]),
        .I1(a_reg[28]),
        .I2(a_reg[27]),
        .O(\red_reg[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_31 
       (.I0(a_reg[25]),
        .I1(a_reg[24]),
        .I2(a_reg[26]),
        .O(\red_reg[7]_i_31_n_0 ));
  CARRY4 \red_reg[7]_i_32 
       (.CI(\red_reg[7]_i_89_n_0 ),
        .CO({\red_reg[7]_i_32_n_0 ,\NLW_red_reg[7]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_32_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_90_n_0 ,\red_reg[7]_i_91_n_0 ,\red_reg[7]_i_92_n_0 ,\red_reg[7]_i_93_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_33 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_34 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_35 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4444444040404040)) 
    \red_reg[7]_i_36 
       (.I0(\red_reg[7]_i_6_n_0 ),
        .I1(a_reg[2]),
        .I2(\red_reg[7]_i_19_n_1 ),
        .I3(\red_reg[7]_i_22_n_0 ),
        .I4(\red_reg[7]_i_21_n_0 ),
        .I5(a_reg[1]),
        .O(\red_reg[7]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \red_reg[7]_i_37 
       (.I0(a_reg[1]),
        .I1(a_reg[0]),
        .O(\red_reg[7]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \red_reg[7]_i_38 
       (.I0(a_reg[1]),
        .I1(\red_reg[7]_i_6_n_0 ),
        .I2(a_reg[2]),
        .I3(a_reg[0]),
        .O(\red_reg[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0EFE)) 
    \red_reg[7]_i_39 
       (.I0(\red_reg[7]_i_22_n_0 ),
        .I1(\red_reg[7]_i_20_n_0 ),
        .I2(\red_reg[7]_i_21_n_0 ),
        .I3(a_reg[2]),
        .I4(\red_reg[7]_i_19_n_1 ),
        .I5(\red_reg[7]_i_18_n_0 ),
        .O(\red_reg[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEE0000FEEE)) 
    \red_reg[7]_i_4 
       (.I0(\red_reg[7]_i_15_n_0 ),
        .I1(\red_reg[7]_i_5_n_0 ),
        .I2(\red_reg[7]_i_16_n_0 ),
        .I3(a_reg[0]),
        .I4(\red_reg[7]_i_6_n_0 ),
        .I5(cathode_OBUF[7]),
        .O(\red_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \red_reg[7]_i_40 
       (.I0(\red_reg[7]_i_18_n_0 ),
        .I1(\red_reg[7]_i_19_n_1 ),
        .O(\red_reg[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \red_reg[7]_i_41 
       (.I0(\red_reg[7]_i_46_n_0 ),
        .I1(\red_reg[7]_i_47_n_0 ),
        .I2(\red_reg[7]_i_94_n_0 ),
        .I3(\red_reg[7]_i_49_n_0 ),
        .I4(\red_reg[7]_i_37_n_0 ),
        .I5(\red_reg[7]_i_17_n_0 ),
        .O(\red_reg[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0E0EFF0E00000000)) 
    \red_reg[7]_i_42 
       (.I0(\red_reg[7]_i_17_n_0 ),
        .I1(\red_reg[7]_i_6_n_0 ),
        .I2(a_reg[1]),
        .I3(\red_reg[7]_i_18_n_0 ),
        .I4(a_reg[0]),
        .I5(a_reg[2]),
        .O(\red_reg[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \red_reg[7]_i_43 
       (.I0(\red_reg[7]_i_95_n_0 ),
        .I1(a_reg[2]),
        .I2(\red_reg[7]_i_19_n_1 ),
        .I3(\red_reg[7]_i_20_n_0 ),
        .I4(\red_reg[7]_i_21_n_0 ),
        .I5(\red_reg[7]_i_22_n_0 ),
        .O(\red_reg[7]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \red_reg[7]_i_44 
       (.I0(\red_reg[7]_i_18_n_0 ),
        .I1(a_reg[1]),
        .I2(a_reg[0]),
        .I3(\red_reg[7]_i_96_n_0 ),
        .O(\red_reg[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \red_reg[7]_i_45 
       (.I0(a_reg[2]),
        .I1(a_reg[0]),
        .I2(\red_reg[7]_i_6_n_0 ),
        .O(\red_reg[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red_reg[7]_i_46 
       (.I0(a_reg[10]),
        .I1(a_reg[11]),
        .I2(a_reg[6]),
        .I3(a_reg[7]),
        .I4(\red_reg[7]_i_97_n_0 ),
        .I5(\red_reg[7]_i_98_n_0 ),
        .O(\red_reg[7]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \red_reg[7]_i_47 
       (.I0(a_reg[20]),
        .I1(a_reg[21]),
        .I2(a_reg[14]),
        .I3(a_reg[15]),
        .I4(\red_reg[7]_i_99_n_0 ),
        .O(\red_reg[7]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \red_reg[7]_i_48 
       (.I0(a_reg[5]),
        .I1(a_reg[4]),
        .I2(a_reg[3]),
        .O(\red_reg[7]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red_reg[7]_i_49 
       (.I0(a_reg[22]),
        .I1(a_reg[23]),
        .I2(a_reg[18]),
        .I3(a_reg[19]),
        .I4(\red_reg[7]_i_100_n_0 ),
        .I5(\red_reg[7]_i_101_n_0 ),
        .O(\red_reg[7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red_reg[7]_i_5 
       (.I0(\red_reg[7]_i_17_n_0 ),
        .I1(\red_reg[7]_i_18_n_0 ),
        .I2(\red_reg[7]_i_19_n_1 ),
        .I3(\red_reg[7]_i_20_n_0 ),
        .I4(\red_reg[7]_i_21_n_0 ),
        .I5(\red_reg[7]_i_22_n_0 ),
        .O(\red_reg[7]_i_5_n_0 ));
  CARRY4 \red_reg[7]_i_50 
       (.CI(\red_reg[7]_i_102_n_0 ),
        .CO({\red_reg[7]_i_50_n_0 ,\NLW_red_reg[7]_i_50_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_50_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_103_n_0 ,\red_reg[7]_i_104_n_0 ,\red_reg[7]_i_105_n_0 ,\red_reg[7]_i_106_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_51 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_52 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_53 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_54 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_54_n_0 ));
  CARRY4 \red_reg[7]_i_55 
       (.CI(\red_reg[7]_i_107_n_0 ),
        .CO({\red_reg[7]_i_55_n_0 ,\NLW_red_reg[7]_i_55_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_55_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_108_n_0 ,\red_reg[7]_i_109_n_0 ,\red_reg[7]_i_110_n_0 ,\red_reg[7]_i_111_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_56 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_57 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_58 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_59 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_59_n_0 ));
  CARRY4 \red_reg[7]_i_6 
       (.CI(\red_reg[7]_i_23_n_0 ),
        .CO({\red_reg[7]_i_6_n_0 ,\NLW_red_reg[7]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({d[31],1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_6_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_24_n_0 ,\red_reg[7]_i_25_n_0 ,\red_reg[7]_i_26_n_0 ,\red_reg[7]_i_27_n_0 }));
  CARRY4 \red_reg[7]_i_60 
       (.CI(\red_reg[7]_i_112_n_0 ),
        .CO({\red_reg[7]_i_60_n_0 ,\NLW_red_reg[7]_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_60_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_113_n_0 ,\red_reg[7]_i_114_n_0 ,\red_reg[7]_i_115_n_0 ,\red_reg[7]_i_116_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_61 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_62 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_63 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_63_n_0 ));
  CARRY4 \red_reg[7]_i_64 
       (.CI(\red_reg[7]_i_117_n_0 ),
        .CO({\red_reg[7]_i_64_n_0 ,\NLW_red_reg[7]_i_64_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_64_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_118_n_0 ,\red_reg[7]_i_119_n_0 ,\red_reg[7]_i_120_n_0 ,\red_reg[7]_i_121_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_65 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_66 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_67 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_68 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_68_n_0 ));
  CARRY4 \red_reg[7]_i_69 
       (.CI(\red_reg[7]_i_122_n_0 ),
        .CO({\red_reg[7]_i_69_n_0 ,\NLW_red_reg[7]_i_69_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_69_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_123_n_0 ,\red_reg[7]_i_124_n_0 ,\red_reg[7]_i_125_n_0 ,\red_reg[7]_i_126_n_0 }));
  CARRY4 \red_reg[7]_i_7 
       (.CI(\red_reg[7]_i_28_n_0 ),
        .CO({\NLW_red_reg[7]_i_7_CO_UNCONNECTED [3],\red_reg[7]_i_7_n_1 ,\NLW_red_reg[7]_i_7_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,\red_reg[7]_i_29_n_0 ,\red_reg[7]_i_30_n_0 ,\red_reg[7]_i_31_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_70 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_71 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_72 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_73 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_73_n_0 ));
  CARRY4 \red_reg[7]_i_74 
       (.CI(\red_reg[7]_i_127_n_0 ),
        .CO({\red_reg[7]_i_74_n_0 ,\NLW_red_reg[7]_i_74_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_74_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_128_n_0 ,\red_reg[7]_i_129_n_0 ,\red_reg[7]_i_130_n_0 ,\red_reg[7]_i_131_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_75 
       (.I0(d[31]),
        .I1(d[30]),
        .O(\red_reg[7]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_76 
       (.I0(d[29]),
        .I1(d[28]),
        .O(\red_reg[7]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_77 
       (.I0(d[27]),
        .I1(d[26]),
        .O(\red_reg[7]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_78 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_78_n_0 ));
  CARRY4 \red_reg[7]_i_79 
       (.CI(\red_reg[7]_i_132_n_0 ),
        .CO({\red_reg[7]_i_79_n_0 ,\NLW_red_reg[7]_i_79_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_79_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_133_n_0 ,\red_reg[7]_i_134_n_0 ,\red_reg[7]_i_135_n_0 ,\red_reg[7]_i_136_n_0 }));
  CARRY4 \red_reg[7]_i_8 
       (.CI(\red_reg[7]_i_32_n_0 ),
        .CO({\NLW_red_reg[7]_i_8_CO_UNCONNECTED [3],\red_reg[7]_i_8_n_1 ,\NLW_red_reg[7]_i_8_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,d[31],1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,\red_reg[7]_i_33_n_0 ,\red_reg[7]_i_34_n_0 ,\red_reg[7]_i_35_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_80 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_81 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_82 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_83 
       (.I0(d[17]),
        .I1(d[16]),
        .O(\red_reg[7]_i_83_n_0 ));
  CARRY4 \red_reg[7]_i_84 
       (.CI(1'b0),
        .CO({\red_reg[7]_i_84_n_0 ,\NLW_red_reg[7]_i_84_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_84_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_137_n_0 ,\red_reg[7]_i_138_n_0 ,\red_reg[7]_i_139_n_0 ,\red_reg[7]_i_140_n_0 }));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_85 
       (.I0(a_reg[23]),
        .I1(a_reg[22]),
        .I2(a_reg[21]),
        .O(\red_reg[7]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_86 
       (.I0(a_reg[19]),
        .I1(a_reg[18]),
        .I2(a_reg[20]),
        .O(\red_reg[7]_i_86_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_87 
       (.I0(a_reg[17]),
        .I1(a_reg[16]),
        .I2(a_reg[15]),
        .O(\red_reg[7]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \red_reg[7]_i_88 
       (.I0(a_reg[13]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .O(\red_reg[7]_i_88_n_0 ));
  CARRY4 \red_reg[7]_i_89 
       (.CI(\red_reg[7]_i_141_n_0 ),
        .CO({\red_reg[7]_i_89_n_0 ,\NLW_red_reg[7]_i_89_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_red_reg[7]_i_89_O_UNCONNECTED [3:0]),
        .S({\red_reg[7]_i_142_n_0 ,\red_reg[7]_i_143_n_0 ,\red_reg[7]_i_144_n_0 ,\red_reg[7]_i_145_n_0 }));
  LUT6 #(
    .INIT(64'hBBFFBBBBABEEABAA)) 
    \red_reg[7]_i_9 
       (.I0(\red_reg[7]_i_36_n_0 ),
        .I1(\red_reg[7]_i_15_n_0 ),
        .I2(\red_reg[7]_i_37_n_0 ),
        .I3(\red_reg[7]_i_6_n_0 ),
        .I4(\red_reg[7]_i_5_n_0 ),
        .I5(\red_reg[7]_i_38_n_0 ),
        .O(\red_reg[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_90 
       (.I0(d[25]),
        .I1(d[24]),
        .O(\red_reg[7]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_91 
       (.I0(d[23]),
        .I1(d[22]),
        .O(\red_reg[7]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_92 
       (.I0(d[21]),
        .I1(d[20]),
        .O(\red_reg[7]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \red_reg[7]_i_93 
       (.I0(d[19]),
        .I1(d[18]),
        .O(\red_reg[7]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \red_reg[7]_i_94 
       (.I0(a_reg[3]),
        .I1(a_reg[4]),
        .I2(a_reg[5]),
        .I3(a_reg[9]),
        .I4(a_reg[8]),
        .O(\red_reg[7]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \red_reg[7]_i_95 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .O(\red_reg[7]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \red_reg[7]_i_96 
       (.I0(\red_reg[7]_i_19_n_1 ),
        .I1(\red_reg[7]_i_20_n_0 ),
        .I2(a_reg[2]),
        .I3(\red_reg[7]_i_22_n_0 ),
        .I4(\red_reg[7]_i_21_n_0 ),
        .O(\red_reg[7]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \red_reg[7]_i_97 
       (.I0(a_reg[16]),
        .I1(a_reg[17]),
        .O(\red_reg[7]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \red_reg[7]_i_98 
       (.I0(a_reg[12]),
        .I1(a_reg[13]),
        .O(\red_reg[7]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \red_reg[7]_i_99 
       (.I0(a_reg[27]),
        .I1(a_reg[26]),
        .I2(a_reg[31]),
        .I3(a_reg[30]),
        .O(\red_reg[7]_i_99_n_0 ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rightBtnState_reg[0] 
       (.C(clockDebounce),
        .CE(1'b1),
        .D(toRightButton_IBUF),
        .Q(rightBtnState[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightBtnState_reg[1] 
       (.C(clockDebounce),
        .CE(1'b1),
        .D(rightBtnState[0]),
        .Q(rightBtnState[1]),
        .R(1'b0));
  IBUF toLeftButton_IBUF_inst
       (.I(toLeftButton),
        .O(toLeftButton_IBUF));
  IBUF toRightButton_IBUF_inst
       (.I(toRightButton),
        .O(toRightButton_IBUF));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
