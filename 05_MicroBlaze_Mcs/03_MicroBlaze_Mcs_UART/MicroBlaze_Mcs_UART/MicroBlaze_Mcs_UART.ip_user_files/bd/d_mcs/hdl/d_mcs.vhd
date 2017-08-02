--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (win64) Build 1412921 Wed
--              Nov 18 09:43:45 MST 2015
--Date        : Wed Jun 28 23:26:28 2017
--Host        : Win7U64 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target d_mcs.bd
--Design      : d_mcs
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity d_mcs is
  port (
    clock_rtl : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    uart_rtl_rxd : in STD_LOGIC;
    uart_rtl_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of d_mcs : entity is "d_mcs,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=d_mcs,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,da_board_cnt=3,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of d_mcs : entity is "d_mcs.hwdef";
end d_mcs;

architecture STRUCTURE of d_mcs is
  component d_mcs_microblaze_mcs_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_Rx : in STD_LOGIC;
    UART_Tx : out STD_LOGIC
  );
  end component d_mcs_microblaze_mcs_0_0;
  signal clock_rtl_1 : STD_LOGIC;
  signal microblaze_mcs_0_UART_RxD : STD_LOGIC;
  signal microblaze_mcs_0_UART_TxD : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
begin
  clock_rtl_1 <= clock_rtl;
  microblaze_mcs_0_UART_RxD <= uart_rtl_rxd;
  reset_rtl_1 <= reset_rtl;
  uart_rtl_txd <= microblaze_mcs_0_UART_TxD;
microblaze_mcs_0: component d_mcs_microblaze_mcs_0_0
     port map (
      Clk => clock_rtl_1,
      Reset => reset_rtl_1,
      UART_Rx => microblaze_mcs_0_UART_RxD,
      UART_Tx => microblaze_mcs_0_UART_TxD
    );
end STRUCTURE;
