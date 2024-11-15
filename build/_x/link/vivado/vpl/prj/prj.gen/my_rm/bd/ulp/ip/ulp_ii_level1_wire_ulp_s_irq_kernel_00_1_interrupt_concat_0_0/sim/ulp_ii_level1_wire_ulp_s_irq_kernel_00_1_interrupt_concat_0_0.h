#ifndef IP_ULP_II_LEVEL1_WIRE_ULP_S_IRQ_KERNEL_00_1_INTERRUPT_CONCAT_0_0_H_
#define IP_ULP_II_LEVEL1_WIRE_ULP_S_IRQ_KERNEL_00_1_INTERRUPT_CONCAT_0_0_H_

// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0 : public ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc
{
public:

  ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0(const sc_core::sc_module_name& nm);
  virtual ~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > In0;
  sc_core::sc_in< sc_dt::sc_bv<1> > In1;
  sc_core::sc_in< sc_dt::sc_bv<1> > In2;
  sc_core::sc_in< sc_dt::sc_bv<1> > In3;
  sc_core::sc_in< sc_dt::sc_bv<1> > In4;
  sc_core::sc_in< sc_dt::sc_bv<1> > In5;
  sc_core::sc_in< sc_dt::sc_bv<1> > In6;
  sc_core::sc_in< sc_dt::sc_bv<1> > In7;
  sc_core::sc_in< sc_dt::sc_bv<1> > In8;
  sc_core::sc_in< sc_dt::sc_bv<1> > In9;
  sc_core::sc_in< sc_dt::sc_bv<1> > In10;
  sc_core::sc_in< sc_dt::sc_bv<1> > In11;
  sc_core::sc_in< sc_dt::sc_bv<1> > In12;
  sc_core::sc_in< sc_dt::sc_bv<1> > In13;
  sc_core::sc_in< sc_dt::sc_bv<1> > In14;
  sc_core::sc_in< sc_dt::sc_bv<1> > In15;
  sc_core::sc_in< sc_dt::sc_bv<1> > In16;
  sc_core::sc_in< sc_dt::sc_bv<1> > In17;
  sc_core::sc_in< sc_dt::sc_bv<1> > In18;
  sc_core::sc_in< sc_dt::sc_bv<1> > In19;
  sc_core::sc_in< sc_dt::sc_bv<1> > In20;
  sc_core::sc_in< sc_dt::sc_bv<1> > In21;
  sc_core::sc_in< sc_dt::sc_bv<1> > In22;
  sc_core::sc_in< sc_dt::sc_bv<1> > In23;
  sc_core::sc_in< sc_dt::sc_bv<1> > In24;
  sc_core::sc_in< sc_dt::sc_bv<1> > In25;
  sc_core::sc_in< sc_dt::sc_bv<1> > In26;
  sc_core::sc_in< sc_dt::sc_bv<1> > In27;
  sc_core::sc_in< sc_dt::sc_bv<1> > In28;
  sc_core::sc_in< sc_dt::sc_bv<1> > In29;
  sc_core::sc_in< sc_dt::sc_bv<1> > In30;
  sc_core::sc_in< sc_dt::sc_bv<1> > In31;
  sc_core::sc_out< sc_dt::sc_bv<32> > dout;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0 : public ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc
{
public:

  ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0(const sc_core::sc_module_name& nm);
  virtual ~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > In0;
  sc_core::sc_in< sc_dt::sc_bv<1> > In1;
  sc_core::sc_in< sc_dt::sc_bv<1> > In2;
  sc_core::sc_in< sc_dt::sc_bv<1> > In3;
  sc_core::sc_in< sc_dt::sc_bv<1> > In4;
  sc_core::sc_in< sc_dt::sc_bv<1> > In5;
  sc_core::sc_in< sc_dt::sc_bv<1> > In6;
  sc_core::sc_in< sc_dt::sc_bv<1> > In7;
  sc_core::sc_in< sc_dt::sc_bv<1> > In8;
  sc_core::sc_in< sc_dt::sc_bv<1> > In9;
  sc_core::sc_in< sc_dt::sc_bv<1> > In10;
  sc_core::sc_in< sc_dt::sc_bv<1> > In11;
  sc_core::sc_in< sc_dt::sc_bv<1> > In12;
  sc_core::sc_in< sc_dt::sc_bv<1> > In13;
  sc_core::sc_in< sc_dt::sc_bv<1> > In14;
  sc_core::sc_in< sc_dt::sc_bv<1> > In15;
  sc_core::sc_in< sc_dt::sc_bv<1> > In16;
  sc_core::sc_in< sc_dt::sc_bv<1> > In17;
  sc_core::sc_in< sc_dt::sc_bv<1> > In18;
  sc_core::sc_in< sc_dt::sc_bv<1> > In19;
  sc_core::sc_in< sc_dt::sc_bv<1> > In20;
  sc_core::sc_in< sc_dt::sc_bv<1> > In21;
  sc_core::sc_in< sc_dt::sc_bv<1> > In22;
  sc_core::sc_in< sc_dt::sc_bv<1> > In23;
  sc_core::sc_in< sc_dt::sc_bv<1> > In24;
  sc_core::sc_in< sc_dt::sc_bv<1> > In25;
  sc_core::sc_in< sc_dt::sc_bv<1> > In26;
  sc_core::sc_in< sc_dt::sc_bv<1> > In27;
  sc_core::sc_in< sc_dt::sc_bv<1> > In28;
  sc_core::sc_in< sc_dt::sc_bv<1> > In29;
  sc_core::sc_in< sc_dt::sc_bv<1> > In30;
  sc_core::sc_in< sc_dt::sc_bv<1> > In31;
  sc_core::sc_out< sc_dt::sc_bv<32> > dout;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0 : public ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc
{
public:

  ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0(const sc_core::sc_module_name& nm);
  virtual ~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > In0;
  sc_core::sc_in< sc_dt::sc_bv<1> > In1;
  sc_core::sc_in< sc_dt::sc_bv<1> > In2;
  sc_core::sc_in< sc_dt::sc_bv<1> > In3;
  sc_core::sc_in< sc_dt::sc_bv<1> > In4;
  sc_core::sc_in< sc_dt::sc_bv<1> > In5;
  sc_core::sc_in< sc_dt::sc_bv<1> > In6;
  sc_core::sc_in< sc_dt::sc_bv<1> > In7;
  sc_core::sc_in< sc_dt::sc_bv<1> > In8;
  sc_core::sc_in< sc_dt::sc_bv<1> > In9;
  sc_core::sc_in< sc_dt::sc_bv<1> > In10;
  sc_core::sc_in< sc_dt::sc_bv<1> > In11;
  sc_core::sc_in< sc_dt::sc_bv<1> > In12;
  sc_core::sc_in< sc_dt::sc_bv<1> > In13;
  sc_core::sc_in< sc_dt::sc_bv<1> > In14;
  sc_core::sc_in< sc_dt::sc_bv<1> > In15;
  sc_core::sc_in< sc_dt::sc_bv<1> > In16;
  sc_core::sc_in< sc_dt::sc_bv<1> > In17;
  sc_core::sc_in< sc_dt::sc_bv<1> > In18;
  sc_core::sc_in< sc_dt::sc_bv<1> > In19;
  sc_core::sc_in< sc_dt::sc_bv<1> > In20;
  sc_core::sc_in< sc_dt::sc_bv<1> > In21;
  sc_core::sc_in< sc_dt::sc_bv<1> > In22;
  sc_core::sc_in< sc_dt::sc_bv<1> > In23;
  sc_core::sc_in< sc_dt::sc_bv<1> > In24;
  sc_core::sc_in< sc_dt::sc_bv<1> > In25;
  sc_core::sc_in< sc_dt::sc_bv<1> > In26;
  sc_core::sc_in< sc_dt::sc_bv<1> > In27;
  sc_core::sc_in< sc_dt::sc_bv<1> > In28;
  sc_core::sc_in< sc_dt::sc_bv<1> > In29;
  sc_core::sc_in< sc_dt::sc_bv<1> > In30;
  sc_core::sc_in< sc_dt::sc_bv<1> > In31;
  sc_core::sc_out< sc_dt::sc_bv<32> > dout;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // RIVIERA




#ifdef VCSSYSTEMC
class DllExport ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0 : public ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc
{
public:

  ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0(const sc_core::sc_module_name& nm);
  virtual ~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > In0;
  sc_core::sc_in< sc_dt::sc_bv<1> > In1;
  sc_core::sc_in< sc_dt::sc_bv<1> > In2;
  sc_core::sc_in< sc_dt::sc_bv<1> > In3;
  sc_core::sc_in< sc_dt::sc_bv<1> > In4;
  sc_core::sc_in< sc_dt::sc_bv<1> > In5;
  sc_core::sc_in< sc_dt::sc_bv<1> > In6;
  sc_core::sc_in< sc_dt::sc_bv<1> > In7;
  sc_core::sc_in< sc_dt::sc_bv<1> > In8;
  sc_core::sc_in< sc_dt::sc_bv<1> > In9;
  sc_core::sc_in< sc_dt::sc_bv<1> > In10;
  sc_core::sc_in< sc_dt::sc_bv<1> > In11;
  sc_core::sc_in< sc_dt::sc_bv<1> > In12;
  sc_core::sc_in< sc_dt::sc_bv<1> > In13;
  sc_core::sc_in< sc_dt::sc_bv<1> > In14;
  sc_core::sc_in< sc_dt::sc_bv<1> > In15;
  sc_core::sc_in< sc_dt::sc_bv<1> > In16;
  sc_core::sc_in< sc_dt::sc_bv<1> > In17;
  sc_core::sc_in< sc_dt::sc_bv<1> > In18;
  sc_core::sc_in< sc_dt::sc_bv<1> > In19;
  sc_core::sc_in< sc_dt::sc_bv<1> > In20;
  sc_core::sc_in< sc_dt::sc_bv<1> > In21;
  sc_core::sc_in< sc_dt::sc_bv<1> > In22;
  sc_core::sc_in< sc_dt::sc_bv<1> > In23;
  sc_core::sc_in< sc_dt::sc_bv<1> > In24;
  sc_core::sc_in< sc_dt::sc_bv<1> > In25;
  sc_core::sc_in< sc_dt::sc_bv<1> > In26;
  sc_core::sc_in< sc_dt::sc_bv<1> > In27;
  sc_core::sc_in< sc_dt::sc_bv<1> > In28;
  sc_core::sc_in< sc_dt::sc_bv<1> > In29;
  sc_core::sc_in< sc_dt::sc_bv<1> > In30;
  sc_core::sc_in< sc_dt::sc_bv<1> > In31;
  sc_core::sc_out< sc_dt::sc_bv<32> > dout;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


  // Transactor stubs

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0 : public ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0_sc
{
public:

  ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0(const sc_core::sc_module_name& nm);
  virtual ~ulp_ii_level1_wire_ulp_s_irq_kernel_00_1_interrupt_concat_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > In0;
  sc_core::sc_in< sc_dt::sc_bv<1> > In1;
  sc_core::sc_in< sc_dt::sc_bv<1> > In2;
  sc_core::sc_in< sc_dt::sc_bv<1> > In3;
  sc_core::sc_in< sc_dt::sc_bv<1> > In4;
  sc_core::sc_in< sc_dt::sc_bv<1> > In5;
  sc_core::sc_in< sc_dt::sc_bv<1> > In6;
  sc_core::sc_in< sc_dt::sc_bv<1> > In7;
  sc_core::sc_in< sc_dt::sc_bv<1> > In8;
  sc_core::sc_in< sc_dt::sc_bv<1> > In9;
  sc_core::sc_in< sc_dt::sc_bv<1> > In10;
  sc_core::sc_in< sc_dt::sc_bv<1> > In11;
  sc_core::sc_in< sc_dt::sc_bv<1> > In12;
  sc_core::sc_in< sc_dt::sc_bv<1> > In13;
  sc_core::sc_in< sc_dt::sc_bv<1> > In14;
  sc_core::sc_in< sc_dt::sc_bv<1> > In15;
  sc_core::sc_in< sc_dt::sc_bv<1> > In16;
  sc_core::sc_in< sc_dt::sc_bv<1> > In17;
  sc_core::sc_in< sc_dt::sc_bv<1> > In18;
  sc_core::sc_in< sc_dt::sc_bv<1> > In19;
  sc_core::sc_in< sc_dt::sc_bv<1> > In20;
  sc_core::sc_in< sc_dt::sc_bv<1> > In21;
  sc_core::sc_in< sc_dt::sc_bv<1> > In22;
  sc_core::sc_in< sc_dt::sc_bv<1> > In23;
  sc_core::sc_in< sc_dt::sc_bv<1> > In24;
  sc_core::sc_in< sc_dt::sc_bv<1> > In25;
  sc_core::sc_in< sc_dt::sc_bv<1> > In26;
  sc_core::sc_in< sc_dt::sc_bv<1> > In27;
  sc_core::sc_in< sc_dt::sc_bv<1> > In28;
  sc_core::sc_in< sc_dt::sc_bv<1> > In29;
  sc_core::sc_in< sc_dt::sc_bv<1> > In30;
  sc_core::sc_in< sc_dt::sc_bv<1> > In31;
  sc_core::sc_out< sc_dt::sc_bv<32> > dout;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


  // Transactor stubs

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_ULP_II_LEVEL1_WIRE_ULP_S_IRQ_KERNEL_00_1_INTERRUPT_CONCAT_0_0_H_
