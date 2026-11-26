current_design counter
create_clock -name clk -period 2 [get_ports clk]
set_clock_uncertainty .10 -setup [all_clocks]
set_clock_uncertainty .03 -hold  [all_clocks]
set_clock_transition .04 [all_clocks]
set_false_path -from [get_ports rst]
set non_clk_inputs [all_inputs -no_clocks]
set_input_delay -max [expr 2 * 0.20] -clock clk $non_clk_inputs
set_input_delay -min 0.0 -clock clk $non_clk_inputs
set_output_delay -max [expr 2 * 0.20] -clock clk [all_outputs]
set_output_delay -min 0.0 -clock clk [all_outputs]
