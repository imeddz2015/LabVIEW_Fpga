############################################################################
## Begin PXIe6592R_Top_Gen2x8_Pins.xdc
## IO Pin Location Constraints
############################################################################

# K7 EN183 CES ERRATA
set_property PROHIBIT true [get_sites RAMB36_X4Y11]

# Prevent BlockRAM power optimization. This allows better timing closure by removing enables.
set_power_opt -exclude_cells [get_cells -hierarchical -filter {PRIMITIVE_TYPE =~ BMEM.bram.*}]

# Set Configuration Bank Select Pin
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

############# CONFIGURATION PINS ##################
#CONFIG PROHIBIT= "R24"; # Reserve External Master Config (EMC) Clk, 80 MHz spread-spectrum
#CONFIG PROHIBIT= "U29"; # Reserve RDWR_B pin since using select map for DPR; tie low since not planning to read back or configure multiple FPGAS
#CONFIG PROHIBIT= "J21"; # Wrapped back to INIT_B pin; copied from FlexRIO Series 7 - it is not clear why they did this, but it may be able to affect the timing of reconfiguration
#CONFIG PROHIBIT = "AE11"; # Reserved pin in case with go with a higher density DRAM
#CONFIG PROHIBIT = "R8";   # Reserved pin for MGT reference clock (+) if if we use the fabric
#CONFIG PROHIBIT = "R7";   # Reserved pin for MGT reference clock (-) if if we use the fabric

############# SYSTEM MONITOR ANALOG LINES ##################
#NET "aVp" LOC = R15;
#NET "aVn" LOC = T14;

############# BANK 12 VCCO = 2.5V ##################
set_property PACKAGE_PIN Y20 [get_ports {aPcieRst_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPcieRst_n}]

#~~ DStar Signals
#     While we do not have a defined use for these yet on the PXIe-6592R,
#     these signals can be used for board-to-board synchronization so
#     these connections are available if necessary.
set_property PACKAGE_PIN AF22 [get_ports {FpgaDStarA}]
set_property PACKAGE_PIN AG23 [get_ports {FpgaDStarA_n}]
set_property PACKAGE_PIN AG24 [get_ports {PxieDStarB}]
set_property PACKAGE_PIN AH24 [get_ports {PxieDStarB_n}]
set_property PACKAGE_PIN AJ24 [get_ports {PxieDStarC}]
set_property PACKAGE_PIN AK25 [get_ports {PxieDStarC_n}]
set_property IOSTANDARD LVDS_25 [get_ports {FpgaDStarA}]
set_property IOSTANDARD LVDS_25 [get_ports {FpgaDStarA_n}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieDStarB}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieDStarB_n}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieDStarC}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieDStarC_n}]
set_property DIFF_TERM TRUE [get_ports {FpgaDStarA}]
set_property DIFF_TERM TRUE [get_ports {FpgaDStarA_n}]
set_property DIFF_TERM TRUE [get_ports {PxieDStarB}]
set_property DIFF_TERM TRUE [get_ports {PxieDStarB_n}]
set_property DIFF_TERM TRUE [get_ports {PxieDStarC}]
set_property DIFF_TERM TRUE [get_ports {PxieDStarC_n}]

#~~ TDC Signals
#     These signals create the interface to the TDC which can be used to help
#     synchronize a clock on this board to a reference.  The exact use of this
#     on the PXIe-6592R has not been defined yet, so for now these pins will
#     just be constrained to the proper location.
set_property PACKAGE_PIN Y23 [get_ports {aTdcAssert}]
set_property PACKAGE_PIN Y24 [get_ports {aTdcDeassert}]
set_property PACKAGE_PIN AC24 [get_ports {aTdcEn}]
set_property IOSTANDARD LVCMOS25 [get_ports {aTdcAssert}]
set_property IOSTANDARD LVCMOS25 [get_ports {aTdcDeassert}]
set_property IOSTANDARD LVCMOS25 [get_ports {aTdcEn}]
set_property DRIVE 8 [get_ports {aTdcAssert}]
set_property DRIVE 8 [get_ports {aTdcDeassert}]
set_property DRIVE 8 [get_ports {aTdcEn}]
set_property SLEW FAST [get_ports {aTdcAssert}]
set_property SLEW FAST [get_ports {aTdcDeassert}]
set_property SLEW FAST [get_ports {aTdcEn}]

#~~ Loopback Signals
#     These signals can be used for feeding an output of the FPGA back to an
#     input in the FPGA.  Sometimes this can be useful for circuits that need
#     access to I/O resources, although no purpose has been defined for these
#     yet.
set_property PACKAGE_PIN AD21 [get_ports {aLoopbackInp}]
set_property PACKAGE_PIN AE21 [get_ports {aLoopbackInn}]
set_property PACKAGE_PIN AC22 [get_ports {aLoopbackOutp}]
set_property PACKAGE_PIN AD22 [get_ports {aLoopbackOutn}]
set_property IOSTANDARD LVDS_25 [get_ports {aLoopbackInp}]
set_property IOSTANDARD LVDS_25 [get_ports {aLoopbackInn}]
set_property IOSTANDARD LVDS_25 [get_ports {aLoopbackOutp}]
set_property IOSTANDARD LVDS_25 [get_ports {aLoopbackOutn}]
set_property DIFF_TERM TRUE [get_ports {aLoopbackInp}]
set_property DIFF_TERM TRUE [get_ports {aLoopbackInn}]
set_property DIFF_TERM TRUE [get_ports {aLoopbackOutp}]
set_property DIFF_TERM TRUE [get_ports {aLoopbackOutn}]

############# BANK 13 VCCO = 2.5V ##################
#~~ PXIe Synchronization Signals
set_property PACKAGE_PIN Y30 [get_ports {pPxieSync100}]
set_property PACKAGE_PIN AA30 [get_ports {pPxieSync100_n}]
set_property PACKAGE_PIN AD27 [get_ports {PxiClk10}]
set_property PACKAGE_PIN AD28 [get_ports {PxiClk10_n}]
set_property PACKAGE_PIN AB27 [get_ports {PxieClk100}]
set_property PACKAGE_PIN AC27 [get_ports {PxieClk100_n}]
set_property PACKAGE_PIN AE28 [get_ports {aPxiStar}]
set_property IOSTANDARD LVDS_25 [get_ports {pPxieSync100}]
set_property IOSTANDARD LVDS_25 [get_ports {pPxieSync100_n}]
set_property IOSTANDARD LVDS_25 [get_ports {PxiClk10}]
set_property IOSTANDARD LVDS_25 [get_ports {PxiClk10_n}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieClk100}]
set_property IOSTANDARD LVDS_25 [get_ports {PxieClk100_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPxiStar}]
set_property DIFF_TERM TRUE [get_ports {pPxieSync100}]
set_property DIFF_TERM TRUE [get_ports {pPxieSync100_n}]
set_property DIFF_TERM TRUE [get_ports {PxiClk10}]
set_property DIFF_TERM TRUE [get_ports {PxiClk10_n}]
set_property DIFF_TERM TRUE [get_ports {PxieClk100}]
set_property DIFF_TERM TRUE [get_ports {PxieClk100_n}]

#~~ PXI Geographic Addressing
set_property PACKAGE_PIN AH30 [get_ports {aPxiGa[0]}]
set_property PACKAGE_PIN AG30 [get_ports {aPxiGa[1]}]
set_property PACKAGE_PIN AF30 [get_ports {aPxiGa[2]}]
set_property PACKAGE_PIN AK30 [get_ports {aPxiGa[3]}]
set_property PACKAGE_PIN AK29 [get_ports {aPxiGa[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPxiGa[*]}]

#~~ TDC input to allow for jitter monitoring
set_property PACKAGE_PIN AK26 [get_ports {aUnexpPulseJitter_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aUnexpPulseJitter_n}]

############# BANK 14 VCCO = 1.8V ##################
#~~ Configuration Address/Data Ports
#     When power is initially applied to the board, the FPGA will
#     will configure itself using Master BPI mode.  In this mode,
#     the FPGA drives control signals to a 16-bit wide parallel
#     flash and reads the data back to configure itself.  These
#     will then be reused when the bitstream is changed, with the
#     CPLD driving the configuration lines to configure the FPGA in
#     Slave SelectMAP mode.  For the configuration, none of the
#     timing is defined by the bitstream, so the timing does not
#     need to be constrained here.
set_property PACKAGE_PIN W22 [get_ports {aConfigAddr[0]}]
set_property PACKAGE_PIN W21 [get_ports {aConfigAddr[1]}]
set_property PACKAGE_PIN V24 [get_ports {aConfigAddr[2]}]
set_property PACKAGE_PIN U24 [get_ports {aConfigAddr[3]}]
set_property PACKAGE_PIN V22 [get_ports {aConfigAddr[4]}]
set_property PACKAGE_PIN V21 [get_ports {aConfigAddr[5]}]
set_property PACKAGE_PIN U23 [get_ports {aConfigAddr[6]}]
set_property PACKAGE_PIN W24 [get_ports {aConfigAddr[7]}]
set_property PACKAGE_PIN W23 [get_ports {aConfigAddr[8]}]
set_property PACKAGE_PIN V20 [get_ports {aConfigAddr[9]}]
set_property PACKAGE_PIN V19 [get_ports {aConfigAddr[10]}]
set_property PACKAGE_PIN W26 [get_ports {aConfigAddr[11]}]
set_property PACKAGE_PIN V25 [get_ports {aConfigAddr[12]}]
set_property PACKAGE_PIN V30 [get_ports {aConfigAddr[13]}]
set_property PACKAGE_PIN V29 [get_ports {aConfigAddr[14]}]
set_property PACKAGE_PIN V27 [get_ports {aConfigAddr[15]}]
set_property PACKAGE_PIN P24 [get_ports {aConfigData[0]}]
set_property PACKAGE_PIN R25 [get_ports {aConfigData[1]}]
set_property PACKAGE_PIN R20 [get_ports {aConfigData[2]}]
set_property PACKAGE_PIN R21 [get_ports {aConfigData[3]}]
set_property PACKAGE_PIN T20 [get_ports {aConfigData[4]}]
set_property PACKAGE_PIN T21 [get_ports {aConfigData[5]}]
set_property PACKAGE_PIN T22 [get_ports {aConfigData[6]}]
set_property PACKAGE_PIN T23 [get_ports {aConfigData[7]}]
set_property PACKAGE_PIN U20 [get_ports {aConfigData[8]}]
set_property PACKAGE_PIN P29 [get_ports {aConfigData[9]}]
set_property PACKAGE_PIN R29 [get_ports {aConfigData[10]}]
set_property PACKAGE_PIN P27 [get_ports {aConfigData[11]}]
set_property PACKAGE_PIN P28 [get_ports {aConfigData[12]}]
set_property PACKAGE_PIN T30 [get_ports {aConfigData[13]}]
set_property PACKAGE_PIN P26 [get_ports {aConfigData[14]}]
set_property PACKAGE_PIN R26 [get_ports {aConfigData[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigAddr[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigData[*]}]

#~~ PXI Triggers
#     PXI triggers do not have a dedicated purpose, but are
#     made available for use in the customer's logic.
set_property PACKAGE_PIN T28 [get_ports {aPxiTrigData[0]}]
set_property PACKAGE_PIN T27 [get_ports {aPxiTrigData[1]}]
set_property PACKAGE_PIN W19 [get_ports {aPxiTrigData[2]}]
set_property PACKAGE_PIN U25 [get_ports {aPxiTrigData[3]}]
set_property PACKAGE_PIN K23 [get_ports {aPxiTrigData[4]}]
set_property PACKAGE_PIN U30 [get_ports {aPxiTrigData[5]}]
set_property PACKAGE_PIN R28 [get_ports {aPxiTrigDir[1]}]
set_property PACKAGE_PIN T25 [get_ports {aPxiTrigDir[2]}]
set_property PACKAGE_PIN N29 [get_ports {aPxiTrigDir[3]}]
set_property PACKAGE_PIN T26 [get_ports {aPxiTrigDir[6]}]
set_property PACKAGE_PIN U28 [get_ports {aPxiTrigDir[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiTrigData[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiTrigDir[*]}]

#~~ Board Control and Status
set_property PACKAGE_PIN R19 [get_ports {aDramAnd2v5PwrGood}]
set_property PACKAGE_PIN R30 [get_ports {aCpldExtReset_n}]
set_property PACKAGE_PIN U19 [get_ports {aConfigFlashClkEn_n}]
set_property PACKAGE_PIN U27 [get_ports {Osc40In}]
set_property IOSTANDARD LVCMOS18 [get_ports {aDramAnd2v5PwrGood}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCpldExtReset_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigFlashClkEn_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {Osc40In}]

#~~ Reconfiguration CPLD Interface
set_property PACKAGE_PIN V26 [get_ports {aFpgaCsi_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aFpgaCsi_n}]

set_property IOSTANDARD  LVCMOS18 [get_ports {aFpgaPudc}]
set_property PACKAGE_PIN R23      [get_ports {aFpgaPudc}]

############# BANK 15 VCCO = 1.8V ##################
#~~ Configuration, continuation from above
set_property PACKAGE_PIN P22 [get_ports {aConfigAddr[16]}]
set_property PACKAGE_PIN P21 [get_ports {aConfigAddr[17]}]
set_property PACKAGE_PIN N24 [get_ports {aConfigAddr[18]}]
set_property PACKAGE_PIN N22 [get_ports {aConfigAddr[19]}]
set_property PACKAGE_PIN N21 [get_ports {aConfigAddr[20]}]
set_property PACKAGE_PIN N20 [get_ports {aConfigAddr[21]}]
set_property PACKAGE_PIN N19 [get_ports {aConfigAddr[22]}]
set_property PACKAGE_PIN N26 [get_ports {aConfigAddr[23]}]
set_property PACKAGE_PIN N25 [get_ports {aConfigAddr[24]}]
set_property PACKAGE_PIN N30 [get_ports {aConfigAddr[25]}]
set_property PACKAGE_PIN M30 [get_ports {aConfigAddrValid_n}]
set_property PACKAGE_PIN M24 [get_ports {aConfigOe_n}]
set_property PACKAGE_PIN M23 [get_ports {aConfigRs[0]}]
set_property PACKAGE_PIN M22 [get_ports {aConfigRs[1]}]
set_property PACKAGE_PIN P19 [get_ports {aConfigWp_n}]
set_property PACKAGE_PIN M25 [get_ports {aConfigWe_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigAddrValid_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigOe_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigRs[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigRs[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigWp_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aConfigWe_n}]

#~~ Board Control and Status
#     The I2C bus includes the AD7291s, LM83, INA219s,
#     TMP421, TCA6416, and AT24C02 for basic device
#     configuration and monitoring.
#     The SPI bus is used for communications with the DAC that
#     controls the GPIO operating voltage.
#     VccOptical is the power supply made available to the
#     front-panel high speed serial connectors - specifically
#     used to power optical transceivers that may be in the cable.
set_property PACKAGE_PIN H29 [get_ports {aFpgaScl}]
set_property PACKAGE_PIN J29 [get_ports {aFpgaSda}]
set_property PACKAGE_PIN L30 [get_ports {aSpiDacCs_n}]
set_property PACKAGE_PIN M29 [get_ports {aSpiDacSClk}]
set_property PACKAGE_PIN M28 [get_ports {aSpiDacSdo}]
set_property PACKAGE_PIN J24 [get_ports {aVccOpticalEn}]
set_property PACKAGE_PIN L27 [get_ports {aVccOpticalPg}]
set_property IOSTANDARD LVCMOS18 [get_ports {aFpgaScl}]
set_property IOSTANDARD LVCMOS18 [get_ports {aFpgaSda}]
set_property IOSTANDARD LVCMOS18 [get_ports {aSpiDacCs_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aSpiDacSClk}]
set_property IOSTANDARD LVCMOS18 [get_ports {aSpiDacSdo}]
set_property IOSTANDARD LVCMOS18 [get_ports {aVccOpticalEn}]
set_property IOSTANDARD LVCMOS18 [get_ports {aVccOpticalPg}]

#~~ PXI Triggers, continuation from above
set_property PACKAGE_PIN M20 [get_ports {aPxiTrigData[6]}]
set_property PACKAGE_PIN M19 [get_ports {aPxiTrigData[7]}]
set_property PACKAGE_PIN L21 [get_ports {aPxiTrigDir[0]}]
set_property PACKAGE_PIN L22 [get_ports {aPxiTrigDir[4]}]
set_property PACKAGE_PIN L20 [get_ports {aPxiTrigDir[5]}]
set_property PACKAGE_PIN K21 [get_ports {aPxiTrigOutEn_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiTrigOutEn_n}]

#~~ Reconfiguration CPLD Interface
#     This port is being redefined since the CPLD that handles the
#     reconfiguration is being redone due to changes in the
#     memory type and performance requirements.
set_property PACKAGE_PIN L25 [get_ports {txSerClkOut}]
set_property PACKAGE_PIN J28 [get_ports {CpldClkEn}]
set_property PACKAGE_PIN L26 [get_ports {RxSerClk}]
set_property PACKAGE_PIN J22 [get_ports {rRxSerData}]
set_property PACKAGE_PIN K28 [get_ports {tCpldRegData[0]}]
set_property PACKAGE_PIN J23 [get_ports {tCpldRegData[1]}]
set_property PACKAGE_PIN K29 [get_ports {tCpldRegData[2]}]
set_property PACKAGE_PIN L28 [get_ports {tCpldRegData[3]}]
set_property PACKAGE_PIN K24 [get_ports {tCpldRegData[4]}]
set_property PACKAGE_PIN N27 [get_ports {tCpldRegData[5]}]
set_property PACKAGE_PIN M27 [get_ports {tCpldRegData[6]}]
set_property PACKAGE_PIN J27 [get_ports {tCpldRegData[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {txSerClkOut}]
set_property IOSTANDARD LVCMOS18 [get_ports {CpldClkEn}]
set_property IOSTANDARD LVCMOS18 [get_ports {RxSerClk}]
set_property IOSTANDARD LVCMOS18 [get_ports {rRxSerData}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tCpldRegData[7]}]

#~~ JTAG pins for accessing the reconfiguration CPLD
set_property PACKAGE_PIN K25 [get_ports {aCpldTck}]
set_property PACKAGE_PIN K26 [get_ports {aCpldTdi}]
set_property PACKAGE_PIN J26 [get_ports {aCpldTms}]
set_property PACKAGE_PIN K30 [get_ports {aCpldTdo}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCpldTck}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCpldTdi}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCpldTms}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCpldTdo}]

############# BANK 16 VCCO = 2.5V ##################
#~~ GPIO Interface
#     These general purpose I/Os are all made directly
#     accessible to the customer.
set_property PACKAGE_PIN D28 [get_ports {aSeGpioOut[0]}]
set_property PACKAGE_PIN F30 [get_ports {aSeGpioOut[1]}]
set_property PACKAGE_PIN C29 [get_ports {aSeGpioOut[2]}]
set_property PACKAGE_PIN E30 [get_ports {aSeGpioOut[3]}]
set_property PACKAGE_PIN D29 [get_ports {aSeGpioOutEn_n[0]}]
set_property PACKAGE_PIN C30 [get_ports {aSeGpioOutEn_n[1]}]
set_property PACKAGE_PIN A30 [get_ports {aSeGpioOutEn_n[2]}]
set_property PACKAGE_PIN B30 [get_ports {aSeGpioOutEn_n[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSeGpioOut[*]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSeGpioOutEn_n[*]}]
set_property DRIVE 16 [get_ports {aSeGpioOut[*]}]
set_property DRIVE 16 [get_ports {aSeGpioOutEn_n[*]}]
set_property SLEW FAST [get_ports {aSeGpioOut[*]}]
set_property SLEW FAST [get_ports {aSeGpioOutEn_n[*]}]

#~~SFP+ Interface
set_property PACKAGE_PIN F23 [get_ports {aPort0_Tx_Fault}]
set_property PACKAGE_PIN B23 [get_ports {aPort0_Tx_Disable}]
set_property PACKAGE_PIN G27 [get_ports {aPort0_RS0}]
set_property PACKAGE_PIN A26 [get_ports {aPort0_RS1}]
set_property PACKAGE_PIN A27 [get_ports {aPort0_SCL}]
set_property PACKAGE_PIN C27 [get_ports {aPort0_SDA}]
set_property PACKAGE_PIN D23 [get_ports {aPort0_Mod_ABS}]
set_property PACKAGE_PIN F25 [get_ports {aPort0_Rx_LOS}]
set_property PACKAGE_PIN D24 [get_ports {aPort1_Tx_Fault}]
set_property PACKAGE_PIN F26 [get_ports {aPort1_Tx_Disable}]
set_property PACKAGE_PIN A23 [get_ports {aPort1_RS0}]
set_property PACKAGE_PIN F27 [get_ports {aPort1_RS1}]
set_property PACKAGE_PIN D27 [get_ports {aPort1_SCL}]
set_property PACKAGE_PIN A25 [get_ports {aPort1_SDA}]
set_property PACKAGE_PIN G24 [get_ports {aPort1_Mod_ABS}]
set_property PACKAGE_PIN B27 [get_ports {aPort1_Rx_LOS}]
set_property PACKAGE_PIN B28 [get_ports {aPort2_Tx_Fault}]
set_property PACKAGE_PIN A28 [get_ports {aPort2_Tx_Disable}]
set_property PACKAGE_PIN G23 [get_ports {aPort2_RS0}]
set_property PACKAGE_PIN C24 [get_ports {aPort2_RS1}]
set_property PACKAGE_PIN E26 [get_ports {aPort2_SCL}]
set_property PACKAGE_PIN E25 [get_ports {aPort2_SDA}]
set_property PACKAGE_PIN D26 [get_ports {aPort2_Mod_ABS}]
set_property PACKAGE_PIN C26 [get_ports {aPort2_Rx_LOS}]
set_property PACKAGE_PIN E28 [get_ports {aPort3_Tx_Fault}]
set_property PACKAGE_PIN E29 [get_ports {aPort3_Tx_Disable}]
set_property PACKAGE_PIN E24 [get_ports {aPort3_RS0}]
set_property PACKAGE_PIN H24 [get_ports {aPort3_RS1}]
set_property PACKAGE_PIN E23 [get_ports {aPort3_SCL}]
set_property PACKAGE_PIN H25 [get_ports {aPort3_SDA}]
set_property PACKAGE_PIN G28 [get_ports {aPort3_Mod_ABS}]
set_property PACKAGE_PIN F28 [get_ports {aPort3_Rx_LOS}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_Tx_Fault}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_Tx_Disable}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_RS*}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_SCL}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_SDA}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_Mod_ABS}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*_Rx_LOS}]
set_property DRIVE 16 [get_ports {aPort*_RS*}]
set_property SLEW FAST [get_ports {aPort*_RS*}]

