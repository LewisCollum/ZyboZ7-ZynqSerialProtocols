connect -url tcp:127.0.0.1:3121
source C:/Users/ulab/project_5/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A818A0A"} -index 0
loadhw -hw C:/Users/ulab/project_5/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A818A0A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A818A0A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A818A0A"} -index 0
dow C:/Users/ulab/project_5/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.sdk/I2C-SPI/Debug/I2C-SPI.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A818A0A"} -index 0
con
