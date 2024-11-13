#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vivado/2024.1/bin
else
  PATH=/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vitis/2024.1/bin:/home/minghe/Xilinx/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/minghe/gemm_hls/build/_x/link/vivado/vpl/prj/prj.runs/ulp_ip_cc_axi_data_h2c_01_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ulp_ip_cc_axi_data_h2c_01_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ulp_ip_cc_axi_data_h2c_01_0.tcl