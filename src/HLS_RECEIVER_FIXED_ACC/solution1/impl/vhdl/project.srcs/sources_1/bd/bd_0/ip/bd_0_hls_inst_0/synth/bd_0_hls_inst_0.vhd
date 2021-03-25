-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:my_module2:1.0
-- IP Revision: 2103251412

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    addr_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    addr_full_n : IN STD_LOGIC;
    addr_write : OUT STD_LOGIC;
    rgbv_din : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    rgbv_full_n : IN STD_LOGIC;
    rgbv_write : OUT STD_LOGIC
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT my_module2 IS
    PORT (
      clock : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      e_dout : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      e_empty_n : IN STD_LOGIC;
      e_read : OUT STD_LOGIC;
      addr_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      addr_full_n : IN STD_LOGIC;
      addr_write : OUT STD_LOGIC;
      rgbv_din : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      rgbv_full_n : IN STD_LOGIC;
      rgbv_write : OUT STD_LOGIC
    );
  END COMPONENT my_module2;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "my_module2,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_0_hls_inst_0_arch : ARCHITECTURE IS "bd_0_hls_inst_0,my_module2,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "bd_0_hls_inst_0,my_module2,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=my_module2,x_ipVersion=1.0,x_ipCoreRevision=2103251412,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF rgbv_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF rgbv_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 rgbv FULL_N";
  ATTRIBUTE X_INTERFACE_INFO OF rgbv_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF addr_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 addr WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF addr_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 addr FULL_N";
  ATTRIBUTE X_INTERFACE_INFO OF addr_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 addr WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF e_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF e_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N";
  ATTRIBUTE X_INTERFACE_INFO OF e_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clock: SIGNAL IS "XIL_INTERFACENAME clock, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_0_clock_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clock: SIGNAL IS "xilinx.com:signal:clock:1.0 clock CLK";
BEGIN
  U0 : my_module2
    PORT MAP (
      clock => clock,
      reset => reset,
      e_dout => e_dout,
      e_empty_n => e_empty_n,
      e_read => e_read,
      addr_din => addr_din,
      addr_full_n => addr_full_n,
      addr_write => addr_write,
      rgbv_din => rgbv_din,
      rgbv_full_n => rgbv_full_n,
      rgbv_write => rgbv_write
    );
END bd_0_hls_inst_0_arch;
