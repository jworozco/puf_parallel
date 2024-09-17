create_clock -period 25 [get_ports CLOCK_50]

#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -clock CLOCK_50 -max 0.5 [get_ports KEY*]
set_input_delay -clock CLOCK_50 -min 0.1 [get_ports KEY*]
set_input_delay -clock CLOCK_50 -max 0.5 [get_ports SW*]
set_input_delay -clock CLOCK_50 -min 0.1 [get_ports SW*]

#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -clock CLOCK_50 -max 0.5 [all_outputs]
set_output_delay -clock CLOCK_50 -min 0.1 [all_outputs]

