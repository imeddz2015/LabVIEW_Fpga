vlib work
vlib msim

vlib msim/microblaze_v9_5_3
vlib msim/xil_defaultlib
vlib msim/lmb_v10_v3_0_7
vlib msim/lmb_bram_if_cntlr_v4_0_7
vlib msim/blk_mem_gen_v8_3_1
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_8
vlib msim/util_vector_logic_v2_0
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_gpio_v2_0_9

vmap microblaze_v9_5_3 msim/microblaze_v9_5_3
vmap xil_defaultlib msim/xil_defaultlib
vmap lmb_v10_v3_0_7 msim/lmb_v10_v3_0_7
vmap lmb_bram_if_cntlr_v4_0_7 msim/lmb_bram_if_cntlr_v4_0_7
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_gpio_v2_0_9 msim/axi_gpio_v2_0_9

vcom -work microblaze_v9_5_3 -64 \
"../../../ipstatic/microblaze_v9_5/hdl/microblaze_v9_5_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_microblaze_0_0/sim/d_microblaze_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_7 -64 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_dlmb_v10_0/sim/d_microblaze_dlmb_v10_0.vhd" \
"../../../bd/d_microblaze/ip/d_microblaze_ilmb_v10_0/sim/d_microblaze_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_7 -64 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_dlmb_bram_if_cntlr_0/sim/d_microblaze_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/d_microblaze/ip/d_microblaze_ilmb_bram_if_cntlr_0/sim/d_microblaze_ilmb_bram_if_cntlr_0.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_lmb_bram_0/sim/d_microblaze_lmb_bram_0.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_clk_wiz_1_0/d_microblaze_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/d_microblaze/ip/d_microblaze_clk_wiz_1_0/d_microblaze_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_rst_clk_wiz_1_100M_0/sim/d_microblaze_rst_clk_wiz_1_100M_0.vhd" \

vcom -work util_vector_logic_v2_0 -64 \
"../../../bd/d_microblaze/ipshared/xilinx.com/util_vector_logic_v2_0/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_util_vector_logic_0_1/sim/d_microblaze_util_vector_logic_0_1.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work interrupt_control_v3_1_3 -64 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_9 -64 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/d_microblaze/ip/d_microblaze_axi_gpio_0_0/sim/d_microblaze_axi_gpio_0_0.vhd" \
"../../../bd/d_microblaze/hdl/d_microblaze.vhd" \

vlog -work xil_defaultlib "glbl.v"