#~~ General purpose clock input from the Si5368 ClkOut3
set_property PACKAGE_PIN C25 [get_ports {Si5368ClkIn}]
set_property PACKAGE_PIN B25 [get_ports {Si5368ClkIn_n}]
set_property IOSTANDARD LVDS_25 [get_ports {Si5368ClkIn}]
set_property IOSTANDARD LVDS_25 [get_ports {Si5368ClkIn_n}]
set_property DIFF_TERM TRUE [get_ports {Si5368ClkIn}]
set_property DIFF_TERM TRUE [get_ports {Si5368ClkIn_n}]

############# BANK 17 VCCO = 2.5V ##################
#~~ GPIO Interface, continued from above
set_property PACKAGE_PIN E21 [get_ports {aSeGpioIn[0]}]
set_property PACKAGE_PIN E20 [get_ports {aSeGpioIn[1]}]
set_property PACKAGE_PIN F20 [get_ports {aSeGpioIn[2]}]
set_property PACKAGE_PIN F21 [get_ports {aSeGpioIn[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSeGpioIn[*]}]

#~~ Clocking Interface
#     The RxRecoveredClock is an output from the FPGA to
#     the Si5368 ClkIn1 port for use as a reference clock.
#     it is intended to be used when the reference clock needs
#     to be locked to the recovered clock from a serial transceiver.
#     A SPI port is used for communications with the Si5368 and
#     there are a number of other monitoring and control signals
#     to and from the Si5368.
set_property PACKAGE_PIN H21 [get_ports {RxRecoveredClock}]
set_property PACKAGE_PIN H22 [get_ports {RxRecoveredClock_n}]
set_property PACKAGE_PIN G22 [get_ports {aSi5368SS_n}]
set_property PACKAGE_PIN F22 [get_ports {aSi5368Sdi}]
set_property PACKAGE_PIN D22 [get_ports {aSi5368Sdo}]
set_property PACKAGE_PIN C22 [get_ports {aSi5368SClk}]
set_property PACKAGE_PIN D21 [get_ports {aSi5368Int}]
set_property PACKAGE_PIN A20 [get_ports {aSi5368PllLocked_n}]
set_property PACKAGE_PIN A17 [get_ports {aSi5368Rst_n}]
set_property PACKAGE_PIN E18 [get_ports {aSi5368Dec}]
set_property PACKAGE_PIN B19 [get_ports {aSi5368Inc}]
set_property PACKAGE_PIN A21 [get_ports {aSi5368ClkInActive[0]}]
set_property PACKAGE_PIN B18 [get_ports {aSi5368ClkInActive[1]}]
set_property PACKAGE_PIN A18 [get_ports {aSi5368ClkInActive[2]}]
set_property PACKAGE_PIN B22 [get_ports {aSi5368ClkInActive[3]}]
set_property PACKAGE_PIN C21 [get_ports {aSi5368FSyncAlign}]
set_property PACKAGE_PIN L17 [get_ports {aSi5368CkIn1Bad}]
set_property PACKAGE_PIN A22 [get_ports {aSi5368CkIn2Bad}]
set_property PACKAGE_PIN C19 [get_ports {aSi5368CkIn3Bad}]
set_property IOSTANDARD LVDS_25 [get_ports {RxRecoveredClock}]
set_property IOSTANDARD LVDS_25 [get_ports {RxRecoveredClock_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSi5368*}]
set_property DIFF_TERM TRUE [get_ports {RxRecoveredClock}]
set_property DIFF_TERM TRUE [get_ports {RxRecoveredClock_n}]
set_property PACKAGE_PIN G17 [get_ports {aSi5338_Intr}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSi5338_Intr}]

#~~ TDC Signals, continued from above
set_property PACKAGE_PIN C17 [get_ports {TdcAssertClkOut}]
set_property PACKAGE_PIN B17 [get_ports {TdcAssertClkOut_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {TdcAssertClkOut}]
set_property IOSTANDARD LVCMOS25 [get_ports {TdcAssertClkOut_n}]
set_property DRIVE 8 [get_ports {TdcAssertClkOut}]
set_property DRIVE 8 [get_ports {TdcAssertClkOut_n}]
set_property SLEW FAST [get_ports {TdcAssertClkOut}]
set_property SLEW FAST [get_ports {TdcAssertClkOut_n}]

#~~ SFP+ Control signals, continued from above
set_property PACKAGE_PIN J17 [get_ports {aPort0_Pwr_n}]
set_property PACKAGE_PIN L18 [get_ports {aPort0_OC_n}]
set_property PACKAGE_PIN H17 [get_ports {aPort1_Pwr_n}]
set_property PACKAGE_PIN K19 [get_ports {aPort1_OC_n}]
set_property PACKAGE_PIN J19 [get_ports {aPort2_Pwr_n}]
set_property PACKAGE_PIN K20 [get_ports {aPort2_OC_n}]
set_property PACKAGE_PIN H19 [get_ports {aPort3_Pwr_n}]
set_property PACKAGE_PIN F17 [get_ports {aPort3_OC_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*Pwr_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aPort*OC_n}]
set_property PACKAGE_PIN K18 [get_ports {aSmb0_MuxSelRef}]
set_property PACKAGE_PIN D17 [get_ports {aSmb0_MuxSelPfi}]
set_property PACKAGE_PIN D18 [get_ports {aSmb0_AC_Couple}]
set_property PACKAGE_PIN C20 [get_ports {aSmb0_InBufOe_n}]
set_property PACKAGE_PIN J18 [get_ports {aSmb1_MuxSelRef}]
set_property PACKAGE_PIN E19 [get_ports {aSmb1_MuxSelPfi}]
set_property PACKAGE_PIN D19 [get_ports {aSmb1_AC_Couple}]
set_property PACKAGE_PIN H20 [get_ports {aSmb2_MuxSelRef}]
set_property PACKAGE_PIN D16 [get_ports {aSmb2_MuxSelPfi}]
set_property PACKAGE_PIN C16 [get_ports {aSmb2_AC_Couple}]
set_property PACKAGE_PIN G20 [get_ports {aSmb3_MuxSelRef}]
set_property PACKAGE_PIN G18 [get_ports {aSmb3_MuxSelPfi}]
set_property PACKAGE_PIN F18 [get_ports {aSmb3_AC_Couple}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSmb*MuxSel*}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSmb*AC_Couple}]
set_property IOSTANDARD LVCMOS25 [get_ports {aSmb*InBufOe_n}]

############# BANK 18 VCCO = 2.5V ##################
#~~ Board Control and Status
set_property PACKAGE_PIN A15 [get_ports {aClockConfigRst_n}]
set_property PACKAGE_PIN H12 [get_ports {aAuthenticationSda}]
set_property IOSTANDARD LVCMOS25 [get_ports {aClockConfigRst_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aAuthenticationSda}]

#~~ LED Control - for status and debug
set_property PACKAGE_PIN B15 [get_ports {aLedActiveRed_n}]
set_property PACKAGE_PIN B14 [get_ports {aLedActiveGreen_n}]
set_property PACKAGE_PIN A13 [get_ports {aLedAccessRed_n}]
set_property PACKAGE_PIN C15 [get_ports {aLedAccessGreen_n}]
set_property IOSTANDARD LVCMOS25 [get_ports {aLedAc*}]

#~~ Board Control and Status, continued
set_property PACKAGE_PIN H16 [get_ports {aAdcAlertx2C}]
set_property PACKAGE_PIN H11 [get_ports {aAdcAlertx23}]
set_property IOSTANDARD LVCMOS25 [get_ports {aAdcAlertx2C}]
set_property IOSTANDARD LVCMOS25 [get_ports {aAdcAlertx23}]

############# BANK 32 ##################
#~~ DRAM Interface
#     This interface is constrained in the PXIe659XR_DRAM.ucf file

############# BANK 33 ##################
#~~ DRAM Interface, continued
set_property PACKAGE_PIN AE10 [get_ports {DramExtOsc}]
set_property IOSTANDARD SSTL135 [get_ports {DramExtOsc}]
set_property INTERNAL_VREF 0.675 [get_iobanks 33]

############# BANK 34 ##################
#~~ DRAM Interface, continued


############# BANK 115 ##################
#~~ PCI Express Lanes 4-7, if we enable PCI Express Gen 2 x 8
#set_property PACKAGE_PIN V6 [get_ports {pciExpRxp[4]}]
#set_property PACKAGE_PIN W4 [get_ports {pciExpRxp[5]}]
#set_property PACKAGE_PIN Y6 [get_ports {pciExpRxp[6]}]
#set_property PACKAGE_PIN AA4 [get_ports {pciExpRxp[7]}]
#set_property PACKAGE_PIN V5 [get_ports {pciExpRxn[4]}]
#set_property PACKAGE_PIN W3 [get_ports {pciExpRxn[5]}]
#set_property PACKAGE_PIN Y5 [get_ports {pciExpRxn[6]}]
#set_property PACKAGE_PIN AA3 [get_ports {pciExpRxn[7]}]
#set_property PACKAGE_PIN T2 [get_ports {pciExpTxp[4]}]
#set_property PACKAGE_PIN U4 [get_ports {pciExpTxp[5]}]
#set_property PACKAGE_PIN V2 [get_ports {pciExpTxp[6]}]
#set_property PACKAGE_PIN Y2 [get_ports {pciExpTxp[7]}]
#set_property PACKAGE_PIN T1 [get_ports {pciExpTxn[4]}]
#set_property PACKAGE_PIN U3 [get_ports {pciExpTxn[5]}]
#set_property PACKAGE_PIN V1 [get_ports {pciExpTxn[6]}]
#set_property PACKAGE_PIN Y1 [get_ports {pciExpTxn[7]}]

