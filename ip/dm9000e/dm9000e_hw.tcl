# TCL File Generated by Component Editor 11.1sp2
# Wed Aug 15 10:22:57 CEST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | dm9000e "Ethernet DM9000E Interface" v1.2
# | Michael Fischer 2012.08.15.10:22:57
# | Ethernet DM9000E Interface
# | 
# | ip/dm9000e/dm9000e_if.vhd
# | 
# |    ./dm9000e_if.vhd syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module dm9000e
# | 
set_module_property DESCRIPTION "Ethernet DM9000E Interface"
set_module_property NAME dm9000e
set_module_property VERSION 1.2
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Michael Fischer"
set_module_property DISPLAY_NAME "Ethernet DM9000E Interface"
set_module_property TOP_LEVEL_HDL_FILE dm9000e_if.vhd
set_module_property TOP_LEVEL_HDL_MODULE dm9000e_if
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME dm9000e_if
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file dm9000e_if.vhd {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | documentation links
# | 
add_documentation_link "Data Sheet" http://www.emb4fun.de/fpga/components/index.html
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clk
# | 
add_interface clk clock end
set_interface_property clk clockRate 0

set_interface_property clk ENABLED true

add_interface_port clk clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point s1
# | 
add_interface s1 avalon end
set_interface_property s1 addressAlignment NATIVE
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clk
set_interface_property s1 associatedReset reset
set_interface_property s1 bitsPerSymbol 8
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 burstcountUnits WORDS
set_interface_property s1 explicitAddressSpan 4
set_interface_property s1 holdTime 10
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 0
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitStates 40
set_interface_property s1 readWaitTime 40
set_interface_property s1 setupTime 80
set_interface_property s1 timingUnits Nanoseconds
set_interface_property s1 writeWaitStates 40
set_interface_property s1 writeWaitTime 40

set_interface_property s1 ENABLED true

add_interface_port s1 address address Input 2
add_interface_port s1 chipselect_n chipselect_n Input 1
add_interface_port s1 write_n write_n Input 1
add_interface_port s1 writedata writedata Input 16
add_interface_port s1 read_n read_n Input 1
add_interface_port s1 readdata readdata Output 16
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point irq
# | 
add_interface irq interrupt end
set_interface_property irq associatedAddressablePoint s1
set_interface_property irq associatedClock clk
set_interface_property irq associatedReset reset

set_interface_property irq ENABLED true

add_interface_port irq irq irq Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point external
# | 
add_interface external conduit end

set_interface_property external ENABLED true

add_interface_port external ENET_CMD export Output 1
add_interface_port external ENET_DATA export Bidir 16
add_interface_port external ENET_WE_N export Output 1
add_interface_port external ENET_OE_N export Output 1
add_interface_port external ENET_CE_N export Output 1
add_interface_port external ENET_INT export Input 1
add_interface_port external ENET_RESET_N export Output 1
# | 
# +-----------------------------------