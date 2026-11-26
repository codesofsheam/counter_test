set DESIGN "counter"

 
set LIB_FILE [list \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_hvt.lib" \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_lvt.lib" \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_svt.lib" \
]

set LEF_FILES [list \
    "/home/user_50/blueprint_gpdk45/lef/gsclib045_tech.lef" \
    "/home/user_50/blueprint_gpdk45/lef/gsclib045_hvt_macro.lef" \
    "/home/user_50/blueprint_gpdk45/lef/gsclib045_lvt_macro.lef" \
    "/home/user_50/blueprint_gpdk45/lef/gsclib045_svt_macro.lef" \
]
set NETLIST "/home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v"
set DEF_FILE  "/home/user_50/projects/counter_45/pnr/outputs/counter_final.def"
set SDC_FILE  "/home/user_50/projects/counter_45/pnr/outputs/counter_signoff.sdc"
set SPEF_FILE "/home/user_50/projects/counter_45/post_layout_analysis/pex_quantus/results/counter_typical.spef"

read_lib $LIB_FILE
read_lib -lef $LEF_FILES

read_verilog $NETLIST
set_top_module $DESIGN

read_def $DEF_FILE
read_spef $SPEF_FILE

read_sdc $SDC_FILE


set_analysis_mode -analysisType onChipVariation -cppr both

set_delay_cal_mode -SIAware false
set_propagated_clock [all_clocks]


update_timing -full

check_timing -verbose > check_timing.rpt
setDistributeHost -local
setMultiCpuUsage -remoteHost 1 -cpuPerRemoteHost 8

check_design -type timing -out_file check_design.rpt



report_timing -late  -max_paths 20 -nworst 3 -path_type full_clock > tempus_setup_max.rpt
report_timing -early -max_paths 20 -nworst 3 -path_type full_clock > tempus_hold_min.rpt


report_clocks -skew > tempus_clock_skew.rpt


report_constraint -all_violators > all_violations.rpt
report_constraint -all_violators -drv_violation_type max_transition > tempus_max_tran.rpt
report_constraint -all_violators -drv_violation_type max_capacitance > tempus_max_cap.rpt


write_sdf -version 3.0 -recompute_delay_calc counter_signoff_tempus.sdf

puts "=== Tempus Signoff STA Complete! ==="


