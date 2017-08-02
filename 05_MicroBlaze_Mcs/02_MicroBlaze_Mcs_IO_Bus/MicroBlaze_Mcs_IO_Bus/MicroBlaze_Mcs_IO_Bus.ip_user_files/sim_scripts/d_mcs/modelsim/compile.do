vlib work
vlib msim

vlib msim/microblaze_v9_5_3
vlib msim/iomodule_v3_0
vlib msim/lmb_bram_if_cntlr_v4_0
vlib msim/lmb_v10_v3_0
vlib msim/axi_lite_ipif_v3_0
vlib msim/mdm_v3_2
vlib msim/microblaze_mcs_v2_3_3
vlib msim/xil_defaultlib

vmap microblaze_v9_5_3 msim/microblaze_v9_5_3
vmap iomodule_v3_0 msim/iomodule_v3_0
vmap lmb_bram_if_cntlr_v4_0 msim/lmb_bram_if_cntlr_v4_0
vmap lmb_v10_v3_0 msim/lmb_v10_v3_0
vmap axi_lite_ipif_v3_0 msim/axi_lite_ipif_v3_0
vmap mdm_v3_2 msim/mdm_v3_2
vmap microblaze_mcs_v2_3_3 msim/microblaze_mcs_v2_3_3
vmap xil_defaultlib msim/xil_defaultlib

vcom -work microblaze_v9_5_3 -64 -93 \
"../../../ipstatic/microblaze_v9_5/hdl/microblaze_v9_5_vh_rfs.vhd" \

vcom -work iomodule_v3_0 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/xilinx_primitives.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/divide_part.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/fit_module.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/gpi_module.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/gpo_module.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/intr_ctrl.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/pit_module.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_control_status.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_receive.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/uart_transmit.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/iomodule_core.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/iomodule_v3_0/hdl/vhdl/iomodule.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work lmb_v10_v3_0 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work axi_lite_ipif_v3_0 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/pselect_f.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/address_decoder.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/slave_attachment.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/axi_lite_ipif_v3_0/hdl/vhdl/axi_lite_ipif.vhd" \

vcom -work mdm_v3_2 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/pcores/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work microblaze_mcs_v2_3_3 -64 -93 \
"../../../ipstatic/microblaze_mcs_v2_3/hdl/ram_module_top.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/hdl/lmb_bram.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/hdl/lmb2axi.vhd" \
"../../../ipstatic/microblaze_mcs_v2_3/hdl/microblaze_mcs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/d_mcs/ip/d_mcs_microblaze_mcs_0_0/sim/d_mcs_microblaze_mcs_0_0.vhd" \
"../../../bd/d_mcs/hdl/d_mcs.vhd" \

