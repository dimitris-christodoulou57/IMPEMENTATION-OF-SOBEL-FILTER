-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Jun 24 14:40:51 2019
-- Host        : linux-e4n3 running 64-bit openSUSE Leap 42.2
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sobel_sw_new_3_0_stub.vhdl
-- Design      : design_1_sobel_sw_new_3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_INPUT_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_INPUT_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_AWVALID : out STD_LOGIC;
    m_axi_INPUT_r_AWREADY : in STD_LOGIC;
    m_axi_INPUT_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_WLAST : out STD_LOGIC;
    m_axi_INPUT_r_WVALID : out STD_LOGIC;
    m_axi_INPUT_r_WREADY : in STD_LOGIC;
    m_axi_INPUT_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_BVALID : in STD_LOGIC;
    m_axi_INPUT_r_BREADY : out STD_LOGIC;
    m_axi_INPUT_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_INPUT_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_INPUT_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_INPUT_r_ARVALID : out STD_LOGIC;
    m_axi_INPUT_r_ARREADY : in STD_LOGIC;
    m_axi_INPUT_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_INPUT_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_INPUT_r_RLAST : in STD_LOGIC;
    m_axi_INPUT_r_RVALID : in STD_LOGIC;
    m_axi_INPUT_r_RREADY : out STD_LOGIC;
    m_axi_OUTPUT_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUTPUT_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_AWVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_AWREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_WLAST : out STD_LOGIC;
    m_axi_OUTPUT_r_WVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_WREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_BVALID : in STD_LOGIC;
    m_axi_OUTPUT_r_BREADY : out STD_LOGIC;
    m_axi_OUTPUT_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_OUTPUT_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_OUTPUT_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_OUTPUT_r_ARVALID : out STD_LOGIC;
    m_axi_OUTPUT_r_ARREADY : in STD_LOGIC;
    m_axi_OUTPUT_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_OUTPUT_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_OUTPUT_r_RLAST : in STD_LOGIC;
    m_axi_OUTPUT_r_RVALID : in STD_LOGIC;
    m_axi_OUTPUT_r_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[4:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[4:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_INPUT_r_AWADDR[31:0],m_axi_INPUT_r_AWLEN[7:0],m_axi_INPUT_r_AWSIZE[2:0],m_axi_INPUT_r_AWBURST[1:0],m_axi_INPUT_r_AWLOCK[1:0],m_axi_INPUT_r_AWREGION[3:0],m_axi_INPUT_r_AWCACHE[3:0],m_axi_INPUT_r_AWPROT[2:0],m_axi_INPUT_r_AWQOS[3:0],m_axi_INPUT_r_AWVALID,m_axi_INPUT_r_AWREADY,m_axi_INPUT_r_WDATA[31:0],m_axi_INPUT_r_WSTRB[3:0],m_axi_INPUT_r_WLAST,m_axi_INPUT_r_WVALID,m_axi_INPUT_r_WREADY,m_axi_INPUT_r_BRESP[1:0],m_axi_INPUT_r_BVALID,m_axi_INPUT_r_BREADY,m_axi_INPUT_r_ARADDR[31:0],m_axi_INPUT_r_ARLEN[7:0],m_axi_INPUT_r_ARSIZE[2:0],m_axi_INPUT_r_ARBURST[1:0],m_axi_INPUT_r_ARLOCK[1:0],m_axi_INPUT_r_ARREGION[3:0],m_axi_INPUT_r_ARCACHE[3:0],m_axi_INPUT_r_ARPROT[2:0],m_axi_INPUT_r_ARQOS[3:0],m_axi_INPUT_r_ARVALID,m_axi_INPUT_r_ARREADY,m_axi_INPUT_r_RDATA[31:0],m_axi_INPUT_r_RRESP[1:0],m_axi_INPUT_r_RLAST,m_axi_INPUT_r_RVALID,m_axi_INPUT_r_RREADY,m_axi_OUTPUT_r_AWADDR[31:0],m_axi_OUTPUT_r_AWLEN[7:0],m_axi_OUTPUT_r_AWSIZE[2:0],m_axi_OUTPUT_r_AWBURST[1:0],m_axi_OUTPUT_r_AWLOCK[1:0],m_axi_OUTPUT_r_AWREGION[3:0],m_axi_OUTPUT_r_AWCACHE[3:0],m_axi_OUTPUT_r_AWPROT[2:0],m_axi_OUTPUT_r_AWQOS[3:0],m_axi_OUTPUT_r_AWVALID,m_axi_OUTPUT_r_AWREADY,m_axi_OUTPUT_r_WDATA[31:0],m_axi_OUTPUT_r_WSTRB[3:0],m_axi_OUTPUT_r_WLAST,m_axi_OUTPUT_r_WVALID,m_axi_OUTPUT_r_WREADY,m_axi_OUTPUT_r_BRESP[1:0],m_axi_OUTPUT_r_BVALID,m_axi_OUTPUT_r_BREADY,m_axi_OUTPUT_r_ARADDR[31:0],m_axi_OUTPUT_r_ARLEN[7:0],m_axi_OUTPUT_r_ARSIZE[2:0],m_axi_OUTPUT_r_ARBURST[1:0],m_axi_OUTPUT_r_ARLOCK[1:0],m_axi_OUTPUT_r_ARREGION[3:0],m_axi_OUTPUT_r_ARCACHE[3:0],m_axi_OUTPUT_r_ARPROT[2:0],m_axi_OUTPUT_r_ARQOS[3:0],m_axi_OUTPUT_r_ARVALID,m_axi_OUTPUT_r_ARREADY,m_axi_OUTPUT_r_RDATA[31:0],m_axi_OUTPUT_r_RRESP[1:0],m_axi_OUTPUT_r_RLAST,m_axi_OUTPUT_r_RVALID,m_axi_OUTPUT_r_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sobel_sw_new,Vivado 2017.2";
begin
end;
