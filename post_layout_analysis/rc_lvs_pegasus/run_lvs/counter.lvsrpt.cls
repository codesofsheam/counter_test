##############################################################################################################
#####  
#####                                       Pegasus LVS COMPARISON
#####  
#####  Version                       :   25.12-s007
#####  NVN Run Start                 :   Wed Nov 25 12:53:30 2026
#####  Comparison Report File        :   counter.lvsrpt.cls
#####  Top Cell                      :   counter  <vs>  counter
#####  
#####                                :      @     @
#####                                :       @   @ 
#####                                :        @ @  
#####  Run Result                    :     MISMATCH
#####                                :        @ @  
#####                                :       @   @ 
#####                                :      @     @
#####  
#####  Run Summary                   :   [ERROR] Connectivity Mismatches
#####                                :   [ERROR] Instance Subtype Mismatches
#####                                :   [ERROR] Parameter Mismatches
#####                                :   [INFO]  Some Sections Have Been Truncated
#####  
#####  Layout Design                 :   /home/user_50/projects/counter_45/pnr/counter_final.gds (GDSII)
#####  Layout File                   :   /home/user_50/projects/counter_45/post_layout_analysis/rc_lvs_pegasus/run_lvs/svdb/counter.net (cdl)
#####  Schematic File                :   /home/user_50/projects/counter_45/cdl/gsclib045_lvt.cdl (cdl)
#####  Schematic File                :   /home/user_50/projects/counter_45/cdl/gsclib045_hvt.cdl (cdl)
#####  Schematic File                :   /home/user_50/projects/counter_45/cdl/gsclib045_svt.cdl (cdl)
#####  Schematic File                :   /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v (verilog)
#####  Rules File                    :   /home/user_50/projects/counter_45/post_layout_analysis/rc_lvs_pegasus/counter_lvs.rul
#####  
#####  NVN CPU Time                  :   0h 0m 1s - (1s)                 
#####  NVN Exec Time                 :   0h 0m 2s - (2s)                 
#####  NVN Peak Memory Usage         :   362.08MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         0
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         1
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         1
Cells with mismatched instance subtypes      |         1
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

            |     Initial Pins     |     Compare Pins     |              | 
Cell        |   lay    :    sch    |   lay    :    sch    | Status       | Detail
------------+----------+-----------+----------+-----------+--------------+------------------------------
counter     |       10 :        10 |       10 :        10 | mismatch     | subtype errors, truncated


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          counter {-layout_top_cell counter}
    layout_path                             /home/user_50/projects/counter_45/pnr/counter_final.gds {-gds
                                            /home/user_50/projects/counter_45/pnr/counter_final.gds}
    layout_format                           GDSII {-gds
                                            /home/user_50/projects/counter_45/pnr/counter_final.gds}
    schematic_primary                       counter {-source_top_cell counter}
    schematic_path                          /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v
                                            {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}
    schematic_format                        VERILOG {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}
    schematic_path                          /home/user_50/projects/counter_45/cdl/gsclib045_svt.cdl
                                            {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}
    schematic_format                        CDL {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}
    schematic_path                          /home/user_50/projects/counter_45/cdl/gsclib045_hvt.cdl
                                            {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}
    schematic_path                          /home/user_50/projects/counter_45/cdl/gsclib045_lvt.cdl
                                            {-source_verilog
                                            /home/user_50/projects/counter_45/pnr/outputs/counter_innovus_final.v}

LVS Rules Given in the Rules File
---------------------------------

    lvs_netlist                             yes -allow_inconsistent_model
                                             
    lvs_filter_option                       AG RC RE RG -source_layout
    lvs_reduce_device                       C ( g45cmim ) -parallel yes ...
    lvs_check_property                      MN ( g45n1svt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n1svt ) w w -tolerance 0
    lvs_check_property                      MN ( g45n1hvt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n1hvt ) w w -tolerance 0
    lvs_check_property                      MN ( g45n1lvt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n1lvt ) w w -tolerance 0
    lvs_check_property                      MN ( g45n1nvt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n1nvt ) w w -tolerance 0
    lvs_check_property                      MN ( g45n2svt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n2svt ) w w -tolerance 0
    lvs_check_property                      MN ( g45n2nvt ) l l -tolerance 0
    lvs_check_property                      MN ( g45n2nvt ) w w -tolerance 0
    lvs_check_property                      MN ( g45ncap1 ) l l -tolerance 0
    lvs_check_property                      MN ( g45ncap1 ) w w -tolerance 0
    lvs_check_property                      MN ( g45ncap2 ) l l -tolerance 0
    lvs_check_property                      MN ( g45ncap2 ) w w -tolerance 0
    lvs_check_property                      MP ( g45p1svt ) l l -tolerance 0
    lvs_check_property                      MP ( g45p1svt ) w w -tolerance 0
    lvs_check_property                      MP ( g45p1hvt ) l l -tolerance 0
    lvs_check_property                      MP ( g45p1hvt ) w w -tolerance 0
    lvs_check_property                      MP ( g45p1lvt ) l l -tolerance 0
    lvs_check_property                      MP ( g45p1lvt ) w w -tolerance 0
    lvs_check_property                      MP ( g45p2svt ) l l -tolerance 0
    lvs_check_property                      MP ( g45p2svt ) w w -tolerance 0
    lvs_check_property                      MP ( g45pcap1 ) l l -tolerance 0
    lvs_check_property                      MP ( g45pcap1 ) w w -tolerance 0
    lvs_check_property                      MP ( g45pcap2 ) l l -tolerance 0
    lvs_check_property                      MP ( g45pcap2 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm1 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm1 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm2 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm2 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm3 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm3 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm4 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm4 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm5 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm5 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm6 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm6 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm7 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm7 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm8 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm8 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm9 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm9 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm10 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm10 ) l l -tolerance 0
    lvs_check_property                      R ( g45rm11 ) w w -tolerance 0
    lvs_check_property                      R ( g45rm11 ) l l -tolerance 0
    lvs_check_property                      R ( g45rsnd ) w w -tolerance 0
    lvs_check_property                      R ( g45rsnd ) l l -tolerance 0
    lvs_check_property                      R ( g45rnsnd ) w w -tolerance 0
    lvs_check_property                      R ( g45rnsnd ) l l -tolerance 0
    lvs_check_property                      R ( g45rsnp ) w w -tolerance 0
    lvs_check_property                      R ( g45rsnp ) l l -tolerance 0
    lvs_check_property                      R ( g45rnsnp ) w w -tolerance 0
    lvs_check_property                      R ( g45rnsnp ) l l -tolerance 0
    lvs_check_property                      R ( g45rspd ) w w -tolerance 0
    lvs_check_property                      R ( g45rspd ) l l -tolerance 0
    lvs_check_property                      R ( g45rnspd ) w w -tolerance 0
    lvs_check_property                      R ( g45rnspd ) l l -tolerance 0
    lvs_check_property                      R ( g45rspp ) w w -tolerance 0
    lvs_check_property                      R ( g45rspp ) l l -tolerance 0
    lvs_check_property                      R ( g45rnspp ) w w -tolerance 0
    lvs_check_property                      R ( g45rnspp ) l l -tolerance 0
    lvs_check_property                      R ( g45rnws ) w w -tolerance 0
    lvs_check_property                      R ( g45rnws ) l l -tolerance 0
    lvs_check_property                      R ( g45rnwo ) w w -tolerance 0
    lvs_check_property                      R ( g45rnwo ) l l -tolerance 0
    lvs_check_property                      D ( g45nd1svt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd1svt ) P P -tolerance 0
    lvs_check_property                      D ( g45nd1lvt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd1lvt ) P P -tolerance 0
    lvs_check_property                      D ( g45nd1hvt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd1hvt ) P P -tolerance 0
    lvs_check_property                      D ( g45nd1nvt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd1nvt ) P P -tolerance 0
    lvs_check_property                      D ( g45nd2svt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd2svt ) P P -tolerance 0
    lvs_check_property                      D ( g45nd2nvt ) A A -tolerance 0
    lvs_check_property                      D ( g45nd2nvt ) P P -tolerance 0
    lvs_check_property                      D ( g45pd1svt ) A A -tolerance 0
    lvs_check_property                      D ( g45pd1svt ) P P -tolerance 0
    lvs_check_property                      D ( g45pd1lvt ) A A -tolerance 0
    lvs_check_property                      D ( g45pd1lvt ) P P -tolerance 0
    lvs_check_property                      D ( g45pd1hvt ) A A -tolerance 0
    lvs_check_property                      D ( g45pd1hvt ) P P -tolerance 0
    lvs_check_property                      D ( g45pd2svt ) A A -tolerance 0
    lvs_check_property                      D ( g45pd2svt ) P P -tolerance 0
    lvs_check_property                      Q ( g45vpnp2 ) A A -tolerance 0
    lvs_check_property                      Q ( g45vpnp5 ) A A -tolerance 0
    lvs_check_property                      Q ( g45vpnp10 ) A A -tolerance 0
    lvs_check_property                      Q ( g45vnpn2 ) A A -tolerance 0
    lvs_check_property                      Q ( g45vnpn5 ) A A -tolerance 0
    lvs_check_property                      Q ( g45vnpn10 ) A A -tolerance 0
    lvs_check_property                      C ( g45cmim ) l l -tolerance 0
    lvs_check_property                      C ( g45cmim ) w w -tolerance 0
    lvs_check_property                      L ( g45inda ) width width -tolerance 0
    lvs_check_property                      L ( g45inda ) space space -tolerance 0
    lvs_check_property                      L ( g45inda ) nr nr -tolerance 0
    lvs_check_property                      L ( g45inda ) rad rad -tolerance 0
    lvs_check_property                      L ( g45inds ) width width -tolerance 0
    lvs_check_property                      L ( g45inds ) space space -tolerance 0
    lvs_check_property                      L ( g45inds ) nr nr -tolerance 0
    lvs_check_property                      L ( g45inds ) rad rad -tolerance 0
    lvs_report_file                         counter.lvsrpt
    lvs_map_device                          M ( g45n1svt ) MN ( g45n1svt ) -source_layout
    lvs_map_device                          M ( g45n1hvt ) MN ( g45n1hvt ) -source_layout
    lvs_map_device                          M ( g45n1lvt ) MN ( g45n1lvt ) -source_layout
    lvs_map_device                          M ( g45n1nvt ) MN ( g45n1nvt ) -source_layout
    lvs_map_device                          M ( g45n2svt ) MN ( g45n2svt ) -source_layout
    lvs_map_device                          M ( g45n2nvt ) MN ( g45n2nvt ) -source_layout
    lvs_map_device                          M ( g45p1svt ) MP ( g45p1svt ) -source_layout
    lvs_map_device                          M ( g45p1hvt ) MP ( g45p1hvt ) -source_layout
    lvs_map_device                          M ( g45p1lvt ) MP ( g45p1lvt ) -source_layout
    lvs_map_device                          M ( g45p2svt ) MP ( g45p2svt ) -source_layout
    unit                                    -length u
    input_scale                             2000
    text_depth                              -primary

Default LVS Rule Values
-----------------------

    lvs_abort                               -softchk no
    lvs_abort                               -supply_error no
    lvs_abort                               -check_device_for_property_rule no
    lvs_abort                               -missing_hcell no
    lvs_abort                               -erc_error yes
    lvs_abort                               -inconsistent_reduction yes
    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    // lvs_gen_hcells                        
    // lvs_delete_cell                       
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             yes -properties_comment
    // lvs_write_netlist                     
    // lvs_write_netlist_reduced             
    // lvs_delete_cell_pin                   
    // lvs_black_box                         
    // lvs_interposer                        
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices
    lvs_spice                               no  -replicate_devices_enhanced
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_unquoted_strings
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    lvs_spice                               yes -strict_subckts_order
    lvs_spice                               no  -ignore_higher_include_for_inst_master
    lvs_spice                               no  -ignore_black_box_connect
    lvs_spice                               no  -use_last_subckt_def
    lvs_spice                               no  -compare_empty_cell
    // lvs_spice_option                      
    lvs_reverse_wl                          no
    // lvs_spice_multiplier_name             
                                             
    lvs_compare_case                        no
    lvs_cname                               no  -cell
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    lvs_exact_subtypes                      no
    lvs_preserve_box_ports                  no
    // lvs_cpoint                            
    // lvs_power_name                        
    // lvs_ground_name                       
    // lvs_cell_list                         
    // lvs_device_type                       
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_all_cap_pins_swappable              no
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_ignore_ports                        no
    lvs_compare_port_names                  no
    lvs_find_shorts                         no
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
    lvs_break_ambig_max                     32
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -capacitors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    // lvs_filter_device                     
    // lvs_filter_device_keep_net            
    lvs_reduction_priority                  -parallel
    lvs_reduce_split_gates                  yes
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    lvs_recognize_gates                     -all  
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              yes -parallel_bipolar
    lvs_reduce                              yes -parallel_caps
    lvs_reduce                              yes -series_caps
    lvs_reduce                              yes -parallel_diodes
    lvs_reduce                              no  -series_diodes
    lvs_reduce                              yes -parallel_mos
    lvs_reduce                              no  -series_mos
    lvs_reduce                              yes -parallel_resistors
    lvs_reduce                              yes -series_resistors
    // lvs_reduce_do_not_merge               
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
    lvs_expand_cell_on_error                no
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
    lvs_report_max                          50 -mismatched_net_limit 100
    lvs_warn_max                            50
    lvs_inconsistent_reduction_threshold    1000000
    // lvs_report_opt                        
    lvs_report_units                        yes
    // lvs_short_equivalent_nodes            
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    unit                                    -resistance ohm
    unit                                    -capacitance pf
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_verilog_detect_buses                no
    lvs_do_not_normalize                    no
    // lvs_generic_device                    
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         -depth primary
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
    port                                    -depth -primary
    lvs_high_shorts_max                     10000000

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    lvs_filter_option                       AG RC RE RG -source
    lvs_filter_option                       AG RC RE RG -layout


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              ##################################################
                              #                                                #
                              #       ------->>> $ MISMATCH $ <<<-------       #
                              #                                                #
                              #             counter  <vs>  counter             #
                              #                                                #
                              #            CONNECTIVITY MISMATCHES             #
                              #              PARAMETER MISMATCHES              #
                              #               SUBTYPE MISMATCHES               #
                              #                                                #
                              ##################################################
                              # * Some sections truncated                      #
                              ##################################################

+===[counter]=================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                             |      Original       |      Filtered       |     Reduced      |    Unmatched    
Cell                         |   lay    :   sch    |   lay    :   sch    |   lay   :  sch   |  lay   :  sch
-----------------------------+----------+----------+----------+----------+---------+--------+--------+--------
MP [4 pins]                  |          :          |          :          |         :        |        :        
 MP(G45P1LVT)                |       *0 :      174 |       *0 :      174 |      *0 :    104 |      0 :       0
 MP(G45P1SVT)                |     *768 :      351 |     *768 :      351 |    *311 :    207 |      0 :       0
 MP:ParMos2#1   .  .  .  .  .|.  .  . - :.  .  . - |.  .  . - :.  .  . - |.  .   8 :.  .  8 |.  .  0 :.  .   0
 MP:SerMos2#1                |        - :        - |        - :        - |      86 :     86 |      0 :       0
 MP:SerMos3#1   .  .  .  .  .|.  .  . - :.  .  . - |.  .  . - :.  .  . - |.  .   8 :.  .  8 |.  .  0 :.  .   0
MN [4 pins]                  |          :          |          :          |         :        |        :        
 MN(G45N1LVT)   .  .  .  .  .|.  .   *0 :.  .  174 |.  .   *0 :.  .  174 |.  .  *0 :.  . 76 |.  .  0 :.  .   0
 MN(G45N1SVT)                |     *768 :      351 |     *768 :      351 |    *283 :    207 |      0 :       0
 MN:SerMos2#1   .  .  .  .  .|.  .  . - :.  .  . - |.  .  . - :.  .  . - |.  . *98 :.   100 |.  . *0 :.  .   2
 MN:SerMos3#1                |        - :        - |        - :        - |       8 :      8 |      0 :       0