############# BANK 116 ##################
#~~ PCI Express Lanes 0-3 for PCI Express Gen 2
set_property PACKAGE_PIN M6 [get_ports {pciExpRxp[0]}]
set_property PACKAGE_PIN P6 [get_ports {pciExpRxp[1]}]
set_property PACKAGE_PIN R4 [get_ports {pciExpRxp[2]}]
set_property PACKAGE_PIN T6 [get_ports {pciExpRxp[3]}]
set_property PACKAGE_PIN M5 [get_ports {pciExpRxn[0]}]
set_property PACKAGE_PIN P5 [get_ports {pciExpRxn[1]}]
set_property PACKAGE_PIN R3 [get_ports {pciExpRxn[2]}]
set_property PACKAGE_PIN T5 [get_ports {pciExpRxn[3]}]
set_property PACKAGE_PIN L4 [get_ports {pciExpTxp[0]}]
set_property PACKAGE_PIN M2 [get_ports {pciExpTxp[1]}]
set_property PACKAGE_PIN N4 [get_ports {pciExpTxp[2]}]
set_property PACKAGE_PIN P2 [get_ports {pciExpTxp[3]}]
set_property PACKAGE_PIN L3 [get_ports {pciExpTxn[0]}]
set_property PACKAGE_PIN M1 [get_ports {pciExpTxn[1]}]
set_property PACKAGE_PIN N3 [get_ports {pciExpTxn[2]}]
set_property PACKAGE_PIN P1 [get_ports {pciExpTxn[3]}]
#~~ The PCIe interface runs off of the 100 MHz PCIe reference clock
set_property PACKAGE_PIN N8 [get_ports {RefClk100p}]
set_property PACKAGE_PIN N7 [get_ports {RefClk100n}]

############# BANK 118 ##################
#~~ High Speed Serial Connector Lanes
#     These are mentioned here for reference, but the actual location
#     constraint is generated within the LabVIEW project for these
#     since not all of these may be used by the user and the errors
#     are not handled nicely if these I/Os are constrained but not used.

############# BANK 117 ##################
#~~ High Speed Serial Connector Lanes, continued from above

############################################################################
## End PXIe6592R_Top_Gen2x8_Pins.xdc
############################################################################
#########################################################################################
#
# G2X8ChinchWithDmaPortBim128.xdc
#
#  This file is intended to be a guideline for a client of this variant of the CHInCh
#  to be able to create the top level constraints for anything related with the CHInCh.
#
#  Careful review is needed to make sure that constraints are adapted to the specific
#  way the CHInCh is being used (e.g. different part, placement, hierarchical
#  instantiation, etc.
#
#########################################################################################

################################
# Timing constraints. These are expected to stay the same and only be adapted in case
#  the CHInCh component in instantiated with a different name or a different place in
#  the top level hierarchy.
################################

# PCIe reset. Note that this is treated as asynchronous for the CHInCh. If you are connecting a reset
#  generated different than from the pin, you should change this constraint accordingly and may be
#  add another one for the pin itself if needed.
#
#  Note: Constraint adapted from final section of the core example design
#     //ASIC/CHInCh/trunk/2.0/CHInCh/Target/kintex7/Vivado/XC7K410T2FFG900/VendorIP/G2PcieX8K7Hip/G2PcieX8K7Hip/example_design/xilinx_pcie_7x_ep_x8g2.xdc

set_false_path -from [get_ports aPcieRst_n]


# PCI Express TxOutClk from pipe lane 0. Setting this clock automatically propagates to
# generate most generated clocks for the HIP and the CHInCh (e.g. DmaClockSource pin to
# the application which is routed back to the CHInCh). In particular it should create
# the following generated clocks:
#
# Clock       Period    Waveform           Attributes  Sources
# mmcm_fb     10.00000  {0.00000 5.00000}  P,G         {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKFBOUT}
# clk_125mhz  8.00000   {0.00000 4.00000}  P,G         {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKOUT0}
# clk_250mhz  4.00000   {0.00000 2.00000}  P,G         {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKOUT1}
# userclk1    2.00000   {0.00000 1.00000}  P,G         {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKOUT2}
# userclk2    4.00000   {0.00000 2.00000}  P,G         {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKOUT3}

create_clock -name sys_clk -period 10 [get_pins  {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i/TXOUTCLK}]


# From the generated clocks mentioned above. There exists a clock mux that selects between
#  clk_125mhz and clk_250mhz for a specific clock region.
# The following constraints set those clocks as physically exclusive but just for the clock
#  region driven by the output of the mux. It also sets a false path to the selection pins
#  of the mux.
#
#  Note: Constraint adapted from the timing section of the core example design
#     //ASIC/CHInCh/trunk/2.0/CHInCh/Target/kintex7/Vivado/XC7K410T2FFG900/VendorIP/G2PcieX8K7Hip/G2PcieX8K7Hip/example_design/xilinx_pcie_7x_ep_x8g2.xdc

set_false_path -to [get_pins {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S*}]

create_generated_clock -name clk_125mhz_mux \
                        -source [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0] \
                        -divide_by 1 \
                        [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]

create_generated_clock -name clk_250mhz_mux \
                        -source [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1] \
                        -divide_by 1 -add -master_clock [get_clocks -of [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1]] \
                        [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]

set_clock_groups -name pcieclkmux -physically_exclusive -group clk_125mhz_mux -group clk_250mhz_mux


# The timing section of the core xdc file (not the example design) also defines a couple
#  of false paths.
#     //ASIC/CHInCh/trunk/2.0/CHInCh/Target/kintex7/Vivado/XC7K410T2FFG900/VendorIP/G2PcieX8K7Hip/G2PcieX8K7Hip/source/G2PcieX8K7Hip-PCIE_X0Y0.xdc

set_false_path -through [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_block_i/PLPHYLNKUPN*]
set_false_path -through [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_block_i/PLRECEIVEDHOTRST*]


# Disabling recovery and removal from CHInCh internal reset with high fanout. The star after _reg
#  is to cover replicated flops if any.
set_false_path -through [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/sUserResetQ_reg*/Q]


# As far as the CHInCh is concerned, the BusClock (input to the CHInCh) and the DmaClock
#  (also input but typically expected to come directly from the DmaClockSource output of
#  the CHInCh) are asynchronous. I don't want to simply declare both clocks asynchronous
#  because I can't assume what these Clocks are running outside the CHInCh and if the
#  top level has constraints between them that would be invalidated by a set_clock_groups
#  constraint. Instead, all paths are constrained explicitly. There are two type of paths
#  between these two clocks in the CHInCh. The RegPortClock crossings which are contained
#  inside the LabVIEW module indicated below, and asynchronous reset paths  that are
#  covered by the constraint above since the implementation assumes the reset asynchronous.

#--------------------------------
# RegPort clock crossing
#   LabVIEW FPGA module instantiated outside LabVIEW FPGA
#   Copying constraints from LabVIEW
#--------------------------------

set TNM_FixedCustom1 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/*/HBx/*iReset_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom2 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom3 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*ODataFlop/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom4 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom5 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom6 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom7 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom8 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom9 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom10 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom11 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom12 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*ODataFlop*/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom13 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom14 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom15 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom16 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom17 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom18 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedCustom19 [get_cells {G2X8ChinchWithDmaPortBim128x/DmaPortBIMx/LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_FixedCustom2 -to $TNM_FixedCustom3 -datapath_only 48.4950005000
set_max_delay -from $TNM_FixedCustom4 -to $TNM_FixedCustom5 -datapath_only 74.2425007499
set_max_delay -from $TNM_FixedCustom6 -to $TNM_FixedCustom7 -datapath_only 11.2488001200
set_max_delay -from $TNM_FixedCustom5 -to $TNM_FixedCustom8 -datapath_only 12.3737501250
set_max_delay -from $TNM_FixedCustom1 -to $TNM_FixedCustom9 -datapath_only 1.8748000200
set_max_delay -from $TNM_FixedCustom7 -to $TNM_FixedCustom10 -datapath_only 1.8748000200
set_max_delay -from $TNM_FixedCustom11 -to $TNM_FixedCustom12 -datapath_only 6.4992000800
set_max_delay -from $TNM_FixedCustom13 -to $TNM_FixedCustom14 -datapath_only 11.2488001200
set_max_delay -from $TNM_FixedCustom15 -to $TNM_FixedCustom16 -datapath_only 74.2425007499
set_max_delay -from $TNM_FixedCustom14 -to $TNM_FixedCustom17 -datapath_only 1.8748000200
set_max_delay -from $TNM_FixedCustom1 -to $TNM_FixedCustom18 -datapath_only 12.3737501250
set_max_delay -from $TNM_FixedCustom16 -to $TNM_FixedCustom19 -datapath_only 12.3737501250


################################
# Location Constraints
#  These correspond to the expected connection on K7 410 devices, i.e. determined by which
#  pins are connected to the PCIe bus. Modify accordingly for different FPGAs, or different
#  placements.
################################

# PCIe Transceiver instance placement.  These constraints select the transceivers to be used,
# which also dictates the pinout for the transmit and receive differential pairs.

# PCIe Lane 0
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 1
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 2
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 3
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 4
set_property LOC GTXE2_CHANNEL_X0Y3 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 5
set_property LOC GTXE2_CHANNEL_X0Y2 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 6
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
# PCIe Lane 7
set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]

# PCI Express Block placement. This constraint selects the PCI Express Block to be used.
set_property LOC PCIE_X0Y0 [get_cells G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_block_i]

# BlockRAM placement
set_property LOC RAMB36_X10Y35 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[7].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X10Y36 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[6].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y37  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[5].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y36  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[4].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y35  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[3].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y34  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[2].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y33  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[1].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y32  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[0].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y31  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[0].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]
set_property LOC RAMB36_X9Y30  [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/G2PcieX8K7Hipx/U0/inst/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[1].ram/use_sdp.ramb36sdp/sdp_bl.ramb36_dp_bl.ram36_bl}]



############################################################################
##
##  National Instruments 2014      www.ni.com
##  PXIe-6592R Timing XDC Constraints
##  XC7K410T-FFG900-2 Package
##
############################################################################

# Documentation for timing analysis performed can be found here:
# //MI/Digital/niPXIe659XR/FixedLogic/trunk/14.0/source/Doc/PXIe-659XR Timing Constraints.docx

##############################
# General Board Timing Section
##############################
# PCIe Reference Clock: 100 MHz from the backplane
create_clock -period 10.000 -name PciExpRefClk -waveform {0.000 5.000} [get_ports RefClk100p]

# LVFPGA 40 MHz Onboard Clock
create_clock -period 25.000 -name Osc40In -waveform {0.000 12.500} [get_ports {Osc40In}]

# PXIe Clk100 Backplane Clock : 100 MHz
create_clock -period 10.000 -name PxieClk100 -waveform {0.000 5.000} [get_ports {PxieClk100}]

# DRAM 133 MHz from onboard oscillator
create_clock -period 7.5000 -name DramExtOsc -waveform {0.000 3.750} [get_ports {DramExtOsc}]

# From Xilinx AR 40603: http://www.xilinx.com/support/answers/40603.htm
#
# The clock input (sys_clk) can now be input on any CCIO in the column where the memory interface is located;
# this includes CCIO in banks that do not contain the memory interface, but must be in the same column as the memory interface.
# The PLL must be located in the bank containing the clock sent to the memory. To route the input clock to the memory interface PLL,
# the CMT backbone must be used. With the MIG implementation, one spare interconnect on the backbone is available that can be used for this purpose.
# MIG 1.4, released with ISE Design Suite 13.4, allows this input clocking set-up and properly drives the CMT backbone.
# CLOCK_DEDICATED_ROUTE = BACKBONE constraint is used to implement CMT backbone, following warning message is expected. It can be ignored safely.
#
# WARNING: [Place 30-172] Sub-optimal placement for a clock-capable IO pin and PLL pair.
# The flow will continue as the CLOCK_DEDICATED_ROUTE constraint is set to BACKBONE.
# u_mig_7series_0/c0_u_ddr3_clk_ibuf/diff_input_clk.u_ibufg_sys_clk (IBUFDS.O) is locked to IOB_X0Y176
# u_mig_7series_0/c0_u_ddr3_infrastructure/plle2_i (PLLE2_ADV.CLKIN1) is locked to PLLE2_ADV_X0Y1
# u_mig_7series_0/c1_u_ddr3_infrastructure/plle2_i (PLLE2_ADV.CLKIN1) is locked to PLLE2_ADV_X0Y5
#
# Adding fixed route properties per Mike Jablin's post: http://nitalk.natinst.com/thread/66021
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets DramExtOsc]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_pins PXIe659XR_DRAMx/u_PXIe659XR_DRAM_mig/u_ddr3_infrastructure/plle2_i/CLKIN1]

set_property FIXED_ROUTE { IOB_IBUF0 RIOI_I0 RIOI_ILOGIC0_D IOI_ILOGIC0_O RIOI_I2GCLK_TOP0 HCLK_CMT_MUX_PLLE2_CLKIN1 CMT_TOP_R_UPPER_T_PLLE2_CLKIN1 } [get_nets {DramExtOsc_IBUF }]
set_property is_bel_fixed 1 [get_cells {DramExtOsc_IBUF_inst PXIe659XR_DRAMx/u_PXIe659XR_DRAM_mig/u_ddr3_infrastructure/plle2_i }]
set_property is_loc_fixed 1 [get_cells {DramExtOsc_IBUF_inst PXIe659XR_DRAMx/u_PXIe659XR_DRAM_mig/u_ddr3_infrastructure/plle2_i }]

# CPLD to FPGA RX Clock: 75 MHz
create_clock -period 13.333 -name RxSerClk [get_ports {RxSerClk}]

# FPGA to CPLD TX Clock = Osc40Mhz Clk with 180 degree phase shift
create_generated_clock -name FpgaToCpldSerClk \
                       -source [get_ports Osc40In] \
                       -edges {1 2 3} -edge_shift {-12.5 -12.5 -12.5} \
                       [get_ports txSerClkOut]

# UnkownClk for Frequency Counter: create constraint for 333.33 MHz
create_clock -period 3.000 -name FrequencyCounterUnknownClk -waveform {0.000 1.500} [get_pins PXIe6592R_FixedLogicx/FrequencyCounterIntfx/UnknownClk_BUFG/O]

# PCIeUserClk2 in the CHInCh
set PcieUserClk2 [get_pins G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/pipe_clock_i/mmcm_i/CLKOUT3]

#####################
# INPUT/OUTPUT DELAYS
#####################

#------------
# CPLD Timing
#------------

# The FPGA communicates with the CPLD via a source synchronous interface
# TX source synchronous clock : txSerClkOut
# TX source synchronous Data  : tCpldRegData, CpldClkEn

# The FPGA transmits data synchronous to the falling edge of txSerClkOut
# The CPLD receives data synchronous to the rising edge of txSerClkOut

#                         _______ Launch Edge
#                        /
#                       \/
#                         ___________             ___________
#   Osc40MHz            _|           |___________|           |______
#                 _             ___________             ______
#   txSerClkOut    |___________|           |___________|
#
#   tCpldRegData        .XXXXXX..Data0...........XXXXX.......Data1...
#                                   /\
#                                    \____ Capture Edge

# The FPGA to CPLD clock period is 25 ns
# The CPLD can properly register the incoming data on the rising edge of txSerClkOut as long as the
# FPGA maximum TCO is 3.95 ns and min TCO is 1.253 ns with respect to the rising edge of Osc40MHz
# The min Tco is based upon a CPLD hold constraint of 0.8ns in case it is ever corrected to
# match the Emerald Bay FPGA constraint.

set FpgaToCpldTcoMax  3.95
set FpgaToCpldTcoMin 1.253

set FpgaToCpldMaxOutputDelay  {[get_property period [get_clocks Osc40In]] / 2 - $FpgaToCpldTcoMax}
set FpgaToCpldMinOutputDelay  {0 - $FpgaToCpldTcoMin}

set_output_delay -clock [get_clocks FpgaToCpldSerClk] -max [expr $FpgaToCpldMaxOutputDelay] [get_ports {tCpldRegData CpldClkEn}]
set_output_delay -clock [get_clocks FpgaToCpldSerClk] -min [expr $FpgaToCpldMinOutputDelay] [get_ports {tCpldRegData CpldClkEn}]

# txSerClkOut Tco
# The motivation for this constraint is just to have a clean timing report.
# The timing requirements between the clock on this pin and the data pins
# are already being accounted for in the max and min output delays above.

set_output_delay -clock {Osc40In} -max 1.0 [get_ports txSerClkOut]
set_output_delay -clock {Osc40In} -min 0.0 [get_ports txSerClkOut]

# The FPGA communicates with the CPLD via a source synchronous interface
# RX source synchronous clock : RxSerClk
# RX source synchronous Data  : rRxSerData

