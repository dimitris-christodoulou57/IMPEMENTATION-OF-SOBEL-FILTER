// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:sobel_sw_new:1.0
// IP Revision: 1906241834

(* X_CORE_INFO = "sobel_sw_new,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "design_1_sobel_sw_new_1_0,sobel_sw_new,{}" *)
(* CORE_GENERATION_INFO = "design_1_sobel_sw_new_1_0,sobel_sw_new,{x_ipProduct=Vivado 2017.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=sobel_sw_new,x_ipVersion=1.0,x_ipCoreRevision=1906241834,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_BUS_ADDR_WIDTH=5,C_S_AXI_CTRL_BUS_DATA_WIDTH=32,C_M_AXI_INPUT_R_ID_WIDTH=1,C_M_AXI_INPUT_R_ADDR_WIDTH=32,C_M_AXI_INPUT_R_DATA_WIDTH=32,C_M_AXI_INPUT_R_AWUSER_WIDTH=1,C_M_AXI_INPUT_R_ARUSER_WIDTH=1,C_M_AXI_INPUT_R_WUSER_WIDTH=1,C_M_AXI_INPUT_R_RUSER_WIDTH=1,C_M_AXI_INPUT_R_B\
USER_WIDTH=1,C_M_AXI_INPUT_R_USER_VALUE=0x00000000,C_M_AXI_INPUT_R_PROT_VALUE=000,C_M_AXI_INPUT_R_CACHE_VALUE=0011,C_M_AXI_OUTPUT_R_ID_WIDTH=1,C_M_AXI_OUTPUT_R_ADDR_WIDTH=32,C_M_AXI_OUTPUT_R_DATA_WIDTH=32,C_M_AXI_OUTPUT_R_AWUSER_WIDTH=1,C_M_AXI_OUTPUT_R_ARUSER_WIDTH=1,C_M_AXI_OUTPUT_R_WUSER_WIDTH=1,C_M_AXI_OUTPUT_R_RUSER_WIDTH=1,C_M_AXI_OUTPUT_R_BUSER_WIDTH=1,C_M_AXI_OUTPUT_R_USER_VALUE=0x00000000,C_M_AXI_OUTPUT_R_PROT_VALUE=000,C_M_AXI_OUTPUT_R_CACHE_VALUE=0011}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_sobel_sw_new_1_0 (
  s_axi_CTRL_BUS_AWADDR,
  s_axi_CTRL_BUS_AWVALID,
  s_axi_CTRL_BUS_AWREADY,
  s_axi_CTRL_BUS_WDATA,
  s_axi_CTRL_BUS_WSTRB,
  s_axi_CTRL_BUS_WVALID,
  s_axi_CTRL_BUS_WREADY,
  s_axi_CTRL_BUS_BRESP,
  s_axi_CTRL_BUS_BVALID,
  s_axi_CTRL_BUS_BREADY,
  s_axi_CTRL_BUS_ARADDR,
  s_axi_CTRL_BUS_ARVALID,
  s_axi_CTRL_BUS_ARREADY,
  s_axi_CTRL_BUS_RDATA,
  s_axi_CTRL_BUS_RRESP,
  s_axi_CTRL_BUS_RVALID,
  s_axi_CTRL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_INPUT_r_AWADDR,
  m_axi_INPUT_r_AWLEN,
  m_axi_INPUT_r_AWSIZE,
  m_axi_INPUT_r_AWBURST,
  m_axi_INPUT_r_AWLOCK,
  m_axi_INPUT_r_AWREGION,
  m_axi_INPUT_r_AWCACHE,
  m_axi_INPUT_r_AWPROT,
  m_axi_INPUT_r_AWQOS,
  m_axi_INPUT_r_AWVALID,
  m_axi_INPUT_r_AWREADY,
  m_axi_INPUT_r_WDATA,
  m_axi_INPUT_r_WSTRB,
  m_axi_INPUT_r_WLAST,
  m_axi_INPUT_r_WVALID,
  m_axi_INPUT_r_WREADY,
  m_axi_INPUT_r_BRESP,
  m_axi_INPUT_r_BVALID,
  m_axi_INPUT_r_BREADY,
  m_axi_INPUT_r_ARADDR,
  m_axi_INPUT_r_ARLEN,
  m_axi_INPUT_r_ARSIZE,
  m_axi_INPUT_r_ARBURST,
  m_axi_INPUT_r_ARLOCK,
  m_axi_INPUT_r_ARREGION,
  m_axi_INPUT_r_ARCACHE,
  m_axi_INPUT_r_ARPROT,
  m_axi_INPUT_r_ARQOS,
  m_axi_INPUT_r_ARVALID,
  m_axi_INPUT_r_ARREADY,
  m_axi_INPUT_r_RDATA,
  m_axi_INPUT_r_RRESP,
  m_axi_INPUT_r_RLAST,
  m_axi_INPUT_r_RVALID,
  m_axi_INPUT_r_RREADY,
  m_axi_OUTPUT_r_AWADDR,
  m_axi_OUTPUT_r_AWLEN,
  m_axi_OUTPUT_r_AWSIZE,
  m_axi_OUTPUT_r_AWBURST,
  m_axi_OUTPUT_r_AWLOCK,
  m_axi_OUTPUT_r_AWREGION,
  m_axi_OUTPUT_r_AWCACHE,
  m_axi_OUTPUT_r_AWPROT,
  m_axi_OUTPUT_r_AWQOS,
  m_axi_OUTPUT_r_AWVALID,
  m_axi_OUTPUT_r_AWREADY,
  m_axi_OUTPUT_r_WDATA,
  m_axi_OUTPUT_r_WSTRB,
  m_axi_OUTPUT_r_WLAST,
  m_axi_OUTPUT_r_WVALID,
  m_axi_OUTPUT_r_WREADY,
  m_axi_OUTPUT_r_BRESP,
  m_axi_OUTPUT_r_BVALID,
  m_axi_OUTPUT_r_BREADY,
  m_axi_OUTPUT_r_ARADDR,
  m_axi_OUTPUT_r_ARLEN,
  m_axi_OUTPUT_r_ARSIZE,
  m_axi_OUTPUT_r_ARBURST,
  m_axi_OUTPUT_r_ARLOCK,
  m_axi_OUTPUT_r_ARREGION,
  m_axi_OUTPUT_r_ARCACHE,
  m_axi_OUTPUT_r_ARPROT,
  m_axi_OUTPUT_r_ARQOS,
  m_axi_OUTPUT_r_ARVALID,
  m_axi_OUTPUT_r_ARREADY,
  m_axi_OUTPUT_r_RDATA,
  m_axi_OUTPUT_r_RRESP,
  m_axi_OUTPUT_r_RLAST,
  m_axi_OUTPUT_r_RVALID,
  m_axi_OUTPUT_r_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *)
input wire [4 : 0] s_axi_CTRL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *)
input wire s_axi_CTRL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *)
output wire s_axi_CTRL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *)
input wire [31 : 0] s_axi_CTRL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CTRL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *)
input wire s_axi_CTRL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *)
output wire s_axi_CTRL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *)
output wire s_axi_CTRL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *)
input wire s_axi_CTRL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *)
input wire [4 : 0] s_axi_CTRL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *)
input wire s_axi_CTRL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *)
output wire s_axi_CTRL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *)
output wire [31 : 0] s_axi_CTRL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *)
output wire s_axi_CTRL_BUS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *)
input wire s_axi_CTRL_BUS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWADDR" *)
output wire [31 : 0] m_axi_INPUT_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWLEN" *)
output wire [7 : 0] m_axi_INPUT_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWSIZE" *)
output wire [2 : 0] m_axi_INPUT_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWBURST" *)
output wire [1 : 0] m_axi_INPUT_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWLOCK" *)
output wire [1 : 0] m_axi_INPUT_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWREGION" *)
output wire [3 : 0] m_axi_INPUT_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWCACHE" *)
output wire [3 : 0] m_axi_INPUT_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWPROT" *)
output wire [2 : 0] m_axi_INPUT_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWQOS" *)
output wire [3 : 0] m_axi_INPUT_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWVALID" *)
output wire m_axi_INPUT_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r AWREADY" *)
input wire m_axi_INPUT_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r WDATA" *)
output wire [31 : 0] m_axi_INPUT_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r WSTRB" *)
output wire [3 : 0] m_axi_INPUT_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r WLAST" *)
output wire m_axi_INPUT_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r WVALID" *)
output wire m_axi_INPUT_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r WREADY" *)
input wire m_axi_INPUT_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r BRESP" *)
input wire [1 : 0] m_axi_INPUT_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r BVALID" *)
input wire m_axi_INPUT_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r BREADY" *)
output wire m_axi_INPUT_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARADDR" *)
output wire [31 : 0] m_axi_INPUT_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARLEN" *)
output wire [7 : 0] m_axi_INPUT_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARSIZE" *)
output wire [2 : 0] m_axi_INPUT_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARBURST" *)
output wire [1 : 0] m_axi_INPUT_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARLOCK" *)
output wire [1 : 0] m_axi_INPUT_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARREGION" *)
output wire [3 : 0] m_axi_INPUT_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARCACHE" *)
output wire [3 : 0] m_axi_INPUT_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARPROT" *)
output wire [2 : 0] m_axi_INPUT_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARQOS" *)
output wire [3 : 0] m_axi_INPUT_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARVALID" *)
output wire m_axi_INPUT_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r ARREADY" *)
input wire m_axi_INPUT_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r RDATA" *)
input wire [31 : 0] m_axi_INPUT_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r RRESP" *)
input wire [1 : 0] m_axi_INPUT_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r RLAST" *)
input wire m_axi_INPUT_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r RVALID" *)
input wire m_axi_INPUT_r_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_INPUT_r RREADY" *)
output wire m_axi_INPUT_r_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWADDR" *)
output wire [31 : 0] m_axi_OUTPUT_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWLEN" *)
output wire [7 : 0] m_axi_OUTPUT_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWSIZE" *)
output wire [2 : 0] m_axi_OUTPUT_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWBURST" *)
output wire [1 : 0] m_axi_OUTPUT_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWLOCK" *)
output wire [1 : 0] m_axi_OUTPUT_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWREGION" *)
output wire [3 : 0] m_axi_OUTPUT_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWCACHE" *)
output wire [3 : 0] m_axi_OUTPUT_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWPROT" *)
output wire [2 : 0] m_axi_OUTPUT_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWQOS" *)
output wire [3 : 0] m_axi_OUTPUT_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWVALID" *)
output wire m_axi_OUTPUT_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r AWREADY" *)
input wire m_axi_OUTPUT_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r WDATA" *)
output wire [31 : 0] m_axi_OUTPUT_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r WSTRB" *)
output wire [3 : 0] m_axi_OUTPUT_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r WLAST" *)
output wire m_axi_OUTPUT_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r WVALID" *)
output wire m_axi_OUTPUT_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r WREADY" *)
input wire m_axi_OUTPUT_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r BRESP" *)
input wire [1 : 0] m_axi_OUTPUT_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r BVALID" *)
input wire m_axi_OUTPUT_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r BREADY" *)
output wire m_axi_OUTPUT_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARADDR" *)
output wire [31 : 0] m_axi_OUTPUT_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARLEN" *)
output wire [7 : 0] m_axi_OUTPUT_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARSIZE" *)
output wire [2 : 0] m_axi_OUTPUT_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARBURST" *)
output wire [1 : 0] m_axi_OUTPUT_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARLOCK" *)
output wire [1 : 0] m_axi_OUTPUT_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARREGION" *)
output wire [3 : 0] m_axi_OUTPUT_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARCACHE" *)
output wire [3 : 0] m_axi_OUTPUT_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARPROT" *)
output wire [2 : 0] m_axi_OUTPUT_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARQOS" *)
output wire [3 : 0] m_axi_OUTPUT_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARVALID" *)
output wire m_axi_OUTPUT_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r ARREADY" *)
input wire m_axi_OUTPUT_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r RDATA" *)
input wire [31 : 0] m_axi_OUTPUT_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r RRESP" *)
input wire [1 : 0] m_axi_OUTPUT_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r RLAST" *)
input wire m_axi_OUTPUT_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r RVALID" *)
input wire m_axi_OUTPUT_r_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUTPUT_r RREADY" *)
output wire m_axi_OUTPUT_r_RREADY;

  sobel_sw_new #(
    .C_S_AXI_CTRL_BUS_ADDR_WIDTH(5),
    .C_S_AXI_CTRL_BUS_DATA_WIDTH(32),
    .C_M_AXI_INPUT_R_ID_WIDTH(1),
    .C_M_AXI_INPUT_R_ADDR_WIDTH(32),
    .C_M_AXI_INPUT_R_DATA_WIDTH(32),
    .C_M_AXI_INPUT_R_AWUSER_WIDTH(1),
    .C_M_AXI_INPUT_R_ARUSER_WIDTH(1),
    .C_M_AXI_INPUT_R_WUSER_WIDTH(1),
    .C_M_AXI_INPUT_R_RUSER_WIDTH(1),
    .C_M_AXI_INPUT_R_BUSER_WIDTH(1),
    .C_M_AXI_INPUT_R_USER_VALUE('H00000000),
    .C_M_AXI_INPUT_R_PROT_VALUE('B000),
    .C_M_AXI_INPUT_R_CACHE_VALUE('B0011),
    .C_M_AXI_OUTPUT_R_ID_WIDTH(1),
    .C_M_AXI_OUTPUT_R_ADDR_WIDTH(32),
    .C_M_AXI_OUTPUT_R_DATA_WIDTH(32),
    .C_M_AXI_OUTPUT_R_AWUSER_WIDTH(1),
    .C_M_AXI_OUTPUT_R_ARUSER_WIDTH(1),
    .C_M_AXI_OUTPUT_R_WUSER_WIDTH(1),
    .C_M_AXI_OUTPUT_R_RUSER_WIDTH(1),
    .C_M_AXI_OUTPUT_R_BUSER_WIDTH(1),
    .C_M_AXI_OUTPUT_R_USER_VALUE('H00000000),
    .C_M_AXI_OUTPUT_R_PROT_VALUE('B000),
    .C_M_AXI_OUTPUT_R_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
    .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_INPUT_r_AWID(),
    .m_axi_INPUT_r_AWADDR(m_axi_INPUT_r_AWADDR),
    .m_axi_INPUT_r_AWLEN(m_axi_INPUT_r_AWLEN),
    .m_axi_INPUT_r_AWSIZE(m_axi_INPUT_r_AWSIZE),
    .m_axi_INPUT_r_AWBURST(m_axi_INPUT_r_AWBURST),
    .m_axi_INPUT_r_AWLOCK(m_axi_INPUT_r_AWLOCK),
    .m_axi_INPUT_r_AWREGION(m_axi_INPUT_r_AWREGION),
    .m_axi_INPUT_r_AWCACHE(m_axi_INPUT_r_AWCACHE),
    .m_axi_INPUT_r_AWPROT(m_axi_INPUT_r_AWPROT),
    .m_axi_INPUT_r_AWQOS(m_axi_INPUT_r_AWQOS),
    .m_axi_INPUT_r_AWUSER(),
    .m_axi_INPUT_r_AWVALID(m_axi_INPUT_r_AWVALID),
    .m_axi_INPUT_r_AWREADY(m_axi_INPUT_r_AWREADY),
    .m_axi_INPUT_r_WID(),
    .m_axi_INPUT_r_WDATA(m_axi_INPUT_r_WDATA),
    .m_axi_INPUT_r_WSTRB(m_axi_INPUT_r_WSTRB),
    .m_axi_INPUT_r_WLAST(m_axi_INPUT_r_WLAST),
    .m_axi_INPUT_r_WUSER(),
    .m_axi_INPUT_r_WVALID(m_axi_INPUT_r_WVALID),
    .m_axi_INPUT_r_WREADY(m_axi_INPUT_r_WREADY),
    .m_axi_INPUT_r_BID(1'B0),
    .m_axi_INPUT_r_BRESP(m_axi_INPUT_r_BRESP),
    .m_axi_INPUT_r_BUSER(1'B0),
    .m_axi_INPUT_r_BVALID(m_axi_INPUT_r_BVALID),
    .m_axi_INPUT_r_BREADY(m_axi_INPUT_r_BREADY),
    .m_axi_INPUT_r_ARID(),
    .m_axi_INPUT_r_ARADDR(m_axi_INPUT_r_ARADDR),
    .m_axi_INPUT_r_ARLEN(m_axi_INPUT_r_ARLEN),
    .m_axi_INPUT_r_ARSIZE(m_axi_INPUT_r_ARSIZE),
    .m_axi_INPUT_r_ARBURST(m_axi_INPUT_r_ARBURST),
    .m_axi_INPUT_r_ARLOCK(m_axi_INPUT_r_ARLOCK),
    .m_axi_INPUT_r_ARREGION(m_axi_INPUT_r_ARREGION),
    .m_axi_INPUT_r_ARCACHE(m_axi_INPUT_r_ARCACHE),
    .m_axi_INPUT_r_ARPROT(m_axi_INPUT_r_ARPROT),
    .m_axi_INPUT_r_ARQOS(m_axi_INPUT_r_ARQOS),
    .m_axi_INPUT_r_ARUSER(),
    .m_axi_INPUT_r_ARVALID(m_axi_INPUT_r_ARVALID),
    .m_axi_INPUT_r_ARREADY(m_axi_INPUT_r_ARREADY),
    .m_axi_INPUT_r_RID(1'B0),
    .m_axi_INPUT_r_RDATA(m_axi_INPUT_r_RDATA),
    .m_axi_INPUT_r_RRESP(m_axi_INPUT_r_RRESP),
    .m_axi_INPUT_r_RLAST(m_axi_INPUT_r_RLAST),
    .m_axi_INPUT_r_RUSER(1'B0),
    .m_axi_INPUT_r_RVALID(m_axi_INPUT_r_RVALID),
    .m_axi_INPUT_r_RREADY(m_axi_INPUT_r_RREADY),
    .m_axi_OUTPUT_r_AWID(),
    .m_axi_OUTPUT_r_AWADDR(m_axi_OUTPUT_r_AWADDR),
    .m_axi_OUTPUT_r_AWLEN(m_axi_OUTPUT_r_AWLEN),
    .m_axi_OUTPUT_r_AWSIZE(m_axi_OUTPUT_r_AWSIZE),
    .m_axi_OUTPUT_r_AWBURST(m_axi_OUTPUT_r_AWBURST),
    .m_axi_OUTPUT_r_AWLOCK(m_axi_OUTPUT_r_AWLOCK),
    .m_axi_OUTPUT_r_AWREGION(m_axi_OUTPUT_r_AWREGION),
    .m_axi_OUTPUT_r_AWCACHE(m_axi_OUTPUT_r_AWCACHE),
    .m_axi_OUTPUT_r_AWPROT(m_axi_OUTPUT_r_AWPROT),
    .m_axi_OUTPUT_r_AWQOS(m_axi_OUTPUT_r_AWQOS),
    .m_axi_OUTPUT_r_AWUSER(),
    .m_axi_OUTPUT_r_AWVALID(m_axi_OUTPUT_r_AWVALID),
    .m_axi_OUTPUT_r_AWREADY(m_axi_OUTPUT_r_AWREADY),
    .m_axi_OUTPUT_r_WID(),
    .m_axi_OUTPUT_r_WDATA(m_axi_OUTPUT_r_WDATA),
    .m_axi_OUTPUT_r_WSTRB(m_axi_OUTPUT_r_WSTRB),
    .m_axi_OUTPUT_r_WLAST(m_axi_OUTPUT_r_WLAST),
    .m_axi_OUTPUT_r_WUSER(),
    .m_axi_OUTPUT_r_WVALID(m_axi_OUTPUT_r_WVALID),
    .m_axi_OUTPUT_r_WREADY(m_axi_OUTPUT_r_WREADY),
    .m_axi_OUTPUT_r_BID(1'B0),
    .m_axi_OUTPUT_r_BRESP(m_axi_OUTPUT_r_BRESP),
    .m_axi_OUTPUT_r_BUSER(1'B0),
    .m_axi_OUTPUT_r_BVALID(m_axi_OUTPUT_r_BVALID),
    .m_axi_OUTPUT_r_BREADY(m_axi_OUTPUT_r_BREADY),
    .m_axi_OUTPUT_r_ARID(),
    .m_axi_OUTPUT_r_ARADDR(m_axi_OUTPUT_r_ARADDR),
    .m_axi_OUTPUT_r_ARLEN(m_axi_OUTPUT_r_ARLEN),
    .m_axi_OUTPUT_r_ARSIZE(m_axi_OUTPUT_r_ARSIZE),
    .m_axi_OUTPUT_r_ARBURST(m_axi_OUTPUT_r_ARBURST),
    .m_axi_OUTPUT_r_ARLOCK(m_axi_OUTPUT_r_ARLOCK),
    .m_axi_OUTPUT_r_ARREGION(m_axi_OUTPUT_r_ARREGION),
    .m_axi_OUTPUT_r_ARCACHE(m_axi_OUTPUT_r_ARCACHE),
    .m_axi_OUTPUT_r_ARPROT(m_axi_OUTPUT_r_ARPROT),
    .m_axi_OUTPUT_r_ARQOS(m_axi_OUTPUT_r_ARQOS),
    .m_axi_OUTPUT_r_ARUSER(),
    .m_axi_OUTPUT_r_ARVALID(m_axi_OUTPUT_r_ARVALID),
    .m_axi_OUTPUT_r_ARREADY(m_axi_OUTPUT_r_ARREADY),
    .m_axi_OUTPUT_r_RID(1'B0),
    .m_axi_OUTPUT_r_RDATA(m_axi_OUTPUT_r_RDATA),
    .m_axi_OUTPUT_r_RRESP(m_axi_OUTPUT_r_RRESP),
    .m_axi_OUTPUT_r_RLAST(m_axi_OUTPUT_r_RLAST),
    .m_axi_OUTPUT_r_RUSER(1'B0),
    .m_axi_OUTPUT_r_RVALID(m_axi_OUTPUT_r_RVALID),
    .m_axi_OUTPUT_r_RREADY(m_axi_OUTPUT_r_RREADY)
  );
endmodule
