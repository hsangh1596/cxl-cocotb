# Copyright (c) 2020 Alex Forencich
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

TOPLEVEL_LANG = sverilog

SIM ?= vcs
WAVES ?= 1

COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

#yhyang:DUT      = test_axi_pcie
#yhyang:TOPLEVEL = $(DUT)
#yhyang:MODULE   = $(DUT)
#yhyang:#yhyang:MODULE   = test_axi
#yhyang:VERILOG_SOURCES += $(PWD)/test_axi.v
#yhyang:VERILOG_SOURCES += $(PWD)/test_pcie.v
#yhyang:VERILOG_SOURCES += $(PWD)/$(DUT).v

#yhyang:DUT      = DUT
TOPLEVEL = CMSS_TOP_WRAPPER
MODULE   = test_cmss_top
#VERILOG_SOURCES += $(PWD)/test_axi.v
FILELISTS += ${CMSS_HOME}/design/filelist.f

COMPILE_ARGS += +define+DEVEL_CXL
#COMPILE_ARGS += +define+DEVEL_CXL

include $(shell cocotb-config --makefiles)/Makefile.sim

