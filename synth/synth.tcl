set DESIGN "counter"
set RTL_DIR "../rtl"
set LIB_DIR "../lib"
set LEF_DIR "../lef"
set QRC_DIR "../qrc"
set SDC_DIR "../sdc"


set RPT_DIR "./reports"
set OUT_DIR "./outputs"
file mkdir $RPT_DIR
file mkdir $OUT_DIR


set LIB_LIST {
    slow_vdd1v0_basicCells_svt.lib
    slow_vdd1v0_basicCells_lvt.lib
    slow_vdd1v0_basicCells_hvt.lib
}

    
    
    
set LEF_LIST {gsclib045_tech.lef gsclib045_svt_macro.lef gsclib045_lvt_macro.lef gsclib045_hvt_macro.lef}



set_db init_lib_search_path "$LIB_DIR $LEF_DIR"
set_db init_hdl_search_path $RTL_DIR
set_db library $LIB_LIST
set_db lef_library $LEF_LIST
                 
set_db hdl_track_filename_row_col true


read_libs $LIB_LIST


read_physical -lef $LEF_LIST


set_db qrc_tech_file "${QRC_DIR}/typical/qrcTechFile"

set_db syn_generic_effort high
set_db syn_map_effort high
set_db syn_opt_effort extreme


set_db lp_insert_clock_gating true



read_hdl "${RTL_DIR}/counter.v"

elaborate $DESIGN




read_sdc "${SDC_DIR}/initial.sdc"


#set_db design:cva6 .retime true
syn_generic
report_timing > ${RPT_DIR}/generic_timing.rpt
write_db -all_root_attributes ./generic.db

# commented out bcz its not for  fabrication
# 1. Tell Genus to use multiplexed scan flip-flops
#set_db dft_scan_style muxed_scan

# 2. Define 3 basic scan ports (Genus auto-creates them on the top module if missing)
#define_test_signal -function shift_enable -name SE -active high -create_port SE
#define_scan_chain -name chain1 -sdi scan_in -sdo scan_out -create_ports
# 3. Check & fix any simple clock/reset testability rules automatically
#check_dft_rules
#fix_dft_violations -clock -async_set -async_reset


syn_map
report_timing > ${RPT_DIR}/after_mapped_timing.rpt
write_db -all_root_attributes ./mapped.db



syn_opt

#connect_scan_chains -auto_create_chains
#write_scandef > ${OUT_DIR}/${DESIGN}_synthesized.scandef

write_db -all_root_attributes ./final.db
write_hdl > ${OUT_DIR}/${DESIGN}_synthesized_netlist.v
write_sdc > ${SDC_DIR}/${DESIGN}_synthesized.sdc



report_area -detail > ${RPT_DIR}/total_area.rpt
report_gates > ${RPT_DIR}/instances_data.rpt


report_qor > ${RPT_DIR}/qor.rpt
report_timing > ${RPT_DIR}/final_timing.rpt


report_power > ${RPT_DIR}/power.rpt


check_design -all > ${RPT_DIR}/overall_check.rpt



puts " Synthesis Completed Successfully!"
