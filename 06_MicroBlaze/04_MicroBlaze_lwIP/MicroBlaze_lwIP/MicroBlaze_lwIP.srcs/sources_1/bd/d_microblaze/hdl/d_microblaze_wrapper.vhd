--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (win64) Build 1412921 Wed
--              Nov 18 09:43:45 MST 2015
--Date        : Tue Oct 24 23:05:14 2017
--Host        : Win7U64 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target d_microblaze_wrapper.bd
--Design      : d_microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity d_microblaze_wrapper is
  port (
    ACLK : out STD_LOGIC;
    AXI_STR_RXD_1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_1_tlast : in STD_LOGIC;
    AXI_STR_RXD_1_tready : out STD_LOGIC;
    AXI_STR_RXD_1_tvalid : in STD_LOGIC;
    AXI_STR_RXD_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_tlast : in STD_LOGIC;
    AXI_STR_RXD_tready : out STD_LOGIC;
    AXI_STR_RXD_tvalid : in STD_LOGIC;
    AXI_STR_TXD_1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_1_tlast : out STD_LOGIC;
    AXI_STR_TXD_1_tready : in STD_LOGIC;
    AXI_STR_TXD_1_tvalid : out STD_LOGIC;
    AXI_STR_TXD_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_tlast : out STD_LOGIC;
    AXI_STR_TXD_tready : in STD_LOGIC;
    AXI_STR_TXD_tvalid : out STD_LOGIC;
    Int_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Int_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio1_in_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio1_out_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_in_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_out_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sys_clock : in STD_LOGIC;
    sys_reset : in STD_LOGIC
  );
end d_microblaze_wrapper;

architecture STRUCTURE of d_microblaze_wrapper is
  component d_microblaze is
  port (
    gpio1_in_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio1_out_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_tlast : in STD_LOGIC;
    AXI_STR_RXD_tready : out STD_LOGIC;
    AXI_STR_RXD_tvalid : in STD_LOGIC;
    AXI_STR_RXD_1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_1_tlast : in STD_LOGIC;
    AXI_STR_RXD_1_tready : out STD_LOGIC;
    AXI_STR_RXD_1_tvalid : in STD_LOGIC;
    AXI_STR_TXD_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_tlast : out STD_LOGIC;
    AXI_STR_TXD_tready : in STD_LOGIC;
    AXI_STR_TXD_tvalid : out STD_LOGIC;
    AXI_STR_TXD_1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_1_tlast : out STD_LOGIC;
    AXI_STR_TXD_1_tready : in STD_LOGIC;
    AXI_STR_TXD_1_tvalid : out STD_LOGIC;
    ACLK : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    Int_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Int_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_in_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_out_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component d_microblaze;
begin
d_microblaze_i: component d_microblaze
     port map (
      ACLK => ACLK,
      AXI_STR_RXD_1_tdata(31 downto 0) => AXI_STR_RXD_1_tdata(31 downto 0),
      AXI_STR_RXD_1_tlast => AXI_STR_RXD_1_tlast,
      AXI_STR_RXD_1_tready => AXI_STR_RXD_1_tready,
      AXI_STR_RXD_1_tvalid => AXI_STR_RXD_1_tvalid,
      AXI_STR_RXD_tdata(31 downto 0) => AXI_STR_RXD_tdata(31 downto 0),
      AXI_STR_RXD_tlast => AXI_STR_RXD_tlast,
      AXI_STR_RXD_tready => AXI_STR_RXD_tready,
      AXI_STR_RXD_tvalid => AXI_STR_RXD_tvalid,
      AXI_STR_TXD_1_tdata(31 downto 0) => AXI_STR_TXD_1_tdata(31 downto 0),
      AXI_STR_TXD_1_tlast => AXI_STR_TXD_1_tlast,
      AXI_STR_TXD_1_tready => AXI_STR_TXD_1_tready,
      AXI_STR_TXD_1_tvalid => AXI_STR_TXD_1_tvalid,
      AXI_STR_TXD_tdata(31 downto 0) => AXI_STR_TXD_tdata(31 downto 0),
      AXI_STR_TXD_tlast => AXI_STR_TXD_tlast,
      AXI_STR_TXD_tready => AXI_STR_TXD_tready,
      AXI_STR_TXD_tvalid => AXI_STR_TXD_tvalid,
      Int_0(0) => Int_0(0),
      Int_1(0) => Int_1(0),
      gpio1_in_tri_i(31 downto 0) => gpio1_in_tri_i(31 downto 0),
      gpio1_out_tri_o(31 downto 0) => gpio1_out_tri_o(31 downto 0),
      gpio2_in_tri_i(31 downto 0) => gpio2_in_tri_i(31 downto 0),
      gpio2_out_tri_o(31 downto 0) => gpio2_out_tri_o(31 downto 0),
      sys_clock => sys_clock,
      sys_reset => sys_reset
    );
end STRUCTURE;