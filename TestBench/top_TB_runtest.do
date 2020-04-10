SetActiveLib -work
comp -include "$dsn\src\PISO.vhd" 
comp -include "$dsn\src\Clocks_generator.vhd" 
comp -include "$dsn\src\SIPO.vhd" 
comp -include "$dsn\src\Top.bde" 
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

run 15.00 us
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\top_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_top 
