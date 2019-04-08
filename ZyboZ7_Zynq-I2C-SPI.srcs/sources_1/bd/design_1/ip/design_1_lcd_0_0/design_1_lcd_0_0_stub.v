// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr  8 15:27:43 2019
// Host        : UL-41 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ulab/Documents/project_5/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.srcs/sources_1/bd/design_1/ip/design_1_lcd_0_0/design_1_lcd_0_0_stub.v
// Design      : design_1_lcd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lcd,Vivado 2018.3" *)
module design_1_lcd_0_0(clk, enable, data_in, command_mode, lcd_e, lcd_rs, 
  data, busy)
/* synthesis syn_black_box black_box_pad_pin="clk,enable,data_in[7:0],command_mode,lcd_e,lcd_rs,data[3:0],busy" */;
  input clk;
  input enable;
  input [7:0]data_in;
  input command_mode;
  output lcd_e;
  output lcd_rs;
  output [3:0]data;
  output busy;
endmodule
