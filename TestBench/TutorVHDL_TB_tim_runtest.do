setactivelib -timing
#Compiling UUT module design files

comp -include "$dsn\src\TestBench\TutorVHDL_TB_tim.v"
asim +access +r top_tb_tim glbl -L "D:\Programy\Aldec Active-HDL Student Edition\vlib\xilinx_vivado\simprims_ver" -sdftyp -AUTO="$DSN/implement/eq.sdf"

wave
wave -noreg CLR
wave -noreg CLK
wave -noreg MCLK
wave -noreg SCLK_o
wave -noreg LRCK_o
wave -noreg DataIn
wave -noreg DataOut	   
wave -noreg LOAD_o

run 25.00 us

#End simulation macro