#                                     _______ Launch Edge
#                                    /
#                                   \/
#                         ___________             ___________
#   RxSerClk            _|           |___________|           |______
#
#   rRxSerData           .........XXXXXXX........Data0....XXXXX.......Data1..
#                                               /\
#                                                \____ Capture Edge


# The following numbers are the calculated FPGA available setup and hold and
# include the CPLD Tco numbers plus any board skew numbers
set CpldDataAtFpgaSetupTime   1.5
set CpldDataAtFpgaHoldTime    2.0

set CpldToFpgaMaxOutputDelay  {[get_property period [get_clocks RxSerClk]] - $CpldDataAtFpgaSetupTime}
set CpldToFpgaMinOutputDelay  {$CpldDataAtFpgaHoldTime}

set_input_delay -clock [get_clocks RxSerClk] -max [expr $CpldToFpgaMaxOutputDelay] [get_ports rRxSerData]
set_input_delay -clock [get_clocks RxSerClk] -min [expr $CpldToFpgaMinOutputDelay] [get_ports rRxSerData]

#----------------------
# Clk100/Sync100 Timing
#----------------------
#                            ___________             _________
#   PXIeClk100   ___________|           |___________|
#                                             __________
#   Sync100      ____________________________|          |__________
#
# PXIe Spec states that we have 3 ns Setup time and 1 ns Hold Time
# This means that: The maximum clock-to-out = Clk100 Period - Setup Time = 7 ns
#                  The minimum clock-to-out = Hold Time = 1 ns

set BackPlaneSyncMaxTco 7.0
set BackPlaneSyncMinTco 1.0

# The PXIeClk100 propagates through the SY58021UMG part
set PxieClk100MinPropDelay  0.15
set PxieClk100MaxPropDelay  0.30

# The Sync100 propagates through the DS10BR150 part
set Sync100MinPropDelay  0.0
set Sync100MaxPropDelay  0.60

# PxieClk100Sync100 routing skew number is set to 250 ps as Sync100 and CLk100 are
# routed with almost the same trace length (being conservative here)
set Sync100Clk100PcbRoutingSkew 0.25

# An FPGA PLL is used to shift PxieClk100 to capture PxieSync100
# This PLL specifies a a 22.5 degree phase shift on the capture clock with respect to the launch clock
# The SDC timing tools, by default, analyze setup time between a launch edge and the next available
# capture edge as specified in the following image with the default launch and default capture edges:

# The default capture edge is not the correct capture edge that we should use.
# We, therefore, need to specify a multicyle path constraint for this path

# Note that although it looks like shifting the PXIeClk100 to the right by 22.5 degree
# is wrong as we should be shifting the capture clock to the left, this is actually the
# correct needed shift as the FPGA PLL overcompensates with a large negative phase shift
# that the capture clock ends up being shifted to the left at the IOB flop:

#                                              ___________             _________
# PXIeClk100 Launch Clk @ FPGA PIN      ______|           |___________|
#                                                              __________
# PxieSync100 @ FPGA IOB D Flop Input   ______________________|          |__________
#                                                   ___________             _________
# PXIeClk100 Specified Capture Clk      ___________|           |___________|
#  (+22.5 degree phase shift)
#                                            ___________             _________
# PXIeClk100 RX Clk @ Sync100 IOB Flop   ___|           |___________|
# (PLL negative adjustment included)

set_multicycle_path 2 -setup -from [get_clocks PxieClk100] -to [get_clocks -of_objects [get_pins Sync100Capturex/plle2_adv_inst/CLKOUT0]]

# Note: To simplify matters, I assume that the Sync100/Clk100 skew negatively affect setup and hold
# This is obvioulsy not true as it should help one parameter at the expense of the other.

set_input_delay -clock [get_clocks  PxieClk100] -max \
                       [expr $BackPlaneSyncMaxTco + $Sync100MaxPropDelay - $PxieClk100MinPropDelay + $Sync100Clk100PcbRoutingSkew] \
                       [get_ports pPxieSync100*]

set_input_delay -clock [get_clocks  PxieClk100] -min  \
                       [expr $BackPlaneSyncMinTco - $PxieClk100MaxPropDelay + $Sync100MinPropDelay - $Sync100Clk100PcbRoutingSkew] \
                       [get_ports pPxieSync100*]

#-------------------------
# Board Devices I2C Timing
#-------------------------
# I2C Devices include:
# INA219
#   MinTsu = 100, MinThd = 0, MaxTco = 300, MinTco = 0
# TMP421
#   MinTsu = 100, MinThd = 0, MaxTco = 1000, MinTco = 0
# AT24C02
#   MinTsu = 100, MinThd = 0, MaxTco = 300, MinTco = 0
# AD7291
#   MinTsu = 250, MinThd = 0, MaxTco = 1000, MinTco = 0
# TCA6416
#   MinTsu = 250, MinThd = 0, MaxTco = 1000, MinTco = 0
# Si570
#   MinTsu = 250, MinThd = 0, MaxTco = 1000, MinTco = 0
# Si5338
#   MinTsu = 250, MinThd = 0, MaxTco = 1000, MinTco = 0

# Worst case I2C timing from board devices
set I2cSdaMinTsu  100.0
set I2cSdaMinThd  0.0
set I2cMaxTco     1000.0
set I2cMinTco     0.0

# Conservative values for skew and propagation delay.
# The skew allows for a difference in 18 inches between traces
# The board delay allows for a trace of up to 24 inches
# An extra nanosecond is added to both values for extra margin
set BoardPropSkew    4.0
set BoardPropDly     5.0

# The I2C timing is created through the timing parameter constants in
# //MI/Digital/niPXIe659XR/FixedLogic/trunk/14.0/source/PXIe6592R_FixedLogic/source/I2c/I2cBusIntf.vhd
# and passed into the NiCores I2cMasterTop reference component. There is a description of the
# specific values used in the I2cBusIntf.vhd above, and the edge numbers used below have been
# verified through simulations.

# SCL is generated by dividing 40MHz clock by 1956 with a 50.1% duty cycle
# with the kClkHigh and kClkLow constants in I2cBusIntf.vhd. SCL is high for
# 980 Osc40 cycles and low for 976 Osc40 cycles.
#
#   Edge Nbr      1 2 3           1961            3913
#                  _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| ..| |_| |_| |_| |.. |_| |_| |_
#                  _____..________                 ___
#   SCL          _|               |______.._______|
#

create_generated_clock -name I2cScl_int \
                       -source [get_ports {Osc40In}] \
                       -edges {1 1961 3913} \
                       [get_pins {PXIe6592R_FixedLogicx/I2cBusIntfx/I2cMasterBlock.I2cMasterTopx/I2cSclDriverx/aSclOut_reg/Q}]

create_generated_clock -name I2cScl \
                       -source [get_pins {PXIe6592R_FixedLogicx/I2cBusIntfx/I2cMasterBlock.I2cMasterTopx/I2cSclDriverx/aSclOut_reg/Q}] \
                       -divide_by 1 \
                       [get_ports aFpgaScl]

# I2C SDA Output Setup/Hold constraint
# SDA output timing is created with the kDataOutHold constant in I2cBusIntf.vhd. SDA is
# launched 20 Osc40 cycles after the deassertion of SCL.
#                _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz   _| |_| ..| |_| ..| |_| |_| ..| |_| |_| |_| |_| |_
#              __                     ____.._____
#   SCL          |____..______.._____|           |____..________
#
#   SDA        ---------><---Data 0---------------------><--Data 1-
#   Launch              *                               *
#   Latch                           *
#   Setup              956      1   0  -- Source launch edge
#                        \       \_ Edge used for setup analysis without multicycle
#                         \_______ Edge used for setup analysis with SMS = 956
#   Hold                    0   1   2   3   4          1975 -- Next launch edge
#                            \                           \_ Edge used for hold with SMH = 1975
#                             \____ Edge used for hold analysis without multicycle
#

set_multicycle_path -start -setup 956  -to [get_ports aFpgaSda]
set_multicycle_path -start -hold  1975 -to [get_ports aFpgaSda]

set_output_delay -clock {I2cScl} \
                 -max [expr $BoardPropSkew + $I2cSdaMinTsu] \
                 [get_ports aFpgaSda]

set_output_delay -clock {I2cScl} \
                 -min [expr 0 - $BoardPropSkew - $I2cSdaMinThd] \
                 [get_ports aFpgaSda]

# I2C SDA Input Setup/Hold constraint
#                  _   _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| ..| |_| |_| ..| |_| |_| ..| |_| |_
#                   _____..____             _____..____
#   SCL          __|           |_____..____|           |__
#
#   SDA        ---------------><---Data 0-------------><----Data 1-
#   Launch                    *                       *
#   Latch                                 *
#   Setup                     0          976  -- Latch edge
#                              \           \_ Edge used for setup analysis with EMS = 976
#                               \_______ Edge use for setup analysis without EMS
#   Hold         1955                 0 -- previous launch edge
#                  \                   \_ Edge used for hold analysis without multicycle
#                   \____ Edge used for hold analysis with EMH = 1955
#

set_multicycle_path -end -setup 976  -from [get_ports aFpgaSda]
set_multicycle_path -end -hold  1955 -from [get_ports aFpgaSda]

set_input_delay -clock {I2cScl} -clock_fall \
                -max [expr 2*$BoardPropDly + $I2cMaxTco] \
                [get_ports aFpgaSda]

set_input_delay -clock {I2cScl} -clock_fall \
                -min $I2cMinTco \
                [get_ports aFpgaSda]

# SCL Tco
# The motivation for this constraint is just to have a clean timing report.
# The timing requirements between the clock on this pin and the data pin
# are already being accounted for in the max and min output delays above.

set_output_delay -clock {Osc40In} -max 1.0 [get_ports aFpgaScl]
set_output_delay -clock {Osc40In} -min 0.0 [get_ports aFpgaScl]

#------------------
# Si5368 SPI Timing
#------------------

# Si5368 SPI Timing
set Si5368SdiMaxTco       25.0
set Si5368SdiMinTco       0.0
set Si5368SdoMinTsu       25.0
set Si5368SdoMinThd       20.0
set Si5368CsbMinTsu       25.0
set Si5368CsbMinThd       20.0

# Si5368 SPI Clock constraint
# The SPI clock is generated off the 40 MHz oscillator clock
# creating a 40MHz divided by 8 frequency of 5 MHz
# These edge numbers have been verified in simulation.

#   Edge Nbr      1 2 3           9              17
#                  _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| |_| |_| |_| |_| |_| |_| |_| |_
#                  _______________                 ___
#   aSi5368SClk  _|               |_______________|

# This generated clock ends up making a kind of screwy timing path for the clock going back to itself
# that is split between two clock domains. It shows up in the timing report under "Inter-Clock Paths: Si5368SpiClk_int to Osc40In"
#
# The specific path is from:
# Source: PXIe6592R_FixedLogicx/Si5368Intfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q
# Destination: PXIe6592R_FixedLogicx/Si5368Intfx/SpiBlk.SpiShiftx/fSClkOut_reg/D
# Requirement: 25.000ns (Osc40In rise@125.000ns - Si5368SpiClk_int fall@100.000ns)
#
# There is feedback within the SpiShift.vhd component, so when you make the clock, it sees this as a new timing path to analyze.:
#   if fBitCount=kBitTime/2 then
#     fSClkOut   <= not fSClkOut;
#   elsif fBitCount=0 and fActive then
#     fSClkOut  <= not fSClkOut;
#   end if;

create_generated_clock -name Si5368SpiClk_int \
                       -source [get_ports {Osc40In}] \
                       -edges {1 9 17} \
                       [get_pins {PXIe6592R_FixedLogicx/Si5368Intfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q}]

create_generated_clock -name Si5368SpiClk \
                       -source [get_pins {PXIe6592R_FixedLogicx/Si5368Intfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q}] \
                       -divide_by 1 \
                       [get_ports aSi5368SClk]

# Si5368 SDO Setup/Hold constraint
# The FPGA SPI interface changes SDO on the falling edge of the SPI clock
# The Spiclk is high for 4 Osc40 clock cycles and low for 4 Osc40 clock cycles
# A multicycle constraint needs to be be applied with respect to the start clock
# to relax the setup / hold timing calculations.
#
#   Clock Edge    1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17
#                  _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |
#                   _______________                 _______________                 _
#   aSi5368SClk  __|               |_______________|               |_______________|
#   aSi5368Sdo   .................><.Data.0.......................><.Data.1..........
#   Launch                        *                               *
#   Latch                                         *
#   Setup                         4   3   2   1   0 -- Source Launch Edge
#                                  \           \_ Edge used for setup analysis without multicycle
#                                   \________ Edge use for setup analysis with SMS = 4
#   Hold                              0   1   2   3   4   5   6   7  -- Next Launch Edge
#                                      \                           \_ Edge used for hold with SMH = 7
#                                       \____ Edge used for hold analysis without multicycle
# Notes:
# 1. Setup: For setup analysis, source clock (40MHz) is moved left by 4. This is the
# launch clock edge.
# 2. Hold: Hold analysis is done on two locations. a) Data change in setup
# launch edge (5) is not captured by the edge before the latch edge(9). b) Data
# change from the edge after the launch edge (6) is not captured by the active
# latch edge (9).

set_multicycle_path -start -setup 4 -to [get_ports  aSi5368Sdo]
set_multicycle_path -start -hold  7 -to [get_ports  aSi5368Sdo]

set_output_delay -clock {Si5368SpiClk} \
                 -max [expr $BoardPropSkew + $Si5368SdoMinTsu] \
                 [get_ports aSi5368Sdo]

set_output_delay -clock {Si5368SpiClk} \
                 -min [expr 0 - $BoardPropSkew - $Si5368SdoMinThd] \
                 [get_ports aSi5368Sdo]

# Si5368 CS Setup/Hold constraint
# The FPGA SPI interface changes CS_n 9 Osc40 cycles before the first falling
# edge of the Si5368SpiClk. It also de-asserts CS_n 5 Osc40 cycles after the
# last falling edge of the Si5368SpiClk.
#
#   Clock Edge    1   2   3   4   5   6   7   8   9   10    ..                        10  11  12  13  14  15
#                  _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| ..| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_
#                                      _______________                 _______________
#   aSi5368SClk  _____________________|               |_____..________|               |_______________________
#                 _                                                                                         ___
#   aSi5368SS_n    |_______________________________________________________________________________________|
#   Launch        *                                                                                       *
#   Latch                                             *                               *
#   Setup         9   8   7   6   5   4   3   2   1   0 -- Source Launch Edge
#                  \                                   \_ Edge used for setup analysis without multicycle
#                   \________ Edge used for setup analysis with SMS = 9
#   Hold              0   1   2   3   4   5   6   7   8                               8   9   10  11  12  13  -- Next Launch Edge
#                      \                                                                                   \_ Edge used for hold with SMH = 13
#                       \____ Edge used for hold analysis without multicycle

set_multicycle_path -start -setup 9 -to [get_ports  aSi5368SS_n]
set_multicycle_path -start -hold 13 -to [get_ports  aSi5368SS_n]

# Si5368 CS output delay specification
set_output_delay -clock {Si5368SpiClk} \
                 -max [expr $BoardPropSkew + $Si5368CsbMinTsu] \
                 [get_ports aSi5368SS_n]

set_output_delay -clock {Si5368SpiClk} \
                 -min [expr 0 - $BoardPropSkew - $Si5368CsbMinThd] \
                 [get_ports aSi5368SS_n]

# Si5368 SDI Setup/Hold constraint
# The SDI line is received by a register in the Osc40 domain that
# is enabled for 1 Osc40 period.  The enable pulse will come the clock
# low time after the falling edge of the SpiClk, giving 4 cycles of setup
# time for the multi-cycle constraint.
#
#   Clock Edge   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17
#                 _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz    _| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_
#                  _______________                 _______________                 __
#   aSi5368SClk  _|               |_______________|               |_______________|
#   aSi5368Sdi  .................><.Data.0.......................><.Data.1...........
#   Launch                       *                               *
#   Latch                                        *
#   Setup                        0   1   2   3   4 -- Latch Edge
#                                 \               \_ Edge used for setup analysis with EMS = 4
#                                  \__ Edge use for setup analysis without EMS
#   Hold         7   6   5   4   3   2   1   0 -- previous launch edge
#                  \                          \_ Edge used for hold analysis without multicycle
#                   \____ Edge used for hold analysis with EMH = 7

set_multicycle_path -end -setup 4 -from [get_ports aSi5368Sdi]
set_multicycle_path -end -hold  7 -from [get_ports aSi5368Sdi]

