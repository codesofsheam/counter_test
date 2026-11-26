#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Wed Nov 25 10:47:46 2026                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v25.10-p001_1 (64bit) 04/11/2025 11:58 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: NanoRoute 25.10-p001_1 NR250317-0405/25_10-UB (database version 18.20.663) {superthreading v2.20}
#@(#)CDS: AAE 25.10-b008 (64bit) 04/11/2025 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: CTE 25.10-b014_1 () Mar 28 2025 03:11:49 ( )
#@(#)CDS: SYNTECH 25.10-b006_1 () Mar 13 2025 03:32:26 ( )
#@(#)CDS: CPE v25.10-b011

read_lib {/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_hvt.lib /home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_lvt.lib /home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_svt.lib}
read_lib -lef {/home/user_50/blueprint_gpdk45/lef/gsclib045_tech.lef /home/user_50/blueprint_gpdk45/lef/gsclib045_hvt_macro.lef /home/user_50/blueprint_gpdk45/lef/gsclib045_lvt_macro.lef /home/user_50/blueprint_gpdk45/lef/gsclib045_svt_macro.lef}
read_verilog /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v
set_top_module counter
read_def /home/user_50/projects/counter_45/pnr/outputs/counter_final.def
read_spef /home/user_50/projects/counter_45/post_layout_analysis/pex_quantus/results/counter_typical.spef
read_sdc /home/user_50/projects/counter_45/pnr/outputs/counter_signoff.sdc
set_analysis_mode -analysisType onChipVariation -cppr both
set_delay_cal_mode -SIAware false
set_propagated_clock [all_clocks]
update_timing -full
check_timing -verbose > check_timing.rpt
setDistributeHost -local
check_design -type timing -out_file check_design.rpt
report_timing -late  -max_paths 20 -nworst 3 -path_type full_clock > tempus_setup_max.rpt
report_timing -early -max_paths 20 -nworst 3 -path_type full_clock > tempus_hold_min.rpt
report_clocks -skew > tempus_clock_skew.rpt
report_constraint -all_violators > all_violations.rpt
report_constraint -all_violators -drv_violation_type max_transition > tempus_max_tran.rpt
report_constraint -all_violators -drv_violation_type max_capacitance > tempus_max_cap.rpt
write_sdf -version 3.0 -recompute_delay_calc counter_signoff_tempus.sdf
exit
