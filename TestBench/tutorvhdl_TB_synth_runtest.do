SetActiveLib -post-synthesis
comp -include "$dsn\synthesis\Top.vhd" 
comp -include "$dsn\src\TestBench\top_TB.vhd" 
asim +access +r TESTBENCH_FOR_top
wave 
wave -noreg CLK
wave -noreg CLR
wave -noreg DataIn
wave -noreg DataOut
wave -noreg LRCK_o
wave -noreg MCLK
wave -noreg SCLK_o
wave -noreg LOAD_o

run 25.00 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tutorvhdl_TB_synth_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tutorvhdl 
