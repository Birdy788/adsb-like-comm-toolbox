-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity my_module1 is
port (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    addr_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    addr_full_n : IN STD_LOGIC;
    addr_write : OUT STD_LOGIC;
    rgbv_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    rgbv_full_n : IN STD_LOGIC;
    rgbv_write : OUT STD_LOGIC );
end;


architecture behav of my_module1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "my_module1,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.955000,HLS_SYN_LAT=581,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=19,HLS_SYN_FF=1881,HLS_SYN_LUT=3886,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal grp_ModuleCompute_fu_212_e_read : STD_LOGIC;
    signal grp_ModuleCompute_fu_212_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_ModuleCompute_fu_212_s_write : STD_LOGIC;
    signal grp_Detecteur1_fu_226_e_read : STD_LOGIC;
    signal grp_Detecteur1_fu_226_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_Detecteur1_fu_226_s_write : STD_LOGIC;
    signal grp_DownSampling_fu_278_e_read : STD_LOGIC;
    signal grp_DownSampling_fu_278_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_DownSampling_fu_278_s_write : STD_LOGIC;
    signal grp_BitDecider_fu_292_e_read : STD_LOGIC;
    signal grp_BitDecider_fu_292_s_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_BitDecider_fu_292_s_write : STD_LOGIC;
    signal grp_BitsToBytes_fu_306_e_read : STD_LOGIC;
    signal grp_BitsToBytes_fu_306_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_BitsToBytes_fu_306_s_write : STD_LOGIC;
    signal grp_CRCCheck_fu_320_e_read : STD_LOGIC;
    signal grp_CRCCheck_fu_320_s_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_CRCCheck_fu_320_s_write : STD_LOGIC;
    signal grp_FrameProcessing_fu_334_e_read : STD_LOGIC;
    signal grp_FrameProcessing_fu_334_addr_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_FrameProcessing_fu_334_addr_write : STD_LOGIC;
    signal grp_FrameProcessing_fu_334_rgbv_din : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_FrameProcessing_fu_334_rgbv_write : STD_LOGIC;
    signal mod2dbl_1_full_n : STD_LOGIC;
    signal mod2dbl_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal mod2dbl_1_empty_n : STD_LOGIC;
    signal det2dow_1_full_n : STD_LOGIC;
    signal det2dow_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal det2dow_1_empty_n : STD_LOGIC;
    signal dow2bit_1_full_n : STD_LOGIC;
    signal dow2bit_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal dow2bit_1_empty_n : STD_LOGIC;
    signal bit2byt_1_full_n : STD_LOGIC;
    signal bit2byt_1_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal bit2byt_1_empty_n : STD_LOGIC;
    signal byt2crc_1_full_n : STD_LOGIC;
    signal byt2crc_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal byt2crc_1_empty_n : STD_LOGIC;
    signal crc2fra_1_full_n : STD_LOGIC;
    signal crc2fra_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal crc2fra_1_empty_n : STD_LOGIC;

    component ModuleCompute IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component Detecteur1 IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component DownSampling IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component BitDecider IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component BitsToBytes IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component CRCCheck IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s_full_n : IN STD_LOGIC;
        s_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component FrameProcessing IS
    port (
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        addr_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        addr_full_n : IN STD_LOGIC;
        addr_write : OUT STD_LOGIC;
        rgbv_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        rgbv_full_n : IN STD_LOGIC;
        rgbv_write : OUT STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC );
    end component;


    component fifo_w8_d1024_A_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d32_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w1_d32_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    grp_ModuleCompute_fu_212 : component ModuleCompute
    port map (
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_ModuleCompute_fu_212_e_read,
        s_din => grp_ModuleCompute_fu_212_s_din,
        s_full_n => mod2dbl_1_full_n,
        s_write => grp_ModuleCompute_fu_212_s_write,
        clock => clock,
        reset => reset);

    grp_Detecteur1_fu_226 : component Detecteur1
    port map (
        e_dout => mod2dbl_1_dout,
        e_empty_n => mod2dbl_1_empty_n,
        e_read => grp_Detecteur1_fu_226_e_read,
        s_din => grp_Detecteur1_fu_226_s_din,
        s_full_n => det2dow_1_full_n,
        s_write => grp_Detecteur1_fu_226_s_write,
        clock => clock,
        reset => reset);

    grp_DownSampling_fu_278 : component DownSampling
    port map (
        e_dout => det2dow_1_dout,
        e_empty_n => det2dow_1_empty_n,
        e_read => grp_DownSampling_fu_278_e_read,
        s_din => grp_DownSampling_fu_278_s_din,
        s_full_n => dow2bit_1_full_n,
        s_write => grp_DownSampling_fu_278_s_write,
        clock => clock,
        reset => reset);

    grp_BitDecider_fu_292 : component BitDecider
    port map (
        e_dout => dow2bit_1_dout,
        e_empty_n => dow2bit_1_empty_n,
        e_read => grp_BitDecider_fu_292_e_read,
        s_din => grp_BitDecider_fu_292_s_din,
        s_full_n => bit2byt_1_full_n,
        s_write => grp_BitDecider_fu_292_s_write,
        clock => clock,
        reset => reset);

    grp_BitsToBytes_fu_306 : component BitsToBytes
    port map (
        e_dout => bit2byt_1_dout,
        e_empty_n => bit2byt_1_empty_n,
        e_read => grp_BitsToBytes_fu_306_e_read,
        s_din => grp_BitsToBytes_fu_306_s_din,
        s_full_n => byt2crc_1_full_n,
        s_write => grp_BitsToBytes_fu_306_s_write,
        clock => clock,
        reset => reset);

    grp_CRCCheck_fu_320 : component CRCCheck
    port map (
        e_dout => byt2crc_1_dout,
        e_empty_n => byt2crc_1_empty_n,
        e_read => grp_CRCCheck_fu_320_e_read,
        s_din => grp_CRCCheck_fu_320_s_din,
        s_full_n => crc2fra_1_full_n,
        s_write => grp_CRCCheck_fu_320_s_write,
        clock => clock,
        reset => reset);

    grp_FrameProcessing_fu_334 : component FrameProcessing
    port map (
        e_dout => crc2fra_1_dout,
        e_empty_n => crc2fra_1_empty_n,
        e_read => grp_FrameProcessing_fu_334_e_read,
        addr_din => grp_FrameProcessing_fu_334_addr_din,
        addr_full_n => addr_full_n,
        addr_write => grp_FrameProcessing_fu_334_addr_write,
        rgbv_din => grp_FrameProcessing_fu_334_rgbv_din,
        rgbv_full_n => rgbv_full_n,
        rgbv_write => grp_FrameProcessing_fu_334_rgbv_write,
        clock => clock,
        reset => reset);

    mod2dbl_1_fifo_U : component fifo_w8_d1024_A_x
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_ModuleCompute_fu_212_s_din,
        if_full_n => mod2dbl_1_full_n,
        if_write => grp_ModuleCompute_fu_212_s_write,
        if_dout => mod2dbl_1_dout,
        if_empty_n => mod2dbl_1_empty_n,
        if_read => grp_Detecteur1_fu_226_e_read);

    det2dow_1_fifo_U : component fifo_w8_d32_A
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_Detecteur1_fu_226_s_din,
        if_full_n => det2dow_1_full_n,
        if_write => grp_Detecteur1_fu_226_s_write,
        if_dout => det2dow_1_dout,
        if_empty_n => det2dow_1_empty_n,
        if_read => grp_DownSampling_fu_278_e_read);

    dow2bit_1_fifo_U : component fifo_w8_d32_A
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_DownSampling_fu_278_s_din,
        if_full_n => dow2bit_1_full_n,
        if_write => grp_DownSampling_fu_278_s_write,
        if_dout => dow2bit_1_dout,
        if_empty_n => dow2bit_1_empty_n,
        if_read => grp_BitDecider_fu_292_e_read);

    bit2byt_1_fifo_U : component fifo_w1_d32_A
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_BitDecider_fu_292_s_din,
        if_full_n => bit2byt_1_full_n,
        if_write => grp_BitDecider_fu_292_s_write,
        if_dout => bit2byt_1_dout,
        if_empty_n => bit2byt_1_empty_n,
        if_read => grp_BitsToBytes_fu_306_e_read);

    byt2crc_1_fifo_U : component fifo_w8_d32_A
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_BitsToBytes_fu_306_s_din,
        if_full_n => byt2crc_1_full_n,
        if_write => grp_BitsToBytes_fu_306_s_write,
        if_dout => byt2crc_1_dout,
        if_empty_n => byt2crc_1_empty_n,
        if_read => grp_CRCCheck_fu_320_e_read);

    crc2fra_1_fifo_U : component fifo_w8_d32_A
    port map (
        clk => clock,
        reset => reset,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_CRCCheck_fu_320_s_din,
        if_full_n => crc2fra_1_full_n,
        if_write => grp_CRCCheck_fu_320_s_write,
        if_dout => crc2fra_1_dout,
        if_empty_n => crc2fra_1_empty_n,
        if_read => grp_FrameProcessing_fu_334_e_read);




    addr_din <= grp_FrameProcessing_fu_334_addr_din;
    addr_write <= grp_FrameProcessing_fu_334_addr_write;
    e_read <= grp_ModuleCompute_fu_212_e_read;
    rgbv_din <= grp_FrameProcessing_fu_334_rgbv_din;
    rgbv_write <= grp_FrameProcessing_fu_334_rgbv_write;
end behav;
