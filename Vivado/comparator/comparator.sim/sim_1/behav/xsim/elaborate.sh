#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Mar 25 20:33:46 MSK 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 8e13773747074c3f8030acb3fd22a9a6 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_comp_behav xil_defaultlib.test_comp xil_defaultlib.glbl -log elaborate.log"
xelab -wto 8e13773747074c3f8030acb3fd22a9a6 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_comp_behav xil_defaultlib.test_comp xil_defaultlib.glbl -log elaborate.log

