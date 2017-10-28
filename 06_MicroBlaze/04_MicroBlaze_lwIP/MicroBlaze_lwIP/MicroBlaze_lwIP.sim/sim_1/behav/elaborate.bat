@echo off
set xv_path=C:\\NIFPGA\\programs\\Vivado2015_4\\bin
call %xv_path%/xelab  -wto 245fcf0644a0496f8947f56074063bcc -m64 --debug typical --relax --mt 2 -L microblaze_v9_5_3 -L xil_defaultlib -L lmb_v10_v3_0_7 -L lmb_bram_if_cntlr_v4_0_7 -L blk_mem_gen_v8_3_1 -L axi_lite_ipif_v3_0_3 -L axi_intc_v4_1_5 -L mdm_v3_2_4 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L interrupt_control_v3_1_3 -L axi_gpio_v2_0_9 -L lib_pkg_v1_0_2 -L fifo_generator_v13_0_1 -L lib_fifo_v1_0_4 -L axi_fifo_mm_s_v4_1_4 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_7 -L axi_data_fifo_v2_1_6 -L axi_crossbar_v2_1_8 -L axi_bram_ctrl_v4_0_6 -L axi_protocol_converter_v2_1_7 -L unisims_ver -L unimacro_ver -L secureip --snapshot d_microblaze_wrapper_tb_behav xil_defaultlib.d_microblaze_wrapper_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0