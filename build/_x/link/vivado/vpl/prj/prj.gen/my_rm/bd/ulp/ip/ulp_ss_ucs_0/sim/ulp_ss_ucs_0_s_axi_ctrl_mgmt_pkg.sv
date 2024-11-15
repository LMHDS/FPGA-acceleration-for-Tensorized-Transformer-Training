///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package ulp_ss_ucs_0_s_axi_ctrl_mgmt_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_PROTOCOL           = 2;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_INTERFACE_MODE     = 1;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH         = 24;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH         = 32;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH           = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH       = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH       = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH        = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH        = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH        = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW    = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BURST          = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK           = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE          = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_REGION         = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_QOS            = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_PROT           = 1;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB          = 1;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP          = 1;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP          = 1;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_ACLKEN         = 0;
      parameter ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////

typedef axi_passthrough_agent #(ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_PROTOCOL, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BURST,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_REGION,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_PROT,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_QOS,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN) ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough_t;

typedef axi_passthrough_mem_agent #(ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_PROTOCOL, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ADDR_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_DATA_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ID_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_AWUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_WUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_BUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_ARUSER_WIDTH,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_RUSER_WIDTH, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_SUPPORTS_NARROW, 
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BURST,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_LOCK,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_CACHE,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_REGION,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_PROT,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_QOS,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_WSTRB,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_BRESP,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_RRESP,
                                ulp_ss_ucs_0_s_axi_ctrl_mgmt_VIP_HAS_ARESETN) ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough_mem_t;

///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough_t  ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough;
//      initial begin : START_ulp_ss_ucs_0_s_axi_ctrl_mgmt_SLAVE
//        ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough = new("ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough", `ulp_ss_ucs_0_s_axi_ctrl_mgmt_PATH_TO_INTERFACE);
//        ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough.start_master(); //passthrough in run time master mode
//        ulp_ss_ucs_0_s_axi_ctrl_mgmt_passthrough.start_slave(); //passthrough in run time slave mode
//      end


endpackage : ulp_ss_ucs_0_s_axi_ctrl_mgmt_pkg