# The SDI line coming back from the Si5368 is in reference to the Si5368SpiClk.
# After the falling edge of the Si5368SpiClk coming out of the FPGA, that edge
# needs to travel to the Si5368, propagate to the SDI line coming out, another
# board delay, and propagate to the FPGA, where it is received.
set_input_delay -clock {Si5368SpiClk} -clock_fall \
                -max [expr 2*$BoardPropDly + $Si5368SdiMaxTco] \
                [get_ports {aSi5368Sdi}]

set_input_delay -clock {Si5368SpiClk} -clock_fall \
                -min $Si5368SdiMinTco \
                [get_ports {aSi5368Sdi}]

# SPI Clock Tco
# The motivation for this constraint is just to have a clean timing report.
# The timing requirements between the clock on this pin and the data pin
# are already being accounted for in the max and min output delays above.

set_output_delay -clock {Osc40In} -max 1.0 [get_ports aSi5368SClk]
set_output_delay -clock {Osc40In} -min 0.0 [get_ports aSi5368SClk]

#-------------------
# AD5620 SPI Timing
#-------------------

# AD5620 SPI Timing
set AD5620SdoMinTsu     5.0
set AD5620SdoMinThd     4.5
set AD5620CsbMinTsu     13.0
set AD5620CsbMinThd     0.0

# The AD5620 SPI parameters are configured the exact same way the
# as the Si5368 SPI interface with the exception that the AD5620
# only accepts SPI write commands

# Configure the AD5620 SPI clock
# The SPI clock is generated off the 40 MHz oscillator clock
# creating a 40MHz divided by 40 frequency of 1 MHz
# These edge numbers have been verified in simulation.

#   Edge Nbr      1 2 3           41              81
#                  _   _   .   _   _   _   .   _   _
#   Osc40MHz     _| |_| |_| ..| |_| |_| |_| ..| |_| |_
#                  ________...____                 ___
#   aSi5368SClk  _|               |________...____|

# This generated clock ends up making a kind of screwy timing path for the clock going back to itself
# that is split between two clock domains. It shows up in the timing report under "Inter-Clock Paths: AD5620SpiClk_int to Osc40In"
#
# The specific path is from:
# Source: PXIe6592R_FixedLogicx/SpiBusIntfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q
# Destination: PXIe6592R_FixedLogicx/SpiBusIntfx/SpiBlk.SpiShiftx/fSClkOut_reg/D
# Requirement: 25.000ns (Osc40In rise@525.000ns - AD5620SpiClk_int fall@500.000ns)
#
# There is feedback within the SpiShift.vhd component, so when you make the clock, it sees this as a new timing path to analyze.:
#   if fBitCount=kBitTime/2 then
#     fSClkOut   <= not fSClkOut;
#   elsif fBitCount=0 and fActive then
#     fSClkOut  <= not fSClkOut;
#   end if;

create_generated_clock -name AD5620SpiClk_int \
                       -source [get_ports {Osc40In}] \
                       -edges {1 41 81} \
                       [get_pins {PXIe6592R_FixedLogicx/SpiBusIntfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q}]

create_generated_clock -name AD5620SpiClk \
                       -source [get_pins {PXIe6592R_FixedLogicx/SpiBusIntfx/SpiBlk.SpiShiftx/fSClkOut_reg/Q}] \
                       -divide_by 1 \
                       [get_ports aSpiDacSClk]

# AD5620 SDO Setup/Hold constraint
# The FPGA SPI interface changes SDO on the rising edge of the SPI clock
# The Spiclk is high for 20 Osc40 clock cycles and low for 20 Osc40 clock cycles
# A multicycle constraint needs to be be applied with respect to the start clock
# to relax the setup / hold timing calculations.
#
#   Clock Edge    1   2   3 ..20  21  22  23..40  41  42  43  44  45
#                  _   _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| |_| ..| |_| |_| |_| ..| |_| |_| |_| |_| |_| |_
#                  _________..____                 _______________
#   aSi5368SClk  _|               |_________..____|               |___
#   aSi5368Sdo   .><.....Data.0...................><.Data.1...........
#   Launch        *                               *
#   Latch                         *
#   Setup         20  19  18..1   0 -- Source Launch Edge
#                                  \           \_ Edge used for setup analysis without multicycle
#                                   \________ Edge use for setup analysis with SMS = 20
#   Hold              0   1 ..18  19  20  21..38  39  -- Next Launch Edge
#                      \                           \_ Edge used for hold with SMH = 39
#                       \____ Edge used for hold analysis without multicycle

set_multicycle_path -start -setup 20 -to [get_ports  aSpiDacSdo]
set_multicycle_path -start -hold  39 -to [get_ports  aSpiDacSdo]

set_output_delay -clock {AD5620SpiClk} \
                 -max [expr $BoardPropSkew + $AD5620SdoMinTsu] \
                 [get_ports aSpiDacSdo]

set_output_delay -clock {AD5620SpiClk} \
                 -min [expr 0 - $BoardPropSkew - $AD5620SdoMinThd] \
                 [get_ports aSpiDacSdo]

# AD5620 CS Setup/Hold constraint
# The FPGA SPI interface changes CS_n 21 Osc40 cycle before the first falling
# edge of the AD5620SpiClk. It also de-asserts CS_n 21 Osc40 cycle after the
# last AD5620SpiClk falling edge.
#
#   Clock Edge    1   2   3.. 20  21  22    ..                        22  23  24..42  43
#                  _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _
#   Osc40MHz     _| |_| |_| ..| |_| |_| |_| ..| |_| |_| |_| ..| |_| |_| |_| |_| ..| |_| |_
#                      _____..________                 _____..________
#   aSi5368SClk  _____|               |_____..________|               |_________..________
#                _                                                                     ___
#   aSi5368SS_n   |_________..______________..______________..__________________..____|
#   Launch        *                                                                   *
#   Latch                             *                               *
#   Setup         21  20  19..2   1   0 -- Source Launch Edge
#                  \               \_ Edge used for setup analysis without multicycle
#                   \________ Edge used for setup analysis with SMS = 5
#   Hold              0   1 ..18  19  20                              20  21  22..40  41 -- Next Launch Edge
#                      \                                                               \_ Edge used for hold with SMH = 41
#                       \____ Edge used for hold analysis without multicycle

set_multicycle_path -start -setup 21 -to [get_ports  aSpiDacCs_n]
set_multicycle_path -start -hold  41 -to [get_ports  aSpiDacCs_n]

# AD5620 CS output delay specification
set_output_delay -clock {AD5620SpiClk} \
                 -max [expr $BoardPropSkew + $AD5620CsbMinTsu] \
                 [get_ports aSpiDacCs_n]

set_output_delay -clock {AD5620SpiClk} \
                 -min [expr 0 - $BoardPropSkew - $AD5620CsbMinThd] \
                 [get_ports aSpiDacCs_n]

# SPI Clock Tco
# The motivation for this constraint is just to have a clean timing report.
# The timing requirements between the clock on this pin and the data pin
# are already being accounted for in the max and min output delays above.

set_output_delay -clock {Osc40In} -max 1.0 [get_ports aSpiDacSClk]
set_output_delay -clock {Osc40In} -min 0.0 [get_ports aSpiDacSClk]

#-----------------
# CPLD JTAG Timing
#-----------------

set CpldJtagTdiSetup      10.0; # Tbts
set CpldJtagTdiHold        8.0; # Tbth
set CpldJtagTdoValidMax   10.0; # Tbtco (w/ respect to falling edge)
set CpldJtagTdoValidMin    0.0; # (w/ respect to falling edge)

# Conservative number for PCB skew between the different CPLD JTAG signals
set CpldJtagClkDataPcbSkew 5.0

# Conservative number for the CPLD JTAG signals trace delay
set CpldJtagSigsTraceDly   5.0

#   Clock Edge        1 2 3 4 5 6
#                      _   _   _   _
#   Osc40MHz         _| |_| |_| |_| |_
#                      ___     ___
#   aCpldTck         _|   |___|   |___

create_generated_clock -name JtagTck_Int \
                       -source [get_ports {Osc40In}] \
                       -edges {1 3 5} \
                       [get_pins {PXIe6592R_FixedLogicx/JtagProgrammerx/JtagTclkFlop/GenFlops*.DFlopx/GenClr.ClearFDCPEx/Q}]

create_generated_clock -name JtagTck \
                       -source [get_pins {PXIe6592R_FixedLogicx/JtagProgrammerx/JtagTclkFlop/GenFlops*.DFlopx/GenClr.ClearFDCPEx/Q}] \
                       -divide_by 1 [get_ports aCpldTck]

#                        _________ Launch Edge
#                       /   _________Capture Edge
#                      /   /
#                     \/  \/
#                      _   _   _   _
#   Osc40MHz         _| |_| |_| |_| |_
#
#   aCpldTDI/TMS      < Data0 >< Data1 >
#                   __     ___     ___
#   aCpldTck          |___|   |___|   |___
#
#   Setup             1   0
#   Hold                  0   1

set_multicycle_path -start -setup 1 -to [get_ports -regexp {(aCpldTdi|aCpldTms)}]
set_multicycle_path -start -hold  1 -to [get_ports -regexp {(aCpldTdi|aCpldTms)}]

set_output_delay -clock {JtagTck} -max [expr     $CpldJtagTdiSetup + $CpldJtagClkDataPcbSkew] [get_ports -regexp {(aCpldTdi|aCpldTms)}]
set_output_delay -clock {JtagTck} -min [expr 0 - $CpldJtagTdiHold  - $CpldJtagClkDataPcbSkew] [get_ports -regexp {(aCpldTdi|aCpldTms)}]

#                          _________ Launch edge
#                         /
#                        \/
#                      ___     ___     ___
#   aCpldTck         _|   |___|   |___|
#
#   aCpldTDO         Data >< Data >< Data >
#                      _   _   _   _   _
#   Osc40MHz         _| |_| |_| |_| |_| |_
#                                 /\
#                                  \_____Capture Edge
#   Setup                 2   1   0
#   Hold                      0   1

set_multicycle_path -end -setup 2 -from [get_clocks JtagTck] -through [get_ports aCpldTdo]
set_multicycle_path -end -hold  1 -from [get_clocks JtagTck] -through [get_ports aCpldTdo]

set_input_delay -clock {JtagTck} -clock_fall -max [expr $CpldJtagTdoValidMax + 2*$CpldJtagSigsTraceDly] [get_ports aCpldTdo]
set_input_delay -clock {JtagTck} -clock_fall -min [expr $CpldJtagTdoValidMin] [get_ports aCpldTdo]

# CPLD JTAG Clock Tco
# The motivation for this constraint is just to have a clean timing report.
# The timing requirements between the clock on this pin and the data pin
# are already being accounted for in the max and min output delays above.

set_output_delay -clock {Osc40In} -max 1.0 [get_ports aCpldTck]
set_output_delay -clock {Osc40In} -min 0.0 [get_ports aCpldTck]

#-------------------
# Config Port Timing
#-------------------
# These constraints are extremely conservative but they are similar to config port
# constraints in the STC 3 making the existing documentation similar, they are easy to
# meet and they are easy to understand. Since the config port parameters are fixed to
# save FPGA resources, if a slower Flash is needed to be accessed, then these constraints
# could be modified to be more realistic (and still easy to meet) without requiring the
# fixed parameters to change.

# Clock to out. Including insertion time to be conservative (the idea is that skew is bounded by
# max_delay - min_delay, so including insertion time accounts for insertion skew as well)
set_max_delay 15 -from [get_clocks -of $PcieUserClk2] -to [get_ports aConfig*]
set_min_delay 0  -from [get_clocks -of $PcieUserClk2] -to [get_ports aConfig*]

# Setup and hold. Datapath only on max delay to be conservative since insertion delay relaxes the max delay.
set_max_delay 15 -datapath_only  -from [get_ports aConfigData*] -to [get_clocks -of $PcieUserClk2]
set_min_delay 0  -from [get_ports aConfigData*] -to [get_clocks -of $PcieUserClk2]

#-------------------------------------------------------------------------------------
# Authentication IP clock crossing
#   One regport clock crossing (similar to the one above) and two double synchronizers
#   Copying constraints from LabVIEW
#-------------------------------------------------------------------------------------

set TNM_Fixed2Custom1 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/*/HBx/*iReset_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom2 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom3 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*ODataFlop/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom4 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom5 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom6 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom7 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom8 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom9 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom10 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortInHandshake/HBx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom11 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom12 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*ODataFlop*/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom13 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom14 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom15 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom16 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom17 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom18 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed2Custom19 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/RegisterInterface.LvFpgaRegPortClockCrossingx/RegPortOutHandshake/HBx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_Fixed2Custom2 -to $TNM_Fixed2Custom3 -datapath_only 48.4950005000
set_max_delay -from $TNM_Fixed2Custom4 -to $TNM_Fixed2Custom5 -datapath_only 74.2425007499
set_max_delay -from $TNM_Fixed2Custom6 -to $TNM_Fixed2Custom7 -datapath_only 11.2488001200
set_max_delay -from $TNM_Fixed2Custom5 -to $TNM_Fixed2Custom8 -datapath_only 12.3737501250
set_max_delay -from $TNM_Fixed2Custom1 -to $TNM_Fixed2Custom9 -datapath_only 1.8748000200
set_max_delay -from $TNM_Fixed2Custom7 -to $TNM_Fixed2Custom10 -datapath_only 1.8748000200
set_max_delay -from $TNM_Fixed2Custom11 -to $TNM_Fixed2Custom12 -datapath_only 6.4992000800
set_max_delay -from $TNM_Fixed2Custom13 -to $TNM_Fixed2Custom14 -datapath_only 11.2488001200
set_max_delay -from $TNM_Fixed2Custom15 -to $TNM_Fixed2Custom16 -datapath_only 74.2425007499
set_max_delay -from $TNM_Fixed2Custom14 -to $TNM_Fixed2Custom17 -datapath_only 1.8748000200
set_max_delay -from $TNM_Fixed2Custom1 -to $TNM_Fixed2Custom18 -datapath_only 12.3737501250
set_max_delay -from $TNM_Fixed2Custom16 -to $TNM_Fixed2Custom19 -datapath_only 12.3737501250

set TNM_Fixed3Custom1 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/HoldoffSynch/DoubleSyncBasex/iDlySigx/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed3Custom2 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/HoldoffSynch/DoubleSyncBasex/oSig_msx/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed3Custom3 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/HoldoffSynch/DoubleSyncBasex/oSigx/cLclQ*} -filter {IS_SEQUENTIAL==true}]

