#######################################################
#                                                     
#  Voltus IC Power Integrity Solution Command Logging File                     
#  Created on Wed Nov 25 11:28:54 2026                
#                                                     
#######################################################

#@(#)CDS: Voltus IC Power Integrity Solution v25.10-p001_1 (64bit) 04/11/2025 11:58 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: NanoRoute 25.10-p001_1 NR250317-0405/25_10-UB (database version 18.20.663) {superthreading v2.20}
#@(#)CDS: AAE 25.10-b008 (64bit) 04/11/2025 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: CTE 25.10-b014_1 () Mar 28 2025 03:11:49 ( )
#@(#)CDS: SYNTECH 25.10-b006_1 () Mar 13 2025 03:32:26 ( )
#@(#)CDS: CPE v25.10-b011

::stop_gui -keepDgui
setLayerPreference net -isVisible 0
setLayerPreference clock -isVisible 0
set_multi_cpu_usage -localCpu 8
read_lib {/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_lvt.lib /home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_hvt.lib /home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_svt.lib}
read_lib -lef {/home/user_50/projects/counter_45/lef/gsclib045_tech.lef /home/user_50/projects/counter_45/lef/gsclib045_svt_macro.lef /home/user_50/projects/counter_45/lef/gsclib045_hvt_macro.lef /home/user_50/projects/counter_45/lef/gsclib045_lvt_macro.lef}
read_verilog /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v
set_top_module counter
read_def /home/user_50/projects/counter_45/pnr/outputs/counter_final.def
read_sdc /home/user_50/projects/counter_45/pnr/outputs/counter_signoff.sdc
read_spef /home/user_50/projects/counter_45/post_layout_analysis/pex_quantus/results/counter_typical.spef
set_propagated_clock [all_clocks]
update_timing -full
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true
set_default_switching_activity -input_activity 0.2 -seq_activity 0.2
propagate_activity
report_power -outfile voltus_static_power.rpt
exit
