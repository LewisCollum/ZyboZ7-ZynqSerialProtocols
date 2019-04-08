// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr  8 15:27:43 2019
// Host        : UL-41 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ulab/Documents/project_5/ZyboZ7_Zynq-I2C-SPI/ZyboZ7_Zynq-I2C-SPI.srcs/sources_1/bd/design_1/ip/design_1_lcd_0_0/design_1_lcd_0_0_sim_netlist.v
// Design      : design_1_lcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lcd_0_0,lcd,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "lcd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_lcd_0_0
   (clk,
    enable,
    data_in,
    command_mode,
    lcd_e,
    lcd_rs,
    data,
    busy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input enable;
  input [7:0]data_in;
  input command_mode;
  output lcd_e;
  output lcd_rs;
  output [3:0]data;
  output busy;

  wire busy;
  wire clk;
  wire command_mode;
  wire [3:0]data;
  wire [7:0]data_in;
  wire enable;
  wire lcd_e;
  wire lcd_rs;

  design_1_lcd_0_0_lcd U0
       (.busy(busy),
        .clk(clk),
        .command_mode(command_mode),
        .data(data),
        .data_in(data_in),
        .enable(enable),
        .lcd_e(lcd_e),
        .lcd_rs(lcd_rs));
endmodule

(* ORIG_REF_NAME = "clock_enabler" *) 
module design_1_lcd_0_0_clock_enabler
   (clk_en,
    \FSM_onehot_state_reg[1] ,
    command_mode_0,
    clock_en_reg_0,
    E,
    data0,
    clk,
    Q,
    lcd_e,
    command_mode,
    lcd_rs,
    busy,
    enable);
  output clk_en;
  output \FSM_onehot_state_reg[1] ;
  output command_mode_0;
  output clock_en_reg_0;
  output [0:0]E;
  output data0;
  input clk;
  input [3:0]Q;
  input lcd_e;
  input command_mode;
  input lcd_rs;
  input busy;
  input enable;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [3:0]Q;
  wire busy;
  wire clk;
  wire clk_en;
  wire clock_en_i_1_n_0;
  wire clock_en_reg_0;
  wire command_mode;
  wire command_mode_0;
  wire count0;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_i_4_n_0;
  wire count1_carry__1_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry__2_i_1_n_0;
  wire count1_carry__2_i_2_n_0;
  wire count1_carry__2_i_3_n_0;
  wire count1_carry__2_i_4_n_0;
  wire count1_carry__2_n_1;
  wire count1_carry__2_n_2;
  wire count1_carry__2_n_3;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_i_8_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_13_n_0 ;
  wire \count[0]_i_14_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[28]_i_2_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_4_n_0 ;
  wire \count[28]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire data0;
  wire enable;
  wire lcd_e;
  wire lcd_rs;
  wire p_0_in;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(clk_en),
        .I1(Q[1]),
        .I2(enable),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(E));
  LUT4 #(
    .INIT(16'hDF88)) 
    busy_i_1
       (.I0(clk_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(busy),
        .O(clock_en_reg_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    clock_en_i_1
       (.I0(clk_en),
        .I1(\count[0]_i_6_n_0 ),
        .I2(\count[0]_i_5_n_0 ),
        .I3(\count[0]_i_4_n_0 ),
        .I4(\count[0]_i_3_n_0 ),
        .I5(p_0_in),
        .O(clock_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(clock_en_i_1_n_0),
        .Q(clk_en),
        .R(1'b0));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0,count1_carry_i_4_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_5_n_0,count1_carry_i_6_n_0,count1_carry_i_7_n_0,count1_carry_i_8_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1_n_0,count1_carry__0_i_2_n_0,count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_1
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(count1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_3
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(count1_carry__0_i_4_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({count1_carry__1_n_0,count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0,count1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_4
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_4_n_0));
  CARRY4 count1_carry__2
       (.CI(count1_carry__1_n_0),
        .CO({p_0_in,count1_carry__2_n_1,count1_carry__2_n_2,count1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({count_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_count1_carry__2_O_UNCONNECTED[3:0]),
        .S({count1_carry__2_i_1_n_0,count1_carry__2_i_2_n_0,count1_carry__2_i_3_n_0,count1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_1
       (.I0(count_reg[31]),
        .I1(count_reg[30]),
        .O(count1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_2
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(count1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_3
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(count1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_4
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_1
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(count1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_2
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_3
       (.I0(count_reg[3]),
        .O(count1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry_i_4
       (.I0(count_reg[1]),
        .O(count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_5
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_6
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_7
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_8
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \count[0]_i_1 
       (.I0(p_0_in),
        .I1(\count[0]_i_3_n_0 ),
        .I2(\count[0]_i_4_n_0 ),
        .I3(\count[0]_i_5_n_0 ),
        .I4(\count[0]_i_6_n_0 ),
        .O(count0));
  LUT2 #(
    .INIT(4'h4)) 
    \count[0]_i_10 
       (.I0(count_reg[0]),
        .I1(p_0_in),
        .O(\count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_11 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .O(\count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_12 
       (.I0(count_reg[5]),
        .I1(count_reg[3]),
        .I2(count_reg[6]),
        .I3(count_reg[1]),
        .O(\count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_13 
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .I2(count_reg[24]),
        .I3(count_reg[25]),
        .O(\count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_14 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .I2(count_reg[16]),
        .I3(count_reg[17]),
        .O(\count[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_3 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[15]),
        .I3(count_reg[14]),
        .I4(\count[0]_i_11_n_0 ),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \count[0]_i_4 
       (.I0(count_reg[7]),
        .I1(count_reg[4]),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(\count[0]_i_12_n_0 ),
        .O(\count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_5 
       (.I0(count_reg[29]),
        .I1(count_reg[28]),
        .I2(count_reg[30]),
        .I3(count_reg[31]),
        .I4(\count[0]_i_13_n_0 ),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_6 
       (.I0(count_reg[21]),
        .I1(count_reg[20]),
        .I2(count_reg[23]),
        .I3(count_reg[22]),
        .I4(\count[0]_i_14_n_0 ),
        .O(\count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_7 
       (.I0(p_0_in),
        .I1(count_reg[3]),
        .O(\count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_8 
       (.I0(p_0_in),
        .I1(count_reg[2]),
        .O(\count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_9 
       (.I0(p_0_in),
        .I1(count_reg[1]),
        .O(\count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[27]),
        .O(\count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[26]),
        .O(\count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[25]),
        .O(\count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[24]),
        .O(\count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[31]),
        .O(\count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[30]),
        .O(\count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[29]),
        .O(\count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[28]),
        .O(\count[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[5]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[4]),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_2 
       (.I0(p_0_in),
        .I1(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_3 
       (.I0(p_0_in),
        .I1(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_4 
       (.I0(p_0_in),
        .I1(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_5 
       (.I0(p_0_in),
        .I1(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(1'b0));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 ,\count[0]_i_9_n_0 ,\count[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(1'b0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(1'b0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(1'b0));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(1'b0));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(1'b0));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count[28]_i_2_n_0 ,\count[28]_i_3_n_0 ,\count[28]_i_4_n_0 ,\count[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(1'b0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(1'b0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \data[3]_i_2 
       (.I0(clk_en),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(data0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    lcd_e_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(clk_en),
        .I3(lcd_e),
        .O(\FSM_onehot_state_reg[1] ));
  LUT4 #(
    .INIT(16'hBF80)) 
    lcd_rs_i_1
       (.I0(command_mode),
        .I1(clk_en),
        .I2(Q[0]),
        .I3(lcd_rs),
        .O(command_mode_0));
endmodule

(* ORIG_REF_NAME = "lcd" *) 
module design_1_lcd_0_0_lcd
   (data,
    lcd_e,
    lcd_rs,
    busy,
    clk,
    command_mode,
    data_in,
    enable);
  output [3:0]data;
  output lcd_e;
  output lcd_rs;
  output busy;
  input clk;
  input command_mode;
  input [7:0]data_in;
  input enable;

  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire busy;
  wire clk;
  wire clk_en;
  wire command_mode;
  wire [3:0]data;
  wire data0;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_3_n_0 ;
  wire [7:0]data_in;
  wire enable;
  wire inst_clock_enabler_n_1;
  wire inst_clock_enabler_n_2;
  wire inst_clock_enabler_n_3;
  wire lcd_e;
  wire lcd_rs;
  wire state0;

  (* FSM_ENCODED_STATES = "start:0001,upper_bits:0010,pause:0100,lower_bits:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(state0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:0001,upper_bits:0010,pause:0100,lower_bits:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(state0),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:0001,upper_bits:0010,pause:0100,lower_bits:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(state0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:0001,upper_bits:0010,pause:0100,lower_bits:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(state0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_clock_enabler_n_3),
        .Q(busy),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \data[0]_i_1 
       (.I0(data_in[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_in[0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data[1]_i_1 
       (.I0(data_in[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_in[1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data[2]_i_1 
       (.I0(data_in[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_in[2]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \data[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(clk_en),
        .O(\data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data[3]_i_3 
       (.I0(data_in[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_in[3]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\data[3]_i_3_n_0 ));
  FDSE \data_reg[0] 
       (.C(clk),
        .CE(data0),
        .D(\data[0]_i_1_n_0 ),
        .Q(data[0]),
        .S(\data[3]_i_1_n_0 ));
  FDSE \data_reg[1] 
       (.C(clk),
        .CE(data0),
        .D(\data[1]_i_1_n_0 ),
        .Q(data[1]),
        .S(\data[3]_i_1_n_0 ));
  FDSE \data_reg[2] 
       (.C(clk),
        .CE(data0),
        .D(\data[2]_i_1_n_0 ),
        .Q(data[2]),
        .S(\data[3]_i_1_n_0 ));
  FDSE \data_reg[3] 
       (.C(clk),
        .CE(data0),
        .D(\data[3]_i_3_n_0 ),
        .Q(data[3]),
        .S(\data[3]_i_1_n_0 ));
  design_1_lcd_0_0_clock_enabler inst_clock_enabler
       (.E(state0),
        .\FSM_onehot_state_reg[1] (inst_clock_enabler_n_1),
        .Q({\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .busy(busy),
        .clk(clk),
        .clk_en(clk_en),
        .clock_en_reg_0(inst_clock_enabler_n_3),
        .command_mode(command_mode),
        .command_mode_0(inst_clock_enabler_n_2),
        .data0(data0),
        .enable(enable),
        .lcd_e(lcd_e),
        .lcd_rs(lcd_rs));
  FDRE lcd_e_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_clock_enabler_n_1),
        .Q(lcd_e),
        .R(1'b0));
  FDRE lcd_rs_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_clock_enabler_n_2),
        .Q(lcd_rs),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