set TNM_Fixed4Custom1 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/KillSynch/DoubleSyncBasex/iDlySigx/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed4Custom2 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/KillSynch/DoubleSyncBasex/oSig_msx/cLclQ*} -filter {IS_SEQUENTIAL==true}]
set TNM_Fixed4Custom3 [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/CryptoTopx/KillSynch/DoubleSyncBasex/oSigx/cLclQ*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_Fixed3Custom1 -to $TNM_Fixed3Custom2 -datapath_only 74.2425007499
set_max_delay -from $TNM_Fixed3Custom2 -to $TNM_Fixed3Custom3 -datapath_only 12.3737501250

set_max_delay -from $TNM_Fixed4Custom1 -to $TNM_Fixed4Custom2 -datapath_only 11.2488001200
set_max_delay -from $TNM_Fixed4Custom2 -to $TNM_Fixed4Custom3 -datapath_only 1.8748000200

# -------------------------------------------------
# Set Max delay on Asynchronous control signals
# -------------------------------------------------
# For general I/O that don't have tight timing constraints, we can constrain
# these paths by creating a generic flip-flop that will interface to the
# device. We don't need these paths to be constrained very tightly, so we
# define this external flip-flop to only require 1 ns of setup time and
# 0 ns of hold, making it easy to meet this devices requirements.
set GenericExtFlopTsu 1
set GenericExtFlopTh 0

# Similarly, for inputs, an external flip-flop can be defined that
# will be running in the same clock domain as the receiving flip-flop. The
# minimum and maximum clock-to-out are then defined for this external flip-flop
set GenericExtFlopMaxTco 10
set GenericExtFlopMinTco 0

set Osc40AsyncOutputs {aClockConfigRst_n \
                       aLedAccess* \
                       aLedActive* \
                       aSi5368Dec \
                       aSmb* \
                       aSi5368FSyncAlign \
                       aSi5368Inc \
                       aSi5368Rst_n \
                       aVccOpticalEn \
                       aCpldExtReset_n}

set_output_delay -clock Osc40In \
                 -max [expr $GenericExtFlopTsu] \
                 [get_ports $Osc40AsyncOutputs]

set_output_delay -clock Osc40In \
                 -min [expr 0 - $GenericExtFlopTh] \
                 [get_ports $Osc40AsyncOutputs]

set Osc40AsyncInputs {aAdcAlertx* \
                      aPxiGa* \
                      aSi5368CkIn* \
                      aSi5368ClkInActive* \
                      aSi5338_Intr \
                      aPort0_OC_n \
                      aPort1_OC_n \
                      aDramAnd2v5PwrGood \
                      aSi5368Int \
                      aSi5368PllLocked_n \
                      aVccOpticalPg \
                      aPort2_OC_n \
                      aPort3_OC_n \
                      aPcieRst_n}

set_input_delay -clock Osc40In \
                -max [expr $GenericExtFlopMaxTco] \
                [get_ports $Osc40AsyncInputs]

set_input_delay -clock Osc40In \
                -min [expr $GenericExtFlopMinTco] \
                [get_ports $Osc40AsyncInputs]

set AsyncCntrlSigsGrp {TdcAssertClkOut* \
                       aAuthenticationSda \
                       aLoopbackOut* \
                       aTdcDeassert \
                       aPort0_RS* \
                       aPort1_RS* \
                       aPort0_Pwr_n \
                       aPort1_Pwr_n \
                       aPort2_Pwr_n \
                       aPort3_Pwr_n \
                       aTdcAssert \
                       aTdcEn \
                       aUnexpPulseJitter_n}

set AsyncStatusSigsGrp {aLoopbackIn* \
                        aPxiStar \
                        PxiClk10_n \
                        PxiClk10 \
                        aAuthenticationSda \
                        aPort0_Tx_Fault \
                        aPort0_Tx_Disable \
                        aPort0_Mod_ABS \
                        aPort0_Rx_LOS \
                        PxieDStar* \
                        aPort1_Tx_Fault \
                        aPort1_Tx_Disable \
                        aPort1_Mod_ABS \
                        aPort1_Rx_LOS \
                        aPort2_Tx_Fault \
                        aPort2_Tx_Disable \
                        aPort2_Mod_ABS \
                        aPort2_Rx_LOS \
                        aPort3_Tx_Fault \
                        aPort3_Tx_Disable \
                        aPort3_Mod_ABS \
                        aPort3_Rx_LOS}

set_max_delay -datapath_only -from [all_registers -edge_triggered] -to [get_ports $AsyncCntrlSigsGrp] 20
set_max_delay -datapath_only -from [get_ports $AsyncStatusSigsGrp] -to [all_registers -edge_triggered] 20

# ------------------------------------
# Set Max delay on Trigger Signals
# ------------------------------------
set_max_delay -datapath_only -from [all_registers -edge_triggered] -to [get_ports -regexp {aPxiTrigData*|aPxiTrigDir*|aPxiTrigOutEn_n}] 15.000
set_max_delay -datapath_only -from [get_ports -regexp {aPxiTrigData*}] -to [all_registers -edge_triggered] 15.000

###########################
# Timing Exceptions Section
###########################

# ---------------------------------
# Clock domain Crossings Exceptions
# ---------------------------------

# DMA Access PulseSync for the front panel LED
# We are using standard nicore clock crossing components, but want to cap the max delay at something reasonable.

set TNM_DmaAccessPulseSync_iHoldSigIn          [get_cells {PXIe6592R_FixedLogicx/DmaAccess/PulseSyncBaseRSDx/iHoldSigInx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_DmaAccessPulseSync_oHoldSigin_ms       [get_cells {PXIe6592R_FixedLogicx/DmaAccess/PulseSyncBaseRSDx/oHoldSigIn_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_DmaAccessPulseSync_oLocalSigOutCE      [get_cells {PXIe6592R_FixedLogicx/DmaAccess/PulseSyncBaseRSDx/oLocalSigOutCEx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_DmaAccessPulseSync_iSigOut_ms          [get_cells {PXIe6592R_FixedLogicx/DmaAccess/PulseSyncBaseRSDx/iSigOut_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_DmaAccessPulseSync_iHoldSigIn     -to $TNM_DmaAccessPulseSync_oHoldSigin_ms -datapath_only 10.0
set_max_delay -from $TNM_DmaAccessPulseSync_oLocalSigOutCE -to $TNM_DmaAccessPulseSync_iSigOut_ms    -datapath_only 10.0

# Device temperature goes from XADC to the DRAM MIG
# This signals is driven from the 40MHz in the fixed logic into the DRAM MIG core.
# Capping the max delay at something reasonable.

set TNM_XADC_DeviceTemperature                 [get_cells {PXIe6592R_FixedLogicx/PXIe659XR_XADCx/*cDeviceTemperature*} -filter {IS_SEQUENTIAL==true}]
set TNM_DRAM_DeviceTemperature                 [get_cells {PXIe659XR_DRAMx/u_PXIe659XR_DRAM_mig/temp_mon_enabled.u_tempmon/device_temp_sync_r1*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_XADC_DeviceTemperature -to $TNM_DRAM_DeviceTemperature -datapath_only 10.0

# DRAM MIG Calibration Complete to FixedLogic status
# This signals is driven from the DRAM MIG core into the fixed logic and double-synced into the
# 40MHz clock domain. Capping the max delay at something reasonable.

set TNM_DRAM_InitCalibComplete                 [get_cells {PXIe659XR_DRAMx/u_PXIe659XR_DRAM_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg*} -filter {IS_SEQUENTIAL==true}]
set TNM_FixedLogic_InitCalibComplete           [get_cells {PXIe6592R_FixedLogicx/PXIe659XR_DebugRegsx/bDramPhyInitDone_ms*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_DRAM_InitCalibComplete -to $TNM_FixedLogic_InitCalibComplete -datapath_only 10.0

# Frequency Counter Clock and Reset Crossings
# A new asynchronous reset is created on bReset and this is the primary path being constrained.
# We just want to make sure that the asynchronous reset path is not too long,
# but it does not need to meet recovery/removal checks.

set TNM_FreqCntUnknownClkResetSource           [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/bReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClk_uUnknownClkCount     [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/uUnknownClkCount*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClk_uEnableCountD1       [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/uEnableCountD1*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClk_uRequestPush         [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/uRequestPush*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkEnableCountDS_oSig    [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/EnableCountDS/DoubleSyncBasex/DoubleSyncAsyncInBasex/oSigx/*FDCPEx*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkEnableCountDS_iDlySig [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/EnableCountDS/DoubleSyncBasex/iDlySigx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkEnableCountDS_oSig_ms [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/EnableCountDS/DoubleSyncBasex/DoubleSyncAsyncInBasex/oSig_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_iReset_ms          [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*iReset_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_oPushToggleToReady [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_iRdyPushToggle_ms  [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_iLclStoredData     [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_oData              [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*ODataFlop/GenFlops[*].DFlopx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_iPushToggle        [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_oPushToggle_ms     [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_FreqCntUnknownClkHS_All                [get_cells {PXIe6592R_FixedLogicx/FrequencyCounterIntfx/FrequencyCounterx/UnknownCountHS/HBx/*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClk_uUnknownClkCount     -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClk_uEnableCountD1       -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClk_uRequestPush         -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClkEnableCountDS_oSig    -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkEnableCountDS_iDlySig -to $TNM_FreqCntUnknownClkEnableCountDS_oSig_ms -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClkHS_iReset_ms          -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkHS_oPushToggleToReady -to $TNM_FreqCntUnknownClkHS_iRdyPushToggle_ms  -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkHS_iLclStoredData     -to $TNM_FreqCntUnknownClkHS_oData              -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkHS_iPushToggle        -to $TNM_FreqCntUnknownClkHS_oPushToggle_ms     -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClkEnableCountDS_oSig_ms -datapath_only 10.0
set_max_delay -from $TNM_FreqCntUnknownClkResetSource           -to $TNM_FreqCntUnknownClkHS_All                -datapath_only 10.0

# Geographical Address pins
# These signals are driven from the 40MHz clock domain into the CHInCh where they are double-synced into the
# CHInCh's 250MHz clock domain. Capping the max delay at something reasonable since these signals don't toggle.

set TNM_bPxiGaReg          [get_cells {bPxiGa*} -filter {IS_SEQUENTIAL==true}]
set TNM_ChinchGpioInputReg [get_cells {G2X8ChinchWithDmaPortBim128x/Gen2X8_Kintex7XilinxCoreDmaPortInternalx/GenericConfigPortx/RegisterInterface.cGpioInput_ms*} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $TNM_bPxiGaReg -to $TNM_ChinchGpioInputReg -datapath_only 100.00

# Chinch Reset constraint. We assert reset for the chinch several µs after PcieReset_n deasserts
# This is a requirement from the PCIe core from Xilinx

set_false_path -from [get_pins {aChinchReset_n_reg/C}] -through [get_nets {aChinchReset_n}]

# Max Delay for first set of flops in the double sync for the Active LED controls from the window to the 40MHz domain.
# The source of these signals comes from LV FPGA and the actual clock domain driving them is not known a priori. We are
# providing guidance to the user to ensure that the control is driven for at least 2 40MHz cycles (50 ns) and this circuit
# is just used to light up the front panel LEDs.

set_max_delay -datapath_only -from [all_registers -edge_triggered] -to [get_cells {PXIe6592R_FixedLogicx/bLedActiveGreen_ms_reg*}] 20
set_max_delay -datapath_only -from [all_registers -edge_triggered] -to [get_cells {PXIe6592R_FixedLogicx/bLedActiveRed_ms_reg*}] 20

# Max Delay for the MGT_RefClks status signals driven to the LV FPGA diagram from the 40MHz domain in the fixed logic.
# The destination of these signals is in the LV FPGA CLIP / diagram and the actual clock domain receiving them is not
# known a priori. These signals are derived from the status pins coming from the Si5368 and should not be actively
# toggling.

set_max_delay -datapath_only -from [get_cells {PXIe6592R_FixedLogicx/Si5368Intfx/cSi5368ClksValid_reg*}] -to [all_registers -edge_triggered] 20
set_max_delay -datapath_only -from [get_cells {PXIe6592R_FixedLogicx/Si5368Intfx/cSi5368PllLockedLcl_reg*}] -to [all_registers -edge_triggered] 20

#### Sync100 Exception ####

# The PXIeClk100 buffers are asynchronously enabled/disabled (Osc40MHz --> PXIeClk100)
# PXIeClk100 is a gated clock, so after LVFPGA asserts rSafeToEnableGatedClks, we will need
# to make sure PXIeClk100 is toggling before asserting GatedBaseClksValid.
# Step 1: LVFPGA asserts rSafeToEnableGatedClks
# Step 2: rSafeToEnableGatedClks asserts one reliable clock later
# step 3: The PXIe Clk100 BUFGCE starts toggling 2 to 3 Clk100 cycles later
# Since We count for 8 reliable clock (OSc40MHz) after LVFPGA asserts rSafeToEnableGatedClks
# before asserting GatedBaseClksValid, we will have a bit more than 6 reliable clock cycles
# to account for any propagation delay of the asynchronous buffer enable signal. We will
# constrain this asynchronous enable delay to 1 reliable clock cycle.

set_max_delay -from [get_cells {Sync100Capturex/rEnableClk100Bufg*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins {Sync100Capturex/PxieClk100SafeBufg/GlobalBuffer/S*}] \
              -datapath_only 25.0;

#### CPLD Exceptions ####

# Constrain the asynchronous rResetCpld propagation delay to less than one RxSerClk cycle
# Software would then be able to assert/de-assert the rResetCpld with no timing requirement in
# between the assertion/de-assertion of this reset signal.
# Note that rResetCpld is generated off the ReliableCLk and is received by the CPLD code
# on both the RxSerClk and ReliableClk domains. We only want to place a set_max_delay
# constraint on this signal to registers that are clocked off the RxSerClk, so that we
# do not override and prevent the tools from analyzing the reliableClk period constraint on these paths

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/DprCpldRegistersx/rResetCpldInt*} -filter {IS_SEQUENTIAL==true}] \
              -to   [all_registers -clock RxSerClk] \
              -datapath_only 20

# cSerialData is shifted in from the CPLD into the FPGA using the RxSerClk
# The RxSerClk is not continous so a double-sync, as opposed to a handshake,
# was used to cross the cSerialData from the RxSerClk clock domain to the
# reliable clock domain. SW waits on cCpldDataValid to assert before reading the data.
# cCpldDataValid gets double-synced to the reliable clock domain before being available
# for SW to read. We place a 20 ns (less than one reliableClk cycle) on the data paths
# to ensure that the code sampling the data on the reliable clock domain is sampling
# non-metastable data.

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cSerialData*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/SerialDataFlops/GenFlops*.DFlopx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

# Double-Sync crossing (RxSerClk --> Osc40 MHz)
# A strict requirement is not needed on these double-sync flops, but I am constraining
# them to 20 ns, as that is easy for the tools to meet

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cCpldDataValid*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins  {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/DoubleSyncDataValid/DoubleSyncAsyncInBasex/oSig_msx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cCpldHoldoff*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins  {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/DoubleSyncHoldoff/DoubleSyncAsyncInBasex/oSig_msx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cCpldInitialized*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins  {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/DoubleSyncInitialized/DoubleSyncAsyncInBasex/oSig_msx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cCpldReady*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_pins  {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/DoubleSyncReady/DoubleSyncAsyncInBasex/oSig_msx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

set_max_delay -from [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/DprCpldRegistersx/rReadCpldCmd*} -filter {IS_SEQUENTIAL==true}] \
              -to   [get_cells {PXIe6592R_FixedLogicx/DprCpldInterfacex/CpldReceiverx/cCpldDataValid*} -filter {IS_SEQUENTIAL==true}] \
              -datapath_only 20;

# Double-Sync crossing (Osc40 MHz to PCIe UsrClk2x)
# Constrain to 20 ns for reasonable shutdown latency

set_max_delay -from [get_pins {ShutdownInterruptToDmaClk/DoubleSyncBasex/iDlySigx/GenClr.ClearFDCPEx/C}] \
              -to   [get_pins {ShutdownInterruptToDmaClk/DoubleSyncBasex/DoubleSyncAsyncInBasex/oSig_msx/GenClr.ClearFDCPEx/D}] \
              -datapath_only 20;

############################################################################
## Include LVFPGA Macros
############################################################################


 set ToplevelClockPeriod 24.990


 
# 0 Disabled
set_property PACKAGE_PIN K14 [get_ports {aMgtTxp[0]}]
set_property PACKAGE_PIN J14 [get_ports {aMgtTxn[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[0]}]
# 1 Disabled
set_property PACKAGE_PIN H15 [get_ports {aMgtTxp[1]}]
set_property PACKAGE_PIN G15 [get_ports {aMgtTxn[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[1]}]
# 2 Disabled
set_property PACKAGE_PIN J11 [get_ports {aMgtTxp[2]}]
set_property PACKAGE_PIN J12 [get_ports {aMgtTxn[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[2]}]
# 3 Disabled
set_property PACKAGE_PIN H14 [get_ports {aMgtTxp[3]}]
set_property PACKAGE_PIN G14 [get_ports {aMgtTxn[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxp[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtTxn[3]}]
# 0 Disabled
set_property PACKAGE_PIN L16 [get_ports {aMgtRxp[0]}]
set_property PACKAGE_PIN K16 [get_ports {aMgtRxn[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[0]}]
# 1 Disabled
set_property PACKAGE_PIN L15 [get_ports {aMgtRxp[1]}]
set_property PACKAGE_PIN K15 [get_ports {aMgtRxn[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[1]}]
# 2 Disabled
set_property PACKAGE_PIN L12 [get_ports {aMgtRxp[2]}]
set_property PACKAGE_PIN L13 [get_ports {aMgtRxn[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[2]}]
# 3 Disabled
set_property PACKAGE_PIN K13 [get_ports {aMgtRxp[3]}]
set_property PACKAGE_PIN J13 [get_ports {aMgtRxn[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxp[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {aMgtRxn[3]}]

# MgtRefClk0 Disabled
set_property PACKAGE_PIN G13 [get_ports {MgtRefClk0p}]
set_property PACKAGE_PIN F13 [get_ports {MgtRefClk0n}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk0p}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk0n}]
# MgtRefClk1 Disabled
set_property PACKAGE_PIN E13 [get_ports {MgtRefClk1p}]
set_property PACKAGE_PIN C12 [get_ports {MgtRefClk1n}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk1p}]
set_property IOSTANDARD LVCMOS25 [get_ports {MgtRefClk1n}]
# MgtRefClk2 Disabled
set_property PACKAGE_PIN D13 [get_ports {Si570Clkp}]
set_property PACKAGE_PIN F12 [get_ports {Si570Clkn}]
set_property IOSTANDARD LVCMOS25 [get_ports {Si570Clkp}]
set_property IOSTANDARD LVCMOS25 [get_ports {Si570Clkn}]




 set TNM_Custom1 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset/c1ResetFastLclx*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom2 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkIn.iPushTogglex*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom3 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkIn.i*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom4 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.o*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom6 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset/c2ResetFe_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom7 [get_cells {*Clk40Derived5x2B00MHzToInterface/Blk*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom8 [get_cells {*Clk40Derived5x2B00MHzToInterface/Blk*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom9 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkIn.iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom10 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom11 [get_cells {*Clk40Derived5x2B00MHzToInterface/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom12 [get_cells {*Clk40Derived5x2B00MHzToInterface/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom13 [get_cells {*Clk40Derived5x2B00MHzToInterface/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom14 [get_cells {*Clk40Derived5x2B00MHzToInterface/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom15 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom16 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom17 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncOReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom18 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncOReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom19 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom20 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncIReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom21 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncOReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom22 [get_cells {*Clk40Derived5x2B00MHzToInterface/BlkOut.SyncOReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom23 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset/c1ResetFastLclx*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom24 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkIn.iPushTogglex*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom25 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkIn.i*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom26 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.o*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom28 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset/c2ResetFe_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom29 [get_cells {*Clk40Derived5x2B00MHzFromInterface/Blk*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom30 [get_cells {*Clk40Derived5x2B00MHzFromInterface/Blk*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom31 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkIn.iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom32 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom33 [get_cells {*Clk40Derived5x2B00MHzFromInterface/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom34 [get_cells {*Clk40Derived5x2B00MHzFromInterface/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom35 [get_cells {*Clk40Derived5x2B00MHzFromInterface/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom36 [get_cells {*Clk40Derived5x2B00MHzFromInterface/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom37 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom38 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom39 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncOReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom40 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncOReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom41 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom42 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncIReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom43 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncOReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom44 [get_cells {*Clk40Derived5x2B00MHzFromInterface/BlkOut.SyncOReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom45 [get_cells {*n_bushold/*ShiftRegister/SyncBusReset/*iHoldSigInx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom46 [get_cells {*n_bushold/*ShiftRegister/SyncBusReset/*oHoldSigIn_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom47 [get_cells {*n_bushold/*ShiftRegister/SyncBusReset/*oLocalSigOutx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom48 [get_cells {*n_bushold/*ShiftRegister/SyncBusReset/*iSigOut_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom49 [get_cells {*n_bushold/*ShiftRegister/SyncBusReset/*oLocalSigOutCEx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom51 [get_cells {*DoubleSyncSLVFromClk40ToClk40Derived5x2B00MHz*iDlySigx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom52 [get_cells {*DoubleSyncSLVFromClk40ToClk40Derived5x2B00MHz*DoubleSyncAsyncInBasex/oSig_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom53 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom54 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*ODataFlop**FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom55 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom56 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom57 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom58 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom60 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom61 [get_cells {*iReset_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom62 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom64 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLV_Ackx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom65 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*PulseSyncBoolx/*iHoldSigInx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom66 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*PulseSyncBoolx/*oHoldSigIn_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom67 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*PulseSyncBoolx/*oLocalSigOutx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom68 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*PulseSyncBoolx/*iSigOut_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom69 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*PulseSyncBoolx/*oLocalSigOutCEx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom71 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*iLclStoredData*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom72 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*ODataFlop**FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom73 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom74 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom75 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*oPushToggleToReady*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom76 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom78 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom80 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*iReset*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom82 [get_cells {*TimeLoopCoreFromClk40ToClk40Derived5x2B00MHz/*HandshakeSLVx/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom83 [get_cells {*DmaPortCommIfcIrqInterfacex/DoubleSyncSLx*iDlySigx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom84 [get_cells {*DmaPortCommIfcIrqInterfacex/DoubleSyncSLx*DoubleSyncAsyncInBasex/oSig_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom85 [get_cells {*DmaPortCommIfcLvFpgaIrq*bIpIrq_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom86 [get_cells {*DmaPortCommIfcLvFpgaIrq*bIpIrq*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom87 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset/c1ResetFastLclx*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom88 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkIn.iPushTogglex*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom89 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkIn.i*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom90 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.o*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom92 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset/c2ResetFe_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom93 [get_cells {*ViControlx*BusClkToReliableClkHS/Blk*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom94 [get_cells {*ViControlx*BusClkToReliableClkHS/Blk*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom95 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkIn.iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom96 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom97 [get_cells {*ViControlx*BusClkToReliableClkHS/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom98 [get_cells {*ViControlx*BusClkToReliableClkHS/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom99 [get_cells {*ViControlx*BusClkToReliableClkHS/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom100 [get_cells {*ViControlx*BusClkToReliableClkHS/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom101 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom102 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom103 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncOReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom104 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncOReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom105 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom106 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncIReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom107 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncOReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom108 [get_cells {*ViControlx*BusClkToReliableClkHS/BlkOut.SyncOReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom109 [get_cells {*ViControlx*rEnableIn*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom110 [get_cells {*ViControlx*tEnableIn_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom111 [get_cells {*ViControlx*rEnableClear*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom112 [get_cells {*ViControlx*tEnableClear_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom114 [get_cells {*ViControlx*bEnableIn_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom116 [get_cells {*ViControlx*bEnableClear_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom117 [get_cells {*ViControlx*rDerivedClkLostLock*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom118 [get_cells {*ViControlx*bDerivedClkLostLock_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom119 [get_cells {*ViControlx*rGatedClkStartupErr*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom120 [get_cells {*ViControlx*bGatedClkStartupErr_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom121 [get_cells {*ViControlx*rEnableDeassertionErr*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom122 [get_cells {*ViControlx*bEnableDeassertionErr_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom123 [get_cells {*DiagramResetx*rDiagramResetAssertionErr*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom124 [get_cells {*ViControlx*bDiagramResetAssertionErr_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom125 [get_cells {*ViControlx*tDiagramEnableOutReg*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom126 [get_cells {*ViControlx*bEnableOut_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom127 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset/c1ResetFastLclx*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom128 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkIn.iPushTogglex*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom129 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkIn.i*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom130 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.o*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom132 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset/c2ResetFe_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom133 [get_cells {*DiagramResetx*BusClkToReliableClkHS/Blk*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom134 [get_cells {*DiagramResetx*BusClkToReliableClkHS/Blk*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom135 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkIn.iPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom136 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom137 [get_cells {*DiagramResetx*BusClkToReliableClkHS/*oPushToggle0_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom138 [get_cells {*DiagramResetx*BusClkToReliableClkHS/*oPushToggle1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom139 [get_cells {*DiagramResetx*BusClkToReliableClkHS/*iRdyPushToggle_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom140 [get_cells {*DiagramResetx*BusClkToReliableClkHS/*iRdyPushToggle*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom141 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom142 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom143 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncOReset*c1*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom144 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncOReset*c1*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom145 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom146 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncIReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom147 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncOReset*c2*_ms*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom148 [get_cells {*DiagramResetx*BusClkToReliableClkHS/BlkOut.SyncOReset*c2*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom149 [get_cells {*DiagramResetx*rSafeToEnableGatedClksLoc*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom150 [get_cells {*DiagramResetx*rDiagramResetForHost*} -filter {IS_SEQUENTIAL==true}]
set TNM_Custom151 [get_cells {*DiagramResetx*bDiagramResetForHost_ms*} -filter {IS_SEQUENTIAL==true}]


set_max_delay -from $TNM_Custom1 -to $TNM_Custom2  19.7980002000
set_max_delay -from $TNM_Custom11 -to $TNM_Custom12 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom13 -to $TNM_Custom14 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom15 -to $TNM_Custom16 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom17 -to $TNM_Custom18 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom19 -to $TNM_Custom20 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom21 -to $TNM_Custom22 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom23 -to $TNM_Custom24  49.4950005000
set_max_delay -from $TNM_Custom33 -to $TNM_Custom34 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom35 -to $TNM_Custom36 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom37 -to $TNM_Custom38 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom39 -to $TNM_Custom40 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom41 -to $TNM_Custom42 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom43 -to $TNM_Custom44 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom45 -to $TNM_Custom46 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom47 -to $TNM_Custom48 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom49 -to $TNM_Custom48 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom51 -to $TNM_Custom52 -datapath_only 29.6970003000
set_max_delay -from $TNM_Custom53 -to $TNM_Custom54 -datapath_only 18.7980002000
set_max_delay -from $TNM_Custom55 -to $TNM_Custom56 -datapath_only 29.6970003000
set_max_delay -from $TNM_Custom57 -to $TNM_Custom58 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom56 -to $TNM_Custom60 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom61 -to $TNM_Custom62 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom58 -to $TNM_Custom64 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom65 -to $TNM_Custom66 -datapath_only 29.6970003000
set_max_delay -from $TNM_Custom67 -to $TNM_Custom68 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom69 -to $TNM_Custom68 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom71 -to $TNM_Custom72 -datapath_only 48.4950005000
set_max_delay -from $TNM_Custom73 -to $TNM_Custom74 -datapath_only 74.2425007499
set_max_delay -from $TNM_Custom75 -to $TNM_Custom76 -datapath_only 29.6970003000
set_max_delay -from $TNM_Custom74 -to $TNM_Custom78 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom61 -to $TNM_Custom80 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom76 -to $TNM_Custom82 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom83 -to $TNM_Custom84 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom85 -to $TNM_Custom86 -datapath_only 1.8748000200
set_max_delay -from $TNM_Custom87 -to $TNM_Custom88  49.4950005000
set_max_delay -from $TNM_Custom97 -to $TNM_Custom98 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom99 -to $TNM_Custom100 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom101 -to $TNM_Custom102 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom103 -to $TNM_Custom104 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom105 -to $TNM_Custom106 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom107 -to $TNM_Custom108 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom109 -to $TNM_Custom110 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom111 -to $TNM_Custom112 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom109 -to $TNM_Custom114 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom111 -to $TNM_Custom116 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom117 -to $TNM_Custom118 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom119 -to $TNM_Custom120 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom121 -to $TNM_Custom122 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom123 -to $TNM_Custom124 -datapath_only 148.4850014999
set_max_delay -from $TNM_Custom125 -to $TNM_Custom126 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom127 -to $TNM_Custom128  49.4950005000
set_max_delay -from $TNM_Custom137 -to $TNM_Custom138 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom139 -to $TNM_Custom140 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom141 -to $TNM_Custom142 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom143 -to $TNM_Custom144 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom145 -to $TNM_Custom146 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom147 -to $TNM_Custom148 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom149  -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom150 -to $TNM_Custom151 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom89 -to $TNM_Custom90 -datapath_only 49.4950005000
set_max_delay -from $TNM_Custom129 -to $TNM_Custom130 -datapath_only 49.4950005000
set_max_delay -from $TNM_Custom25 -to $TNM_Custom26 -datapath_only 19.7980002000
set_max_delay -from $TNM_Custom3 -to $TNM_Custom4 -datapath_only 49.4950005000
set_max_delay -from $TNM_Custom93 -to $TNM_Custom94 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom7 -to $TNM_Custom8 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom29 -to $TNM_Custom30 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom133 -to $TNM_Custom134 -datapath_only 100.0000000000
set_max_delay -from $TNM_Custom95 -to $TNM_Custom96 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom135 -to $TNM_Custom136 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom87 -to $TNM_Custom92 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom127 -to $TNM_Custom132 -datapath_only 12.3737501250
set_max_delay -from $TNM_Custom31 -to $TNM_Custom32 -datapath_only 9.8990001000
set_max_delay -from $TNM_Custom23 -to $TNM_Custom28 -datapath_only 4.9495000500
set_max_delay -from $TNM_Custom9 -to $TNM_Custom10 -datapath_only 24.7475002500
set_max_delay -from $TNM_Custom1 -to $TNM_Custom6 -datapath_only 12.3737501250





# This constraint is required to disable the tools from performing timing 
# analysis on the aDiagramResetLoc net which is meant to be used as an 
# asynchronous reset. This constraint is really only required for 
# Spartan6/Virtex 6/Kintex7/Zynq/Virtex7 and later devices as the tools perform 
# asynchronous reset  recovery timing analysis for these devices, but it doesn't 
# hurt to have them for other devices as well.
# Please note that this constraint is required in addition to having 
# "DISABLE = reg_sr_r;" constraint, as the DISABLE constraint is buggy 
# and does not disable timing analysis for asynchronous resets in certain
# situations.
# It is possible that we would remove the DISABLE constraint and keep
# the timing ignore constraint, but this has not been verified.
#There is no equivalent flag known yet in Vivado for DISABLE=reg_sr_r;
#set_false_path is used to ignore reset recovery checks of  
#asynchronous reset paths on clock domains crossing 
set_false_path -through [get_nets {*DiagramResetx*aDiagramResetLoc*}]


##################################################################################################
##
##  Xilinx, Inc. 2010            www.xilinx.com
##  Wed Mar 12 15:34:57 2014
##  Generated by MIG Version 2.0
##
##################################################################################################
##  File name :       PXIe659XR_DRAM.xdc
##  Details :     Constraints file
##                    FPGA Family:       KINTEX7
##                    FPGA Part:         XC7K410T-FFG900
##                    Speedgrade:        -2
##                    Design Entry:      VHDL
##                    Frequency:         666.667 MHz
##                    Time Period:       1500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K256M8XX-125
## Data Width: 64
## Time Period: 1500
## Data Mask: 1
##################################################################################################

#create_clock -name sys_clk_i -period 7.5 [get_ports sys_clk_i]
#set_propagated_clock sys_clk_i

#create_clock -name clk_ref_i -period 5 [get_ports clk_ref_i]
#set_propagated_clock clk_ref_i

############## NET - IOSTANDARD ##################


# PadFunction: IO_L1N_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[0]}]
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN AK15 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L1P_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[1]}]
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN AK16 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L2N_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[2]}]
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN AH15 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L4P_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[3]}]
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN AF15 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L4N_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[4]}]
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN AG14 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L6P_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[5]}]
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN AE16 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L2P_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[6]}]
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN AG15 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L5N_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[7]}]
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN AJ17 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L8N_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[8]}]
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN AH19 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L11N_T1_SRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[9]}]
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN AG18 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L7P_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[10]}]
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN AJ19 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L10P_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[11]}]
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN AD19 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L7N_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[12]}]
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN AK19 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L8P_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[13]}]
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN AG19 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L12P_T1_MRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[14]}]
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN AF17 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L11P_T1_SRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[15]}]
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN AF18 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L17N_T2_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[16]}]
set_property SLEW FAST [get_ports {ddr3_dq[16]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[16]}]
set_property PACKAGE_PIN AC19 [get_ports {ddr3_dq[16]}]

# PadFunction: IO_L14P_T2_SRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[17]}]
set_property SLEW FAST [get_ports {ddr3_dq[17]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[17]}]
set_property PACKAGE_PIN AD17 [get_ports {ddr3_dq[17]}]

# PadFunction: IO_L16N_T2_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[18]}]
set_property SLEW FAST [get_ports {ddr3_dq[18]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[18]}]
set_property PACKAGE_PIN AB18 [get_ports {ddr3_dq[18]}]

# PadFunction: IO_L18P_T2_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[19]}]
set_property SLEW FAST [get_ports {ddr3_dq[19]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[19]}]
set_property PACKAGE_PIN AB17 [get_ports {ddr3_dq[19]}]

# PadFunction: IO_L13P_T2_MRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[20]}]
set_property SLEW FAST [get_ports {ddr3_dq[20]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[20]}]
set_property PACKAGE_PIN AD18 [get_ports {ddr3_dq[20]}]

# PadFunction: IO_L14N_T2_SRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[21]}]
set_property SLEW FAST [get_ports {ddr3_dq[21]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[21]}]
set_property PACKAGE_PIN AD16 [get_ports {ddr3_dq[21]}]

# PadFunction: IO_L17P_T2_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[22]}]
set_property SLEW FAST [get_ports {ddr3_dq[22]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[22]}]
set_property PACKAGE_PIN AB19 [get_ports {ddr3_dq[22]}]

# PadFunction: IO_L16P_T2_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[23]}]
set_property SLEW FAST [get_ports {ddr3_dq[23]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[23]}]
set_property PACKAGE_PIN AA18 [get_ports {ddr3_dq[23]}]

# PadFunction: IO_L23P_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[24]}]
set_property SLEW FAST [get_ports {ddr3_dq[24]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[24]}]
set_property PACKAGE_PIN AA17 [get_ports {ddr3_dq[24]}]

# PadFunction: IO_L20N_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[25]}]
set_property SLEW FAST [get_ports {ddr3_dq[25]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[25]}]
set_property PACKAGE_PIN AB15 [get_ports {ddr3_dq[25]}]

# PadFunction: IO_L24P_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[26]}]
set_property SLEW FAST [get_ports {ddr3_dq[26]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[26]}]
set_property PACKAGE_PIN Y16 [get_ports {ddr3_dq[26]}]

# PadFunction: IO_L22N_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[27]}]
set_property SLEW FAST [get_ports {ddr3_dq[27]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[27]}]
set_property PACKAGE_PIN AD14 [get_ports {ddr3_dq[27]}]

# PadFunction: IO_L19P_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[28]}]
set_property SLEW FAST [get_ports {ddr3_dq[28]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[28]}]
set_property PACKAGE_PIN AE15 [get_ports {ddr3_dq[28]}]

# PadFunction: IO_L20P_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[29]}]
set_property SLEW FAST [get_ports {ddr3_dq[29]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[29]}]
set_property PACKAGE_PIN AA15 [get_ports {ddr3_dq[29]}]

# PadFunction: IO_L23N_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[30]}]
set_property SLEW FAST [get_ports {ddr3_dq[30]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[30]}]
set_property PACKAGE_PIN AA16 [get_ports {ddr3_dq[30]}]

# PadFunction: IO_L24N_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[31]}]
set_property SLEW FAST [get_ports {ddr3_dq[31]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[31]}]
set_property PACKAGE_PIN Y15 [get_ports {ddr3_dq[31]}]

# PadFunction: IO_L1N_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[32]}]
set_property SLEW FAST [get_ports {ddr3_dq[32]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[32]}]
set_property PACKAGE_PIN AD3 [get_ports {ddr3_dq[32]}]

# PadFunction: IO_L2P_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[33]}]
set_property SLEW FAST [get_ports {ddr3_dq[33]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[33]}]
set_property PACKAGE_PIN AC2 [get_ports {ddr3_dq[33]}]

# PadFunction: IO_L1P_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[34]}]
set_property SLEW FAST [get_ports {ddr3_dq[34]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[34]}]
set_property PACKAGE_PIN AD4 [get_ports {ddr3_dq[34]}]

# PadFunction: IO_L4P_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[35]}]
set_property SLEW FAST [get_ports {ddr3_dq[35]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[35]}]
set_property PACKAGE_PIN AC5 [get_ports {ddr3_dq[35]}]

# PadFunction: IO_L5P_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[36]}]
set_property SLEW FAST [get_ports {ddr3_dq[36]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[36]}]
set_property PACKAGE_PIN AD6 [get_ports {ddr3_dq[36]}]

# PadFunction: IO_L4N_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[37]}]
set_property SLEW FAST [get_ports {ddr3_dq[37]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[37]}]
set_property PACKAGE_PIN AC4 [get_ports {ddr3_dq[37]}]

# PadFunction: IO_L6P_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[38]}]
set_property SLEW FAST [get_ports {ddr3_dq[38]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[38]}]
set_property PACKAGE_PIN AC7 [get_ports {ddr3_dq[38]}]

# PadFunction: IO_L5N_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[39]}]
set_property SLEW FAST [get_ports {ddr3_dq[39]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[39]}]
set_property PACKAGE_PIN AE6 [get_ports {ddr3_dq[39]}]

# PadFunction: IO_L7N_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[40]}]
set_property SLEW FAST [get_ports {ddr3_dq[40]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[40]}]
set_property PACKAGE_PIN AF2 [get_ports {ddr3_dq[40]}]

# PadFunction: IO_L11N_T1_SRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[41]}]
set_property SLEW FAST [get_ports {ddr3_dq[41]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[41]}]
set_property PACKAGE_PIN AF5 [get_ports {ddr3_dq[41]}]

# PadFunction: IO_L8P_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[42]}]
set_property SLEW FAST [get_ports {ddr3_dq[42]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[42]}]
set_property PACKAGE_PIN AE1 [get_ports {ddr3_dq[42]}]

# PadFunction: IO_L11P_T1_SRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[43]}]
set_property SLEW FAST [get_ports {ddr3_dq[43]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[43]}]
set_property PACKAGE_PIN AE5 [get_ports {ddr3_dq[43]}]

# PadFunction: IO_L8N_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[44]}]
set_property SLEW FAST [get_ports {ddr3_dq[44]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[44]}]
set_property PACKAGE_PIN AF1 [get_ports {ddr3_dq[44]}]

# PadFunction: IO_L10P_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[45]}]
set_property SLEW FAST [get_ports {ddr3_dq[45]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[45]}]
set_property PACKAGE_PIN AE4 [get_ports {ddr3_dq[45]}]

# PadFunction: IO_L7P_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[46]}]
set_property SLEW FAST [get_ports {ddr3_dq[46]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[46]}]
set_property PACKAGE_PIN AF3 [get_ports {ddr3_dq[46]}]

# PadFunction: IO_L12P_T1_MRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[47]}]
set_property SLEW FAST [get_ports {ddr3_dq[47]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[47]}]
set_property PACKAGE_PIN AF6 [get_ports {ddr3_dq[47]}]

# PadFunction: IO_L13P_T2_MRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[48]}]
set_property SLEW FAST [get_ports {ddr3_dq[48]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[48]}]
set_property PACKAGE_PIN AH4 [get_ports {ddr3_dq[48]}]

# PadFunction: IO_L17P_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[49]}]
set_property SLEW FAST [get_ports {ddr3_dq[49]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[49]}]
set_property PACKAGE_PIN AJ1 [get_ports {ddr3_dq[49]}]

# PadFunction: IO_L14N_T2_SRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[50]}]
set_property SLEW FAST [get_ports {ddr3_dq[50]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[50]}]
set_property PACKAGE_PIN AH5 [get_ports {ddr3_dq[50]}]

# PadFunction: IO_L17N_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[51]}]
set_property SLEW FAST [get_ports {ddr3_dq[51]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[51]}]
set_property PACKAGE_PIN AK1 [get_ports {ddr3_dq[51]}]

# PadFunction: IO_L13N_T2_MRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[52]}]
set_property SLEW FAST [get_ports {ddr3_dq[52]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[52]}]
set_property PACKAGE_PIN AJ4 [get_ports {ddr3_dq[52]}]

# PadFunction: IO_L18P_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[53]}]
set_property SLEW FAST [get_ports {ddr3_dq[53]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[53]}]
set_property PACKAGE_PIN AJ3 [get_ports {ddr3_dq[53]}]

# PadFunction: IO_L14P_T2_SRCC_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[54]}]
set_property SLEW FAST [get_ports {ddr3_dq[54]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[54]}]
set_property PACKAGE_PIN AH6 [get_ports {ddr3_dq[54]}]

# PadFunction: IO_L16P_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[55]}]
set_property SLEW FAST [get_ports {ddr3_dq[55]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[55]}]
set_property PACKAGE_PIN AH2 [get_ports {ddr3_dq[55]}]

# PadFunction: IO_L23N_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[56]}]
set_property SLEW FAST [get_ports {ddr3_dq[56]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[56]}]
set_property PACKAGE_PIN AK8 [get_ports {ddr3_dq[56]}]

# PadFunction: IO_L22N_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[57]}]
set_property SLEW FAST [get_ports {ddr3_dq[57]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[57]}]
set_property PACKAGE_PIN AK6 [get_ports {ddr3_dq[57]}]

# PadFunction: IO_L23P_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[58]}]
set_property SLEW FAST [get_ports {ddr3_dq[58]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[58]}]
set_property PACKAGE_PIN AJ8 [get_ports {ddr3_dq[58]}]

# PadFunction: IO_L24N_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[59]}]
set_property SLEW FAST [get_ports {ddr3_dq[59]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[59]}]
set_property PACKAGE_PIN AK4 [get_ports {ddr3_dq[59]}]

# PadFunction: IO_L19P_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[60]}]
set_property SLEW FAST [get_ports {ddr3_dq[60]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[60]}]
set_property PACKAGE_PIN AF8 [get_ports {ddr3_dq[60]}]

# PadFunction: IO_L22P_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[61]}]
set_property SLEW FAST [get_ports {ddr3_dq[61]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[61]}]
set_property PACKAGE_PIN AJ6 [get_ports {ddr3_dq[61]}]

# PadFunction: IO_L20N_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[62]}]
set_property SLEW FAST [get_ports {ddr3_dq[62]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[62]}]
set_property PACKAGE_PIN AG7 [get_ports {ddr3_dq[62]}]

# PadFunction: IO_L24P_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[63]}]
set_property SLEW FAST [get_ports {ddr3_dq[63]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {ddr3_dq[63]}]
set_property PACKAGE_PIN AK5 [get_ports {ddr3_dq[63]}]

# PadFunction: IO_L7N_T1_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[14]}]
set_property SLEW FAST [get_ports {ddr3_addr[14]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[14]}]
set_property PACKAGE_PIN AC10 [get_ports {ddr3_addr[14]}]

# PadFunction: IO_L15N_T2_DQS_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[13]}]
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN AK9 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L14N_T2_SRCC_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[12]}]
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN AF10 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L16P_T2_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[11]}]
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN AG9 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L15P_T2_DQS_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[10]}]
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN AJ9 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L13N_T2_MRCC_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[9]}]
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN AH10 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L8P_T1_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[8]}]
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN AD8 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L2P_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[7]}]
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN AA8 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L2N_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[6]}]
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN AB8 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L17N_T2_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[5]}]
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN AK10 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L8N_T1_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[4]}]
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN AE8 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L11N_T1_SRCC_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[3]}]
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN AF11 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L17P_T2_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[2]}]
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN AK11 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L18P_T2_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[1]}]
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN AH11 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L12N_T1_MRCC_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[0]}]
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN AD11 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L4P_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[2]}]
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_ba[2]}]
set_property PACKAGE_PIN Y11 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L18N_T2_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[1]}]
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN AJ11 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L5P_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[0]}]
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN AA11 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_L6N_T0_VREF_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ras_n}]
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_ras_n}]
set_property PACKAGE_PIN AB13 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L6P_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cas_n}]
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_cas_n}]
set_property PACKAGE_PIN AA13 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L1N_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_we_n}]
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_we_n}]
set_property PACKAGE_PIN AB12 [get_ports {ddr3_we_n}]

# PadFunction: IO_L18N_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_reset_n}]
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_reset_n}]
set_property PACKAGE_PIN AK3 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L10N_T1_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cke[0]}]
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_cke[0]}]
set_property PACKAGE_PIN AE9 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L4N_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_odt[0]}]
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_odt[0]}]
set_property PACKAGE_PIN Y10 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_L1P_T0_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_cs_n[0]}]
set_property PACKAGE_PIN AA12 [get_ports {ddr3_cs_n[0]}]

# PadFunction: IO_L5P_T0_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[0]}]
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN AH17 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L10N_T1_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[1]}]
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN AE19 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L13N_T2_MRCC_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[2]}]
set_property SLEW FAST [get_ports {ddr3_dm[2]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[2]}]
set_property PACKAGE_PIN AE18 [get_ports {ddr3_dm[2]}]

# PadFunction: IO_L22P_T3_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[3]}]
set_property SLEW FAST [get_ports {ddr3_dm[3]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[3]}]
set_property PACKAGE_PIN AC14 [get_ports {ddr3_dm[3]}]

# PadFunction: IO_L2N_T0_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[4]}]
set_property SLEW FAST [get_ports {ddr3_dm[4]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[4]}]
set_property PACKAGE_PIN AC1 [get_ports {ddr3_dm[4]}]

# PadFunction: IO_L10N_T1_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[5]}]
set_property SLEW FAST [get_ports {ddr3_dm[5]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[5]}]
set_property PACKAGE_PIN AE3 [get_ports {ddr3_dm[5]}]

# PadFunction: IO_L16N_T2_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[6]}]
set_property SLEW FAST [get_ports {ddr3_dm[6]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[6]}]
set_property PACKAGE_PIN AJ2 [get_ports {ddr3_dm[6]}]

# PadFunction: IO_L20P_T3_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[7]}]
set_property SLEW FAST [get_ports {ddr3_dm[7]}]
set_property IOSTANDARD SSTL135 [get_ports {ddr3_dm[7]}]
set_property PACKAGE_PIN AF7 [get_ports {ddr3_dm[7]}]

# PadFunction: IO_L3P_T0_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN AH16 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L3N_T0_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN AJ16 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L9P_T1_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN AJ18 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L9N_T1_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN AK18 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L15P_T2_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[2]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[2]}]
set_property PACKAGE_PIN Y19 [get_ports {ddr3_dqs_p[2]}]

# PadFunction: IO_L15N_T2_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[2]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[2]}]
set_property PACKAGE_PIN Y18 [get_ports {ddr3_dqs_n[2]}]

# PadFunction: IO_L21P_T3_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[3]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[3]}]
set_property PACKAGE_PIN AC16 [get_ports {ddr3_dqs_p[3]}]

# PadFunction: IO_L21N_T3_DQS_32
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[3]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[3]}]
set_property PACKAGE_PIN AC15 [get_ports {ddr3_dqs_n[3]}]

# PadFunction: IO_L3P_T0_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[4]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[4]}]
set_property PACKAGE_PIN AD2 [get_ports {ddr3_dqs_p[4]}]

# PadFunction: IO_L3N_T0_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[4]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[4]}]
set_property PACKAGE_PIN AD1 [get_ports {ddr3_dqs_n[4]}]

# PadFunction: IO_L9P_T1_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[5]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[5]}]
set_property PACKAGE_PIN AG4 [get_ports {ddr3_dqs_p[5]}]

# PadFunction: IO_L9N_T1_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[5]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[5]}]
set_property PACKAGE_PIN AG3 [get_ports {ddr3_dqs_n[5]}]

# PadFunction: IO_L15P_T2_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[6]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[6]}]
set_property PACKAGE_PIN AG2 [get_ports {ddr3_dqs_p[6]}]

# PadFunction: IO_L15N_T2_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[6]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[6]}]
set_property PACKAGE_PIN AH1 [get_ports {ddr3_dqs_n[6]}]

# PadFunction: IO_L21P_T3_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[7]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_p[7]}]
set_property PACKAGE_PIN AH7 [get_ports {ddr3_dqs_p[7]}]

# PadFunction: IO_L21N_T3_DQS_34
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[7]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {ddr3_dqs_n[7]}]
set_property PACKAGE_PIN AJ7 [get_ports {ddr3_dqs_n[7]}]

# PadFunction: IO_L3P_T0_DQS_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_p[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN AB9 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L3N_T0_DQS_33
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_n[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL135 [get_ports {ddr3_ck_n[0]}]
set_property PACKAGE_PIN AC9 [get_ports {ddr3_ck_n[0]}]



set_property LOC PHASER_OUT_PHY_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]

set_property LOC PHASER_IN_PHY_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]



set_property LOC OUT_FIFO_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property LOC OUT_FIFO_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]

set_property LOC IN_FIFO_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]

set_property LOC PHY_CONTROL_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/phy_control_i}]
set_property LOC PHY_CONTROL_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phy_control_i}]
set_property LOC PHY_CONTROL_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]

set_property LOC PHASER_REF_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]

set_property LOC OLOGIC_X1Y43 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y31 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y19 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y143 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y131 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y119 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y107 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]

set_property LOC PLLE2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/plle2_i}]
set_property LOC MMCME2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/gen_mmcm.mmcm_i}]


set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -setup 6

set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -hold 5

#set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r*}] \
#                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
#                    -setup 6

#set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r*}] \
#                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
#                    -hold 5

set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]

set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -setup 2 -start
set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -hold 1 -start

set_max_delay -datapath_only -from [get_cells -hier -filter {IS_SEQUENTIAL && NAME =~ *temp_mon_enabled.u_tempmon/*}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
set_max_delay -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 5
#set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/*}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
#set_max_delay -from [get_cells -hier rstdiv0_sync_r1*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 5
