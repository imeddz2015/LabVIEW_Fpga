#!/bin/bash -f
# Vivado (TM) v2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (64-bit)
#
# Filename    : d_mcs.sh
# Simulator   : Cadence Incisive Enterprise Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon Jun 19 10:35:08 -0400 2017
# IP Build 1412968 on Wed Nov 18 10:19:19 MST 2015 
#
# usage: d_mcs.sh [-help]
# usage: d_mcs.sh [-lib_map_path]
# usage: d_mcs.sh [-noclean_files]
# usage: d_mcs.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'd_mcs.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Script info
echo -e "d_mcs.sh - Script generated by export_simulation (Vivado v2015.4_AR67478_AR66782_AR66772_AR66092_AR65813_ar68397_cr964221_2015_4 (64-bit)-id)\n"

# Script usage
usage()
{
  msg="Usage: d_mcs.sh [-help]\n\
Usage: d_mcs.sh [-lib_map_path]\n\
Usage: d_mcs.sh [-reset_run]\n\
Usage: d_mcs.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

if [[ ($# == 1 ) && ($1 != "-lib_map_path" && $1 != "-noclean_files" && $1 != "-reset_run" && $1 != "-help" && $1 != "-h") ]]; then
  echo -e "ERROR: Unknown option specified '$1' (type \"./d_mcs.sh -help\" for more information)\n"
  exit 1
fi

if [[ ($1 == "-help" || $1 == "-h") ]]; then
  usage
fi

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./d_mcs.sh -help\" for more information)\n"
        exit 1
      fi
      # precompiled simulation library directory path
     create_lib_mappings $2
     touch hdl.var
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
     create_lib_mappings $2
     touch hdl.var
  esac

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Remove generated data from the previous run and re-create setup files/library mappings
reset_run()
{
  files_to_remove=(ncsim.key irun.key ncvlog.log ncvhdl.log compile.log elaborate.log simulate.log run.log waves.shm INCA_libs)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# Main steps
run()
{
  setup $1 $2
  compile
  elaborate
  simulate
}

# Create design library directory paths and define design library mappings in cds.lib
create_lib_mappings()
{
  libs=(microblaze_v9_5_3 iomodule_v3_0 lmb_bram_if_cntlr_v4_0 lmb_v10_v3_0 axi_lite_ipif_v3_0 mdm_v3_2 microblaze_mcs_v2_3_3 xil_defaultlib)
  file="cds.lib"
  dir="ies"

  if [[ -e $file ]]; then
    rm -f $file
  fi

  if [[ -e $dir ]]; then
    rm -rf $dir
  fi

  touch $file
  lib_map_path="<SPECIFY_COMPILED_LIB_PATH>"
  if [[ ($1 != "" && -e $1) ]]; then
    lib_map_path="$1"
  else
    echo -e "ERROR: Compiled simulation library directory path not specified or does not exist (type "./top.sh -help" for more information)\n"
  fi
  incl_ref="INCLUDE $lib_map_path/cds.lib"
  echo $incl_ref >> $file

  for (( i=0; i<${#libs[*]}; i++ )); do
    lib="${libs[i]}"
    lib_dir="$dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
      mapping="DEFINE $lib $dir/$lib"
      echo $mapping >> $file
    fi
  done
}


# RUN_STEP: <compile>
compile()
{
  # Directory path for design sources and include directories (if any) wrt this path
  ref_dir="."
  # Command line options
  opts_ver="-64bit -messages -logfile ncvlog.log -append_log"
  opts_vhd="-64bit -V93 -RELAX -logfile ncvhdl.log -append_log"

  # Compile design files
  ncvhdl -work microblaze_v9_5_3 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_v9_5/hdl/microblaze_v9_5_vh_rfs.vhd" \

  ncvhdl -work iomodule_v3_0 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/xilinx_primitives.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/pselect_mask.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/divide_part.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/fit_module.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/gpi_module.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/gpo_module.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/intr_ctrl.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/pit_module.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_control_status.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_receive.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_transmit.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/iomodule_core.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/iomodule.vhd" \

  ncvhdl -work lmb_bram_if_cntlr_v4_0 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

  ncvhdl -work lmb_v10_v3_0 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

  ncvhdl -work axi_lite_ipif_v3_0 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/ipif_pkg.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/pselect_f.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/address_decoder.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/slave_attachment.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/axi_lite_ipif.vhd" \

  ncvhdl -work mdm_v3_2 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm.vhd" \

  ncvhdl -work microblaze_mcs_v2_3_3 $opts_vhd \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/hdl/ram_module_top.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/hdl/lmb_bram.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/hdl/lmb2axi.vhd" \
    "$ref_dir/../../../ipstatic/microblaze_mcs_v2_3/hdl/microblaze_mcs.vhd" \

  ncvhdl -work xil_defaultlib $opts_vhd \
    "$ref_dir/../../../bd/d_mcs/ip/d_mcs_microblaze_mcs_0_0/sim/d_mcs_microblaze_mcs_0_0.vhd" \
    "$ref_dir/../../../bd/d_mcs/hdl/d_mcs.vhd" \


}

# RUN_STEP: <elaborate>
elaborate()
{
  opts="-64bit -relax -access +rwc -messages -logfile elaborate.log -timescale 1ps/1ps"
  libs="-libname secureip -libname microblaze_v9_5_3 -libname iomodule_v3_0 -libname lmb_bram_if_cntlr_v4_0 -libname lmb_v10_v3_0 -libname axi_lite_ipif_v3_0 -libname mdm_v3_2 -libname microblaze_mcs_v2_3_3 -libname xil_defaultlib"
  ncelab $opts xil_defaultlib.d_mcs $libs
}

# RUN_STEP: <simulate>
simulate()
{
  opts="-64bit -logfile simulate.log"
  ncsim $opts xil_defaultlib.d_mcs -input simulate.do
}
# Script usage
usage()
{
  msg="Usage: d_mcs.sh [-help]\n\
Usage: d_mcs.sh [-lib_map_path]\n\
Usage: d_mcs.sh [-reset_run]\n\
Usage: d_mcs.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}


# Launch script
run $1 $2
