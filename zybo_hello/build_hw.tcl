# Vivado script: Zynq PS-only hardware for Zybo Z7-10 -> exports hello_hw.xsa
# Run:  vivado -mode batch -source build_hw.tcl

set root [file dirname [file normalize [info script]]]
set proj_dir "$root/vivado"

create_project hello_hw $proj_dir -part xc7z010clg400-1 -force
set_property board_part digilentinc.com:zybo-z7-10:part0:1.2 [current_project]

# Block design with just the Zynq Processing System
create_bd_design "system"
set ps [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7 ps7]

# Apply Zybo Z7-10 presets (DDR3, UART1 on MIO 48/49, clocks, ...)
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable"} $ps

# No PL logic needed: turn off the PS->PL AXI port so nothing is left unconnected
set_property CONFIG.PCW_USE_M_AXI_GP0 {0} $ps

validate_bd_design
save_bd_design

# HDL wrapper, then export hardware (no bitstream needed for a PS-only design)
set wrapper [make_wrapper -files [get_files system.bd] -top]
add_files -norecurse $wrapper
set_property top system_wrapper [current_fileset]
generate_target all [get_files system.bd]

write_hw_platform -fixed -force -file "$root/hello_hw.xsa"
puts "XSA written to $root/hello_hw.xsa"
