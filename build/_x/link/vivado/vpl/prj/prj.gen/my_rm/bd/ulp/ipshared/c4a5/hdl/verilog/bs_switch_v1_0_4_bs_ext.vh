// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
      else if (C_NUM_BS_MASTER == 3)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 4)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 5)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 6)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 7)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 8)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 9)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 10)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 11)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 12)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 13)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_12,drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_12,capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_12,update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_12,shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_12,reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_12,sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_12,tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_12,tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_12,tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_12,tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_12,runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
	 assign bscanid_en_12 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 14)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_13,drck_12,drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_13,capture_12,capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_13,update_12,update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_13,shift_12,shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_13,reset_12,reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_13,sel_12,sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_13,tdi_12,tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_13,tdo_12,tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_13,tms_12,tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_13,tck_12,tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_13,runtest_12,runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
	 assign bscanid_en_12 = bscanid_en_int;
	 assign bscanid_en_13 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 15)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_14,drck_13,drck_12,drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_14,capture_13,capture_12,capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_14,update_13,update_12,update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_14,shift_13,shift_12,shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_14,reset_13,reset_12,reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_14,sel_13,sel_12,sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_14,tdi_13,tdi_12,tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_14,tdo_13,tdo_12,tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_14,tms_13,tms_12,tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_14,tck_13,tck_12,tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_14,runtest_13,runtest_12,runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
	 assign bscanid_en_12 = bscanid_en_int;
	 assign bscanid_en_13 = bscanid_en_int;
	 assign bscanid_en_14 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 16)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_15,drck_14,drck_13,drck_12,drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_15,capture_14,capture_13,capture_12,capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_15,update_14,update_13,update_12,update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_15,shift_14,shift_13,shift_12,shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_15,reset_14,reset_13,reset_12,reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_15,sel_14,sel_13,sel_12,sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_15,tdi_14,tdi_13,tdi_12,tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_15,tdo_14,tdo_13,tdo_12,tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_15,tms_14,tms_13,tms_12,tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_15,tck_14,tck_13,tck_12,tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_15,runtest_14,runtest_13,runtest_12,runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
	 assign bscanid_en_12 = bscanid_en_int;
	 assign bscanid_en_13 = bscanid_en_int;
	 assign bscanid_en_14 = bscanid_en_int;
	 assign bscanid_en_15 = bscanid_en_int;
      end
      else if (C_NUM_BS_MASTER == 17)
      begin
        (* DONT_TOUCH = "TRUE" *)bs_switch_v1_0_4_core
        #(
          .PORTS             (C_NUM_BS_MASTER)
         ) bscan_switch
         (
          .s_bscan_drck      (s_bscan_drck),
          .s_bscan_capture   (s_bscan_capture),
          .s_bscan_update    (s_bscan_update),
          .s_bscan_shift     (s_bscan_shift),
          .s_bscan_reset     (s_bscan_reset),
          .s_bscan_sel       (s_bscan_sel),
          .s_bscan_tdi       (s_bscan_tdi),
          .s_bscan_tdo       (s_bscan_tdo),
          .s_bscan_tms       (s_bscan_tms),
          .s_bscan_tck       (s_bscan_tck),
          .s_bscan_runtest   (s_bscan_runtest),
          .s_bscanid_en      (s_bscanid_en),
          .m_bscan_drck      ({drck_16,drck_15,drck_14,drck_13,drck_12,drck_11,drck_10,drck_9,drck_8,drck_7,drck_6,drck_5,drck_4,drck_3,drck_2,drck_1,drck_0}),
          .m_bscan_capture   ({capture_16,capture_15,capture_14,capture_13,capture_12,capture_11,capture_10,capture_9,capture_8,capture_7,capture_6,capture_5,capture_4,capture_3,capture_2,capture_1,capture_0}),
          .m_bscan_update    ({update_16,update_15,update_14,update_13,update_12,update_11,update_10,update_9,update_8,update_7,update_6,update_5,update_4,update_3,update_2,update_1,update_0}),
          .m_bscan_shift     ({shift_16,shift_15,shift_14,shift_13,shift_12,shift_11,shift_10,shift_9,shift_8,shift_7,shift_6,shift_5,shift_4,shift_3,shift_2,shift_1,shift_0}),
          .m_bscan_reset     ({reset_16,reset_15,reset_14,reset_13,reset_12,reset_11,reset_10,reset_9,reset_8,reset_7,reset_6,reset_5,reset_4,reset_3,reset_2,reset_1,reset_0}),
          .m_bscan_sel       ({sel_16,sel_15,sel_14,sel_13,sel_12,sel_11,sel_10,sel_9,sel_8,sel_7,sel_6,sel_5,sel_4,sel_3,sel_2,sel_1,sel_0}),
          .m_bscan_tdi       ({tdi_16,tdi_15,tdi_14,tdi_13,tdi_12,tdi_11,tdi_10,tdi_9,tdi_8,tdi_7,tdi_6,tdi_5,tdi_4,tdi_3,tdi_2,tdi_1,tdi_0}),
          .m_bscan_tdo       ({tdo_16,tdo_15,tdo_14,tdo_13,tdo_12,tdo_11,tdo_10,tdo_9,tdo_8,tdo_7,tdo_6,tdo_5,tdo_4,tdo_3,tdo_2,tdo_1,tdo_0}),
          .m_bscan_tms       ({tms_16,tms_15,tms_14,tms_13,tms_12,tms_11,tms_10,tms_9,tms_8,tms_7,tms_6,tms_5,tms_4,tms_3,tms_2,tms_1,tms_0}),
          .m_bscan_tck       ({tck_16,tck_15,tck_14,tck_13,tck_12,tck_11,tck_10,tck_9,tck_8,tck_7,tck_6,tck_5,tck_4,tck_3,tck_2,tck_1,tck_0}),
          .m_bscan_runtest   ({runtest_16,runtest_15,runtest_14,runtest_13,runtest_12,runtest_11,runtest_10,runtest_9,runtest_8,runtest_7,runtest_6,runtest_5,runtest_4,runtest_3,runtest_2,runtest_1,runtest_0}),
          .m_bscan_bscanid_en   (bscanid_en_int)
         );

	 assign bscanid_en_0 = bscanid_en_int;
	 assign bscanid_en_1 = bscanid_en_int;
	 assign bscanid_en_2 = bscanid_en_int;
	 assign bscanid_en_3 = bscanid_en_int;
	 assign bscanid_en_4 = bscanid_en_int;
	 assign bscanid_en_5 = bscanid_en_int;
	 assign bscanid_en_6 = bscanid_en_int;
	 assign bscanid_en_7 = bscanid_en_int;
	 assign bscanid_en_8 = bscanid_en_int;
	 assign bscanid_en_9 = bscanid_en_int;
	 assign bscanid_en_10 = bscanid_en_int;
	 assign bscanid_en_11 = bscanid_en_int;
	 assign bscanid_en_12 = bscanid_en_int;
	 assign bscanid_en_13 = bscanid_en_int;
	 assign bscanid_en_14 = bscanid_en_int;
	 assign bscanid_en_15 = bscanid_en_int;
	 assign bscanid_en_16 = bscanid_en_int;
      end
