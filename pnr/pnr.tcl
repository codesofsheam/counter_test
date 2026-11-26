# ==============================================================================
# 0. DIRECTORY SETUP & SYSTEM CONFIGURATION
# ==============================================================================
set DESIGN       "counter"
set LIB_DIR      "../lib"
set LEF_DIR      "../lef"
set QRC_DIR      "../qrc"
set OUT_DIR       "./outputs"
set RPT_DIR      "./reports"
set DB_DIR       "./database"
set MERGE_GDS_LIST [list \
    "../gds/gsclib045_lvt.gds" \
    "../gds/gsclib045_svt.gds" \
    "../gds/gsclib045_hvt.gds" \
]
# Create output directories
file mkdir $OUT_DIR
file mkdir $RPT_DIR
file mkdir $DB_DIR
#initial import design step-------------------------------------------------------------------------
set init_pwr_net VDD
set init_gnd_net VSS
set init_lef_file {../lef/gsclib045_tech.lef ../lef/gsclib045_svt_macro.lef ../lef/gsclib045_lvt_macro.lef ../lef/gsclib045_hvt_macro.lef}
set init_design_settop 0
set init_verilog ../synth/outputs/counter_synthesized_netlist.v
set init_mmmc_file counter.view
init_design

saveDesign counter_init.enc -tcon -rc -verilog -def -libs

#setDesignMode -process 45
#floorplan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -s 100.0 99.19 10.0 10.07 10.0 10.07
uiSetTool select
getIoFlowFlag
fit

# Connect Global Power and Ground Pins with the netlist logically
globalNetConnect VDD -type pg_pin -pin VDD -all -verbose
globalNetConnect VSS -type pg_pin -pin VSS -all -verbose

