set_time_format -unit ns -decimal_places 3
create_clock -name {clk} -period 1.000 -waveform {0.000 0.500} [get_ports {clock}]

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] 0.020
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] 0.020


create_clock -name {clk} -period 20.000 -waveform {0.000 10.000} [get_ports {clock}]

set_input_delay 3 -clock [get_clocks {clk}] [get_ports reset]

set_output_delay 10 -clock [get_clocks {clk}] [get_ports result[*]]
set_output_delay 10 -clock [get_clocks {clk}] [get_ports outResult[*]]