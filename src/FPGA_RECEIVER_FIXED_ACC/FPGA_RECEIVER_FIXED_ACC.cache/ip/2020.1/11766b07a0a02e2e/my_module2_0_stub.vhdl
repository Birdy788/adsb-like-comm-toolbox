-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Mar 25 14:17:05 2021
-- Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_module2_0_stub.vhdl
-- Design      : my_module2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    addr_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_full_n : in STD_LOGIC;
    addr_write : out STD_LOGIC;
    rgbv_din : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgbv_full_n : in STD_LOGIC;
    rgbv_write : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,e_dout[7:0],e_empty_n,e_read,addr_din[31:0],addr_full_n,addr_write,rgbv_din[23:0],rgbv_full_n,rgbv_write";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_module2,Vivado 2020.1";
begin
end;
