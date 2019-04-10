connect -url tcp:127.0.0.1:3121
source /home/charon/vivado/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A8189FA"} -index 0
loadhw -hw /home/charon/vivado/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A8189FA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A8189FA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A8189FA"} -index 0
dow /home/charon/vivado/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/Zynq-I2C-SPI/Debug/Zynq-I2C-SPI.elf
configparams force-mem-access 0
bpadd -addr &main
