-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (win64) Build 1412921 Wed
--               Nov 18 09:43:45 MST 2015
-- Date        : Tue Jul 04 14:34:55 2017
-- Host        : Win7U64 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode pin_planning
--               {C:\NIFPGA\iptemp\xipin07FCE323D63648868277B9DC7323CA9F\sim\AXI4_dash_Stream_Data_FIFO_FE5A60155B06448D9D0A40898B6711CA_ports.vhd}
-- Design      : AXI4_dash_Stream_Data_FIFO_FE5A60155B06448D9D0A40898B6711CA
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k410tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity AXI4_dash_Stream_Data_FIFO_FE5A60155B06448D9D0A40898B6711CA is
  Port ( 
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );

end AXI4_dash_Stream_Data_FIFO_FE5A60155B06448D9D0A40898B6711CA;

architecture Behavioral of AXI4_dash_Stream_Data_FIFO_FE5A60155B06448D9D0A40898B6711CA is 
begin

end Behavioral;