(MN:SerMos4#1 [4 pins], -)   |        - :        - |        - :        - |      *1 :      - |     *1 :       -
-----------------------------+----------+----------+----------+----------+---------+--------+--------+--------
Total                        |    1,536 :    1,050 |    1,536 :    1,050 |     803 :    804 |      1 :       2
=============================+==========+==========+==========+==========+=========+========+========+========
Pins                         |          :          |          :          |      10 :     10 |      0 :       0
Nets                         |          :          |          :          |    *397 :    642 |     *0 :     243
=============================+==========+==========+==========+==========+=========+========+========+========

+===[counter]=================================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                  |     Parallel      |      Series       |     Split Gate     |     Deleted Nets     
Cell              |   lay   :   sch   |   lay   :   sch   |   lay   :   sch    |    lay    :   sch
------------------+---------+---------+---------+---------+---------+----------+-----------+----------
MP [4 pins]       |         :         |         :         |         :          |           :          
 MP(G45P1SVT)     |     225 :      18 |       - :       - |      36 :        - |        18 :         0
MN [4 pins]       |         :         |         :         |         :          |           :          
 MN(G45N1SVT)     |     225 :      18 |       - :       - |      36 :        - |        18 :         0
------------------+---------+---------+---------+---------+---------+----------+-----------+----------

+===[counter]=================================================================================================
|                                           INITIAL CORRESPONDENCES                                           
+=============================================================================================================

Type     | Name
---------+------------------------------------------------------------------------------------
Pin      | clk count[0] count[1] count[2] count[3] count[4] count[5] count[6] count[7] rst


+===[counter]=================================================================================================
|                                              SHORTS AND OPENS                                               
+=============================================================================================================
                                                            
                                                            
Layout Net: 29     | Schematic Net: spr_4/spr_gate3/VDD
===================+=================================(sao 1)
       SHORT       | Schematic Net: spr_9/spr_gate2/VDD
===================+========================================
       SHORT       | Schematic Net: spr_9/spr_gate11/VDD
===================+========================================
       SHORT       | Schematic Net: spr_9/spr_gate10/VDD
===================+========================================
       SHORT       | Schematic Net: spr_8/spr_gate3/VDD
===================+========================================
                                                            
                                                            
Layout Net: 5      | Schematic Net: spr_1/spr_gate14/VDD
===================+=================================(sao 2)
       SHORT       | Schematic Net: spr_1/spr_gate1/VDD
===================+========================================
       SHORT       | Schematic Net: spr_1/spr_gate11/VDD
===================+========================================
       SHORT       | Schematic Net: spr_1/spr_gate4/VDD
===================+========================================


+===[counter]=================================================================================================
|                                               MISMATCHED NETS                                               
+=============================================================================================================
                                                                                                   
                                                                                                   
Layout Net: 1                                       | Schematic Net: spr_9/spr_gate1/VSS
====================================================+========================================(mn 1)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
SerMos2#1                                           | 
   B: M3386 @(74.365,56.495)  MN(g45n1svt)          | ** missing connection **
   S: M3386 @(74.365,56.495)  MN(g45n1svt)          | ** missing connection **
   B: M3382 @(74.045,56.495)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X1984/M0 @(73.735,87.275)  MN(g45n1svt)       | ** missing connection **
   B: X1984/M1 @(73.840,87.275)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3387 @(74.365,87.275)  MN(g45n1svt)          | ** missing connection **
   B: M3383 @(74.045,87.275)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3469 @(89.465,15.490)  MN(g45n1svt)          | ** missing connection **
   B: M3470 @(89.610,15.490)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3476 @(90.415,15.490)  MN(g45n1svt)          | ** missing connection **
   B: M3477 @(90.595,15.490)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2088/M1 @(90.960,15.490)  MN(g45n1svt)       | ** missing connection **
   B: M3479 @(90.855,15.490)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2251/M0 @(84.535,45.725)  MN(g45n1svt)       | ** missing connection **
   B: X2251/M1 @(84.640,45.725)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3428 @(85.165,45.580)  MN(g45n1svt)          | ** missing connection **
   B: M3426 @(84.845,45.580)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3445 @(86.865,52.325)  MN(g45n1svt)          | ** missing connection **
   B: M3448 @(87.010,52.325)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3453 @(87.815,52.325)  MN(g45n1svt)          | ** missing connection **
   B: M3456 @(87.995,52.325)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2291/M1 @(88.360,52.530)  MN(g45n1svt)       | ** missing connection **
   B: M3458 @(88.255,52.325)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2534/M0 @(88.135,94.115)  MN(g45n1svt)       | ** missing connection **
   B: X2534/M1 @(88.240,94.115)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3463 @(88.765,94.115)  MN(g45n1svt)          | ** missing connection **
   B: M3460 @(88.445,94.115)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2701/M0 @(93.535,42.305)  MN(g45n1svt)       | ** missing connection **
   B: X2701/M1 @(93.640,42.305)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3519 @(94.165,42.160)  MN(g45n1svt)          | ** missing connection **
   B: M3514 @(93.845,42.160)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2747/M0 @(99.285,62.775)  MN(g45n1svt)       | ** missing connection **
   B: M3546 @(99.180,62.570)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2747/M1 @(99.495,62.775)  MN(g45n1svt)       | ** missing connection **
   B: M3550 @(99.600,62.570)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3562 @(100.375,62.570)  MN(g45n1svt)         | ** missing connection **
   B: X2747/M2 @(100.580,62.775)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2747/M3 @(100.685,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2747/M5 @(101.045,62.775)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2747/M4 @(100.940,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2905/M0 @(104.385,52.430)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2905/M1 @(104.520,52.430)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2905/M6 @(105.750,52.310)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2905/M5 @(105.645,52.310)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2907/M0 @(99.485,53.125)  MN(g45n1svt)   .  .| ** missing connection **
   B: M3547 @(99.380,53.125)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2907/M1 @(99.695,53.125)  MN(g45n1svt)   .  .| ** missing connection **
   B: M3553 @(99.800,53.125)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3563 @(100.575,53.125)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: X2907/M2 @(100.780,53.125)  MN(g45n1svt)      | ** missing connection **
   B: X2907/M3 @(100.885,53.125)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2907/M5 @(101.245,53.125)  MN(g45n1svt)      | ** missing connection **
   B: X2907/M4 @(101.140,53.125)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2908/M0 @(103.685,53.125)  MN(g45n1svt)      | ** missing connection **
   B: M3626 @(103.580,53.125)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2908/M1 @(103.895,53.125)  MN(g45n1svt)      | ** missing connection **
   B: M3636 @(104.000,53.125)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3645 @(104.775,53.125)  MN(g45n1svt)         | ** missing connection **
   B: X2908/M2 @(104.980,53.125)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2908/M3 @(105.085,53.125)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2908/M5 @(105.445,53.125)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2908/M4 @(105.340,53.125)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2912/M0 @(102.085,55.935)  MN(g45n1svt)  .  .| ** missing connection **
   S: X2912/M0 @(102.085,55.935)  MN(g45n1svt)      | ** missing connection **
   B: M3588 @(101.980,55.730)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2912/M1 @(102.295,55.935)  MN(g45n1svt)      | ** missing connection **
   D: X2912/M1 @(102.295,55.935)  MN(g45n1svt)  .  .| ** missing connection **
   B: M3600 @(102.400,55.730)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3620 @(103.175,55.730)  MN(g45n1svt)  .  .  .| ** missing connection **
   D: M3620 @(103.175,55.730)  MN(g45n1svt)         | ** missing connection **
   B: X2912/M2 @(103.380,55.935)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2912/M3 @(103.485,55.935)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2912/M5 @(103.845,55.935)  MN(g45n1svt)  .  .| ** missing connection **
   S: X2912/M5 @(103.845,55.935)  MN(g45n1svt)      | ** missing connection **
   B: X2912/M4 @(103.740,55.935)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2913/M0 @(105.185,55.850)  MN(g45n1svt)      | ** missing connection **
   D: X2913/M0 @(105.185,55.850)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2913/M1 @(105.320,55.850)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2913/M6 @(106.550,55.730)  MN(g45n1svt)  .  .| ** missing connection **
   S: X2913/M6 @(106.550,55.730)  MN(g45n1svt)      | ** missing connection **
   B: X2913/M5 @(106.445,55.730)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2915/M0 @(101.685,56.545)  MN(g45n1svt)      | ** missing connection **
   S: X2915/M0 @(101.685,56.545)  MN(g45n1svt)  .  .| ** missing connection **
   B: M3580 @(101.580,56.545)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2915/M1 @(101.895,56.545)  MN(g45n1svt)  .  .| ** missing connection **
   D: X2915/M1 @(101.895,56.545)  MN(g45n1svt)      | ** missing connection **
   B: M3589 @(102.000,56.545)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3611 @(102.775,56.545)  MN(g45n1svt)         | ** missing connection **
   D: M3611 @(102.775,56.545)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: X2915/M2 @(102.980,56.545)  MN(g45n1svt)      | ** missing connection **
   B: X2915/M3 @(103.085,56.545)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2915/M5 @(103.445,56.545)  MN(g45n1svt)      | ** missing connection **
   S: X2915/M5 @(103.445,56.545)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2915/M4 @(103.340,56.545)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2917/M0 @(104.985,56.630)  MN(g45n1svt)  .  .| ** missing connection **
   D: X2917/M0 @(104.985,56.630)  MN(g45n1svt)      | ** missing connection **
   B: X2917/M1 @(105.120,56.630)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2917/M6 @(106.350,56.750)  MN(g45n1svt)      | ** missing connection **
   S: X2917/M6 @(106.350,56.750)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2917/M5 @(106.245,56.750)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2919/M0 @(102.285,59.355)  MN(g45n1svt)  .  .| ** missing connection **
   B: M3593 @(102.180,59.150)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2919/M1 @(102.495,59.355)  MN(g45n1svt)  .  .| ** missing connection **
   B: M3605 @(102.600,59.150)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3623 @(103.375,59.150)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: X2919/M2 @(103.580,59.355)  MN(g45n1svt)      | ** missing connection **
   B: X2919/M3 @(103.685,59.355)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2919/M5 @(104.045,59.355)  MN(g45n1svt)      | ** missing connection **
   B: X2919/M4 @(103.940,59.355)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2920/M0 @(105.385,59.270)  MN(g45n1svt)      | ** missing connection **
   B: X2920/M1 @(105.520,59.270)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2920/M6 @(106.750,59.150)  MN(g45n1svt)      | ** missing connection **
   B: X2920/M5 @(106.645,59.150)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2924/M0 @(103.285,62.775)  MN(g45n1svt)      | ** missing connection **
   B: M3621 @(103.180,62.570)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2924/M1 @(103.495,62.775)  MN(g45n1svt)      | ** missing connection **
   B: M3629 @(103.600,62.570)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3642 @(104.375,62.570)  MN(g45n1svt)         | ** missing connection **
   B: X2924/M2 @(104.580,62.775)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2924/M3 @(104.685,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2924/M5 @(105.045,62.775)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2924/M4 @(104.940,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2925/M0 @(106.385,62.690)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2925/M1 @(106.520,62.690)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2925/M6 @(107.750,62.570)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2925/M5 @(107.645,62.570)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2927/M0 @(105.385,63.470)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2927/M1 @(105.520,63.470)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2927/M6 @(106.750,63.590)  MN(g45n1svt)  .  .| ** missing connection **
   B: X2927/M5 @(106.645,63.590)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3582 @(101.665,100.205)  MN(g45n1svt) .  .  .| ** missing connection **
   B: M3585 @(101.810,100.205)  MN(g45n1svt)        | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3607 @(102.615,100.205)  MN(g45n1svt) .  .  .| ** missing connection **
   B: M3614 @(102.795,100.205)  MN(g45n1svt)        | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: X2954/M1 @(103.160,100.410)  MN(g45n1svt) .  .| ** missing connection **
   B: M3618 @(103.055,100.205)  MN(g45n1svt)        | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3088 @(18.670,83.915)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3087 @(18.565,83.915)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3101 @(19.270,22.355)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3096 @(19.165,22.355)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3112 @(19.670,101.015)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3107 @(19.565,101.015)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3161 @(31.070,53.135)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3159 @(30.965,53.135)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3186 @(36.470,36.035)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3184 @(36.365,36.035)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3198 @(38.870,46.295)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3197 @(38.765,46.295)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3239 @(48.870,104.435)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3234 @(48.765,104.435)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3278 @(55.870,59.975)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3276 @(55.765,59.975)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3291 @(59.470,15.515)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3290 @(59.365,15.515)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3324 @(62.670,35.145)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3321 @(62.565,35.145)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3402 @(76.870,45.405)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3401 @(76.765,45.405)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3489 @(91.870,63.395)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3486 @(91.765,63.395)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3524 @(94.470,48.825)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3521 @(94.365,48.825)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3543 @(98.870,25.775)  MN(g45n1svt)   .  .  .| ** missing connection **
   B: M3539 @(98.765,25.775)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3557 @(100.070,24.885)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3555 @(99.965,24.885)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3565 @(100.760,60.015)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3564 @(100.655,60.015)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3568 @(100.965,60.015)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3571 @(101.080,60.015)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M3584 @(101.805,60.095)  MN(g45n1svt)  .  .  .| ** missing connection **
   B: M3587 @(101.935,60.095)  MN(g45n1svt)         | ** missing connection **
   B: M3590 @(102.115,60.095)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3602 @(102.450,60.095)  MN(g45n1svt)         | ** missing connection **
   B: M3595 @(102.320,60.095)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3601 @(102.450,52.350)  MN(g45n1svt)         | ** missing connection **
   B: M3596 @(102.345,52.350)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3678 @(108.070,90.755)  MN(g45n1svt)         | ** missing connection **
   B: M3675 @(107.965,90.755)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| S: spr_9/spr_gate1/Mmn55  MN(G45N1SVT)
** missing connection **                            | S: spr_9/spr_gate1/Mmn30  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| S: spr_9/spr_gate1/Mmn20  MN(G45N1SVT)
** missing connection **                            | S: spr_9/spr_gate1/Mmn45  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| S: spr_9/spr_gate1/Mmn21  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **                            |    B: spr_9/spr_gate1/Mmn25  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .|    S: spr_9/spr_gate1/Mmn25  MN(G45N1SVT)
** missing connection **                            |    B: spr_9/spr_gate1/Mmn26  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **   .  .  .  .  .  .  .  .  .|    B: spr_9/spr_gate1/Mmn50  MN(G45N1SVT)
** missing connection **                            |    S: spr_9/spr_gate1/Mmn50  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .|    B: spr_9/spr_gate1/Mmn51  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **                            |    B: spr_9/spr_gate1/Mmn35  MN(G45N1SVT)
** missing connection **                            |    S: spr_9/spr_gate1/Mmn35  MN(G45N1SVT)
** missing connection **                            |    B: spr_9/spr_gate1/Mmn36  MN(G45N1SVT)
----------------------------------------------------+--------------------------(truncated next 327)
                                                                                                   
                                                                                                   
Layout Net: 3                                       | Schematic Net: spr_7/spr_gate12/VDD
====================================================+========================================(mn 2)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3687 @(11.985,60.710)  MP(g45p1svt)             | ** missing connection **
B: M3687 @(11.985,60.710)  MP(g45p1svt)             | ** missing connection **
D: M3693 @(12.395,60.710)  MP(g45p1svt)             | ** missing connection **
B: M3693 @(12.395,60.710)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3728 @(18.515,61.645)  MP(g45p1svt)             | ** missing connection **
B: M3728 @(18.515,61.645)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3751 @(19.570,61.645)  MP(g45p1svt)             | ** missing connection **
B: M3751 @(19.570,61.645)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3865 @(42.390,61.640)  MP(g45p1svt)             | ** missing connection **
B: M3865 @(42.390,61.640)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3868 @(42.595,61.640)  MP(g45p1svt)             | ** missing connection **
B: M3868 @(42.595,61.640)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3927 @(55.380,60.610)  MP(g45p1svt)             | ** missing connection **
B: M3927 @(55.380,60.610)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4213 @(98.380,61.720)  MP(g45p1svt)             | ** missing connection **
B: M4213 @(98.380,61.720)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4219 @(98.615,61.720)  MP(g45p1svt)             | ** missing connection **
B: M4219 @(98.615,61.720)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4227 @(99.055,61.720)  MP(g45p1svt)             | ** missing connection **
B: M4227 @(99.055,61.720)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4229 @(99.285,61.720)  MP(g45p1svt)             | ** missing connection **
B: M4229 @(99.285,61.720)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4230 @(99.380,60.560)  MP(g45p1svt)             | ** missing connection **
B: M4230 @(99.380,60.560)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4233 @(99.575,60.560)  MP(g45p1svt)             | ** missing connection **
B: M4233 @(99.575,60.560)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4239 @(99.885,61.720)  MP(g45p1svt)             | ** missing connection **
S: M4240 @(99.940,60.725)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4240 @(99.940,60.725)  MP(g45p1svt)             | ** missing connection **
D: M4243 @(100.135,60.725)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4243 @(100.135,60.725)  MP(g45p1svt)            | ** missing connection **
S: M4244 @(100.140,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4244 @(100.140,61.720)  MP(g45p1svt)            | ** missing connection **
D: M4248 @(100.555,60.595)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4248 @(100.555,60.595)  MP(g45p1svt)            | ** missing connection **
S: M4251 @(100.760,60.595)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4251 @(100.760,60.595)  MP(g45p1svt)            | ** missing connection **
B: M4263 @(101.285,60.595)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4270 @(101.535,60.595)  MP(g45p1svt)            | ** missing connection **
B: M4270 @(101.535,60.595)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4272 @(101.575,61.815)  MP(g45p1svt)            | ** missing connection **
B: M4272 @(101.575,61.815)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4296 @(102.380,61.720)  MP(g45p1svt)            | ** missing connection **
B: M4296 @(102.380,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4304 @(102.615,61.720)  MP(g45p1svt)            | ** missing connection **
B: M4304 @(102.615,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4314 @(102.840,60.735)  MP(g45p1svt)            | ** missing connection **
B: M4314 @(102.840,60.735)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4320 @(103.055,61.720)  MP(g45p1svt)            | ** missing connection **
B: M4320 @(103.055,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4325 @(103.285,61.720)  MP(g45p1svt)            | ** missing connection **
B: M4325 @(103.285,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4344 @(103.885,61.720)  MP(g45p1svt)            | ** missing connection **
S: M4353 @(104.140,61.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4353 @(104.140,61.720)  MP(g45p1svt)            | ** missing connection **
D: M4386 @(105.575,61.815)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4386 @(105.575,61.815)  MP(g45p1svt)            | ** missing connection **
S: M4403 @(106.180,61.755)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4403 @(106.180,61.755)  MP(g45p1svt)            | ** missing connection **
D: M4407 @(106.375,61.755)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4407 @(106.375,61.755)  MP(g45p1svt)            | ** missing connection **
S: M4415 @(106.580,61.755)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4415 @(106.580,61.755)  MP(g45p1svt)            | ** missing connection **
S: M4425 @(106.945,61.790)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4425 @(106.945,61.790)  MP(g45p1svt)            | ** missing connection **
D: M4428 @(107.160,61.790)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4428 @(107.160,61.790)  MP(g45p1svt)            | ** missing connection **
B: M4432 @(107.440,61.790)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4442 @(107.955,61.790)  MP(g45p1svt)            | ** missing connection **
B: M4442 @(107.955,61.790)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3730 @(18.735,61.645)  MP(g45p1svt)          | ** missing connection **
   D: M3730 @(18.735,61.645)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3735 @(18.965,61.645)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3745 @(19.365,61.645)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M3745 @(19.365,61.645)  MP(g45p1svt)          | ** missing connection **
   B: M3743 @(19.230,61.645)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4232 @(99.525,61.720)  MP(g45p1svt)          | ** missing connection **
   D: M4232 @(99.525,61.720)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4235 @(99.635,61.720)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4264 @(101.340,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4264 @(101.340,61.720)  MP(g45p1svt)         | ** missing connection **
   B: M4262 @(101.235,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4333 @(103.525,61.720)  MP(g45p1svt)         | ** missing connection **
   D: M4333 @(103.525,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4338 @(103.635,61.720)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4379 @(105.340,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4379 @(105.340,61.720)  MP(g45p1svt)         | ** missing connection **
   B: M4378 @(105.235,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4437 @(107.750,61.790)  MP(g45p1svt)         | ** missing connection **
   S: M4437 @(107.750,61.790)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4436 @(107.645,61.790)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4255 @(100.955,60.595)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4255 @(100.955,60.595)  MP(g45p1svt)         | ** missing connection **
   B: M4259 @(101.080,60.595)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4306 @(102.630,60.735)  MP(g45p1svt)         | ** missing connection **
   S: M4306 @(102.630,60.735)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4301 @(102.525,60.735)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4247 @(100.375,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4247 @(100.375,61.720)  MP(g45p1svt)         | ** missing connection **
   B: M4250 @(100.580,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4250 @(100.580,61.720)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4277 @(101.730,60.595)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4277 @(101.730,60.595)  MP(g45p1svt)         | ** missing connection **
   B: M4283 @(101.935,60.595)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4283 @(101.935,60.595)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4361 @(104.375,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4361 @(104.375,61.720)  MP(g45p1svt)         | ** missing connection **
   B: M4365 @(104.580,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4365 @(104.580,61.720)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4258 @(101.030,61.720)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4372 @(105.030,61.720)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4293 @(102.320,60.735)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 17                                      | Schematic Net: spr_7/spr_gate14/VDD
====================================================+========================================(mn 3)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3804 @(30.580,53.770)  MP(g45p1svt)             | ** missing connection **
B: M3804 @(30.580,53.770)  MP(g45p1svt)             | ** missing connection **
D: M3851 @(39.370,54.950)  MP(g45p1svt)             | ** missing connection **
B: M3851 @(39.370,54.950)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4093 @(84.390,54.900)  MP(g45p1svt)             | ** missing connection **
B: M4093 @(84.390,54.900)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4215 @(98.580,53.790)  MP(g45p1svt)             | ** missing connection **
B: M4215 @(98.580,53.790)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4223 @(98.815,53.965)  MP(g45p1svt)             | ** missing connection **
B: M4223 @(98.815,53.965)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4226 @(98.995,54.900)  MP(g45p1svt)             | ** missing connection **
B: M4226 @(98.995,54.900)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4228 @(99.255,53.870)  MP(g45p1svt)             | ** missing connection **
B: M4228 @(99.255,53.870)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4231 @(99.485,53.870)  MP(g45p1svt)             | ** missing connection **
B: M4231 @(99.485,53.870)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4242 @(100.085,53.870)  MP(g45p1svt)            | ** missing connection **
S: M4246 @(100.340,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4246 @(100.340,53.870)  MP(g45p1svt)            | ** missing connection **
S: M4260 @(101.180,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4260 @(101.180,54.880)  MP(g45p1svt)            | ** missing connection **
D: M4267 @(101.415,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4267 @(101.415,54.880)  MP(g45p1svt)            | ** missing connection **
D: M4278 @(101.775,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4278 @(101.775,53.870)  MP(g45p1svt)            | ** missing connection **
D: M4281 @(101.855,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4281 @(101.855,54.880)  MP(g45p1svt)            | ** missing connection **
S: M4288 @(102.085,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4288 @(102.085,54.880)  MP(g45p1svt)            | ** missing connection **
B: M4309 @(102.685,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4312 @(102.780,53.790)  MP(g45p1svt)            | ** missing connection **
B: M4312 @(102.780,53.790)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4317 @(102.940,54.880)  MP(g45p1svt)            | ** missing connection **
B: M4317 @(102.940,54.880)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4319 @(103.015,53.965)  MP(g45p1svt)            | ** missing connection **
B: M4319 @(103.015,53.965)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4332 @(103.455,53.870)  MP(g45p1svt)            | ** missing connection **
B: M4332 @(103.455,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4339 @(103.685,53.870)  MP(g45p1svt)            | ** missing connection **
B: M4339 @(103.685,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4357 @(104.285,53.870)  MP(g45p1svt)            | ** missing connection **
D: M4360 @(104.375,54.975)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4360 @(104.375,54.975)  MP(g45p1svt)            | ** missing connection **
S: M4362 @(104.540,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4362 @(104.540,53.870)  MP(g45p1svt)            | ** missing connection **
S: M4371 @(104.980,54.915)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4371 @(104.980,54.915)  MP(g45p1svt)            | ** missing connection **
D: M4374 @(105.175,54.915)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4374 @(105.175,54.915)  MP(g45p1svt)            | ** missing connection **
S: M4382 @(105.380,54.915)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4382 @(105.380,54.915)  MP(g45p1svt)            | ** missing connection **
S: M4392 @(105.745,54.950)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4392 @(105.745,54.950)  MP(g45p1svt)            | ** missing connection **
D: M4398 @(105.960,54.950)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4398 @(105.960,54.950)  MP(g45p1svt)            | ** missing connection **
D: M4399 @(105.975,53.870)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4399 @(105.975,53.870)  MP(g45p1svt)            | ** missing connection **
B: M4404 @(106.240,54.950)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4421 @(106.755,54.950)  MP(g45p1svt)            | ** missing connection **
B: M4421 @(106.755,54.950)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4431 @(107.385,54.800)  MP(g45p1svt)            | ** missing connection **
B: M4431 @(107.385,54.800)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4441 @(107.795,54.800)  MP(g45p1svt)            | ** missing connection **
B: M4441 @(107.795,54.800)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4446 @(108.175,53.720)  MP(g45p1svt)            | ** missing connection **
B: M4446 @(108.175,53.720)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4236 @(99.725,53.870)  MP(g45p1svt)          | ** missing connection **
   D: M4236 @(99.725,53.870)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4238 @(99.835,53.870)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4271 @(101.540,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4271 @(101.540,53.870)  MP(g45p1svt)         | ** missing connection **
   B: M4268 @(101.435,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4345 @(103.925,53.870)  MP(g45p1svt)         | ** missing connection **
   D: M4345 @(103.925,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4350 @(104.035,53.870)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4391 @(105.740,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4391 @(105.740,53.870)  MP(g45p1svt)         | ** missing connection **
   B: M4389 @(105.635,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4294 @(102.325,54.880)  MP(g45p1svt)         | ** missing connection **
   D: M4294 @(102.325,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4299 @(102.435,54.880)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4352 @(104.140,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4352 @(104.140,54.880)  MP(g45p1svt)         | ** missing connection **
   B: M4351 @(104.035,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4412 @(106.550,54.950)  MP(g45p1svt)         | ** missing connection **
   S: M4412 @(106.550,54.950)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4410 @(106.445,54.950)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4249 @(100.575,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4249 @(100.575,53.870)  MP(g45p1svt)         | ** missing connection **
   B: M4252 @(100.780,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4252 @(100.780,53.870)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4323 @(103.175,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4323 @(103.175,54.880)  MP(g45p1svt)         | ** missing connection **
   B: M4328 @(103.380,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4328 @(103.380,54.880)  MP(g45p1svt)         | ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4366 @(104.775,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4366 @(104.775,53.870)  MP(g45p1svt)         | ** missing connection **
   B: M4370 @(104.980,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4370 @(104.980,53.870)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4261 @(101.230,53.870)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4383 @(105.430,53.870)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4343 @(103.830,54.880)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 18                                      | Schematic Net: spr_7/spr_gate13/VDD
====================================================+========================================(mn 4)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3683 @(11.780,58.370)  MP(g45p1svt)             | ** missing connection **
B: M3683 @(11.780,58.370)  MP(g45p1svt)             | ** missing connection **
D: M3853 @(39.770,57.140)  MP(g45p1svt)             | ** missing connection **
B: M3853 @(39.770,57.140)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4041 @(73.515,57.460)  MP(g45p1svt)             | ** missing connection **
B: M4041 @(73.515,57.460)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4063 @(74.775,57.285)  MP(g45p1svt)             | ** missing connection **
B: M4063 @(74.775,57.285)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4253 @(100.780,57.210)  MP(g45p1svt)            | ** missing connection **
B: M4253 @(100.780,57.210)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4257 @(101.015,57.385)  MP(g45p1svt)            | ** missing connection **
B: M4257 @(101.015,57.385)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4265 @(101.380,58.300)  MP(g45p1svt)            | ** missing connection **
B: M4265 @(101.380,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4269 @(101.455,57.290)  MP(g45p1svt)            | ** missing connection **
B: M4269 @(101.455,57.290)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4274 @(101.615,58.300)  MP(g45p1svt)            | ** missing connection **
B: M4274 @(101.615,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4276 @(101.685,57.290)  MP(g45p1svt)            | ** missing connection **
B: M4276 @(101.685,57.290)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4286 @(102.055,58.300)  MP(g45p1svt)            | ** missing connection **
B: M4286 @(102.055,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4291 @(102.285,57.290)  MP(g45p1svt)            | ** missing connection **
S: M4292 @(102.285,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4292 @(102.285,58.300)  MP(g45p1svt)            | ** missing connection **
S: M4302 @(102.540,57.290)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4302 @(102.540,57.290)  MP(g45p1svt)            | ** missing connection **
B: M4315 @(102.885,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4321 @(103.140,58.300)  MP(g45p1svt)            | ** missing connection **
B: M4321 @(103.140,58.300)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4347 @(103.975,57.290)  MP(g45p1svt)            | ** missing connection **
B: M4347 @(103.975,57.290)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4363 @(104.575,58.395)  MP(g45p1svt)            | ** missing connection **
B: M4363 @(104.575,58.395)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4367 @(104.780,57.175)  MP(g45p1svt)            | ** missing connection **
B: M4367 @(104.780,57.175)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4369 @(104.975,57.350)  MP(g45p1svt)            | ** missing connection **
B: M4369 @(104.975,57.350)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4375 @(105.180,57.350)  MP(g45p1svt)            | ** missing connection **
B: M4375 @(105.180,57.350)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4376 @(105.180,58.335)  MP(g45p1svt)            | ** missing connection **
B: M4376 @(105.180,58.335)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4380 @(105.375,58.335)  MP(g45p1svt)            | ** missing connection **
B: M4380 @(105.375,58.335)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4385 @(105.545,57.315)  MP(g45p1svt)            | ** missing connection **
B: M4385 @(105.545,57.315)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4387 @(105.580,58.335)  MP(g45p1svt)            | ** missing connection **
B: M4387 @(105.580,58.335)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4394 @(105.760,57.315)  MP(g45p1svt)            | ** missing connection **
B: M4394 @(105.760,57.315)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4395 @(105.945,58.370)  MP(g45p1svt)            | ** missing connection **
B: M4395 @(105.945,58.370)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4400 @(106.040,57.315)  MP(g45p1svt)            | ** missing connection **
D: M4401 @(106.160,58.370)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4401 @(106.160,58.370)  MP(g45p1svt)            | ** missing connection **
B: M4408 @(106.440,58.370)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4413 @(106.555,57.140)  MP(g45p1svt)            | ** missing connection **
B: M4413 @(106.555,57.140)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4426 @(106.955,58.370)  MP(g45p1svt)            | ** missing connection **
B: M4426 @(106.955,58.370)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4045 @(73.735,57.460)  MP(g45p1svt)          | ** missing connection **
   D: M4045 @(73.735,57.460)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4048 @(73.965,57.460)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4055 @(74.365,57.460)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4055 @(74.365,57.460)  MP(g45p1svt)          | ** missing connection **
   B: M4052 @(74.230,57.460)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4282 @(101.925,57.290)  MP(g45p1svt)         | ** missing connection **
   D: M4282 @(101.925,57.290)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4285 @(102.035,57.290)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4340 @(103.740,57.290)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4340 @(103.740,57.290)  MP(g45p1svt)         | ** missing connection **
   B: M4337 @(103.635,57.290)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4406 @(106.350,57.315)  MP(g45p1svt)         | ** missing connection **
   S: M4406 @(106.350,57.315)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4405 @(106.245,57.315)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4300 @(102.525,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4300 @(102.525,58.300)  MP(g45p1svt)         | ** missing connection **
   B: M4308 @(102.635,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4358 @(104.340,58.300)  MP(g45p1svt)         | ** missing connection **
   S: M4358 @(104.340,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4356 @(104.235,58.300)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4419 @(106.750,58.370)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4419 @(106.750,58.370)  MP(g45p1svt)         | ** missing connection **
   B: M4417 @(106.645,58.370)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4311 @(102.775,57.290)  MP(g45p1svt)         | ** missing connection **
   D: M4311 @(102.775,57.290)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4318 @(102.980,57.290)  MP(g45p1svt)         | ** missing connection **
   S: M4318 @(102.980,57.290)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
ParMos2#1                                           | 
   B: M4326 @(103.375,58.300)  MP(g45p1svt)         | ** missing connection **
   D: M4326 @(103.375,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4334 @(103.580,58.300)  MP(g45p1svt)         | ** missing connection **
   S: M4334 @(103.580,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4331 @(103.430,57.290)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   B: M4349 @(104.030,58.300)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 2                                       | Schematic Net: spr_7/spr_gate1/VDD
====================================================+========================================(mn 5)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3706 @(15.790,50.350)  MP(g45p1svt)             | ** missing connection **
B: M3706 @(15.790,50.350)  MP(g45p1svt)             | ** missing connection **
D: M4066 @(75.170,51.530)  MP(g45p1svt)             | ** missing connection **
B: M4066 @(75.170,51.530)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4107 @(85.980,51.445)  MP(g45p1svt)             | ** missing connection **
B: M4107 @(85.980,51.445)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4109 @(86.195,51.445)  MP(g45p1svt)             | ** missing connection **
B: M4109 @(86.195,51.445)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4112 @(86.600,51.545)  MP(g45p1svt)             | ** missing connection **
B: M4112 @(86.600,51.545)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4121 @(87.280,51.545)  MP(g45p1svt)             | ** missing connection **
S: M4123 @(87.545,51.545)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4123 @(87.545,51.545)  MP(g45p1svt)             | ** missing connection **
D: M4136 @(88.605,51.640)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4136 @(88.605,51.640)  MP(g45p1svt)             | ** missing connection **
S: M4184 @(93.180,50.300)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4184 @(93.180,50.300)  MP(g45p1svt)             | ** missing connection **
S: M4273 @(101.580,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4273 @(101.580,51.530)  MP(g45p1svt)            | ** missing connection **
D: M4280 @(101.825,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4280 @(101.825,51.530)  MP(g45p1svt)            | ** missing connection **
B: M4284 @(102.030,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4307 @(102.635,51.530)  MP(g45p1svt)            | ** missing connection **
B: M4307 @(102.635,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4355 @(104.180,51.495)  MP(g45p1svt)            | ** missing connection **
B: M4355 @(104.180,51.495)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4359 @(104.375,51.495)  MP(g45p1svt)            | ** missing connection **
B: M4359 @(104.375,51.495)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4364 @(104.580,51.495)  MP(g45p1svt)            | ** missing connection **
B: M4364 @(104.580,51.495)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4368 @(104.945,51.530)  MP(g45p1svt)            | ** missing connection **
B: M4368 @(104.945,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4373 @(105.160,51.530)  MP(g45p1svt)            | ** missing connection **
B: M4373 @(105.160,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4384 @(105.440,51.530)  MP(g45p1svt)            | ** missing connection **
D: M4397 @(105.955,51.530)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4397 @(105.955,51.530)  MP(g45p1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4116 @(86.865,51.545)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M4116 @(86.865,51.545)  MP(g45p1svt)          | ** missing connection **
   B: M4119 @(87.010,51.545)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4125 @(87.815,51.545)  MP(g45p1svt)          | ** missing connection **
   D: M4125 @(87.815,51.545)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4127 @(87.920,51.545)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4132 @(88.360,51.545)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4132 @(88.360,51.545)  MP(g45p1svt)          | ** missing connection **
   B: M4129 @(88.125,51.545)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4393 @(105.750,51.530)  MP(g45p1svt)         | ** missing connection **
   S: M4393 @(105.750,51.530)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4390 @(105.645,51.530)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4038 @(69.695,50.420)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4038 @(69.695,50.420)  MP(g45p1svt)          | ** missing connection **
   B: M4035 @(69.590,50.420)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4298 @(102.430,51.530)  MP(g45p1svt)         | ** missing connection **
   S: M4298 @(102.430,51.530)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4290 @(102.250,51.530)  MP(g45p1svt)         | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 79                                      | Schematic Net: spr_7/spr_gate0/VSS
====================================================+========================================(mn 6)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: X2925/M2 @(106.945,62.570)  MN(g45n1svt)         | ** missing connection **
D: X2925/M3 @(107.160,62.570)  MN(g45n1svt)         | ** missing connection **
S: X2927/M2 @(105.945,63.590)  MN(g45n1svt)         | ** missing connection **
D: X2927/M3 @(106.160,63.590)  MN(g45n1svt)  .  .  .| ** missing connection **
S: M3063 @(15.180,63.460)  MN(g45n1svt)             | ** missing connection **
D: M3065 @(15.450,63.575)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3068 @(15.855,63.370)  MN(g45n1svt)             | ** missing connection **
S: M3072 @(16.745,63.370)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3086 @(18.515,62.680)  MN(g45n1svt)             | ** missing connection **
S: M3113 @(19.775,62.565)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3212 @(42.185,62.480)  MN(g45n1svt)             | ** missing connection **
D: M3216 @(42.595,62.480)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3511 @(93.585,63.450)  MN(g45n1svt)             | ** missing connection **
S: M3532 @(98.380,62.540)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3538 @(98.615,62.655)  MN(g45n1svt)             | ** missing connection **
S: M3559 @(100.140,62.570)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3578 @(101.575,62.660)  MN(g45n1svt)            | ** missing connection **
S: M3598 @(102.380,62.540)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3606 @(102.615,62.655)  MN(g45n1svt)            | ** missing connection **
S: M3637 @(104.140,62.570)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3649 @(105.180,63.355)  MN(g45n1svt)            | ** missing connection **
D: M3650 @(105.575,62.660)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3653 @(106.180,62.545)  MN(g45n1svt)            | ** missing connection **
D: M3662 @(106.955,63.475)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3674 @(107.955,62.425)  MN(g45n1svt)            | ** missing connection **
D: X81/M2 @(17.825,63.430)  MN(g45n1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3070 @(16.065,63.370)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3075 @(17.015,63.370)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X81/M1 @(17.560,63.370)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X250/M0 @(18.735,62.825)  MN(g45n1svt) .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3103 @(19.365,62.680)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2747/M0 @(99.285,62.775)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2747/M1 @(99.495,62.775)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3562 @(100.375,62.570)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2747/M5 @(101.045,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2924/M0 @(103.285,62.775)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2924/M1 @(103.495,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3642 @(104.375,62.570)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2924/M5 @(105.045,62.775)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2925/M0 @(106.385,62.690)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2925/M6 @(107.750,62.570)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2927/M0 @(105.385,63.470)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2927/M6 @(106.750,63.590)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3489 @(91.870,63.395)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate0/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 77                                      | Schematic Net: spr_7/spr_gate14/VSS
====================================================+========================================(mn 7)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: X2905/M2 @(104.945,52.310)  MN(g45n1svt)         | ** missing connection **
D: X2905/M3 @(105.160,52.310)  MN(g45n1svt)         | ** missing connection **
D: M3397 @(75.170,52.180)  MN(g45n1svt)             | ** missing connection **
S: M3436 @(85.980,52.180)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3439 @(86.250,52.180)  MN(g45n1svt)             | ** missing connection **
S: M3442 @(86.655,52.325)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3451 @(87.545,52.325)  MN(g45n1svt)             | ** missing connection **
S: M3535 @(98.580,53.100)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3542 @(98.815,53.100)  MN(g45n1svt)             | ** missing connection **
S: M3561 @(100.340,53.125)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3579 @(101.580,52.285)  MN(g45n1svt)            | ** missing connection **
D: M3583 @(101.775,53.095)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3586 @(101.825,52.350)  MN(g45n1svt)            | ** missing connection **
D: M3608 @(102.655,52.350)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3612 @(102.780,53.100)  MN(g45n1svt)            | ** missing connection **
D: M3617 @(103.015,53.100)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3639 @(104.180,52.285)  MN(g45n1svt)            | ** missing connection **
S: M3643 @(104.540,53.125)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3651 @(105.955,52.165)  MN(g45n1svt)            | ** missing connection **
D: M3652 @(105.975,53.095)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3676 @(107.970,53.200)  MN(g45n1svt)            | ** missing connection **
D: X2291/M2 @(88.625,52.470)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3445 @(86.865,52.325)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3453 @(87.815,52.325)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2291/M1 @(88.360,52.530)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2905/M0 @(104.385,52.430)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2905/M6 @(105.750,52.310)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2907/M0 @(99.485,53.125)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2907/M1 @(99.695,53.125)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3563 @(100.575,53.125)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2907/M5 @(101.245,53.125)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2908/M0 @(103.685,53.125)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2908/M1 @(103.895,53.125)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3645 @(104.775,53.125)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2908/M5 @(105.445,53.125)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3161 @(31.070,53.135)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3601 @(102.450,52.350)  MN(g45n1svt)         | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_7/spr_gate14/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate14/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 14                                      | Schematic Net: spr_6/spr_gate13/VDD
====================================================+========================================(mn 8)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3681 @(11.780,22.940)  MP(g45p1svt)             | ** missing connection **
B: M3681 @(11.780,22.940)  MP(g45p1svt)             | ** missing connection **
D: M3740 @(19.190,22.990)  MP(g45p1svt)             | ** missing connection **
B: M3740 @(19.190,22.990)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3839 @(37.315,23.260)  MP(g45p1svt)             | ** missing connection **
B: M3839 @(37.315,23.260)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3847 @(38.575,23.085)  MP(g45p1svt)             | ** missing connection **
B: M3847 @(38.575,23.085)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3949 @(59.780,23.025)  MP(g45p1svt)             | ** missing connection **
B: M3949 @(59.780,23.025)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3950 @(59.995,23.200)  MP(g45p1svt)             | ** missing connection **
B: M3950 @(59.995,23.200)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3953 @(60.400,23.005)  MP(g45p1svt)             | ** missing connection **
B: M3953 @(60.400,23.005)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3960 @(61.080,23.005)  MP(g45p1svt)             | ** missing connection **
S: M3963 @(61.345,23.005)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3963 @(61.345,23.005)  MP(g45p1svt)             | ** missing connection **
D: M3980 @(62.405,23.005)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3980 @(62.405,23.005)  MP(g45p1svt)             | ** missing connection **
D: M3987 @(62.990,24.120)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3987 @(62.990,24.120)  MP(g45p1svt)             | ** missing connection **
S: M4039 @(69.775,24.170)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4039 @(69.775,24.170)  MP(g45p1svt)             | ** missing connection **
S: M4182 @(92.980,22.940)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4182 @(92.980,22.940)  MP(g45p1svt)             | ** missing connection **
D: M4241 @(99.990,24.120)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4241 @(99.990,24.120)  MP(g45p1svt)             | ** missing connection **
D: M4313 @(102.795,24.020)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4313 @(102.795,24.020)  MP(g45p1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3841 @(37.535,23.260)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M3841 @(37.535,23.260)  MP(g45p1svt)          | ** missing connection **
   B: M3842 @(37.765,23.260)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3844 @(38.165,23.260)  MP(g45p1svt)          | ** missing connection **
   S: M3844 @(38.165,23.260)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3843 @(38.030,23.260)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3955 @(60.665,23.005)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M3955 @(60.665,23.005)  MP(g45p1svt)          | ** missing connection **
   B: M3957 @(60.810,23.005)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3966 @(61.615,23.005)  MP(g45p1svt)          | ** missing connection **
   D: M3966 @(61.615,23.005)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3967 @(61.720,23.005)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3971 @(62.160,23.005)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M3971 @(62.160,23.005)  MP(g45p1svt)          | ** missing connection **
   B: M3969 @(61.925,23.005)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| S: spr_6/spr_gate13/Mmp0  MP(G45P1SVT)
** missing connection **                            | B: spr_6/spr_gate13/Mmp0  MP(G45P1SVT)
                                                                                                   
                                                                                                   
Layout Net: 26                                      | Schematic Net: spr_7/spr_gate8/VDD
====================================================+========================================(mn 9)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3702 @(15.180,64.065)  MP(g45p1svt)             | ** missing connection **
B: M3702 @(15.180,64.065)  MP(g45p1svt)             | ** missing connection **
D: M3704 @(15.395,64.240)  MP(g45p1svt)             | ** missing connection **
B: M3704 @(15.395,64.240)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3707 @(15.800,64.045)  MP(g45p1svt)             | ** missing connection **
B: M3707 @(15.800,64.045)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3711 @(16.480,64.045)  MP(g45p1svt)             | ** missing connection **
S: M3712 @(16.745,64.045)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3712 @(16.745,64.045)  MP(g45p1svt)             | ** missing connection **
D: M3725 @(17.805,64.045)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3725 @(17.805,64.045)  MP(g45p1svt)             | ** missing connection **
S: M4043 @(73.580,63.980)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4043 @(73.580,63.980)  MP(g45p1svt)             | ** missing connection **
D: M4161 @(91.380,64.030)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4161 @(91.380,64.030)  MP(g45p1svt)             | ** missing connection **
S: M4377 @(105.180,64.015)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4377 @(105.180,64.015)  MP(g45p1svt)            | ** missing connection **
D: M4381 @(105.375,64.190)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4381 @(105.375,64.190)  MP(g45p1svt)            | ** missing connection **
S: M4388 @(105.580,64.190)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4388 @(105.580,64.190)  MP(g45p1svt)            | ** missing connection **
S: M4396 @(105.945,64.155)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4396 @(105.945,64.155)  MP(g45p1svt)            | ** missing connection **
D: M4402 @(106.160,64.155)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4402 @(106.160,64.155)  MP(g45p1svt)            | ** missing connection **
B: M4409 @(106.440,64.155)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4427 @(106.955,63.980)  MP(g45p1svt)            | ** missing connection **
B: M4427 @(106.955,63.980)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3709 @(16.065,64.045)  MP(g45p1svt)          | ** missing connection **
   D: M3709 @(16.065,64.045)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3710 @(16.210,64.045)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3715 @(17.015,64.045)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M3715 @(17.015,64.045)  MP(g45p1svt)          | ** missing connection **
   B: M3716 @(17.120,64.045)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3722 @(17.560,64.045)  MP(g45p1svt)          | ** missing connection **
   S: M3722 @(17.560,64.045)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3719 @(17.325,64.045)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4420 @(106.750,64.155)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4420 @(106.750,64.155)  MP(g45p1svt)         | ** missing connection **
   B: M4418 @(106.645,64.155)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4195 @(93.895,64.100)  MP(g45p1svt)          | ** missing connection **
   S: M4195 @(93.895,64.100)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4193 @(93.790,64.100)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 35                                      | Schematic Net: spr_6/spr_gate0/VDD
====================================================+=======================================(mn 10)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
G: M3224 @(48.380,36.090)  MN(g45n1svt)             | ** missing connection **
G: M3263 @(54.015,38.650)  MN(g45n1svt)             | ** missing connection **
G: M3283 @(57.215,15.430)  MN(g45n1svt)             | ** missing connection **
G: M3293 @(60.050,22.535)  MN(g45n1svt)   .  .  .  .| ** missing connection **
G: M3297 @(60.590,36.090)  MN(g45n1svt)             | ** missing connection **
G: M3325 @(62.785,24.805)  MN(g45n1svt)   .  .  .  .| ** missing connection **
G: M3352 @(67.170,21.400)  MN(g45n1svt)             | ** missing connection **
G: M3358 @(67.595,18.960)  MN(g45n1svt)   .  .  .  .| ** missing connection **
G: M3372 @(69.570,24.820)  MN(g45n1svt)             | ** missing connection **
G: M3377 @(73.515,14.800)  MN(g45n1svt)   .  .  .  .| ** missing connection **
G: M3388 @(74.385,41.905)  MN(g45n1svt)             | ** missing connection **
G: M3406 @(78.395,21.440)  MN(g45n1svt)   .  .  .  .| ** missing connection **
G: M3917 @(54.015,37.770)  MP(g45p1svt)             | ** missing connection **
G: M3940 @(57.215,16.180)  MP(g45p1svt)   .  .  .  .| ** missing connection **
G: M3947 @(59.390,16.150)  MP(g45p1svt)             | ** missing connection **
G: M3950 @(59.995,23.200)  MP(g45p1svt)   .  .  .  .| ** missing connection **
G: M3977 @(62.385,34.380)  MP(g45p1svt)             | ** missing connection **
G: M3987 @(62.990,24.120)  MP(g45p1svt)   .  .  .  .| ** missing connection **
G: M4012 @(67.170,20.750)  MP(g45p1svt)             | ** missing connection **
G: M4018 @(67.595,19.670)  MP(g45p1svt)   .  .  .  .| ** missing connection **
G: M4039 @(69.775,24.170)  MP(g45p1svt)             | ** missing connection **
G: M4040 @(73.515,13.765)  MP(g45p1svt)   .  .  .  .| ** missing connection **
G: M4050 @(74.180,41.220)  MP(g45p1svt)             | ** missing connection **
G: M4075 @(78.395,20.600)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3971 @(62.160,23.005)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: X1508/M1 @(62.160,22.330)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M4044 @(73.735,13.765)  MP(g45p1svt)          | ** missing connection **
   G: M4047 @(73.965,13.765)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M4054 @(74.365,13.765)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: X1807/M0 @(73.735,14.945)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3385 @(74.365,14.800)  MN(g45n1svt)          | ** missing connection **
   G: M3381 @(74.045,14.800)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3291 @(59.470,15.515)  MN(g45n1svt)          | ** missing connection **
   G: M3290 @(59.365,15.515)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3324 @(62.670,35.145)  MN(g45n1svt)          | ** missing connection **
   G: M3321 @(62.565,35.145)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3893 @(48.895,36.740)  MP(g45p1svt)          | ** missing connection **
   G: M3888 @(48.790,36.740)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   G: M3956 @(60.695,36.740)  MP(g45p1svt)          | ** missing connection **
   G: M3954 @(60.590,36.740)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_6/spr_gate0/Mmp0  MP(G45P1SVT)
                                                                                                   
                                                                                                   
Layout Net: 78                                      | Schematic Net: spr_7/spr_gate13/VSS
====================================================+=======================================(mn 11)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: X2920/M2 @(105.945,59.150)  MN(g45n1svt)         | ** missing connection **
D: X2920/M3 @(106.160,59.150)  MN(g45n1svt)         | ** missing connection **
S: M3044 @(11.780,59.030)  MN(g45n1svt)             | ** missing connection **
S: M3045 @(11.780,60.000)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3054 @(12.395,60.000)  MN(g45n1svt)             | ** missing connection **
D: M3368 @(69.205,59.890)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3374 @(69.615,59.890)  MN(g45n1svt)             | ** missing connection **
S: M3548 @(99.380,60.060)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3549 @(99.575,60.175)  MN(g45n1svt)             | ** missing connection **
S: M3556 @(99.980,59.985)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3560 @(100.185,60.100)  MN(g45n1svt)            | ** missing connection **
S: M3574 @(101.380,59.120)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3577 @(101.535,60.015)  MN(g45n1svt)            | ** missing connection **
D: M3581 @(101.615,59.235)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3610 @(102.725,60.095)  MN(g45n1svt)            | ** missing connection **
S: M3619 @(103.140,59.150)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3644 @(104.575,59.240)  MN(g45n1svt)            | ** missing connection **
S: M3648 @(105.180,59.125)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3661 @(106.955,59.005)  MN(g45n1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2919/M0 @(102.285,59.355)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2919/M1 @(102.495,59.355)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3623 @(103.375,59.150)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2919/M5 @(104.045,59.355)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2920/M0 @(105.385,59.270)  MN(g45n1svt)  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2920/M6 @(106.750,59.150)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3278 @(55.870,59.975)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3565 @(100.760,60.015)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3568 @(100.965,60.015)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos3#1                                           | 
   D: M3584 @(101.805,60.095)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3602 @(102.450,60.095)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate13/Mmn1  MN(G45N1SVT)
** missing connection **                            | B: spr_7/spr_gate13/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 11                                      | Schematic Net: spr_8/spr_gate1/VDD
====================================================+=======================================(mn 12)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3773 @(27.380,99.410)  MP(g45p1svt)             | ** missing connection **
B: M3773 @(27.380,99.410)  MP(g45p1svt)             | ** missing connection **
S: M4354 @(104.175,99.410)  MP(g45p1svt)            | ** missing connection **
B: M4354 @(104.175,99.410)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3816 @(32.295,99.290)  MP(g45p1svt)          | ** missing connection **
   S: M3816 @(32.295,99.290)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3815 @(32.190,99.290)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 20                                      | Schematic Net: spr_5/spr_gate13/VDD
====================================================+=======================================(mn 13)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3880 @(48.380,105.070)  MP(g45p1svt)            | ** missing connection **
B: M3880 @(48.380,105.070)  MP(g45p1svt)            | ** missing connection **
S: M3970 @(61.985,105.070)  MP(g45p1svt)            | ** missing connection **
B: M3970 @(61.985,105.070)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4002 @(65.990,106.200)  MP(g45p1svt)            | ** missing connection **
B: M4002 @(65.990,106.200)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4011 @(66.980,105.105)  MP(g45p1svt)            | ** missing connection **
B: M4011 @(66.980,105.105)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4014 @(67.195,105.280)  MP(g45p1svt)            | ** missing connection **
B: M4014 @(67.195,105.280)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4019 @(67.600,105.085)  MP(g45p1svt)            | ** missing connection **
B: M4019 @(67.600,105.085)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4022 @(68.280,105.085)  MP(g45p1svt)            | ** missing connection **
S: M4023 @(68.545,105.085)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4023 @(68.545,105.085)  MP(g45p1svt)            | ** missing connection **
D: M4036 @(69.605,105.085)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4036 @(69.605,105.085)  MP(g45p1svt)            | ** missing connection **
D: M4187 @(93.380,106.200)  MP(g45p1svt)  .  .  .  .| ** missing connection **
B: M4187 @(93.380,106.200)  MP(g45p1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4020 @(67.865,105.085)  MP(g45p1svt)  .  .  .| ** missing connection **
   D: M4020 @(67.865,105.085)  MP(g45p1svt)         | ** missing connection **
   B: M4021 @(68.010,105.085)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4025 @(68.815,105.085)  MP(g45p1svt)         | ** missing connection **
   D: M4025 @(68.815,105.085)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4026 @(68.920,105.085)  MP(g45p1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4031 @(69.360,105.085)  MP(g45p1svt)  .  .  .| ** missing connection **
   S: M4031 @(69.360,105.085)  MP(g45p1svt)         | ** missing connection **
   B: M4028 @(69.125,105.085)  MP(g45p1svt)  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 76                                      | Schematic Net: spr_7/spr_gate1/VSS
====================================================+=======================================(mn 14)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3069 @(15.995,49.795)  MN(g45n1svt)             | ** missing connection **
D: M3124 @(26.805,48.910)  MN(g45n1svt)             | ** missing connection **
D: M3128 @(27.215,48.910)  MN(g45n1svt)             | ** missing connection **
D: M3213 @(42.380,48.770)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3376 @(69.795,49.770)  MN(g45n1svt)             | ** missing connection **
S: M3505 @(93.180,49.770)  MN(g45n1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3524 @(94.470,48.825)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_7/spr_gate1/Mmn55  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate1/Mmn30  MN(G45N1SVT)
** missing connection **                            | B: spr_7/spr_gate1/Mmn20  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate1/Mmn45  MN(G45N1SVT)
** missing connection **                            | B: spr_7/spr_gate1/Mmn40  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate1/Mmn21  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **                            |    B: spr_7/spr_gate1/Mmn25  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .|    S: spr_7/spr_gate1/Mmn25  MN(G45N1SVT)
** missing connection **                            |    B: spr_7/spr_gate1/Mmn26  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **   .  .  .  .  .  .  .  .  .|    B: spr_7/spr_gate1/Mmn50  MN(G45N1SVT)
** missing connection **                            |    S: spr_7/spr_gate1/Mmn50  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .|    B: spr_7/spr_gate1/Mmn51  MN(G45N1SVT)
                                                    | 
                                                    | SerMos2#1
** missing connection **                            |    B: spr_7/spr_gate1/Mmn35  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .|    S: spr_7/spr_gate1/Mmn35  MN(G45N1SVT)
** missing connection **                            |    B: spr_7/spr_gate1/Mmn36  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 4                                       | Schematic Net: spr_6/spr_gate14/VDD
====================================================+=======================================(mn 15)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3700 @(14.390,20.700)  MP(g45p1svt)             | ** missing connection **
B: M3700 @(14.390,20.700)  MP(g45p1svt)             | ** missing connection **
D: M4012 @(67.170,20.750)  MP(g45p1svt)             | ** missing connection **
B: M4012 @(67.170,20.750)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4013 @(67.185,19.670)  MP(g45p1svt)             | ** missing connection **
B: M4013 @(67.185,19.670)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4018 @(67.595,19.670)  MP(g45p1svt)             | ** missing connection **
B: M4018 @(67.595,19.670)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4073 @(77.985,20.600)  MP(g45p1svt)             | ** missing connection **
B: M4073 @(77.985,20.600)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4075 @(78.395,20.600)  MP(g45p1svt)             | ** missing connection **
B: M4075 @(78.395,20.600)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4134 @(88.405,20.670)  MP(g45p1svt)             | ** missing connection **
B: M4134 @(88.405,20.670)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4141 @(88.815,20.670)  MP(g45p1svt)             | ** missing connection **
B: M4141 @(88.815,20.670)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4348 @(103.995,19.570)  MP(g45p1svt)            | ** missing connection **
B: M4348 @(103.995,19.570)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3786 @(28.495,20.630)  MP(g45p1svt)          | ** missing connection **
   S: M3786 @(28.495,20.630)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3784 @(28.390,20.630)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 7                                       | Schematic Net: spr_9/spr_gate8/VDD
====================================================+=======================================(mn 16)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3692 @(12.375,84.500)  MP(g45p1svt)             | ** missing connection **
B: M3692 @(12.375,84.500)  MP(g45p1svt)             | ** missing connection **
S: M3734 @(18.795,84.550)  MP(g45p1svt)             | ** missing connection **
B: M3734 @(18.795,84.550)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3820 @(34.780,84.585)  MP(g45p1svt)             | ** missing connection **
B: M3820 @(34.780,84.585)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3821 @(34.995,84.760)  MP(g45p1svt)             | ** missing connection **
B: M3821 @(34.995,84.760)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3822 @(35.400,84.565)  MP(g45p1svt)             | ** missing connection **
B: M3822 @(35.400,84.565)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3828 @(36.080,84.565)  MP(g45p1svt)             | ** missing connection **
S: M3831 @(36.345,84.565)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3831 @(36.345,84.565)  MP(g45p1svt)             | ** missing connection **
D: M3840 @(37.405,84.565)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M3840 @(37.405,84.565)  MP(g45p1svt)             | ** missing connection **
S: M4169 @(91.985,85.680)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4169 @(91.985,85.680)  MP(g45p1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3823 @(35.665,84.565)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M3823 @(35.665,84.565)  MP(g45p1svt)          | ** missing connection **
   B: M3825 @(35.810,84.565)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3835 @(36.615,84.565)  MP(g45p1svt)          | ** missing connection **
   D: M3835 @(36.615,84.565)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3836 @(36.720,84.565)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3838 @(37.160,84.565)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M3838 @(37.160,84.565)  MP(g45p1svt)          | ** missing connection **
   B: M3837 @(36.925,84.565)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3901 @(50.295,84.620)  MP(g45p1svt)          | ** missing connection **
   S: M3901 @(50.295,84.620)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3900 @(50.190,84.620)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4209 @(94.695,84.620)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4209 @(94.695,84.620)  MP(g45p1svt)          | ** missing connection **
   B: M4207 @(94.590,84.620)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 10                                      | Schematic Net: spr_8/spr_gate2/VDD
====================================================+=======================================(mn 17)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3793 @(29.185,94.810)  MP(g45p1svt)             | ** missing connection **
B: M3793 @(29.185,94.810)  MP(g45p1svt)             | ** missing connection **
S: M3871 @(43.115,95.080)  MP(g45p1svt)             | ** missing connection **
B: M3871 @(43.115,95.080)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3876 @(44.170,94.905)  MP(g45p1svt)             | ** missing connection **
B: M3876 @(44.170,94.905)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4329 @(103.385,94.910)  MP(g45p1svt)            | ** missing connection **
B: M4329 @(103.385,94.910)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4342 @(103.795,94.910)  MP(g45p1svt)            | ** missing connection **
B: M4342 @(103.795,94.910)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3872 @(43.335,95.080)  MP(g45p1svt)          | ** missing connection **
   D: M3872 @(43.335,95.080)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3873 @(43.565,95.080)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3875 @(43.965,95.080)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M3875 @(43.965,95.080)  MP(g45p1svt)          | ** missing connection **
   B: M3874 @(43.830,95.080)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 24                                      | Schematic Net: spr_3/spr_gate6/VDD
====================================================+=======================================(mn 18)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3936 @(56.380,16.180)  MP(g45p1svt)             | ** missing connection **
B: M3936 @(56.380,16.180)  MP(g45p1svt)             | ** missing connection **
D: M3940 @(57.215,16.180)  MP(g45p1svt)             | ** missing connection **
B: M3940 @(57.215,16.180)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4135 @(88.580,16.185)  MP(g45p1svt)             | ** missing connection **
B: M4135 @(88.580,16.185)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4140 @(88.795,16.360)  MP(g45p1svt)             | ** missing connection **
B: M4140 @(88.795,16.360)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4144 @(89.200,16.165)  MP(g45p1svt)             | ** missing connection **
B: M4144 @(89.200,16.165)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4147 @(89.880,16.165)  MP(g45p1svt)             | ** missing connection **
S: M4150 @(90.145,16.165)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4150 @(90.145,16.165)  MP(g45p1svt)             | ** missing connection **
D: M4159 @(91.205,16.165)  MP(g45p1svt)   .  .  .  .| ** missing connection **
B: M4159 @(91.205,16.165)  MP(g45p1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4145 @(89.465,16.165)  MP(g45p1svt)   .  .  .| ** missing connection **
   D: M4145 @(89.465,16.165)  MP(g45p1svt)          | ** missing connection **
   B: M4146 @(89.610,16.165)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4153 @(90.415,16.165)  MP(g45p1svt)          | ** missing connection **
   D: M4153 @(90.415,16.165)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4154 @(90.520,16.165)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4157 @(90.960,16.165)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4157 @(90.960,16.165)  MP(g45p1svt)          | ** missing connection **
   B: M4155 @(90.725,16.165)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 21                                      | Schematic Net: spr_7/spr_gate11/VDD
====================================================+=======================================(mn 19)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M4068 @(76.380,44.640)  MP(g45p1svt)             | ** missing connection **
B: M4068 @(76.380,44.640)  MP(g45p1svt)             | ** missing connection **
S: M4092 @(84.315,44.545)  MP(g45p1svt)             | ** missing connection **
B: M4092 @(84.315,44.545)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4101 @(85.370,44.545)  MP(g45p1svt)             | ** missing connection **
B: M4101 @(85.370,44.545)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4122 @(87.410,44.610)  MP(g45p1svt)             | ** missing connection **
B: M4122 @(87.410,44.610)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4124 @(87.615,44.610)  MP(g45p1svt)             | ** missing connection **
B: M4124 @(87.615,44.610)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4094 @(84.535,44.545)  MP(g45p1svt)          | ** missing connection **
   D: M4094 @(84.535,44.545)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4096 @(84.765,44.545)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4099 @(85.165,44.545)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4099 @(85.165,44.545)  MP(g45p1svt)          | ** missing connection **
   B: M4098 @(85.030,44.545)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3756 @(19.695,44.570)  MP(g45p1svt)          | ** missing connection **
   S: M3756 @(19.695,44.570)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3752 @(19.590,44.570)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 8                                       | Schematic Net: spr_3/spr_gate2/VDD
====================================================+=======================================(mn 20)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3685 @(11.985,13.830)  MP(g45p1svt)             | ** missing connection **
B: M3685 @(11.985,13.830)  MP(g45p1svt)             | ** missing connection **
D: M3696 @(12.615,13.830)  MP(g45p1svt)             | ** missing connection **
B: M3696 @(12.615,13.830)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3782 @(28.375,13.910)  MP(g45p1svt)             | ** missing connection **
B: M3782 @(28.375,13.910)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3992 @(64.980,13.910)  MP(g45p1svt)             | ** missing connection **
B: M3992 @(64.980,13.910)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 68                                      | Schematic Net: spr_6/spr_gate9/VSS
====================================================+=======================================(mn 21)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3042 @(11.780,22.410)  MN(g45n1svt)             | ** missing connection **
D: M3059 @(13.980,21.385)  MN(g45n1svt)             | ** missing connection **
D: M3132 @(27.980,21.410)  MN(g45n1svt)             | ** missing connection **
S: M3190 @(37.315,22.295)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3193 @(38.370,22.295)  MN(g45n1svt)             | ** missing connection **
S: M3292 @(59.780,22.420)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3293 @(60.050,22.535)  MN(g45n1svt)             | ** missing connection **
S: M3296 @(60.455,22.330)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3305 @(61.345,22.330)  MN(g45n1svt)             | ** missing connection **
D: M3404 @(77.985,21.440)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3406 @(78.395,21.440)  MN(g45n1svt)             | ** missing connection **
D: M3459 @(88.405,21.550)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3464 @(88.815,21.550)  MN(g45n1svt)             | ** missing connection **
S: M3503 @(92.980,22.410)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: X1508/M2 @(62.425,22.390)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X677/M0 @(37.535,22.295)  MN(g45n1svt) .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3192 @(38.165,22.295)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3298 @(60.665,22.330)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3308 @(61.615,22.330)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X1508/M1 @(62.160,22.330)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3101 @(19.270,22.355)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_6/spr_gate9/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 16                                      | Schematic Net: spr_5/spr_gate12/VDD
====================================================+=======================================(mn 22)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3686 @(11.985,46.960)  MP(g45p1svt)             | ** missing connection **
B: M3686 @(11.985,46.960)  MP(g45p1svt)             | ** missing connection **
D: M3697 @(12.615,46.960)  MP(g45p1svt)             | ** missing connection **
B: M3697 @(12.615,46.960)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3848 @(38.585,46.930)  MP(g45p1svt)             | ** missing connection **
B: M3848 @(38.585,46.930)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4200 @(94.185,48.060)  MP(g45p1svt)             | ** missing connection **
B: M4200 @(94.185,48.060)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3870 @(42.895,47.990)  MP(g45p1svt)          | ** missing connection **
   S: M3870 @(42.895,47.990)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3869 @(42.790,47.990)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 25                                      | Schematic Net: spr_6/spr_gate8/VDD
====================================================+=======================================(mn 23)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M4079 @(82.590,41.220)  MP(g45p1svt)             | ** missing connection **
B: M4079 @(82.590,41.220)  MP(g45p1svt)             | ** missing connection **
D: M4097 @(84.980,40.120)  MP(g45p1svt)             | ** missing connection **
B: M4097 @(84.980,40.120)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4106 @(85.815,40.120)  MP(g45p1svt)             | ** missing connection **
B: M4106 @(85.815,40.120)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4186 @(93.315,41.125)  MP(g45p1svt)             | ** missing connection **
B: M4186 @(93.315,41.125)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4206 @(94.575,41.125)  MP(g45p1svt)             | ** missing connection **
B: M4206 @(94.575,41.125)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4189 @(93.535,41.125)  MP(g45p1svt)          | ** missing connection **
   D: M4189 @(93.535,41.125)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4192 @(93.765,41.125)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4199 @(94.165,41.125)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M4199 @(94.165,41.125)  MP(g45p1svt)          | ** missing connection **
   B: M4198 @(94.030,41.125)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4424 @(106.895,40.160)  MP(g45p1svt)         | ** missing connection **
   S: M4424 @(106.895,40.160)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M4423 @(106.790,40.160)  MP(g45p1svt)         | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 91                                      | Schematic Net: spr_9/spr_gate12/VSS
====================================================+=======================================(mn 24)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3209 @(41.590,104.460)  MN(g45n1svt)            | ** missing connection **
D: M3210 @(41.795,104.460)  MN(g45n1svt)            | ** missing connection **
S: M3320 @(62.395,104.515)  MN(g45n1svt)            | ** missing connection **
S: M3351 @(66.980,104.500)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3354 @(67.250,104.615)  MN(g45n1svt)            | ** missing connection **
S: M3359 @(67.655,104.410)  MN(g45n1svt)  .  .  .  .| ** missing connection **
S: M3362 @(68.545,104.410)  MN(g45n1svt)            | ** missing connection **
S: M3440 @(86.410,103.630)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3441 @(86.615,103.630)  MN(g45n1svt)            | ** missing connection **
D: X2023/M2 @(69.625,104.470)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3360 @(67.865,104.410)  MN(g45n1svt)         | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3364 @(68.815,104.410)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2023/M1 @(69.360,104.410)  MN(g45n1svt)      | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3239 @(48.870,104.435)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate12/Mmn1  MN(G45N1SVT)
** missing connection **                            | B: spr_9/spr_gate12/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 66                                      | Schematic Net: spr_6/spr_gate0/VSS
====================================================+=======================================(mn 25)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3046 @(11.985,14.710)  MN(g45n1svt)             | ** missing connection **
D: M3057 @(12.615,14.710)  MN(g45n1svt)             | ** missing connection **
S: M3138 @(28.375,14.560)  MN(g45n1svt)             | ** missing connection **
S: M3280 @(56.585,15.430)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3283 @(57.215,15.430)  MN(g45n1svt)             | ** missing connection **
S: M3377 @(73.515,14.800)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3393 @(74.775,14.685)  MN(g45n1svt)             | ** missing connection **
S: M3461 @(88.580,15.580)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3465 @(88.850,15.695)  MN(g45n1svt)             | ** missing connection **
S: M3468 @(89.255,15.490)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3473 @(90.145,15.490)  MN(g45n1svt)             | ** missing connection **
D: X2088/M2 @(91.225,15.550)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X1807/M0 @(73.735,14.945)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3385 @(74.365,14.800)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3469 @(89.465,15.490)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3476 @(90.415,15.490)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2088/M1 @(90.960,15.490)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3291 @(59.470,15.515)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_6/spr_gate0/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 6                                       | Schematic Net: spr_1/spr_gate13/VDD
====================================================+=======================================(mn 26)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3977 @(62.385,34.380)  MP(g45p1svt)             | ** missing connection **
B: M3977 @(62.385,34.380)  MP(g45p1svt)             | ** missing connection **
S: M4117 @(86.975,34.430)  MP(g45p1svt)             | ** missing connection **
B: M4117 @(86.975,34.430)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4414 @(106.570,33.200)  MP(g45p1svt)            | ** missing connection **
B: M4414 @(106.570,33.200)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M4224 @(98.895,33.320)  MP(g45p1svt)          | ** missing connection **
   S: M4224 @(98.895,33.320)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M4221 @(98.790,33.320)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 28                                      | Schematic Net: spr_9/spr_gate13/VDD
====================================================+=======================================(mn 27)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3738 @(18.985,91.420)  MP(g45p1svt)             | ** missing connection **
B: M3738 @(18.985,91.420)  MP(g45p1svt)             | ** missing connection **
D: M3755 @(19.615,91.420)  MP(g45p1svt)             | ** missing connection **
B: M3755 @(19.615,91.420)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3766 @(26.585,91.390)  MP(g45p1svt)             | ** missing connection **
B: M3766 @(26.585,91.390)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3783 @(28.385,91.490)  MP(g45p1svt)             | ** missing connection **
B: M3783 @(28.385,91.490)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3789 @(28.795,91.490)  MP(g45p1svt)             | ** missing connection **
B: M3789 @(28.795,91.490)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M3972 @(62.170,91.340)  MP(g45p1svt)             | ** missing connection **
B: M3972 @(62.170,91.340)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4009 @(66.795,91.490)  MP(g45p1svt)             | ** missing connection **
B: M4009 @(66.795,91.490)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4016 @(67.380,91.340)  MP(g45p1svt)             | ** missing connection **
B: M4016 @(67.380,91.340)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4174 @(92.385,92.520)  MP(g45p1svt)             | ** missing connection **
B: M4174 @(92.385,92.520)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4433 @(107.580,91.390)  MP(g45p1svt)            | ** missing connection **
B: M4433 @(107.580,91.390)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4438 @(107.780,92.570)  MP(g45p1svt)            | ** missing connection **
B: M4438 @(107.780,92.570)  MP(g45p1svt)  .  .  .  .| ** missing connection **
** missing connection **                            | S: spr_9/spr_gate13/Mmp0  MP(G45P1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate13/Mmp0  MP(G45P1SVT)
                                                                                                   
                                                                                                   
Layout Net: 87                                      | Schematic Net: spr_9/spr_gate13/VSS
====================================================+=======================================(mn 28)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3094 @(18.985,90.670)  MN(g45n1svt)             | ** missing connection **
D: M3111 @(19.615,90.670)  MN(g45n1svt)             | ** missing connection **
D: M3123 @(26.790,90.835)  MN(g45n1svt)             | ** missing connection **
D: M3139 @(28.385,90.780)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3144 @(28.795,90.780)  MN(g45n1svt)             | ** missing connection **
D: M3313 @(62.170,90.820)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3349 @(66.795,90.780)  MN(g45n1svt)             | ** missing connection **
S: M3356 @(67.380,90.810)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3416 @(83.385,89.810)  MN(g45n1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3678 @(108.070,90.755)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate13/Mmn1  MN(G45N1SVT)
** missing connection **                            | D: spr_9/spr_gate13/Mmn0  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate13/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 88                                      | Schematic Net: spr_8/spr_gate13/VSS
====================================================+=======================================(mn 29)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3152 @(29.595,94.255)  MN(g45n1svt)             | ** missing connection **
S: M3219 @(43.115,94.115)  MN(g45n1svt)             | ** missing connection **
S: M3223 @(44.375,94.115)  MN(g45n1svt)             | ** missing connection **
S: M3454 @(87.915,94.115)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3466 @(88.970,94.115)  MN(g45n1svt)             | ** missing connection **
D: M3492 @(92.180,93.205)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3671 @(107.780,93.230)  MN(g45n1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X1158/M0 @(43.335,94.115)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3221 @(43.965,94.115)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2534/M0 @(88.135,94.115)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3463 @(88.765,94.115)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_8/spr_gate13/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_8/spr_gate13/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 75                                      | Schematic Net: spr_7/spr_gate11/VSS
====================================================+=======================================(mn 30)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3043 @(11.780,46.210)  MN(g45n1svt)             | ** missing connection **
D: M3058 @(12.615,46.210)  MN(g45n1svt)             | ** missing connection **
S: M3104 @(19.385,45.350)  MN(g45n1svt)             | ** missing connection **
S: M3423 @(84.315,45.580)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3432 @(85.575,45.465)  MN(g45n1svt)             | ** missing connection **
S: M3447 @(86.985,45.490)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3452 @(87.615,45.490)  MN(g45n1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2251/M0 @(84.535,45.725)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3428 @(85.165,45.580)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3198 @(38.870,46.295)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3402 @(76.870,45.405)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_7/spr_gate11/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate11/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 23                                      | Schematic Net: spr_5/spr_gate6/VDD
====================================================+=======================================(mn 31)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3974 @(62.180,102.750)  MP(g45p1svt)            | ** missing connection **
B: M3974 @(62.180,102.750)  MP(g45p1svt)            | ** missing connection **
D: M3988 @(63.015,102.750)  MP(g45p1svt)            | ** missing connection **
B: M3988 @(63.015,102.750)  MP(g45p1svt)  .  .  .  .| ** missing connection **
S: M4108 @(85.985,102.750)  MP(g45p1svt)            | ** missing connection **
B: M4108 @(85.985,102.750)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4113 @(86.615,102.750)  MP(g45p1svt)            | ** missing connection **
B: M4113 @(86.615,102.750)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3944 @(58.695,101.720)  MP(g45p1svt)         | ** missing connection **
   S: M3944 @(58.695,101.720)  MP(g45p1svt)  .  .  .| ** missing connection **
   B: M3943 @(58.590,101.720)  MP(g45p1svt)         | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 85                                      | Schematic Net: spr_9/spr_gate8/VSS
====================================================+=======================================(mn 32)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3049 @(12.170,83.980)  MN(g45n1svt)             | ** missing connection **
S: M3173 @(34.780,83.980)  MN(g45n1svt)             | ** missing connection **
D: M3174 @(35.050,84.095)  MN(g45n1svt)             | ** missing connection **
S: M3175 @(35.455,83.890)  MN(g45n1svt)   .  .  .  .| ** missing connection **
S: M3183 @(36.345,83.890)  MN(g45n1svt)             | ** missing connection **
S: M3247 @(50.395,83.970)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3525 @(94.570,82.960)  MN(g45n1svt)             | ** missing connection **
D: M3527 @(94.590,83.970)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: X873/M2 @(37.425,83.950)  MN(g45n1svt)           | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3176 @(35.665,83.890)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3187 @(36.615,83.890)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X873/M1 @(37.160,83.890)  MN(g45n1svt) .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3088 @(18.670,83.915)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_9/spr_gate8/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 9                                       | Schematic Net: spr_9/spr_gate14/VDD
====================================================+=======================================(mn 33)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3802 @(30.210,81.160)  MP(g45p1svt)             | ** missing connection **
B: M3802 @(30.210,81.160)  MP(g45p1svt)             | ** missing connection **
D: M3803 @(30.415,81.160)  MP(g45p1svt)             | ** missing connection **
B: M3803 @(30.415,81.160)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M3808 @(31.175,81.080)  MP(g45p1svt)             | ** missing connection **
B: M3808 @(31.175,81.080)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4160 @(91.205,81.160)  MP(g45p1svt)             | ** missing connection **
B: M4160 @(91.205,81.160)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4164 @(91.615,81.160)  MP(g45p1svt)             | ** missing connection **
B: M4164 @(91.615,81.160)  MP(g45p1svt)   .  .  .  .| ** missing connection **
S: M4210 @(94.775,82.310)  MP(g45p1svt)             | ** missing connection **
B: M4210 @(94.775,82.310)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4434 @(107.585,81.230)  MP(g45p1svt)            | ** missing connection **
B: M4434 @(107.585,81.230)  MP(g45p1svt)  .  .  .  .| ** missing connection **
D: M4445 @(107.995,81.230)  MP(g45p1svt)            | ** missing connection **
B: M4445 @(107.995,81.230)  MP(g45p1svt)  .  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 86                                      | Schematic Net: spr_9/spr_gate11/VSS
====================================================+=======================================(mn 34)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3116 @(23.585,87.390)  MN(g45n1svt)             | ** missing connection **
D: M3329 @(63.170,87.400)  MN(g45n1svt)             | ** missing connection **
D: M3346 @(66.215,87.250)  MN(g45n1svt)             | ** missing connection **
S: M3379 @(73.515,87.275)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3391 @(74.570,87.275)  MN(g45n1svt)             | ** missing connection **
S: M3491 @(91.985,86.365)  MN(g45n1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X1984/M0 @(73.735,87.275)  MN(g45n1svt)       | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3387 @(74.365,87.275)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate11/Mmn1  MN(G45N1SVT)
** missing connection **                            | D: spr_9/spr_gate11/Mmn0  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate11/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 84                                      | Schematic Net: spr_9/spr_gate14/VSS
====================================================+=======================================(mn 35)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3154 @(30.005,80.410)  MN(g45n1svt)             | ** missing connection **
D: M3156 @(30.415,80.410)  MN(g45n1svt)             | ** missing connection **
S: M3162 @(31.175,80.560)  MN(g45n1svt)             | ** missing connection **
D: M3481 @(91.205,80.410)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3485 @(91.615,80.410)  MN(g45n1svt)             | ** missing connection **
S: M3672 @(107.790,80.520)  MN(g45n1svt)  .  .  .  .| ** missing connection **
D: M3677 @(107.995,80.520)  MN(g45n1svt)            | ** missing connection **
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate14/Mmn1  MN(G45N1SVT)
** missing connection **                            | B: spr_9/spr_gate14/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 90                                      | Schematic Net: spr_9/spr_gate4/VSS
====================================================+=======================================(mn 36)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3129 @(27.380,100.070)  MN(g45n1svt)            | ** missing connection **
D: M3168 @(32.190,100.070)  MN(g45n1svt)            | ** missing connection **
S: M3567 @(100.780,100.060)  MN(g45n1svt)           | ** missing connection **
D: M3570 @(101.050,100.060)  MN(g45n1svt) .  .  .  .| ** missing connection **
S: M3576 @(101.455,100.205)  MN(g45n1svt)           | ** missing connection **
S: M3597 @(102.345,100.205)  MN(g45n1svt) .  .  .  .| ** missing connection **
S: M3638 @(104.175,100.060)  MN(g45n1svt)           | ** missing connection **
D: X2954/M2 @(103.425,100.350)  MN(g45n1svt) .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3582 @(101.665,100.205)  MN(g45n1svt)        | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3607 @(102.615,100.205)  MN(g45n1svt) .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X2954/M1 @(103.160,100.410)  MN(g45n1svt)     | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3112 @(19.670,101.015)  MN(g45n1svt)  .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate4/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 13                                      | Schematic Net: spr_1/spr_gate6/VDD
====================================================+=======================================(mn 37)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3916 @(53.810,37.770)  MP(g45p1svt)             | ** missing connection **
B: M3916 @(53.810,37.770)  MP(g45p1svt)             | ** missing connection **
D: M3917 @(54.015,37.770)  MP(g45p1svt)             | ** missing connection **
B: M3917 @(54.015,37.770)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3893 @(48.895,36.740)  MP(g45p1svt)          | ** missing connection **
   S: M3893 @(48.895,36.740)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3888 @(48.790,36.740)  MP(g45p1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3956 @(60.695,36.740)  MP(g45p1svt)   .  .  .| ** missing connection **
   S: M3956 @(60.695,36.740)  MP(g45p1svt)          | ** missing connection **
   B: M3954 @(60.590,36.740)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 71                                      | Schematic Net: spr_6/spr_gate3/VSS
====================================================+=======================================(mn 38)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3127 @(27.180,31.660)  MN(g45n1svt)             | ** missing connection **
D: M3130 @(27.450,31.660)  MN(g45n1svt)             | ** missing connection **
S: M3131 @(27.855,31.805)  MN(g45n1svt)             | ** missing connection **
S: M3143 @(28.745,31.805)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3656 @(106.570,32.680)  MN(g45n1svt)            | ** missing connection **
D: X423/M2 @(29.825,31.950)  MN(g45n1svt) .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3133 @(28.065,31.805)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: M3146 @(29.015,31.805)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: X423/M1 @(29.560,32.010)  MN(g45n1svt)        | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_6/spr_gate3/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 27                                      | Schematic Net: spr_4/spr_gate13/VDD
====================================================+=======================================(mn 39)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
SerMos2#1                                           | 
   B: M4152 @(90.295,68.510)  MP(g45p1svt)          | ** missing connection **
   S: M4152 @(90.295,68.510)  MP(g45p1svt)          | ** missing connection **
   B: M4151 @(90.190,68.510)  MP(g45p1svt)   .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 69                                      | Schematic Net: spr_6/spr_gate13/VSS
====================================================+=======================================(mn 40)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3325 @(62.785,24.805)  MN(g45n1svt)             | ** missing connection **
D: M3372 @(69.570,24.820)  MN(g45n1svt)             | ** missing connection **
D: M3613 @(102.795,24.860)  MN(g45n1svt)            | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3543 @(98.870,25.775)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3557 @(100.070,24.885)  MN(g45n1svt)         | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_6/spr_gate13/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| D: spr_6/spr_gate13/Mmn0  MN(G45N1SVT)
** missing connection **                            | B: spr_6/spr_gate13/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 70                                      | Schematic Net: spr_1/spr_gate14/VSS
====================================================+=======================================(mn 41)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3076 @(17.180,29.250)  MN(g45n1svt)             | ** missing connection **
D: M3098 @(19.205,29.110)  MN(g45n1svt)             | ** missing connection **
D: M3110 @(19.615,29.110)  MN(g45n1svt)             | ** missing connection **
D: M3167 @(32.190,28.225)  MN(g45n1svt)   .  .  .  .| ** missing connection **
** missing connection **                            | B: spr_1/spr_gate14/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_1/spr_gate14/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 73                                      | Schematic Net: spr_6/spr_gate12/VSS
====================================================+=======================================(mn 42)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3263 @(54.015,38.650)  MN(g45n1svt)             | ** missing connection **
S: M3429 @(85.185,39.370)  MN(g45n1svt)             | ** missing connection **
D: M3435 @(85.815,39.370)  MN(g45n1svt)             | ** missing connection **
S: M3663 @(106.995,39.510)  MN(g45n1svt)  .  .  .  .| ** missing connection **
** missing connection **                            | B: spr_6/spr_gate12/Mmn1  MN(G45N1SVT)
** missing connection **   .  .  .  .  .  .  .  .  .| D: spr_6/spr_gate12/Mmn0  MN(G45N1SVT)
** missing connection **                            | B: spr_6/spr_gate12/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 19                                      | Schematic Net: spr_4/spr_gate10/VDD
====================================================+=======================================(mn 43)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3856 @(39.985,75.420)  MP(g45p1svt)             | ** missing connection **
B: M3856 @(39.985,75.420)  MP(g45p1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   B: M3894 @(48.895,75.350)  MP(g45p1svt)          | ** missing connection **
   S: M3894 @(48.895,75.350)  MP(g45p1svt)   .  .  .| ** missing connection **
   B: M3890 @(48.790,75.350)  MP(g45p1svt)          | ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 67                                      | Schematic Net: spr_6/spr_gate14/VSS
====================================================+=======================================(mn 44)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3350 @(66.980,18.960)  MN(g45n1svt)             | ** missing connection **
D: M3358 @(67.595,18.960)  MN(g45n1svt)             | ** missing connection **
D: M3624 @(103.380,19.015)  MN(g45n1svt)            | ** missing connection **
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_6/spr_gate14/Mmn1  MN(G45N1SVT)
** missing connection **                            | B: spr_6/spr_gate14/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 81                                      | Schematic Net: spr_7/spr_gate7/VSS
====================================================+=======================================(mn 45)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3415 @(83.385,69.320)  MN(g45n1svt)             | ** missing connection **
D: M3419 @(83.795,69.320)  MN(g45n1svt)             | ** missing connection **
D: M3474 @(90.190,69.290)  MN(g45n1svt)             | ** missing connection **
S: M3490 @(91.985,70.150)  MN(g45n1svt)   .  .  .  .| ** missing connection **
D: M3500 @(92.615,70.150)  MN(g45n1svt)             | ** missing connection **
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_7/spr_gate7/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 72                                      | Schematic Net: spr_5/spr_gate4/VSS
====================================================+=======================================(mn 46)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3074 @(16.985,35.120)  MN(g45n1svt)             | ** missing connection **
D: M3080 @(17.395,35.120)  MN(g45n1svt)             | ** missing connection **
D: M3297 @(60.590,36.090)  MN(g45n1svt)             | ** missing connection **
D: M3443 @(86.770,35.080)  MN(g45n1svt)   .  .  .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3186 @(36.470,36.035)  MN(g45n1svt)          | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3324 @(62.670,35.145)  MN(g45n1svt)   .  .  .| ** missing connection **
                                                    | 
** missing connection **   .  .  .  .  .  .  .  .  .| B: spr_5/spr_gate4/Mmn1  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 74                                      | Schematic Net: spr_6/spr_gate8/VSS
====================================================+=======================================(mn 47)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3408 @(82.385,41.905)  MN(g45n1svt)             | ** missing connection **
S: M3507 @(93.315,42.160)  MN(g45n1svt)             | ** missing connection **
S: M3526 @(94.575,42.045)  MN(g45n1svt)             | ** missing connection **
                                                    | 
SerMos2#1                                           | 
   D: X2701/M0 @(93.535,42.305)  MN(g45n1svt)   .  .| ** missing connection **
                                                    | 
SerMos2#1                                           | 
   S: M3519 @(94.165,42.160)  MN(g45n1svt)          | ** missing connection **
                                                    | 
** missing connection **                            | B: spr_6/spr_gate8/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 22                                      | Schematic Net: spr_7/spr_gate9/VDD
====================================================+=======================================(mn 48)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
S: M3999 @(65.595,70.870)  MP(g45p1svt)             | ** missing connection **
B: M3999 @(65.595,70.870)  MP(g45p1svt)             | ** missing connection **
D: M4165 @(91.780,70.900)  MP(g45p1svt)             | ** missing connection **
B: M4165 @(91.780,70.900)  MP(g45p1svt)   .  .  .  .| ** missing connection **
D: M4179 @(92.615,70.900)  MP(g45p1svt)             | ** missing connection **
B: M4179 @(92.615,70.900)  MP(g45p1svt)   .  .  .  .| ** missing connection **
                                                                                                   
                                                                                                   
Layout Net: 83                                      | Schematic Net: spr_7/spr_gate3/VSS
====================================================+=======================================(mn 49)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3205 @(40.190,76.105)  MN(g45n1svt)             | ** missing connection **
D: M3409 @(82.570,76.120)  MN(g45n1svt)             | ** missing connection **
** missing connection **                            | B: spr_7/spr_gate3/Mmn0  MN(G45N1SVT)
                                                                                                   
                                                                                                   
Layout Net: 15                                      | Schematic Net: spr_2/spr_gate5/VDD
====================================================+=======================================(mn 50)
Terminal: Layout Instance                           | Terminal: Schematic Instance
----------------------------------------------------+----------------------------------------------
D: M3810 @(31.780,27.540)  MP(g45p1svt)             | ** missing connection **
B: M3810 @(31.780,27.540)  MP(g45p1svt)             | ** missing connection **


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++ The lvs_report_max option plus removing redundant information reduced this section to 50 ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++ Truncated to 100 entries, to adjust this use the -mismatched_net_limit option in the lvs_report_max rule 
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+===[counter]=================================================================================================
|                                            MISMATCHED INSTANCES                                             
+====================================================================================================truncated
                                                                                          
                                                                                          
Layout Insts: ** missing inst **   .  .  .  .| Schematic Insts: spr_9/spr_gate6/Mmn0
            : ** missing inst **             |                : spr_9/spr_gate6/Mmn1
Layout Model:                                | Schematic Model: MN:SerMos2#1(G45N1SVT)
=============================================+======================================(mi 1)
                                                                                          
                                                                                          
Layout Insts: ** missing inst **             | Schematic Insts: spr_8/spr_gate5/Mmn0
            : ** missing inst **             |                : spr_8/spr_gate5/Mmn1
Layout Model:                                | Schematic Model: MN:SerMos2#1(G45N1SVT)
=============================================+======================================(mi 2)
                                                                                          
                                                                                          
Layout Insts: M3342 @(65.965,106.965)        | Schematic Insts: ** missing inst **
            : M3344 @(66.070,106.965) .  .  .|                : ** missing inst **
            : M3515 @(93.870,106.965)        |                : ** missing inst **
            : M3512 @(93.765,106.965)        |                : ** missing inst **
Layout Model: MN:SerMos4#1(g45n1svt)         | Schematic Model: 
=============================================+======================================(mi 3)
                                                                                          
                                                                                          
Layout Inst : M3264 @(54.180,80.520)         | Schematic Inst : spr_9/spr_gate14/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+======================================(mi 4)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 84 **                                     | B: spr_9/spr_gate14/VSS
                                             | 
S: 84   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate14/VSS
D: 147                                       | S: spr_9/spr_gate14/Y
G: 443  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate14/n0
                                                                                          
                                                                                          
Layout Inst : M3270 @(54.795,80.520)         | Schematic Inst : spr_9/spr_gate14/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+======================================(mi 5)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 84 **                                     | B: spr_9/spr_gate14/VSS
                                             | 
D: 84   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate14/VSS
S: 443                                       | S: spr_9/spr_gate14/n0
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4006 @(66.215,88.000)         | Schematic Inst : spr_9/spr_gate13/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+======================================(mi 6)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 29                                        | ** spr_4/spr_gate3/VDD **
** 28 **                                     | B: spr_9/spr_gate13/VDD
                                             | 
D: 29   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_4/spr_gate3/VDD **
S: 463                                       | ** spr_9/spr_gate11/n0 **
** 446 **  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate13/n0
** 28 **                                     | S: spr_9/spr_gate13/VDD
                                             | 
G: 37                                        | G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3345 @(66.180,90.780)         | Schematic Inst : spr_9/spr_gate13/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+======================================(mi 7)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 87 **                                     | B: spr_9/spr_gate13/VSS
                                             | 
S: 87   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate13/VSS
D: 150                                       | S: spr_9/spr_gate13/Y
G: 446  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate13/n0
                                                                                          
                                                                                          
Layout Inst : M3346 @(66.215,87.250)         | Schematic Inst : spr_9/spr_gate13/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+======================================(mi 8)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 87 **                                     | B: spr_9/spr_gate13/VSS
                                             | 
D: 86   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate11/VSS **
S: 463                                       | ** spr_9/spr_gate11/n0 **
** 87 **   .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate13/VSS
** 446 **                                    | S: spr_9/spr_gate13/n0
                                             | 
G: 37                                        | G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3974 @(62.180,102.750)        | Schematic Inst : spr_9/spr_gate12/Mmp1
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+======================================(mi 9)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 23                                        | ** spr_5/spr_gate6/VDD **
** missing net **                            | B: spr_9/spr_gate12/VDD
                                             | 
D: 23   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate6/VDD **
** missing net **                            | S: spr_9/spr_gate12/VDD
                                             | 
S: 168                                       | D: spr_9/spr_gate12/Y
G: 464  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate12/n0
                                                                                          
                                                                                          
Layout Inst : M3988 @(63.015,102.750)        | Schematic Inst : spr_9/spr_gate12/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 10)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 23                                        | ** spr_5/spr_gate6/VDD **
** missing net **                            | B: spr_9/spr_gate12/VDD
                                             | 
D: 23   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate6/VDD **
** missing net **                            | S: spr_9/spr_gate12/VDD
                                             | 
S: 464                                       | D: spr_9/spr_gate12/n0
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3326 @(62.810,103.630)        | Schematic Inst : spr_9/spr_gate12/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 11)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 91 **                                     | B: spr_9/spr_gate12/VSS
                                             | 
S: 91   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate12/VSS
D: 168                                       | S: spr_9/spr_gate12/Y
G: 464  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate12/n0
                                                                                          
                                                                                          
Layout Inst : M3328 @(63.015,103.630)        | Schematic Inst : spr_9/spr_gate12/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 12)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 91 **                                     | B: spr_9/spr_gate12/VSS
                                             | 
D: 91   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate12/VSS
S: 464                                       | S: spr_9/spr_gate12/n0
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4009 @(66.795,91.490)         | Schematic Inst : spr_9/spr_gate11/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 13)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 28                                        | ** spr_9/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate11/VDD
                                             | 
D: 28   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VDD **
S: 446                                       | ** spr_9/spr_gate13/n0 **
** 463 **  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate11/n0
** missing net **                            | S: spr_9/spr_gate11/VDD
                                             | 
G: 37                                        | G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3341 @(65.805,87.250)         | Schematic Inst : spr_9/spr_gate11/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 14)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 86 **                                     | B: spr_9/spr_gate11/VSS
                                             | 
D: 86   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate11/VSS
S: 167                                       | S: spr_9/spr_gate11/Y
G: 463  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate11/n0
                                                                                          
                                                                                          
Layout Inst : M3349 @(66.795,90.780)         | Schematic Inst : spr_9/spr_gate11/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 15)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 86 **                                     | B: spr_9/spr_gate11/VSS
                                             | 
D: 87   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VSS **
S: 446                                       | ** spr_9/spr_gate13/n0 **
** 86 **   .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate11/VSS
** 463 **                                    | S: spr_9/spr_gate11/n0
                                             | 
G: 37                                        | G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4011 @(66.980,105.105)        | Schematic Inst : spr_9/spr_gate1/Mmp55
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 16)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
S: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate1/VDD
                                             | 
D: 181                                       | D: spr_9/spr_gate1/Q
G: 533  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate1/qbint
                                                                                          
                                                                                          
Layout Inst : M4019 @(67.600,105.085)        | Schematic Inst : spr_9/spr_gate1/Mmp45
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 17)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
S: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate1/VDD
                                             | 
D: 533                                       | D: spr_9/spr_gate1/qbint
G: 532  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate1/n30
                                                                                          
                                                                                          
Layout Inst : M4014 @(67.195,105.280)        | Schematic Inst : spr_9/spr_gate1/Mmp20
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 18)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
D: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate1/VDD
                                             | 
S: 534                                       | D: spr_9/spr_gate1/CKb
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4022 @(68.280,105.085)        | Schematic Inst : spr_9/spr_gate1/Mmp40
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 19)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
S: 537  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/mout
D: 532                                       | S: spr_9/spr_gate1/n30
G: 534  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate1/CKb
                                                                                          
                                                                                          
Layout Inst : M4023 @(68.545,105.085)        | Schematic Inst : spr_9/spr_gate1/Mmp30
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 20)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
S: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate1/VDD
                                             | 
D: 537                                       | D: spr_9/spr_gate1/mout
G: 536  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate1/n20
                                                                                          
                                                                                          
Layout Inst : M4036 @(69.605,105.085)        | Schematic Inst : spr_9/spr_gate1/Mmp21
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 21)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate1/VDD
                                             | 
D: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate1/VDD
                                             | 
S: 535                                       | D: spr_9/spr_gate1/CKbb
G: 534  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate1/CKb
                                                                                          
                                                                                          
Layout Inst : M3351 @(66.980,104.500)        | Schematic Inst : spr_9/spr_gate1/Mmn55
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 22)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
S: 91                                        | ** spr_9/spr_gate12/VSS **
** 1 **                                      | S: spr_9/spr_gate1/VSS
                                             | 
D: 181  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/Q
G: 533                                       | G: spr_9/spr_gate1/qbint
B: 1 .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate1/VSS
                                                                                          
                                                                                          
Layout Inst : M3362 @(68.545,104.410)        | Schematic Inst : spr_9/spr_gate1/Mmn30
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 23)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
S: 91                                        | ** spr_9/spr_gate12/VSS **
** 1 **                                      | S: spr_9/spr_gate1/VSS
                                             | 
D: 537  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/mout
G: 536                                       | G: spr_9/spr_gate1/n20
B: 1 .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate1/VSS
                                                                                          
                                                                                          
Layout Inst : M3354 @(67.250,104.615)        | Schematic Inst : spr_9/spr_gate1/Mmn20
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 24)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
D: 91                                        | ** spr_9/spr_gate12/VSS **
** 1 **                                      | S: spr_9/spr_gate1/VSS
                                             | 
S: 534  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/CKb
G: 37                                        | G: spr_9/tie_hi_net0
B: 1 .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate1/VSS
                                                                                          
                                                                                          
Layout Inst : M3359 @(67.655,104.410)        | Schematic Inst : spr_9/spr_gate1/Mmn45
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 25)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
S: 91                                        | ** spr_9/spr_gate12/VSS **
** 1 **                                      | S: spr_9/spr_gate1/VSS
                                             | 
D: 533  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/qbint
G: 532                                       | G: spr_9/spr_gate1/n30
B: 1 .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate1/VSS
                                                                                          
                                                                                          
Layout Inst : X2023/M2 @(69.625,104.470)     | Schematic Inst : spr_9/spr_gate1/Mmn21
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 26)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
D: 91                                        | ** spr_9/spr_gate12/VSS **
** 1 **                                      | S: spr_9/spr_gate1/VSS
                                             | 
S: 535  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate1/CKbb
G: 534                                       | G: spr_9/spr_gate1/CKb
B: 1 .  .  .  .  .  .  .  .  .  .  .  .  .  .| B: spr_9/spr_gate1/VSS
                                                                                          
                                                                                          
Layout Inst : M3329 @(63.170,87.400)         | Schematic Inst : spr_9/spr_gate10/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 27)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate10/VSS
                                             | 
D: 86   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate11/VSS **
** missing net **                            | S: spr_9/spr_gate10/VSS
                                             | 
S: 192                                       | D: spr_9/spr_gate10/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3972 @(62.170,91.340)         | Schematic Inst : spr_9/spr_gate9/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 28)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 28                                        | ** spr_9/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate9/VDD
                                             | 
D: 28   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate9/VDD
                                             | 
S: 193                                       | D: spr_9/spr_gate9/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3313 @(62.170,90.820)         | Schematic Inst : spr_9/spr_gate9/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 29)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate9/VSS
                                             | 
D: 87   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VSS **
** missing net **                            | S: spr_9/spr_gate9/VSS
                                             | 
S: 193                                       | D: spr_9/spr_gate9/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3243 @(48.995,83.995)         | Schematic Inst : spr_9/spr_gate8/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 30)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 85 **                                     | B: spr_9/spr_gate8/VSS
                                             | 
D: 228  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate8/Y
S: 85                                        | S: spr_9/spr_gate8/VSS
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3970 @(61.985,105.070)        | Schematic Inst : spr_9/spr_gate7/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 31)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate7/VDD
                                             | 
S: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate7/VDD
                                             | 
D: 231                                       | D: spr_9/spr_gate7/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3320 @(62.395,104.515)        | Schematic Inst : spr_9/spr_gate7/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 32)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate7/VSS
                                             | 
S: 91   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate12/VSS **
** missing net **                            | S: spr_9/spr_gate7/VSS
                                             | 
D: 231                                       | D: spr_9/spr_gate7/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3379 @(73.515,87.275)         | Schematic Inst : spr_9/spr_gate2/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 33)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate2/VSS
                                             | 
S: 86   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate11/VSS **
** missing net **                            | S: spr_9/spr_gate2/VSS
                                             | 
D: 367                                       | D: spr_9/spr_gate2/S0b
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3391 @(74.570,87.275)         | Schematic Inst : spr_9/spr_gate2/Mmn5
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 34)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate2/VSS
                                             | 
D: 86   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate11/VSS **
** missing net **                            | S: spr_9/spr_gate2/VSS
                                             | 
S: 118                                       | D: spr_9/spr_gate2/Y
G: 368  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate2/n0
                                                                                          
                                                                                          
Layout Inst : M4002 @(65.990,106.200)        | Schematic Inst : spr_9/spr_gate6/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 35)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate6/VDD
                                             | 
D: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate6/VDD
                                             | 
S: 213                                       | D: spr_9/spr_gate6/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3880 @(48.380,105.070)        | Schematic Inst : spr_9/spr_gate5/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 36)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 20                                        | ** spr_5/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate5/VDD
                                             | 
D: 20   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate5/VDD
                                             | 
S: 209                                       | D: spr_9/spr_gate5/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3285 @(58.385,101.070)        | Schematic Inst : spr_9/spr_gate4/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 37)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 90 **                                     | B: spr_9/spr_gate4/VSS
                                             | 
D: 132  .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_9/spr_gate4/Y
S: 90                                        | S: spr_9/spr_gate4/VSS
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3247 @(50.395,83.970)         | Schematic Inst : spr_9/spr_gate3/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 38)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate3/VSS
                                             | 
S: 85   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate8/VSS **
** missing net **                            | S: spr_9/spr_gate3/VSS
                                             | 
D: 130                                       | D: spr_9/spr_gate3/Y
G: 37   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4016 @(67.380,91.340)         | Schematic Inst : spr_9/spr_gate0/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 39)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 28                                        | ** spr_9/spr_gate13/VDD **
** missing net **                            | B: spr_9/spr_gate0/VDD
                                             | 
S: 28   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VDD **
** missing net **                            | S: spr_9/spr_gate0/VDD
                                             | 
D: 37                                        | D: spr_9/tie_hi_net0
G: 432  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate0/net25
                                                                                          
                                                                                          
Layout Inst : M3356 @(67.380,90.810)         | Schematic Inst : spr_9/spr_gate0/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 40)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_9/spr_gate0/VSS
                                             | 
S: 87   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate13/VSS **
** missing net **                            | S: spr_9/spr_gate0/VSS
                                             | 
D: 432                                       | D: spr_9/spr_gate0/net25
G: 432  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_9/spr_gate0/net25
                                                                                          
                                                                                          
Layout Inst : M4434 @(107.585,81.230)        | Schematic Inst : spr_8/spr_gate14/Mmp1
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 41)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 9                                         | ** spr_9/spr_gate14/VDD **
** missing net **                            | B: spr_8/spr_gate14/VDD
                                             | 
D: 9 .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate14/VDD **
** missing net **                            | S: spr_8/spr_gate14/VDD
                                             | 
S: 157                                       | D: spr_8/spr_gate14/Y
G: 453  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/spr_gate14/n0
                                                                                          
                                                                                          
Layout Inst : M4445 @(107.995,81.230)        | Schematic Inst : spr_8/spr_gate14/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 42)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 9                                         | ** spr_9/spr_gate14/VDD **
** missing net **                            | B: spr_8/spr_gate14/VDD
                                             | 
D: 9 .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate14/VDD **
** missing net **                            | S: spr_8/spr_gate14/VDD
                                             | 
S: 453                                       | D: spr_8/spr_gate14/n0
G: 40   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3672 @(107.790,80.520)        | Schematic Inst : spr_8/spr_gate14/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 43)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_8/spr_gate14/VSS
                                             | 
S: 84   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate14/VSS **
** missing net **                            | D: spr_8/spr_gate14/VSS
                                             | 
D: 157                                       | S: spr_8/spr_gate14/Y
G: 453  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/spr_gate14/n0
                                                                                          
                                                                                          
Layout Inst : M3677 @(107.995,80.520)        | Schematic Inst : spr_8/spr_gate14/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 44)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** missing net **                            | B: spr_8/spr_gate14/VSS
                                             | 
D: 84   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_9/spr_gate14/VSS **
** missing net **                            | D: spr_8/spr_gate14/VSS
                                             | 
S: 453                                       | S: spr_8/spr_gate14/n0
G: 40   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4329 @(103.385,94.910)        | Schematic Inst : spr_8/spr_gate13/Mmp1
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 45)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 10                                        | ** spr_8/spr_gate2/VDD **
** missing net **                            | B: spr_8/spr_gate13/VDD
                                             | 
D: 10   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_8/spr_gate2/VDD **
** missing net **                            | S: spr_8/spr_gate13/VDD
                                             | 
S: 155                                       | D: spr_8/spr_gate13/Y
G: 451  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/spr_gate13/n0
                                                                                          
                                                                                          
Layout Inst : M4342 @(103.795,94.910)        | Schematic Inst : spr_8/spr_gate13/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 46)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 10                                        | ** spr_8/spr_gate2/VDD **
** missing net **                            | B: spr_8/spr_gate13/VDD
                                             | 
D: 10   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_8/spr_gate2/VDD **
** missing net **                            | S: spr_8/spr_gate13/VDD
                                             | 
S: 451                                       | D: spr_8/spr_gate13/n0
G: 40   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M3628 @(103.590,94.200)        | Schematic Inst : spr_8/spr_gate13/Mmn1
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 47)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 88 **                                     | B: spr_8/spr_gate13/VSS
                                             | 
S: 88   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_8/spr_gate13/VSS
D: 155                                       | S: spr_8/spr_gate13/Y
G: 451  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/spr_gate13/n0
                                                                                          
                                                                                          
Layout Inst : M3631 @(103.795,94.200)        | Schematic Inst : spr_8/spr_gate13/Mmn0
Layout Model: MN(g45n1svt)                   | Schematic Model: MN(G45N1SVT)
=============================================+=====================================(mi 48)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 1                                         | ** spr_9/spr_gate1/VSS **
** 88 **                                     | B: spr_8/spr_gate13/VSS
                                             | 
D: 88   .  .  .  .  .  .  .  .  .  .  .  .  .| D: spr_8/spr_gate13/VSS
S: 451                                       | S: spr_8/spr_gate13/n0
G: 40   .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/tie_hi_net0
                                                                                          
                                                                                          
Layout Inst : M4108 @(85.985,102.750)        | Schematic Inst : spr_8/spr_gate12/Mmp1
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 49)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 23                                        | ** spr_5/spr_gate6/VDD **
** missing net **                            | B: spr_8/spr_gate12/VDD
                                             | 
S: 23   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate6/VDD **
** missing net **                            | S: spr_8/spr_gate12/VDD
                                             | 
D: 173                                       | D: spr_8/spr_gate12/Y
G: 469  .  .  .  .  .  .  .  .  .  .  .  .  .| G: spr_8/spr_gate12/n0
                                                                                          
                                                                                          
Layout Inst : M4113 @(86.615,102.750)        | Schematic Inst : spr_8/spr_gate12/Mmp0
Layout Model: MP(g45p1svt)                   | Schematic Model: MP(G45P1SVT)
=============================================+=====================================(mi 50)
Terminal: Layout Net                         | Terminal: Schematic Net
---------------------------------------------+--------------------------------------------
B: 23                                        | ** spr_5/spr_gate6/VDD **
** missing net **                            | B: spr_8/spr_gate12/VDD
                                             | 
D: 23   .  .  .  .  .  .  .  .  .  .  .  .  .| ** spr_5/spr_gate6/VDD **
** missing net **                            | S: spr_8/spr_gate12/VDD
                                             | 
S: 469                                       | D: spr_8/spr_gate12/n0
G: 40                                        | G: spr_8/tie_hi_net0


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++ The lvs_report_max option plus removing redundant information reduced this section to 50 ++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+===[counter]=================================================================================================
|                                        MISMATCHED INSTANCE SUBTYPES                                         
+=============================================================================================================

#        | Layout Instance                              | Schematic Instance
---------+----------------------------------------------+-------------------------------------
1        | M4355 @(104.180,51.495) MP(g45p1svt)         | g418__5107/Mmp8 MP(G45P1LVT) 
2        | M4397 @(105.955,51.530) MP(g45p1svt)         | g418__5107/Mmp5 MP(G45P1LVT) 
3        | M4384 @(105.440,51.530) MP(g45p1svt)         | g418__5107/Mmp4 MP(G45P1LVT) 
4 .  .  .| M4368 @(104.945,51.530) MP(g45p1svt)  .  .  .| g418__5107/Mmp1 MP(G45P1LVT) 
5        | M4364 @(104.580,51.495) MP(g45p1svt)         | g418__5107/Mmp7 MP(G45P1LVT) 
6 .  .  .| M4373 @(105.160,51.530) MP(g45p1svt)  .  .  .| g418__5107/Mmp0 MP(G45P1LVT) 
7        | M4359 @(104.375,51.495) MP(g45p1svt)         | g418__5107/Mmp6 MP(G45P1LVT) 
8 .  .  .| M3639 @(104.180,52.285) MN(g45n1svt)  .  .  .| g418__5107/Mmn8 MN(G45N1LVT) 
9        | M3651 @(105.955,52.165) MN(g45n1svt)         | g418__5107/Mmn5 MN(G45N1LVT) 
10   .  .| X2905/M2 @(104.945,52.310) MN(g45n1svt)  .  .| g418__5107/Mmn1 MN(G45N1LVT) 
11       | X2905/M4 @(105.435,52.310) MN(g45n1svt)      | g418__5107/Mmn4 MN(G45N1LVT) 
12   .  .| X2905/M3 @(105.160,52.310) MN(g45n1svt)  .  .| g418__5107/Mmn0 MN(G45N1LVT) 
13       | M4371 @(104.980,54.915) MP(g45p1svt)         | g420__6260/Mmp8 MP(G45P1LVT) 
14   .  .| M4421 @(106.755,54.950) MP(g45p1svt)  .  .  .| g420__6260/Mmp5 MP(G45P1LVT) 
15       | M4404 @(106.240,54.950) MP(g45p1svt)         | g420__6260/Mmp4 MP(G45P1LVT) 
16   .  .| M4392 @(105.745,54.950) MP(g45p1svt)  .  .  .| g420__6260/Mmp1 MP(G45P1LVT) 
17       | M4382 @(105.380,54.915) MP(g45p1svt)         | g420__6260/Mmp7 MP(G45P1LVT) 
18   .  .| M4398 @(105.960,54.950) MP(g45p1svt)  .  .  .| g420__6260/Mmp0 MP(G45P1LVT) 
19       | M4374 @(105.175,54.915) MP(g45p1svt)         | g420__6260/Mmp6 MP(G45P1LVT) 
20   .  .| M3647 @(104.980,55.705) MN(g45n1svt)  .  .  .| g420__6260/Mmn8 MN(G45N1LVT) 
21       | M3658 @(106.755,55.585) MN(g45n1svt)         | g420__6260/Mmn5 MN(G45N1LVT) 
22   .  .| X2913/M2 @(105.745,55.730) MN(g45n1svt)  .  .| g420__6260/Mmn1 MN(G45N1LVT) 
23       | X2913/M4 @(106.235,55.730) MN(g45n1svt)      | g420__6260/Mmn4 MN(G45N1LVT) 
24   .  .| X2913/M3 @(105.960,55.730) MN(g45n1svt)  .  .| g420__6260/Mmn0 MN(G45N1LVT) 
25       | M4367 @(104.780,57.175) MP(g45p1svt)         | g422__4319/Mmp8 MP(G45P1LVT) 
26   .  .| M4413 @(106.555,57.140) MP(g45p1svt)  .  .  .| g422__4319/Mmp5 MP(G45P1LVT) 
27       | M4400 @(106.040,57.315) MP(g45p1svt)         | g422__4319/Mmp4 MP(G45P1LVT) 
28   .  .| M4385 @(105.545,57.315) MP(g45p1svt)  .  .  .| g422__4319/Mmp1 MP(G45P1LVT) 
29       | M4375 @(105.180,57.350) MP(g45p1svt)         | g422__4319/Mmp7 MP(G45P1LVT) 
30   .  .| M4394 @(105.760,57.315) MP(g45p1svt)  .  .  .| g422__4319/Mmp0 MP(G45P1LVT) 
31       | M4369 @(104.975,57.350) MP(g45p1svt)         | g422__4319/Mmp6 MP(G45P1LVT) 
32   .  .| M3646 @(104.780,56.515) MN(g45n1svt)  .  .  .| g422__4319/Mmn8 MN(G45N1LVT) 
33       | M3655 @(106.555,56.635) MN(g45n1svt)         | g422__4319/Mmn5 MN(G45N1LVT) 
34   .  .| X2917/M2 @(105.545,56.750) MN(g45n1svt)  .  .| g422__4319/Mmn1 MN(G45N1LVT) 
35       | X2917/M4 @(106.035,56.750) MN(g45n1svt)      | g422__4319/Mmn4 MN(G45N1LVT) 
36   .  .| X2917/M3 @(105.760,56.750) MN(g45n1svt)  .  .| g422__4319/Mmn0 MN(G45N1LVT) 
37       | M4376 @(105.180,58.335) MP(g45p1svt)         | g424__8428/Mmp8 MP(G45P1LVT) 
38   .  .| M4426 @(106.955,58.370) MP(g45p1svt)  .  .  .| g424__8428/Mmp5 MP(G45P1LVT) 
39       | M4408 @(106.440,58.370) MP(g45p1svt)         | g424__8428/Mmp4 MP(G45P1LVT) 
40   .  .| M4395 @(105.945,58.370) MP(g45p1svt)  .  .  .| g424__8428/Mmp1 MP(G45P1LVT) 
41       | M4387 @(105.580,58.335) MP(g45p1svt)         | g424__8428/Mmp7 MP(G45P1LVT) 
42   .  .| M4401 @(106.160,58.370) MP(g45p1svt)  .  .  .| g424__8428/Mmp0 MP(G45P1LVT) 
43       | M4380 @(105.375,58.335) MP(g45p1svt)         | g424__8428/Mmp6 MP(G45P1LVT) 
44   .  .| M3648 @(105.180,59.125) MN(g45n1svt)  .  .  .| g424__8428/Mmn8 MN(G45N1LVT) 
45       | M3661 @(106.955,59.005) MN(g45n1svt)         | g424__8428/Mmn5 MN(G45N1LVT) 
46   .  .| X2920/M2 @(105.945,59.150) MN(g45n1svt)  .  .| g424__8428/Mmn1 MN(G45N1LVT) 
47       | X2920/M4 @(106.435,59.150) MN(g45n1svt)      | g424__8428/Mmn4 MN(G45N1LVT) 
48   .  .| X2920/M3 @(106.160,59.150) MN(g45n1svt)  .  .| g424__8428/Mmn0 MN(G45N1LVT) 
49       | M4403 @(106.180,61.755) MP(g45p1svt)         | g426__5526/Mmp8 MP(G45P1LVT) 
50   .  .| M4442 @(107.955,61.790) MP(g45p1svt)  .  .  .| g426__5526/Mmp5 MP(G45P1LVT) 
51       | M4432 @(107.440,61.790) MP(g45p1svt)         | g426__5526/Mmp4 MP(G45P1LVT) 
52   .  .| M4425 @(106.945,61.790) MP(g45p1svt)  .  .  .| g426__5526/Mmp1 MP(G45P1LVT) 
53       | M4415 @(106.580,61.755) MP(g45p1svt)         | g426__5526/Mmp7 MP(G45P1LVT) 
54   .  .| M4428 @(107.160,61.790) MP(g45p1svt)  .  .  .| g426__5526/Mmp0 MP(G45P1LVT) 
55       | M4407 @(106.375,61.755) MP(g45p1svt)         | g426__5526/Mmp6 MP(G45P1LVT) 
56   .  .| M3653 @(106.180,62.545) MN(g45n1svt)  .  .  .| g426__5526/Mmn8 MN(G45N1LVT) 
57       | M3674 @(107.955,62.425) MN(g45n1svt)         | g426__5526/Mmn5 MN(G45N1LVT) 
58   .  .| X2925/M2 @(106.945,62.570) MN(g45n1svt)  .  .| g426__5526/Mmn1 MN(G45N1LVT) 
59       | X2925/M4 @(107.435,62.570) MN(g45n1svt)      | g426__5526/Mmn4 MN(G45N1LVT) 
60   .  .| X2925/M3 @(107.160,62.570) MN(g45n1svt)  .  .| g426__5526/Mmn0 MN(G45N1LVT) 
61       | M4377 @(105.180,64.015) MP(g45p1svt)         | g428__6783/Mmp8 MP(G45P1LVT) 
62   .  .| M4427 @(106.955,63.980) MP(g45p1svt)  .  .  .| g428__6783/Mmp5 MP(G45P1LVT) 
63       | M4409 @(106.440,64.155) MP(g45p1svt)         | g428__6783/Mmp4 MP(G45P1LVT) 
64   .  .| M4396 @(105.945,64.155) MP(g45p1svt)  .  .  .| g428__6783/Mmp1 MP(G45P1LVT) 
65       | M4388 @(105.580,64.190) MP(g45p1svt)         | g428__6783/Mmp7 MP(G45P1LVT) 
66   .  .| M4402 @(106.160,64.155) MP(g45p1svt)  .  .  .| g428__6783/Mmp0 MP(G45P1LVT) 
67       | M4381 @(105.375,64.190) MP(g45p1svt)         | g428__6783/Mmp6 MP(G45P1LVT) 
68   .  .| M3649 @(105.180,63.355) MN(g45n1svt)  .  .  .| g428__6783/Mmn8 MN(G45N1LVT) 
69       | M3662 @(106.955,63.475) MN(g45n1svt)         | g428__6783/Mmn5 MN(G45N1LVT) 
70   .  .| X2927/M2 @(105.945,63.590) MN(g45n1svt)  .  .| g428__6783/Mmn1 MN(G45N1LVT) 
71       | X2927/M4 @(106.435,63.590) MN(g45n1svt)      | g428__6783/Mmn4 MN(G45N1LVT) 
72   .  .| X2927/M3 @(106.160,63.590) MN(g45n1svt)  .  .| g428__6783/Mmn0 MN(G45N1LVT) 
73       | M4307 @(102.635,51.530) MP(g45p1svt)         | g416__2398/Mmp1 MP(G45P1LVT) 
74   .  .| M4284 @(102.030,51.530) MP(g45p1svt)  .  .  .| g416__2398/Mmp4 MP(G45P1LVT) 
75       | M4280 @(101.825,51.530) MP(g45p1svt)         | g416__2398/Mmp0 MP(G45P1LVT) 
76   .  .| M4273 @(101.580,51.530) MP(g45p1svt)  .  .  .| g416__2398/Mmp5 MP(G45P1LVT) 
77       | M3608 @(102.655,52.350) MN(g45n1svt)         | g416__2398/Mmn1 MN(G45N1LVT) 
78   .  .| M3586 @(101.825,52.350) MN(g45n1svt)  .  .  .| g416__2398/Mmn0 MN(G45N1LVT) 
79       | M3579 @(101.580,52.285) MN(g45n1svt)         | g416__2398/Mmn5 MN(G45N1LVT) 
80   .  .| M3591 @(102.140,52.350) MN(g45n1svt)  .  .  .| g416__2398/Mmn4 MN(G45N1LVT) 
81       | M4215 @(98.580,53.790) MP(g45p1svt)          | count_reg[7]/Mmp55 MP(G45P1LVT) 
82   .  .| M4223 @(98.815,53.965) MP(g45p1svt)   .  .  .| count_reg[7]/Mmp20 MP(G45P1LVT) 
83       | M4228 @(99.255,53.870) MP(g45p1svt)          | count_reg[7]/Mmp46 MP(G45P1LVT) 
84   .  .| M4231 @(99.485,53.870) MP(g45p1svt)   .  .  .| count_reg[7]/Mmp45 MP(G45P1LVT) 
85       | M4242 @(100.085,53.870) MP(g45p1svt)         | count_reg[7]/Mmp40 MP(G45P1LVT) 
86   .  .| M4246 @(100.340,53.870) MP(g45p1svt)  .  .  .| count_reg[7]/Mmp30 MP(G45P1LVT) 
87       | M4278 @(101.775,53.870) MP(g45p1svt)         | count_reg[7]/Mmp21 MP(G45P1LVT) 
88   .  .| M3535 @(98.580,53.100) MN(g45n1svt)   .  .  .| count_reg[7]/Mmn55 MN(G45N1LVT) 
89       | M3542 @(98.815,53.100) MN(g45n1svt)          | count_reg[7]/Mmn20 MN(G45N1LVT) 
90   .  .| M3583 @(101.775,53.095) MN(g45n1svt)  .  .  .| count_reg[7]/Mmn21 MN(G45N1LVT) 
91       | M3558 @(100.075,53.125) MN(g45n1svt)         | count_reg[7]/Mmn40 MN(G45N1LVT) 
92   .  .| M3561 @(100.340,53.125) MN(g45n1svt)  .  .  .| count_reg[7]/Mmn30 MN(G45N1LVT) 
93       | M4312 @(102.780,53.790) MP(g45p1svt)         | count_reg[6]/Mmp55 MP(G45P1LVT) 
94   .  .| M4319 @(103.015,53.965) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp20 MP(G45P1LVT) 
95       | M4332 @(103.455,53.870) MP(g45p1svt)         | count_reg[6]/Mmp46 MP(G45P1LVT) 
96   .  .| M4339 @(103.685,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp45 MP(G45P1LVT) 
97       | M4357 @(104.285,53.870) MP(g45p1svt)         | count_reg[6]/Mmp40 MP(G45P1LVT) 
98   .  .| M4362 @(104.540,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp30 MP(G45P1LVT) 
99       | M4399 @(105.975,53.870) MP(g45p1svt)         | count_reg[6]/Mmp21 MP(G45P1LVT) 
100  .  .| M3612 @(102.780,53.100) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn55 MN(G45N1LVT) 
101      | M3617 @(103.015,53.100) MN(g45n1svt)         | count_reg[6]/Mmn20 MN(G45N1LVT) 
102  .  .| M3652 @(105.975,53.095) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn21 MN(G45N1LVT) 
103      | M3640 @(104.275,53.125) MN(g45n1svt)         | count_reg[6]/Mmn40 MN(G45N1LVT) 
104  .  .| M3643 @(104.540,53.125) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn30 MN(G45N1LVT) 
105      | M4260 @(101.180,54.880) MP(g45p1svt)         | count_reg[5]/Mmp55 MP(G45P1LVT) 
106  .  .| M4267 @(101.415,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp20 MP(G45P1LVT) 
107      | M4281 @(101.855,54.880) MP(g45p1svt)         | count_reg[5]/Mmp46 MP(G45P1LVT) 
108  .  .| M4288 @(102.085,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp45 MP(G45P1LVT) 
109      | M4309 @(102.685,54.880) MP(g45p1svt)         | count_reg[5]/Mmp40 MP(G45P1LVT) 
110  .  .| M4317 @(102.940,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp30 MP(G45P1LVT) 
111      | M4360 @(104.375,54.975) MP(g45p1svt)         | count_reg[5]/Mmp21 MP(G45P1LVT) 
112  .  .| M3572 @(101.180,55.700) MN(g45n1svt)  .  .  .| count_reg[5]/Mmn55 MN(G45N1LVT) 
113      | M3575 @(101.415,55.815) MN(g45n1svt)         | count_reg[5]/Mmn20 MN(G45N1LVT) 
114  .  .| M3641 @(104.375,55.820) MN(g45n1svt)  .  .  .| count_reg[5]/Mmn21 MN(G45N1LVT) 
115      | M3609 @(102.675,55.730) MN(g45n1svt)         | count_reg[5]/Mmn40 MN(G45N1LVT) 
116  .  .| M3616 @(102.940,55.730) MN(g45n1svt)  .  .  .| count_reg[5]/Mmn30 MN(G45N1LVT) 
117      | M4253 @(100.780,57.210) MP(g45p1svt)         | count_reg[4]/Mmp55 MP(G45P1LVT) 
118  .  .| M4257 @(101.015,57.385) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp20 MP(G45P1LVT) 
119      | M4269 @(101.455,57.290) MP(g45p1svt)         | count_reg[4]/Mmp46 MP(G45P1LVT) 
120  .  .| M4276 @(101.685,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp45 MP(G45P1LVT) 
121      | M4291 @(102.285,57.290) MP(g45p1svt)         | count_reg[4]/Mmp40 MP(G45P1LVT) 
122  .  .| M4302 @(102.540,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp30 MP(G45P1LVT) 
123      | M4347 @(103.975,57.290) MP(g45p1svt)         | count_reg[4]/Mmp21 MP(G45P1LVT) 
124  .  .| M3566 @(100.780,56.520) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn55 MN(G45N1LVT) 
125      | M3569 @(101.015,56.520) MN(g45n1svt)         | count_reg[4]/Mmn20 MN(G45N1LVT) 
126  .  .| M3634 @(103.975,56.515) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn21 MN(G45N1LVT) 
127      | M3594 @(102.275,56.545) MN(g45n1svt)         | count_reg[4]/Mmn40 MN(G45N1LVT) 
128  .  .| M3603 @(102.540,56.545) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn30 MN(G45N1LVT) 
129      | M4265 @(101.380,58.300) MP(g45p1svt)         | count_reg[3]/Mmp55 MP(G45P1LVT) 
130  .  .| M4274 @(101.615,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp20 MP(G45P1LVT) 
131      | M4286 @(102.055,58.300) MP(g45p1svt)         | count_reg[3]/Mmp46 MP(G45P1LVT) 
132  .  .| M4292 @(102.285,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp45 MP(G45P1LVT) 
133      | M4315 @(102.885,58.300) MP(g45p1svt)         | count_reg[3]/Mmp40 MP(G45P1LVT) 
134  .  .| M4321 @(103.140,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp30 MP(G45P1LVT) 
135      | M4363 @(104.575,58.395) MP(g45p1svt)         | count_reg[3]/Mmp21 MP(G45P1LVT) 
136  .  .| M3574 @(101.380,59.120) MN(g45n1svt)  .  .  .| count_reg[3]/Mmn55 MN(G45N1LVT) 
137      | M3581 @(101.615,59.235) MN(g45n1svt)         | count_reg[3]/Mmn20 MN(G45N1LVT) 
138  .  .| M3644 @(104.575,59.240) MN(g45n1svt)  .  .  .| count_reg[3]/Mmn21 MN(G45N1LVT) 
139      | M3615 @(102.875,59.150) MN(g45n1svt)         | count_reg[3]/Mmn40 MN(G45N1LVT) 
140  .  .| M3619 @(103.140,59.150) MN(g45n1svt)  .  .  .| count_reg[3]/Mmn30 MN(G45N1LVT) 
141      | M4213 @(98.380,61.720) MP(g45p1svt)          | count_reg[2]/Mmp55 MP(G45P1LVT) 
142  .  .| M4219 @(98.615,61.720) MP(g45p1svt)   .  .  .| count_reg[2]/Mmp20 MP(G45P1LVT) 
143      | M4227 @(99.055,61.720) MP(g45p1svt)          | count_reg[2]/Mmp46 MP(G45P1LVT) 
144  .  .| M4229 @(99.285,61.720) MP(g45p1svt)   .  .  .| count_reg[2]/Mmp45 MP(G45P1LVT) 
145      | M4239 @(99.885,61.720) MP(g45p1svt)          | count_reg[2]/Mmp40 MP(G45P1LVT) 
146  .  .| M4244 @(100.140,61.720) MP(g45p1svt)  .  .  .| count_reg[2]/Mmp30 MP(G45P1LVT) 
147      | M4272 @(101.575,61.815) MP(g45p1svt)         | count_reg[2]/Mmp21 MP(G45P1LVT) 
148  .  .| M3532 @(98.380,62.540) MN(g45n1svt)   .  .  .| count_reg[2]/Mmn55 MN(G45N1LVT) 
149      | M3538 @(98.615,62.655) MN(g45n1svt)          | count_reg[2]/Mmn20 MN(G45N1LVT) 
150  .  .| M3578 @(101.575,62.660) MN(g45n1svt)  .  .  .| count_reg[2]/Mmn21 MN(G45N1LVT) 
151      | M3554 @(99.875,62.570) MN(g45n1svt)          | count_reg[2]/Mmn40 MN(G45N1LVT) 
152  .  .| M3559 @(100.140,62.570) MN(g45n1svt)  .  .  .| count_reg[2]/Mmn30 MN(G45N1LVT) 
153      | M4296 @(102.380,61.720) MP(g45p1svt)         | count_reg[1]/Mmp55 MP(G45P1LVT) 
154  .  .| M4304 @(102.615,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp20 MP(G45P1LVT) 
155      | M4320 @(103.055,61.720) MP(g45p1svt)         | count_reg[1]/Mmp46 MP(G45P1LVT) 
156  .  .| M4325 @(103.285,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp45 MP(G45P1LVT) 
157      | M4344 @(103.885,61.720) MP(g45p1svt)         | count_reg[1]/Mmp40 MP(G45P1LVT) 
158  .  .| M4353 @(104.140,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp30 MP(G45P1LVT) 
159      | M4386 @(105.575,61.815) MP(g45p1svt)         | count_reg[1]/Mmp21 MP(G45P1LVT) 
160  .  .| M3598 @(102.380,62.540) MN(g45n1svt)  .  .  .| count_reg[1]/Mmn55 MN(G45N1LVT) 
161      | M3606 @(102.615,62.655) MN(g45n1svt)         | count_reg[1]/Mmn20 MN(G45N1LVT) 
162  .  .| M3650 @(105.575,62.660) MN(g45n1svt)  .  .  .| count_reg[1]/Mmn21 MN(G45N1LVT) 
163      | M3632 @(103.875,62.570) MN(g45n1svt)         | count_reg[1]/Mmn40 MN(G45N1LVT) 
164  .  .| M3637 @(104.140,62.570) MN(g45n1svt)  .  .  .| count_reg[1]/Mmn30 MN(G45N1LVT) 
165      | M4230 @(99.380,60.560) MP(g45p1svt)          | count_reg[0]/Mmp57 MP(G45P1LVT) 
166  .  .| M4240 @(99.940,60.725) MP(g45p1svt)   .  .  .| count_reg[0]/Mmp55 MP(G45P1LVT) 
167      | M4243 @(100.135,60.725) MP(g45p1svt)         | count_reg[0]/Mmp20 MP(G45P1LVT) 
168  .  .| M4314 @(102.840,60.735) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp21 MP(G45P1LVT) 
169      | M4270 @(101.535,60.595) MP(g45p1svt)         | count_reg[0]/Mmp30 MP(G45P1LVT) 
170  .  .| M4248 @(100.555,60.595) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp46 MP(G45P1LVT) 
171      | M4263 @(101.285,60.595) MP(g45p1svt)         | count_reg[0]/Mmp40 MP(G45P1LVT) 
172  .  .| M4251 @(100.760,60.595) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp45 MP(G45P1LVT) 
173      | M4233 @(99.575,60.560) MP(g45p1svt)          | count_reg[0]/Mmp56 MP(G45P1LVT) 
174  .  .| M3548 @(99.380,60.060) MN(g45n1svt)   .  .  .| count_reg[0]/Mmn57 MN(G45N1LVT) 
175      | M3556 @(99.980,59.985) MN(g45n1svt)          | count_reg[0]/Mmn55 MN(G45N1LVT) 
176  .  .| M3610 @(102.725,60.095) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn21 MN(G45N1LVT) 
177      | M3573 @(101.285,60.015) MN(g45n1svt)         | count_reg[0]/Mmn40 MN(G45N1LVT) 
178  .  .| M3577 @(101.535,60.015) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn30 MN(G45N1LVT) 
179      | M3549 @(99.575,60.175) MN(g45n1svt)          | count_reg[0]/Mmn56 MN(G45N1LVT) 
180  .  .| M3560 @(100.185,60.100) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn20 MN(G45N1LVT) 
181      | M4393 @(105.750,51.530) MP(g45p1svt)         | g418__5107/Mmp2 MP(G45P1LVT) 
182  .  .| M4390 @(105.645,51.530) MP(g45p1svt)  .  .  .| g418__5107/Mmp3 MP(G45P1LVT) 
183      | X2905/M0 @(104.385,52.430) MN(g45n1svt)      | g418__5107/Mmn6 MN(G45N1LVT) 
184  .  .| X2905/M1 @(104.520,52.430) MN(g45n1svt)  .  .| g418__5107/Mmn7 MN(G45N1LVT) 
185      | X2905/M6 @(105.750,52.310) MN(g45n1svt)      | g418__5107/Mmn2 MN(G45N1LVT) 
186  .  .| X2905/M5 @(105.645,52.310) MN(g45n1svt)  .  .| g418__5107/Mmn3 MN(G45N1LVT) 
187      | M4412 @(106.550,54.950) MP(g45p1svt)         | g420__6260/Mmp2 MP(G45P1LVT) 
188  .  .| M4410 @(106.445,54.950) MP(g45p1svt)  .  .  .| g420__6260/Mmp3 MP(G45P1LVT) 
189      | X2913/M0 @(105.185,55.850) MN(g45n1svt)      | g420__6260/Mmn6 MN(G45N1LVT) 
190  .  .| X2913/M1 @(105.320,55.850) MN(g45n1svt)  .  .| g420__6260/Mmn7 MN(G45N1LVT) 
191      | X2913/M6 @(106.550,55.730) MN(g45n1svt)      | g420__6260/Mmn2 MN(G45N1LVT) 
192  .  .| X2913/M5 @(106.445,55.730) MN(g45n1svt)  .  .| g420__6260/Mmn3 MN(G45N1LVT) 
193      | M4406 @(106.350,57.315) MP(g45p1svt)         | g422__4319/Mmp2 MP(G45P1LVT) 
194  .  .| M4405 @(106.245,57.315) MP(g45p1svt)  .  .  .| g422__4319/Mmp3 MP(G45P1LVT) 
195      | X2917/M0 @(104.985,56.630) MN(g45n1svt)      | g422__4319/Mmn6 MN(G45N1LVT) 
196  .  .| X2917/M1 @(105.120,56.630) MN(g45n1svt)  .  .| g422__4319/Mmn7 MN(G45N1LVT) 
197      | X2917/M6 @(106.350,56.750) MN(g45n1svt)      | g422__4319/Mmn2 MN(G45N1LVT) 
198  .  .| X2917/M5 @(106.245,56.750) MN(g45n1svt)  .  .| g422__4319/Mmn3 MN(G45N1LVT) 
199      | M4419 @(106.750,58.370) MP(g45p1svt)         | g424__8428/Mmp2 MP(G45P1LVT) 
200  .  .| M4417 @(106.645,58.370) MP(g45p1svt)  .  .  .| g424__8428/Mmp3 MP(G45P1LVT) 
201      | X2920/M0 @(105.385,59.270) MN(g45n1svt)      | g424__8428/Mmn6 MN(G45N1LVT) 
202  .  .| X2920/M1 @(105.520,59.270) MN(g45n1svt)  .  .| g424__8428/Mmn7 MN(G45N1LVT) 
203      | X2920/M6 @(106.750,59.150) MN(g45n1svt)      | g424__8428/Mmn2 MN(G45N1LVT) 
204  .  .| X2920/M5 @(106.645,59.150) MN(g45n1svt)  .  .| g424__8428/Mmn3 MN(G45N1LVT) 
205      | M4437 @(107.750,61.790) MP(g45p1svt)         | g426__5526/Mmp2 MP(G45P1LVT) 
206  .  .| M4436 @(107.645,61.790) MP(g45p1svt)  .  .  .| g426__5526/Mmp3 MP(G45P1LVT) 
207      | X2925/M0 @(106.385,62.690) MN(g45n1svt)      | g426__5526/Mmn6 MN(G45N1LVT) 
208  .  .| X2925/M1 @(106.520,62.690) MN(g45n1svt)  .  .| g426__5526/Mmn7 MN(G45N1LVT) 
209      | X2925/M6 @(107.750,62.570) MN(g45n1svt)      | g426__5526/Mmn2 MN(G45N1LVT) 
210  .  .| X2925/M5 @(107.645,62.570) MN(g45n1svt)  .  .| g426__5526/Mmn3 MN(G45N1LVT) 
211      | M4420 @(106.750,64.155) MP(g45p1svt)         | g428__6783/Mmp2 MP(G45P1LVT) 
212  .  .| M4418 @(106.645,64.155) MP(g45p1svt)  .  .  .| g428__6783/Mmp3 MP(G45P1LVT) 
213      | X2927/M0 @(105.385,63.470) MN(g45n1svt)      | g428__6783/Mmn6 MN(G45N1LVT) 
214  .  .| X2927/M1 @(105.520,63.470) MN(g45n1svt)  .  .| g428__6783/Mmn7 MN(G45N1LVT) 
215      | X2927/M6 @(106.750,63.590) MN(g45n1svt)      | g428__6783/Mmn2 MN(G45N1LVT) 
216  .  .| X2927/M5 @(106.645,63.590) MN(g45n1svt)  .  .| g428__6783/Mmn3 MN(G45N1LVT) 
217      | M4298 @(102.430,51.530) MP(g45p1svt)         | g416__2398/Mmp2 MP(G45P1LVT) 
218  .  .| M4290 @(102.250,51.530) MP(g45p1svt)  .  .  .| g416__2398/Mmp3 MP(G45P1LVT) 
219      | M3601 @(102.450,52.350) MN(g45n1svt)         | g416__2398/Mmn2 MN(G45N1LVT) 
220  .  .| M3596 @(102.345,52.350) MN(g45n1svt)  .  .  .| g416__2398/Mmn3 MN(G45N1LVT) 
221      | M4271 @(101.540,53.870) MP(g45p1svt)         | count_reg[7]/Mmp25 MP(G45P1LVT) 
222  .  .| M4268 @(101.435,53.870) MP(g45p1svt)  .  .  .| count_reg[7]/Mmp26 MP(G45P1LVT) 
223      | M4236 @(99.725,53.870) MP(g45p1svt)          | count_reg[7]/Mmp50 MP(G45P1LVT) 
224  .  .| M4238 @(99.835,53.870) MP(g45p1svt)   .  .  .| count_reg[7]/Mmp51 MP(G45P1LVT) 
225      | M3563 @(100.575,53.125) MN(g45n1svt)         | count_reg[7]/Mmn35 MN(G45N1LVT) 
226  .  .| X2907/M2 @(100.780,53.125) MN(g45n1svt)  .  .| count_reg[7]/Mmn36 MN(G45N1LVT) 
227      | X2907/M3 @(100.885,53.125) MN(g45n1svt)      | count_reg[7]/Mmn37 MN(G45N1LVT) 
228  .  .| X2907/M5 @(101.245,53.125) MN(g45n1svt)  .  .| count_reg[7]/Mmn25 MN(G45N1LVT) 
229      | X2907/M4 @(101.140,53.125) MN(g45n1svt)      | count_reg[7]/Mmn26 MN(G45N1LVT) 
230  .  .| X2907/M0 @(99.485,53.125) MN(g45n1svt)   .  .| count_reg[7]/Mmn45 MN(G45N1LVT) 
231      | M3547 @(99.380,53.125) MN(g45n1svt)          | count_reg[7]/Mmn46 MN(G45N1LVT) 
232  .  .| X2907/M1 @(99.695,53.125) MN(g45n1svt)   .  .| count_reg[7]/Mmn50 MN(G45N1LVT) 
233      | M3553 @(99.800,53.125) MN(g45n1svt)          | count_reg[7]/Mmn51 MN(G45N1LVT) 
234  .  .| M4391 @(105.740,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp25 MP(G45P1LVT) 
235      | M4389 @(105.635,53.870) MP(g45p1svt)         | count_reg[6]/Mmp26 MP(G45P1LVT) 
236  .  .| M4345 @(103.925,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp50 MP(G45P1LVT) 
237      | M4350 @(104.035,53.870) MP(g45p1svt)         | count_reg[6]/Mmp51 MP(G45P1LVT) 
238  .  .| M3645 @(104.775,53.125) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn35 MN(G45N1LVT) 
239      | X2908/M2 @(104.980,53.125) MN(g45n1svt)      | count_reg[6]/Mmn36 MN(G45N1LVT) 
240  .  .| X2908/M3 @(105.085,53.125) MN(g45n1svt)  .  .| count_reg[6]/Mmn37 MN(G45N1LVT) 
241      | X2908/M5 @(105.445,53.125) MN(g45n1svt)      | count_reg[6]/Mmn25 MN(G45N1LVT) 
242  .  .| X2908/M4 @(105.340,53.125) MN(g45n1svt)  .  .| count_reg[6]/Mmn26 MN(G45N1LVT) 
243      | X2908/M0 @(103.685,53.125) MN(g45n1svt)      | count_reg[6]/Mmn45 MN(G45N1LVT) 
244  .  .| M3626 @(103.580,53.125) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn46 MN(G45N1LVT) 
245      | X2908/M1 @(103.895,53.125) MN(g45n1svt)      | count_reg[6]/Mmn50 MN(G45N1LVT) 
246  .  .| M3636 @(104.000,53.125) MN(g45n1svt)  .  .  .| count_reg[6]/Mmn51 MN(G45N1LVT) 
247      | M4352 @(104.140,54.880) MP(g45p1svt)         | count_reg[5]/Mmp25 MP(G45P1LVT) 
248  .  .| M4351 @(104.035,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp26 MP(G45P1LVT) 
249      | M4294 @(102.325,54.880) MP(g45p1svt)         | count_reg[5]/Mmp50 MP(G45P1LVT) 
250  .  .| M4299 @(102.435,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp51 MP(G45P1LVT) 
251      | M3620 @(103.175,55.730) MN(g45n1svt)         | count_reg[5]/Mmn35 MN(G45N1LVT) 
252  .  .| X2912/M2 @(103.380,55.935) MN(g45n1svt)  .  .| count_reg[5]/Mmn36 MN(G45N1LVT) 
253      | X2912/M3 @(103.485,55.935) MN(g45n1svt)      | count_reg[5]/Mmn37 MN(G45N1LVT) 
254  .  .| X2912/M5 @(103.845,55.935) MN(g45n1svt)  .  .| count_reg[5]/Mmn25 MN(G45N1LVT) 
255      | X2912/M4 @(103.740,55.935) MN(g45n1svt)      | count_reg[5]/Mmn26 MN(G45N1LVT) 
256  .  .| X2912/M0 @(102.085,55.935) MN(g45n1svt)  .  .| count_reg[5]/Mmn45 MN(G45N1LVT) 
257      | M3588 @(101.980,55.730) MN(g45n1svt)         | count_reg[5]/Mmn46 MN(G45N1LVT) 
258  .  .| X2912/M1 @(102.295,55.935) MN(g45n1svt)  .  .| count_reg[5]/Mmn50 MN(G45N1LVT) 
259      | M3600 @(102.400,55.730) MN(g45n1svt)         | count_reg[5]/Mmn51 MN(G45N1LVT) 
260  .  .| M4340 @(103.740,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp25 MP(G45P1LVT) 
261      | M4337 @(103.635,57.290) MP(g45p1svt)         | count_reg[4]/Mmp26 MP(G45P1LVT) 
262  .  .| M4282 @(101.925,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp50 MP(G45P1LVT) 
263      | M4285 @(102.035,57.290) MP(g45p1svt)         | count_reg[4]/Mmp51 MP(G45P1LVT) 
264  .  .| M3611 @(102.775,56.545) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn35 MN(G45N1LVT) 
265      | X2915/M2 @(102.980,56.545) MN(g45n1svt)      | count_reg[4]/Mmn36 MN(G45N1LVT) 
266  .  .| X2915/M3 @(103.085,56.545) MN(g45n1svt)  .  .| count_reg[4]/Mmn37 MN(G45N1LVT) 
267      | X2915/M5 @(103.445,56.545) MN(g45n1svt)      | count_reg[4]/Mmn25 MN(G45N1LVT) 
268  .  .| X2915/M4 @(103.340,56.545) MN(g45n1svt)  .  .| count_reg[4]/Mmn26 MN(G45N1LVT) 
269      | X2915/M0 @(101.685,56.545) MN(g45n1svt)      | count_reg[4]/Mmn45 MN(G45N1LVT) 
270  .  .| M3580 @(101.580,56.545) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn46 MN(G45N1LVT) 
271      | X2915/M1 @(101.895,56.545) MN(g45n1svt)      | count_reg[4]/Mmn50 MN(G45N1LVT) 
272  .  .| M3589 @(102.000,56.545) MN(g45n1svt)  .  .  .| count_reg[4]/Mmn51 MN(G45N1LVT) 
273      | M4358 @(104.340,58.300) MP(g45p1svt)         | count_reg[3]/Mmp25 MP(G45P1LVT) 
274  .  .| M4356 @(104.235,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp26 MP(G45P1LVT) 
275      | M4300 @(102.525,58.300) MP(g45p1svt)         | count_reg[3]/Mmp50 MP(G45P1LVT) 
276  .  .| M4308 @(102.635,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp51 MP(G45P1LVT) 
277      | M3623 @(103.375,59.150) MN(g45n1svt)         | count_reg[3]/Mmn35 MN(G45N1LVT) 
278  .  .| X2919/M2 @(103.580,59.355) MN(g45n1svt)  .  .| count_reg[3]/Mmn36 MN(G45N1LVT) 
279      | X2919/M3 @(103.685,59.355) MN(g45n1svt)      | count_reg[3]/Mmn37 MN(G45N1LVT) 
280  .  .| X2919/M5 @(104.045,59.355) MN(g45n1svt)  .  .| count_reg[3]/Mmn25 MN(G45N1LVT) 
281      | X2919/M4 @(103.940,59.355) MN(g45n1svt)      | count_reg[3]/Mmn26 MN(G45N1LVT) 
282  .  .| X2919/M0 @(102.285,59.355) MN(g45n1svt)  .  .| count_reg[3]/Mmn45 MN(G45N1LVT) 
283      | M3593 @(102.180,59.150) MN(g45n1svt)         | count_reg[3]/Mmn46 MN(G45N1LVT) 
284  .  .| X2919/M1 @(102.495,59.355) MN(g45n1svt)  .  .| count_reg[3]/Mmn50 MN(G45N1LVT) 
285      | M3605 @(102.600,59.150) MN(g45n1svt)         | count_reg[3]/Mmn51 MN(G45N1LVT) 
286  .  .| M4264 @(101.340,61.720) MP(g45p1svt)  .  .  .| count_reg[2]/Mmp25 MP(G45P1LVT) 
287      | M4262 @(101.235,61.720) MP(g45p1svt)         | count_reg[2]/Mmp26 MP(G45P1LVT) 
288  .  .| M4232 @(99.525,61.720) MP(g45p1svt)   .  .  .| count_reg[2]/Mmp50 MP(G45P1LVT) 
289      | M4235 @(99.635,61.720) MP(g45p1svt)          | count_reg[2]/Mmp51 MP(G45P1LVT) 
290  .  .| M3562 @(100.375,62.570) MN(g45n1svt)  .  .  .| count_reg[2]/Mmn35 MN(G45N1LVT) 
291      | X2747/M2 @(100.580,62.775) MN(g45n1svt)      | count_reg[2]/Mmn36 MN(G45N1LVT) 
292  .  .| X2747/M3 @(100.685,62.775) MN(g45n1svt)  .  .| count_reg[2]/Mmn37 MN(G45N1LVT) 
293      | X2747/M5 @(101.045,62.775) MN(g45n1svt)      | count_reg[2]/Mmn25 MN(G45N1LVT) 
294  .  .| X2747/M4 @(100.940,62.775) MN(g45n1svt)  .  .| count_reg[2]/Mmn26 MN(G45N1LVT) 
295      | X2747/M0 @(99.285,62.775) MN(g45n1svt)       | count_reg[2]/Mmn45 MN(G45N1LVT) 
296  .  .| M3546 @(99.180,62.570) MN(g45n1svt)   .  .  .| count_reg[2]/Mmn46 MN(G45N1LVT) 
297      | X2747/M1 @(99.495,62.775) MN(g45n1svt)       | count_reg[2]/Mmn50 MN(G45N1LVT) 
298  .  .| M3550 @(99.600,62.570) MN(g45n1svt)   .  .  .| count_reg[2]/Mmn51 MN(G45N1LVT) 
299      | M4379 @(105.340,61.720) MP(g45p1svt)         | count_reg[1]/Mmp25 MP(G45P1LVT) 
300  .  .| M4378 @(105.235,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp26 MP(G45P1LVT) 
301      | M4333 @(103.525,61.720) MP(g45p1svt)         | count_reg[1]/Mmp50 MP(G45P1LVT) 
302  .  .| M4338 @(103.635,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp51 MP(G45P1LVT) 
303      | M3642 @(104.375,62.570) MN(g45n1svt)         | count_reg[1]/Mmn35 MN(G45N1LVT) 
304  .  .| X2924/M2 @(104.580,62.775) MN(g45n1svt)  .  .| count_reg[1]/Mmn36 MN(G45N1LVT) 
305      | X2924/M3 @(104.685,62.775) MN(g45n1svt)      | count_reg[1]/Mmn37 MN(G45N1LVT) 
306  .  .| X2924/M5 @(105.045,62.775) MN(g45n1svt)  .  .| count_reg[1]/Mmn25 MN(G45N1LVT) 
307      | X2924/M4 @(104.940,62.775) MN(g45n1svt)      | count_reg[1]/Mmn26 MN(G45N1LVT) 
308  .  .| X2924/M0 @(103.285,62.775) MN(g45n1svt)  .  .| count_reg[1]/Mmn45 MN(G45N1LVT) 
309      | M3621 @(103.180,62.570) MN(g45n1svt)         | count_reg[1]/Mmn46 MN(G45N1LVT) 
310  .  .| X2924/M1 @(103.495,62.775) MN(g45n1svt)  .  .| count_reg[1]/Mmn50 MN(G45N1LVT) 
311      | M3629 @(103.600,62.570) MN(g45n1svt)         | count_reg[1]/Mmn51 MN(G45N1LVT) 
312  .  .| M4306 @(102.630,60.735) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp25 MP(G45P1LVT) 
313      | M4301 @(102.525,60.735) MP(g45p1svt)         | count_reg[0]/Mmp26 MP(G45P1LVT) 
314  .  .| M4255 @(100.955,60.595) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp50 MP(G45P1LVT) 
315      | M4259 @(101.080,60.595) MP(g45p1svt)         | count_reg[0]/Mmp51 MP(G45P1LVT) 
316  .  .| M3584 @(101.805,60.095) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn35 MN(G45N1LVT) 
317      | M3587 @(101.935,60.095) MN(g45n1svt)         | count_reg[0]/Mmn36 MN(G45N1LVT) 
318  .  .| M3590 @(102.115,60.095) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn37 MN(G45N1LVT) 
319      | M3602 @(102.450,60.095) MN(g45n1svt)         | count_reg[0]/Mmn25 MN(G45N1LVT) 
320  .  .| M3595 @(102.320,60.095) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn26 MN(G45N1LVT) 
321      | M3565 @(100.760,60.015) MN(g45n1svt)         | count_reg[0]/Mmn45 MN(G45N1LVT) 
322  .  .| M3564 @(100.655,60.015) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn46 MN(G45N1LVT) 
323      | M3568 @(100.965,60.015) MN(g45n1svt)         | count_reg[0]/Mmn50 MN(G45N1LVT) 
324  .  .| M3571 @(101.080,60.015) MN(g45n1svt)  .  .  .| count_reg[0]/Mmn51 MN(G45N1LVT) 
325      | M4249 @(100.575,53.870) MP(g45p1svt)         | count_reg[7]/Mmp35 MP(G45P1LVT) 
326  .  .| M4252 @(100.780,53.870) MP(g45p1svt)  .  .  .| count_reg[7]/Mmp36 MP(G45P1LVT) 
327      | M4366 @(104.775,53.870) MP(g45p1svt)         | count_reg[6]/Mmp35 MP(G45P1LVT) 
328  .  .| M4370 @(104.980,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp36 MP(G45P1LVT) 
329      | M4323 @(103.175,54.880) MP(g45p1svt)         | count_reg[5]/Mmp35 MP(G45P1LVT) 
330  .  .| M4328 @(103.380,54.880) MP(g45p1svt)  .  .  .| count_reg[5]/Mmp36 MP(G45P1LVT) 
331      | M4311 @(102.775,57.290) MP(g45p1svt)         | count_reg[4]/Mmp35 MP(G45P1LVT) 
332  .  .| M4318 @(102.980,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp36 MP(G45P1LVT) 
333      | M4326 @(103.375,58.300) MP(g45p1svt)         | count_reg[3]/Mmp35 MP(G45P1LVT) 
334  .  .| M4334 @(103.580,58.300) MP(g45p1svt)  .  .  .| count_reg[3]/Mmp36 MP(G45P1LVT) 
335      | M4247 @(100.375,61.720) MP(g45p1svt)         | count_reg[2]/Mmp35 MP(G45P1LVT) 
336  .  .| M4250 @(100.580,61.720) MP(g45p1svt)  .  .  .| count_reg[2]/Mmp36 MP(G45P1LVT) 
337      | M4361 @(104.375,61.720) MP(g45p1svt)         | count_reg[1]/Mmp35 MP(G45P1LVT) 
338  .  .| M4365 @(104.580,61.720) MP(g45p1svt)  .  .  .| count_reg[1]/Mmp36 MP(G45P1LVT) 
339      | M4283 @(101.935,60.595) MP(g45p1svt)         | count_reg[0]/Mmp36 MP(G45P1LVT) 
340  .  .| M4277 @(101.730,60.595) MP(g45p1svt)  .  .  .| count_reg[0]/Mmp35 MP(G45P1LVT) 
341      | M4261 @(101.230,53.870) MP(g45p1svt)         | count_reg[7]/Mmp37 MP(G45P1LVT) 
342  .  .| M4383 @(105.430,53.870) MP(g45p1svt)  .  .  .| count_reg[6]/Mmp37 MP(G45P1LVT) 
343      | M4343 @(103.830,54.880) MP(g45p1svt)         | count_reg[5]/Mmp37 MP(G45P1LVT) 
344  .  .| M4331 @(103.430,57.290) MP(g45p1svt)  .  .  .| count_reg[4]/Mmp37 MP(G45P1LVT) 
345      | M4349 @(104.030,58.300) MP(g45p1svt)         | count_reg[3]/Mmp37 MP(G45P1LVT) 
346  .  .| M4258 @(101.030,61.720) MP(g45p1svt)  .  .  .| count_reg[2]/Mmp37 MP(G45P1LVT) 
347      | M4372 @(105.030,61.720) MP(g45p1svt)         | count_reg[1]/Mmp37 MP(G45P1LVT) 
348      | M4293 @(102.320,60.735) MP(g45p1svt)         | count_reg[0]/Mmp37 MP(G45P1LVT) 


+===[counter]=================================================================================================
|                                       MISMATCHED INSTANCE PARAMETERS                                        
+=============================================================================================================


                 Merged Instance Detail                  
=========+=====================+=========================
         |                     | 
Side     | Master Instance     | Instances
---------+---------------------+-----------------(midl 1)
Lay      | <M3810>             | M3810
         |                     +-------------------------
         |                     | M3817
         |                     +-------------------------
         |                     | M3814
         |                     +-------------------------
         |                     | M3812
---------+---------------------+-----------------(midl 2)
Lay      | <M3059>             | M3059
         |                     +-------------------------
         |                     | M3060
         |                     +-------------------------
         |                     | M3061
         |                     +-------------------------
         |                     | M3062
---------+---------------------+-----------------(midl 3)
Lay      | <M3819>             | M3819
         |                     +-------------------------
         |                     | M3818
---------+---------------------+-----------------(midl 4)
Lay      | <M3171>             | M3171
         |                     +-------------------------
         |                     | M3172


Layout Instance                           | Schematic Instance                     |     Parameter Error     
------------------------------------------+----------------------------------------+------------------(mip 1)
<M3810> @(31.780,27.540) MP(g45p1svt)     | spr_1/spr_gate10/Mmp0 MP(G45P1SVT)     |                         
w: 1.56 u                                 | w: 0.78 u                              | 100%                    
------------------------------------------+----------------------------------------+------------------(mip 2)
<M3059> @(13.980,21.385) MN(g45n1svt)     | spr_1/spr_gate10/Mmn0 MN(G45N1SVT)     |                         
w: 1.04 u                                 | w: 0.52 u                              | 100%                    
------------------------------------------+----------------------------------------+------------------(mip 3)
<M3819> @(34.775,10.490) MP(g45p1svt)     | spr_1/spr_gate7/Mmp0 MP(G45P1SVT)      |                         
w: 0.78 u                                 | w: 1.56 u                              | 50%                     
------------------------------------------+----------------------------------------+------------------(mip 4)
<M3171> @(34.570,11.140) MN(g45n1svt)     | spr_1/spr_gate7/Mmn0 MN(G45N1SVT)      |                         
w: 0.52 u                                 | w: 1.04 u                              | 50%                     


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

