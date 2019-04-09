--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Apr  9 14:22:57 2019
--Host        : UL-31 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    je_pin10_io : inout STD_LOGIC;
    je_pin1_io : inout STD_LOGIC;
    je_pin2_io : inout STD_LOGIC;
    je_pin3_io : inout STD_LOGIC;
    je_pin4_io : inout STD_LOGIC;
    je_pin7_io : inout STD_LOGIC;
    je_pin8_io : inout STD_LOGIC;
    je_pin9_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    je_pin1_o : out STD_LOGIC;
    je_pin7_i : in STD_LOGIC;
    je_pin2_o : out STD_LOGIC;
    je_pin8_i : in STD_LOGIC;
    je_pin3_o : out STD_LOGIC;
    je_pin9_i : in STD_LOGIC;
    je_pin10_o : out STD_LOGIC;
    je_pin4_o : out STD_LOGIC;
    je_pin3_i : in STD_LOGIC;
    je_pin4_i : in STD_LOGIC;
    je_pin1_i : in STD_LOGIC;
    je_pin2_i : in STD_LOGIC;
    je_pin10_t : out STD_LOGIC;
    je_pin8_t : out STD_LOGIC;
    je_pin9_t : out STD_LOGIC;
    je_pin4_t : out STD_LOGIC;
    je_pin9_o : out STD_LOGIC;
    je_pin10_i : in STD_LOGIC;
    je_pin7_t : out STD_LOGIC;
    je_pin1_t : out STD_LOGIC;
    je_pin2_t : out STD_LOGIC;
    je_pin7_o : out STD_LOGIC;
    je_pin3_t : out STD_LOGIC;
    je_pin8_o : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal je_pin10_i : STD_LOGIC;
  signal je_pin10_o : STD_LOGIC;
  signal je_pin10_t : STD_LOGIC;
  signal je_pin1_i : STD_LOGIC;
  signal je_pin1_o : STD_LOGIC;
  signal je_pin1_t : STD_LOGIC;
  signal je_pin2_i : STD_LOGIC;
  signal je_pin2_o : STD_LOGIC;
  signal je_pin2_t : STD_LOGIC;
  signal je_pin3_i : STD_LOGIC;
  signal je_pin3_o : STD_LOGIC;
  signal je_pin3_t : STD_LOGIC;
  signal je_pin4_i : STD_LOGIC;
  signal je_pin4_o : STD_LOGIC;
  signal je_pin4_t : STD_LOGIC;
  signal je_pin7_i : STD_LOGIC;
  signal je_pin7_o : STD_LOGIC;
  signal je_pin7_t : STD_LOGIC;
  signal je_pin8_i : STD_LOGIC;
  signal je_pin8_o : STD_LOGIC;
  signal je_pin8_t : STD_LOGIC;
  signal je_pin9_i : STD_LOGIC;
  signal je_pin9_o : STD_LOGIC;
  signal je_pin9_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      btns_4bits_tri_i(3 downto 0) => btns_4bits_tri_i(3 downto 0),
      je_pin10_i => je_pin10_i,
      je_pin10_o => je_pin10_o,
      je_pin10_t => je_pin10_t,
      je_pin1_i => je_pin1_i,
      je_pin1_o => je_pin1_o,
      je_pin1_t => je_pin1_t,
      je_pin2_i => je_pin2_i,
      je_pin2_o => je_pin2_o,
      je_pin2_t => je_pin2_t,
      je_pin3_i => je_pin3_i,
      je_pin3_o => je_pin3_o,
      je_pin3_t => je_pin3_t,
      je_pin4_i => je_pin4_i,
      je_pin4_o => je_pin4_o,
      je_pin4_t => je_pin4_t,
      je_pin7_i => je_pin7_i,
      je_pin7_o => je_pin7_o,
      je_pin7_t => je_pin7_t,
      je_pin8_i => je_pin8_i,
      je_pin8_o => je_pin8_o,
      je_pin8_t => je_pin8_t,
      je_pin9_i => je_pin9_i,
      je_pin9_o => je_pin9_o,
      je_pin9_t => je_pin9_t
    );
je_pin10_iobuf: component IOBUF
     port map (
      I => je_pin10_o,
      IO => je_pin10_io,
      O => je_pin10_i,
      T => je_pin10_t
    );
je_pin1_iobuf: component IOBUF
     port map (
      I => je_pin1_o,
      IO => je_pin1_io,
      O => je_pin1_i,
      T => je_pin1_t
    );
je_pin2_iobuf: component IOBUF
     port map (
      I => je_pin2_o,
      IO => je_pin2_io,
      O => je_pin2_i,
      T => je_pin2_t
    );
je_pin3_iobuf: component IOBUF
     port map (
      I => je_pin3_o,
      IO => je_pin3_io,
      O => je_pin3_i,
      T => je_pin3_t
    );
je_pin4_iobuf: component IOBUF
     port map (
      I => je_pin4_o,
      IO => je_pin4_io,
      O => je_pin4_i,
      T => je_pin4_t
    );
je_pin7_iobuf: component IOBUF
     port map (
      I => je_pin7_o,
      IO => je_pin7_io,
      O => je_pin7_i,
      T => je_pin7_t
    );
je_pin8_iobuf: component IOBUF
     port map (
      I => je_pin8_o,
      IO => je_pin8_io,
      O => je_pin8_i,
      T => je_pin8_t
    );
je_pin9_iobuf: component IOBUF
     port map (
      I => je_pin9_o,
      IO => je_pin9_io,
      O => je_pin9_i,
      T => je_pin9_t
    );
end STRUCTURE;
