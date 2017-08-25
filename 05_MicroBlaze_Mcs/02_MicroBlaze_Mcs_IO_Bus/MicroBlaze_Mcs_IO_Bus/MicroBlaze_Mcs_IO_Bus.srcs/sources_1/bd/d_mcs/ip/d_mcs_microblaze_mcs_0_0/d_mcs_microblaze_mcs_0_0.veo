// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:microblaze_mcs:2.3
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
d_mcs_microblaze_mcs_0_0 your_instance_name (
  .Clk(Clk),                          // input wire Clk
  .Reset(Reset),                      // input wire Reset
  .IO_Addr_Strobe(IO_Addr_Strobe),    // output wire IO_Addr_Strobe
  .IO_Read_Strobe(IO_Read_Strobe),    // output wire IO_Read_Strobe
  .IO_Write_Strobe(IO_Write_Strobe),  // output wire IO_Write_Strobe
  .IO_Address(IO_Address),            // output wire [31 : 0] IO_Address
  .IO_Byte_Enable(IO_Byte_Enable),    // output wire [3 : 0] IO_Byte_Enable
  .IO_Write_Data(IO_Write_Data),      // output wire [31 : 0] IO_Write_Data
  .IO_Read_Data(IO_Read_Data),        // input wire [31 : 0] IO_Read_Data
  .IO_Ready(IO_Ready),                // input wire IO_Ready
  .GPO1(GPO1),                        // output wire [31 : 0] GPO1
  .GPO2(GPO2),                        // output wire [31 : 0] GPO2
  .GPO3(GPO3),                        // output wire [31 : 0] GPO3
  .GPI1(GPI1),                        // input wire [31 : 0] GPI1
  .GPI1_Interrupt(GPI1_Interrupt),    // output wire GPI1_Interrupt
  .INTC_Interrupt(INTC_Interrupt),    // input wire [3 : 0] INTC_Interrupt
  .INTC_IRQ(INTC_IRQ)                // output wire INTC_IRQ
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file d_mcs_microblaze_mcs_0_0.v when simulating
// the core, d_mcs_microblaze_mcs_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.
