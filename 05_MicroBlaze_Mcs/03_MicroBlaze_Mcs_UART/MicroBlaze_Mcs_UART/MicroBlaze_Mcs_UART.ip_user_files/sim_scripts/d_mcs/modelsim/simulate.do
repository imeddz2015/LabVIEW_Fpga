onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L microblaze_v9_5_3 -L iomodule_v3_0 -L lmb_bram_if_cntlr_v4_0 -L lmb_v10_v3_0 -L axi_lite_ipif_v3_0 -L mdm_v3_2 -L microblaze_mcs_v2_3_3 -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.d_mcs

do {wave.do}

view wave
view structure
view signals

do {d_mcs.udo}

run -all

quit -force
