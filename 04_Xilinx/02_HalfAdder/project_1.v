// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (win64) Build 1412921 Wed
//               Nov 18 09:43:45 MST 2015
// Date        : Wed Jul 19 13:13:48 2017
// Host        : PXIe running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog Z:/work/git/LabVIEW_Fpga/04_Xilinx/02_HalfAdder/project_1.v
// Design      : halfadder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k410tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module halfadder
   (in_x,
    in_y,
    out_sum,
    out_carry);
  input in_x;
  input in_y;
  output out_sum;
  output out_carry;

  wire in_x;
  wire in_x_IBUF;
  wire in_y;
  wire in_y_IBUF;
  wire out_carry;
  wire out_carry_OBUF;
  wire out_sum;
  wire out_sum_OBUF;

  IBUF in_x_IBUF_inst
       (.I(in_x),
        .O(in_x_IBUF));
  IBUF in_y_IBUF_inst
       (.I(in_y),
        .O(in_y_IBUF));
  OBUF out_carry_OBUF_inst
       (.I(out_carry_OBUF),
        .O(out_carry));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    out_carry_OBUF_inst_i_1
       (.I0(in_y_IBUF),
        .I1(in_x_IBUF),
        .O(out_carry_OBUF));
  OBUF out_sum_OBUF_inst
       (.I(out_sum_OBUF),
        .O(out_sum));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    out_sum_OBUF_inst_i_1
       (.I0(in_x_IBUF),
        .I1(in_y_IBUF),
        .O(out_sum_OBUF));
endmodule
