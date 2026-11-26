set_multi_cpu_usage -localCpu 8
set DESIGN "counter"

# Use your verified single-corner library and project paths
set LIB_FILE  [list \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_lvt.lib" \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_hvt.lib" \
    "/home/user_50/projects/counter_45/lib/slow_vdd1v0_basicCells_svt.lib"
]

set LEF_FILES [list \
    "/home/user_50/projects/counter_45/lef/gsclib045_tech.lef" \
    "/home/user_50/projects/counter_45/lef/gsclib045_svt_macro.lef" \
    "/home/user_50/projects/counter_45/lef/gsclib045_hvt_macro.lef" \
    "/home/user_50/projects/counter_45/lef/gsclib045_lvt_macro.lef" \
]
set NETLIST   "/home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v"
set DEF_FILE  "/home/user_50/projects/counter_45/pnr/outputs/counter_final.def"
set SDC_FILE  "/home/user_50/projects/counter_45/pnr/outputs/counter_signoff.sdc"
set SPEF_FILE "/home/user_50/projects/counter_45/post_layout_analysis/pex_quantus/results/counter_typical.spef"

read_lib $LIB_FILE
read_lib -lef $LEF_FILES

read_verilog $NETLIST
set_top_module $DESIGN

read_def $DEF_FILE
read_sdc $SDC_FILE
read_spef $SPEF_FILE

set_propagated_clock [all_clocks]
update_timing -full

# Static vectorless power pass
set_power_analysis_mode -reset
set_power_analysis_mode \
    -method static \
    -corner max \
    -create_binary_db true \
    -write_static_currents true

set_default_switching_activity -input_activity 0.2 -seq_activity 0.2
propagate_activity

report_power -outfile voltus_static_power.rpt

puts "=== Voltus Static Power Complete! ==="