#pinEditor
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use CLOCK -pinWidth 0.16 -pinDepth 0.25 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 7 -spreadType center -spacing 0.2 -pin clk
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.08 -pinDepth 0.25 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 5 -spreadType center -spacing 5.13 -pin {{count[0]} {count[1]} {count[2]} {count[3]} {count[4]} {count[5]} {count[6]} {count[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.08 -pinDepth 0.25 -fixedPin 1 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 6 -spreadType center -spacing 0.2 -pin rst
setPinAssignMode -pinEditInBatch false

#add_powerRing


set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} -width {top 3 bottom 3 left 3 right 3} -spacing {top 2 bottom 2 left 2 right 2} -offset {top 1 bottom 1 left 1 right 1} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None


#add_stripes_both_horizontal_and_vertical
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal10 -direction vertical -width 3 -spacing 2 -number_of_sets 3 -start_from left -start_offset 20 -stop_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal11 -direction horizontal -width 3 -spacing 2 -number_of_sets 3 -start_from top -start_offset 20 -stop_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None


#sroute
setSrouteMode -viaConnectToShape { stripe }
sroute -connect { blockPin padPin corePin floatingStripe } -layerChangeRange { Metal1(1) Metal1(1) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 0 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 0 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }



#power_via_generation
editPowerVia -skip_via_on_pin Standardcell -bottom_layer Metal1 -nets {VDD VSS} -add_vias 1 -top_layer Metal11
set sprEpvLayers {}

#end_cap_cells
addEndCap -preCap FILL8 -postCap FILL8 -prefix ENDCAP


# Place Welltaps 
addWellTap -cell FILL16 -cellInterval 25 -fixedGap -inRowOffset 10 -prefix WELLTAP

# Connect Global Power and Ground Pins with the netlist logically
globalNetConnect VDD -type pg_pin -pin VDD -all -verbose
globalNetConnect VSS -type pg_pin -pin VSS -all -verbose



saveDesign counter_floorplan.enc -tcon -rc -verilog -def -libs

##############################floorPlan_DONE!!!!############################################



# ==============================================================================
# 3. PLACEMENT & SCAN CHAIN REORDERING
# ==============================================================================
puts "--- STAGE 3: Standard Cell Placement & Scan Reordering ---"

# Run Placement and Pre-CTS Timing Optimization (-sadd enables scan-reordering placement)
#place_opt_design -sadd

place_opt_design
# Reorder scan chains based on physical layout- not for fab
#if {[file exists "${OUT_DIR}/${DESIGN}_synthesized.scandef"]} {
#    reorder_scan_chains
#}

==============================================================================
# 4. CLOCK TREE SYNTHESIS (CTS / CCOpt)
# ==============================================================================
puts "--- STAGE 4: Clock Tree Synthesis (CCOpt) ---"

# Create Clock Tree Specification automatically from SDC constraints
create_ccopt_clock_tree_spec
# Run Clock Concurrent Optimization

clock_opt_design

#or ccopt_design

optDesign -postCTS
timeDesign -postCTS

report_ccopt_clock_trees > ${RPT_DIR}/04_cts_clock_trees.rpt
report_ccopt_skew_groups > ${RPT_DIR}/04_cts_skew.rpt
report_timing -max_paths 5 > ${RPT_DIR}/04_post_cts_timing.rpt

saveDesign counter_postCts.enc -tcon -rc -verilog -def -libs
# ==============================================================================
# Stage: pre-5 SPARE CELL INSERTION (Verified GPDK45 Syntax & Cell Names)(For post-tapeout ECO fixes)

# ==============================================================================
puts "--- STAGE pre-5: Spare Cell Insertion ---"

# Reset any pre-existing spare instances in memory

# Create spare module hierarchy with single-height gsclib045 cells tied to TIELO(this code is only for gpdk45)
createSpareModule \
    -moduleName SPARE_MODULE \
    -cell {BUFX3 2 BUFX4 2 INVX2 2 INVX4 2 NAND2X2 2 NOR2X2 2 MX2X2 1 DFFHQX1 1} \
    -tie {TIEHI TIELO}
# Uniformly distribute spare gates across core area (35um step grid)
placeSpareModule -moduleName SPARE_MODULE -stepx 35 -stepy 35

# Check Placement Congestion and Density
checkPlace > ${RPT_DIR}/03_check_place.rpt
report_timing -max_paths 10 > ${RPT_DIR}/03_pre_cts_timing.rpt

saveDesign counter_placed.enc -tcon -rc -verilog -def -libs

globalNetConnect VDD -pin VDD -instanceBasename * -verbose
globalNetConnect VSS -pin VSS -instanceBasename * -verbose


# ==============================================================================
# 5. GLOBAL & DETAILED ROUTING (NanoRoute)
# ==============================================================================
puts "--- STAGE 5: Routing & Post-Route Optimization ---"

# Configure NanoRoute Options
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeAntennaCellName ANTENNA
setNanoRouteMode -routeWithViaInPin true
# Execute Routing
routeDesign
setAnalysisMode -analysisType onChipVariation
# 1. Post-route setup timing & DRV optimization
optDesign -postRoute

# 2. Post-route hold timing optimization
optDesign -postRoute -hold


#now its time to do every possible kinda verifications
timeDesign -postRoute
verifyConnectivity
verify_antenna
# Check Routing DRCs
verify_drc
verifyPowerVia
verify_drc > ${RPT_DIR}/05_route_drc.rpt
report_timing -max_paths 5 > ${RPT_DIR}/05_post_route_timing.rpt

saveDesign counter_routed_verified.enc -tcon -rc -verilog -def -libs

# ==============================================================================
# 6. SIGN-OFF & TAPE-OUT EXPORTS
# ==============================================================================
puts "--- STAGE 6: Filler Placement & Export Sign-off Files ---"

# Add Standard Cell Filler Cells (To complete N/P-well connectivity)
addFiller -cell {FILL64HVT FILL32HVT FILL16HVT FILL8HVT FILL4HVT FILL2HVT FILL64LVT FILL32LVT FILL16LVT FILL8LVT FILL4LVT FILL2LVT} -prefix FILLER -fitGap
#Clean up any minor M1/via collisions caused by the newly inserted fillers and incrementally routes any newly added or modified nets
ecoRoute -target



# Final Verification Checks
verify_drc -report ${RPT_DIR}/06_final_drc.rpt
verifyConnectivity -type all -report ${RPT_DIR}/06_final_connectivity.rpt
report_power > ${RPT_DIR}/06_final_power.rpt
report_area > ${RPT_DIR}/06_final_area.rpt
verify_antenna
# Extract Parasitic RC values
extractRC
# 1. Export Parasitic SPEF (for post-layout STA / Tempus / if you dont have quantus)

rcOut -rc_corner best_wires -spef ${OUT_DIR}/${DESIGN}_best_wires.spef
rcOut -rc_corner worst_wires -spef ${OUT_DIR}/${DESIGN}_worst_wires.spef
rcOut -rc_corner typ_wires -spef ${OUT_DIR}/${DESIGN}_typ_wires.spef

summaryReport -outFile core_info.rpt
# 2. Export Post-Layout Gate-Level Verilog Netlist


saveNetlist ${OUT_DIR}/${DESIGN}_innovus_final.v
saveNetlist -includePowerGround ${OUT_DIR}/${DESIGN}_power_ground_added_innovus_final.v
write_sdc /home/user_50/projects/counter_45/pnr/outputs/counter_signoff.sdc
# 3. Export Full Physical DEF (Floorplan + Netlist + Routing)
defOut -floorplan -netlist -routing ${OUT_DIR}/${DESIGN}_final.def
# 4. Export Final GDSII Layout (for DRC/LVS & Foundry Tapeout)
#streamOut ${OUT_DIR}/${DESIGN}_final.gds -units 2000 -mode ALL

streamOut counter_final.gds -mapFile $MAP/streamOut.map -libName DesignLib -units 2000 -mode ALL -merge $MERGE_GDS_LIST

#(Note: Always match -units to your LEF database units—if your LEF uses 2000, use -units 2000.)
#When you run streamOut in Innovus, Innovus normally exports standard cells as empty boundary boxes unless 
#you merge the standard-cell GDS files. If you want to see every transistor, poly gate, and internal cell 
#metal inside your 3D view (not just the top-level routing wires), pass -merge with your standard cell 
#library's .gds file Example: streamOut counter_final.gds -mapFile streamOut.map -libName DesignLib -units 4000 -mode ALL -merge $MERGE_GDS_LIST
# 5. Save Final Complete Innovus Database
saveDesign counter_final_signoff.enc -tcon -rc -verilog -def -libs


puts "=========================================================================="
puts "Innovus Physical Design Flow Completed Successfully!"
puts "=========================================================================="
