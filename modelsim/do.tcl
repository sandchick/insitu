quit -sim

.main clear


vlib work
vlog   "./tb_work.v"
vlog   "../rtl/*.v"
vlog   "../vivado/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.v"
vlog   "../vivado/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v"
vlog   "../vivado/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v"
vlog  "./glbl.v"
vsim -voptargs=+acc -c work.tb_work
vsim -L  "D:/modelsim/vivado_lib/unisims_ver" 
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_work/uaging_sensor/time_count
add wave -noupdate /tb_work/uaging_sensor/clk
add wave -noupdate /tb_work/uaging_sensor/rst_n
add wave -noupdate /tb_work/uaging_sensor/monitor_signal
add wave -noupdate /tb_work/uaging_sensor/aging_signal
add wave -noupdate /tb_work/uaging_sensor/delay_clk
add wave -noupdate /tb_work/uaging_sensor/detec_window
add wave -noupdate /tb_work/uaging_sensor/warning_signal
add wave -noupdate /tb_work/uaging_sensor/counter_rst
add wave -noupdate /tb_work/uaging_sensor/counter
add wave -noupdate /tb_work/clk
add wave -noupdate /tb_work/rst_n
add wave -noupdate /tb_work/monitor_signal
add wave -noupdate /tb_work/aging_signal
add wave -noupdate /tb_work/uaging_sensor/u_clk_wiz/clk_out1
add wave -noupdate /tb_work/uaging_sensor/u_clk_wiz/reset
add wave -noupdate /tb_work/uaging_sensor/u_clk_wiz/locked
add wave -noupdate /tb_work/uaging_sensor/u_clk_wiz/clk_in1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {295000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 329
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1576470 ps}
run 1000ns