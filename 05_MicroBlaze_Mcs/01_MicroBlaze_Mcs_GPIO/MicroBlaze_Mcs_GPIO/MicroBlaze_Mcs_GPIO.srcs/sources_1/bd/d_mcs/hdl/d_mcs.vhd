--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (win64) Build 1412921 Wed
--              Nov 18 09:43:45 MST 2015
--Date        : Mon Jun 19 10:34:57 2017
--Host        : 1062Q running 64-bit Service Pack 1  (build 7601)
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
    gpio_rtl_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_rtl : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of d_mcs : entity is "d_mcs,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=d_mcs,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,da_board_cnt=5,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of d_mcs : entity is "d_mcs.hwdef";
end d_mcs;

architecture STRUCTURE of d_mcs is
  component d_mcs_microblaze_mcs_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    GPO1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPI1_Interrupt : out STD_LOGIC
  );
  end component d_mcs_microblaze_mcs_0_0;
  signal clock_rtl_1 : STD_LOGIC;
  signal microblaze_mcs_0_GPIO1_TRI_I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_GPIO1_TRI_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_rtl_1 : STD_LOGIC;
  signal NLW_microblaze_mcs_0_GPI1_Interrupt_UNCONNECTED : STD_LOGIC;
begin
  clock_rtl_1 <= clock_rtl;
  gpio_rtl_tri_o(31 downto 0) <= microblaze_mcs_0_GPIO1_TRI_O(31 downto 0);
  microblaze_mcs_0_GPIO1_TRI_I(31 downto 0) <= gpio_rtl_tri_i(31 downto 0);
  reset_rtl_1 <= reset_rtl;
microblaze_mcs_0: component d_mcs_microblaze_mcs_0_0
     port map (
      Clk => clock_rtl_1,
      GPI1(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_I(31 downto 0),
      GPI1_Interrupt => NLW_microblaze_mcs_0_GPI1_Interrupt_UNCONNECTED,
      GPO1(31 downto 0) => microblaze_mcs_0_GPIO1_TRI_O(31 downto 0),
      Reset => reset_rtl_1
    );
end STRUCTURE;
