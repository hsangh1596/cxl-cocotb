#!/usr/bin/env python
"""

Copyright (c) 2020 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

"""

import logging
import os

import cocotb_test.simulator
from cocotb.triggers import Timer
from cocotb.binary import BinaryValue
import cocotb
from cocotb.regression import TestFactory
import random

from cocotbext.pcie.core import RootComplex, MemoryEndpoint, Device, Switch
from cocotbext.pcie.core.caps import MsiCapability
from cocotbext.pcie.core.utils import PcieId
from cocotbext.axi.constants import *

from cocotb.queue import Queue
from cocotb_bus.drivers import BusDriver
from pipe_driver import PIPE_RX_Driver, PIPE_TX_Monitor
from host import Host, RspGen, FlitGen
from unpack import Unpack
from pack import *
from cxl_pkg import *

class TestEndpoint(MemoryEndpoint):
    __test__ = False

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.vendor_id = 0x1234
        self.device_id = 0x5678

        self.msi_cap = MsiCapability()
        self.msi_cap.msi_multiple_message_capable = 5
        self.msi_cap.msi_64bit_address_capable = 1
        self.msi_cap.msi_per_vector_mask_capable = 1
        self.register_capability(self.msi_cap)

        self.add_mem_region(1024*1024)
        self.add_prefetchable_mem_region(1024*1024)
        self.add_io_region(1024)


import itertools
import logging
import os
import random

import cocotb_test.simulator
import pytest

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer
from cocotb.regression import TestFactory

from cocotbext.axi import AxiBus, AxiMaster, AxiRam


class TB_AXI:
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        cocotb.start_soon(Clock(dut.aclk, 2, units="ns").start())
        cocotb.start_soon(Clock(dut.cclk, 2, units="ns").start())
        #TODO:cocotb.start_soon(Clock(dut.pclk, 2, units="ns").start())

        #self.axi_master = AxiMaster(AxiBus.from_prefix(dut, "core"), dut.aclk, dut.areset_n)
        self.axi_master = AxiMaster(AxiBus.from_prefix(dut, "core"), dut.aclk, dut.areset)
        self.axi_ram1 = AxiRam(AxiBus.from_prefix(dut, "mem"), dut.aclk, dut.areset, size=2**16)
        self.axi_ram2 = AxiRam(AxiBus.from_prefix(dut, "mem2"), dut.aclk, dut.areset, size=2**16)

        self.axi_ram1.write_if.log.setLevel(logging.DEBUG)
        self.axi_ram1.read_if.log.setLevel(logging.DEBUG)
        self.axi_ram2.write_if.log.setLevel(logging.DEBUG)
        self.axi_ram2.read_if.log.setLevel(logging.DEBUG)

    def set_idle_generator(self, generator=None):
        if generator:
            self.axi_master.write_if.aw_channel.set_pause_generator(generator())
            self.axi_master.write_if.w_channel.set_pause_generator(generator())
            self.axi_master.read_if.ar_channel.set_pause_generator(generator())
            self.axi_ram1.write_if.b_channel.set_pause_generator(generator())
            self.axi_ram1.read_if.r_channel.set_pause_generator(generator())
            self.axi_ram2.write_if.b_channel.set_pause_generator(generator())
            self.axi_ram2.read_if.r_channel.set_pause_generator(generator())

    def set_backpressure_generator(self, generator=None):
        if generator:
            self.axi_master.write_if.b_channel.set_pause_generator(generator())
            self.axi_master.read_if.r_channel.set_pause_generator(generator())
            self.axi_ram1.write_if.aw_channel.set_pause_generator(generator())
            self.axi_ram1.write_if.w_channel.set_pause_generator(generator())
            self.axi_ram1.read_if.ar_channel.set_pause_generator(generator())
            self.axi_ram2.write_if.aw_channel.set_pause_generator(generator())
            self.axi_ram2.write_if.w_channel.set_pause_generator(generator())
            self.axi_ram2.read_if.ar_channel.set_pause_generator(generator())

    async def cycle_reset(self):
        self.dut.areset.setimmediatevalue(0)
        self.dut.preset.setimmediatevalue(0)
        self.dut.creset.setimmediatevalue(0)
        await RisingEdge(self.dut.aclk)
        await RisingEdge(self.dut.aclk)
        self.dut.areset.value = 1
        self.dut.creset.value = 1
        self.dut.preset.value = 1
        await RisingEdge(self.dut.aclk)
        await RisingEdge(self.dut.aclk)
        self.dut.areset.value = 0
        self.dut.creset.value = 0
        self.dut.preset.value = 0
        for i in range(10):
            await RisingEdge(self.dut.aclk)
    def init(self):
        #self.set_idle_generator(idle_inserter)
        #self.set_backpressure_generator(backpressure_inserter)
        None


async def run_test_write_read(dut, idle_inserter=None, backpressure_inserter=None, size=None):

    tb = TB_AXI(dut)

    byte_lanes = tb.axi_master.write_if.byte_lanes
    max_burst_size = tb.axi_master.write_if.max_burst_size

    if size is None:
        size = max_burst_size

    await tb.cycle_reset()

    tb.set_idle_generator(idle_inserter)
    tb.set_backpressure_generator(backpressure_inserter)

    #yhyang:for length in list(range(1, byte_lanes*2))+[1024]:
    for iter in range(0):
        length = 64 # fixed
        addr = random.randint(0, 0x1000000000)
        addr = addr >> 6
        addr = addr << 6
        test_data = bytearray([random.randint(0,255) for x in range(length)])
        tb.log.info("addr = 0x%x", addr)

        #TODO:#yhyang:for offset in list(range(byte_lanes))+list(range(4096-byte_lanes, 4096)):
        #TODO:offset = iter * 0x40
        #TODO:tb.log.info("length %d, offset %x", length, offset)
        #TODO:addr = offset+0x1000
        #TODO:#fixed_data:test_data = bytearray([(x + offset) % 256 for x in range(length)])
        #TODO:test_data = bytearray([random.randint(0,255) for x in range(length)])

        #TODO:#TODO:tb.axi_ram1.write(addr-128, b'\xaa'*(length+256))
        #TODO:#TODO:tb.axi_ram2.write(addr-128, b'\xaa'*(length+256))

        await tb.axi_master.write(addr, test_data, size=size)
        rresp = await tb.axi_master.read(addr, length, size=size)
        print("[YH_DEBUG] write_data: 0x%x", test_data)
        print("[YH_DEBUG] read_data: 0x%x", rresp.data)
        assert test_data == rresp.data

        #TODO:tb.log.debug("%s", tb.axi_ram1.hexdump_str((addr & ~0xf)-16, (((addr & 0xf)+length-1) & ~0xf)+48))
        #TODO:tb.log.debug("%s", tb.axi_ram2.hexdump_str((addr & ~0xf)-16, (((addr & 0xf)+length-1) & ~0xf)+48))

        #TODO:assert tb.axi_ram1.read(addr, length) == test_data
        #TODO:assert tb.axi_ram1.read(addr-1, 1) == b'\xaa'
        #TODO:assert tb.axi_ram1.read(addr+length, 1) == b'\xaa'
        #TODO:assert tb.axi_ram2.read(addr, length) == test_data
        #TODO:assert tb.axi_ram2.read(addr-1, 1) == b'\xaa'
        #TODO:assert tb.axi_ram2.read(addr+length, 1) == b'\xaa'

    # sequential write to random addr/data. save data in dict
    golden_value = {}
    for iter in range(256):
        length = 64 # fixed
        addr = random.randint(0, 0x1000000000)
        addr = addr >> 6
        addr = addr << 6
        test_data = bytearray([random.randint(0,255) for x in range(length)])
        tb.log.info("addr = 0x%x", addr)


        golden_value[addr] = test_data
        await tb.axi_master.write(addr, test_data, size=size)

    for addr, wdata in golden_value.items():
        rresp = await tb.axi_master.read(addr, length, size=size)
        if wdata != rresp.data:
            print("[YH_DEBUG][UVM_ERROR] data mismatch. addr: 0x{:x}".format(addr))
            print("[YH_DEBUG][UVM_ERROR] wdata: 0x{}".format(wdata.hex()))
            print("[YH_DEBUG][UVM_ERROR] rdata: 0x{}".format(rresp.data.hex()))
        assert wdata == rresp.data

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)



async def run_test_write(dut, idle_inserter=None, backpressure_inserter=None, size=None):

    tb = TB_AXI(dut)

    byte_lanes = tb.axi_master.write_if.byte_lanes
    max_burst_size = tb.axi_master.write_if.max_burst_size

    if size is None:
        size = max_burst_size

    await tb.cycle_reset()

    tb.set_idle_generator(idle_inserter)
    tb.set_backpressure_generator(backpressure_inserter)

    for length in list(range(1, byte_lanes*2))+[1024]:
        for offset in list(range(byte_lanes))+list(range(4096-byte_lanes, 4096)):
            tb.log.info("length %d, offset %d", length, offset)
            addr = offset+0x1000
            test_data = bytearray([x % 256 for x in range(length)])

            tb.axi_ram2.write(addr-128, b'\xaa'*(length+256))
            tb.axi_ram2.write(addr-128, b'\xaa'*(length+256))

            await tb.axi_master.write(addr, test_data, size=size)

            tb.log.debug("%s", tb.axi_ram1.hexdump_str((addr & ~0xf)-16, (((addr & 0xf)+length-1) & ~0xf)+48))
            tb.log.debug("%s", tb.axi_ram2.hexdump_str((addr & ~0xf)-16, (((addr & 0xf)+length-1) & ~0xf)+48))

            assert tb.axi_ram1.read(addr, length) == test_data
            assert tb.axi_ram1.read(addr-1, 1) == b'\xaa'
            assert tb.axi_ram1.read(addr+length, 1) == b'\xaa'
            assert tb.axi_ram2.read(addr, length) == test_data
            assert tb.axi_ram2.read(addr-1, 1) == b'\xaa'
            assert tb.axi_ram2.read(addr+length, 1) == b'\xaa'

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)


async def run_test_read(dut, idle_inserter=None, backpressure_inserter=None, size=None):

    tb = TB_AXI(dut)

    byte_lanes = tb.axi_master.write_if.byte_lanes
    max_burst_size = tb.axi_master.write_if.max_burst_size

    if size is None:
        size = max_burst_size

    await tb.cycle_reset()

    tb.set_idle_generator(idle_inserter)
    tb.set_backpressure_generator(backpressure_inserter)

    for length in list(range(1, byte_lanes*2))+[1024]:
        for offset in list(range(byte_lanes))+list(range(4096-byte_lanes, 4096)):
            tb.log.info("length %d, offset %d", length, offset)
            addr = offset+0x1000
            test_data = bytearray([x % 256 for x in range(length)])

            tb.axi_ram1.write(addr, test_data)
            tb.axi_ram2.write(addr, test_data)

            data = await tb.axi_master.read(addr, length, size=size)

            assert data.data == test_data

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)


async def run_test_write_words(dut):

    tb = TB_AXI(dut)

    byte_lanes = tb.axi_master.write_if.byte_lanes

    await tb.cycle_reset()

    for length in list(range(1, 4)):
        for offset in list(range(byte_lanes)):
            tb.log.info("length %d, offset %d", length, offset)
            addr = offset+0x1000

            test_data = bytearray([x % 256 for x in range(length)])
            event = tb.axi_master.init_write(addr, test_data)
            await event.wait()
            assert tb.axi_ram1.read(addr, length) == test_data
            assert tb.axi_ram2.read(addr, length) == test_data

            test_data = bytearray([x % 256 for x in range(length)])
            await tb.axi_master.write(addr, test_data)
            assert tb.axi_ram1.read(addr, length) == test_data
            assert tb.axi_ram2.read(addr, length) == test_data

            test_data = [x * 0x1001 for x in range(length)]
            await tb.axi_master.write_words(addr, test_data)
            assert tb.axi_ram1.read_words(addr, length) == test_data
            assert tb.axi_ram2.read_words(addr, length) == test_data

            test_data = [x * 0x10200201 for x in range(length)]
            await tb.axi_master.write_dwords(addr, test_data)
            assert tb.axi_ram1.read_dwords(addr, length) == test_data
            assert tb.axi_ram2.read_dwords(addr, length) == test_data

            test_data = [x * 0x1020304004030201 for x in range(length)]
            await tb.axi_master.write_qwords(addr, test_data)
            assert tb.axi_ram1.read_qwords(addr, length) == test_data
            assert tb.axi_ram2.read_qwords(addr, length) == test_data

            test_data = 0x01*length
            await tb.axi_master.write_byte(addr, test_data)
            assert tb.axi_ram1.read_byte(addr) == test_data
            assert tb.axi_ram2.read_byte(addr) == test_data

            test_data = 0x1001*length
            await tb.axi_master.write_word(addr, test_data)
            assert tb.axi_ram1.read_word(addr) == test_data
            assert tb.axi_ram2.read_word(addr) == test_data

            test_data = 0x10200201*length
            await tb.axi_master.write_dword(addr, test_data)
            assert tb.axi_ram1.read_dword(addr) == test_data
            assert tb.axi_ram2.read_dword(addr) == test_data

            test_data = 0x1020304004030201*length
            await tb.axi_master.write_qword(addr, test_data)
            assert tb.axi_ram1.read_qword(addr) == test_data
            assert tb.axi_ram2.read_qword(addr) == test_data

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)


async def run_test_read_words(dut):

    tb = TB_AXI(dut)

    byte_lanes = tb.axi_master.write_if.byte_lanes

    await tb.cycle_reset()

    for length in list(range(1, 4)):
        #length=96
        length=64
        tb.log.info("[YH_DEBUG] length %d", length)
        for offset in list(range(byte_lanes)):
            tb.log.info("length %d, offset %d", length, offset)
            addr = offset+0x1000
            mem1_addr = addr * 2

            test_data = bytearray([x % 256 for x in range(length)])
            tb.axi_ram1.write(mem1_addr, test_data)
            tb.axi_ram2.write(addr, test_data)
            event = tb.axi_master.init_read(addr, length)
            await event.wait()
            assert event.data.data == test_data

            test_data = bytearray([x % 256 for x in range(length)])
            tb.axi_ram1.write(mem1_addr, test_data)
            tb.axi_ram2.write(addr, test_data)
            assert (await tb.axi_master.read(addr, length)).data == test_data

            test_data = [x * 0x1001 for x in range(length)]
            tb.axi_ram1.write_words(mem1_addr, test_data)
            tb.axi_ram2.write_words(addr, test_data)
            assert await tb.axi_master.read_words(addr, length) == test_data

            test_data = [x * 0x10200201 for x in range(length)]
            tb.axi_ram1.write_dwords(mem1_addr, test_data)
            tb.axi_ram2.write_dwords(addr, test_data)
            assert await tb.axi_master.read_dwords(addr, length) == test_data

            test_data = [x * 0x1020304004030201 for x in range(length)]
            tb.axi_ram1.write_qwords(mem1_addr, test_data)
            tb.axi_ram2.write_qwords(addr, test_data)
            assert await tb.axi_master.read_qwords(addr, length) == test_data

            test_data = 0x01*length
            tb.axi_ram1.write_byte(mem1_addr, test_data)
            tb.axi_ram2.write_byte(addr, test_data)
            assert await tb.axi_master.read_byte(addr) == test_data

            test_data = 0x1001*length
            tb.axi_ram1.write_word(mem1_addr, test_data)
            tb.axi_ram2.write_word(addr, test_data)
            assert await tb.axi_master.read_word(addr) == test_data

            test_data = 0x10200201*length
            tb.axi_ram1.write_dword(mem1_addr, test_data)
            tb.axi_ram2.write_dword(addr, test_data)
            assert await tb.axi_master.read_dword(addr) == test_data

            test_data = 0x1020304004030201*length
            tb.axi_ram1.write_qword(mem1_addr, test_data)
            tb.axi_ram2.write_qword(addr, test_data)
            assert await tb.axi_master.read_qword(addr) == test_data

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)


async def run_stress_test(dut, idle_inserter=None, backpressure_inserter=None):

    tb = TB_AXI(dut)

    await tb.cycle_reset()

    tb.set_idle_generator(idle_inserter)
    tb.set_backpressure_generator(backpressure_inserter)

    async def worker(master, offset, aperture, count=16):
        for k in range(count):
            length = random.randint(1, min(512, aperture))
            addr = offset+random.randint(0, aperture-length)
            test_data = bytearray([x % 256 for x in range(length)])

            await Timer(random.randint(1, 100), 'ns')

            await master.write(addr, test_data)

            await Timer(random.randint(1, 100), 'ns')

            data = await master.read(addr, length)
            assert data.data == test_data

    workers = []

    for k in range(16):
        workers.append(cocotb.start_soon(worker(tb.axi_master, k*0x1000, 0x1000, count=16)))

    while workers:
        await workers.pop(0).join()

    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)


def cycle_pause():
    return itertools.cycle([1, 1, 1, 0])

from random import randint     
from cocotb import test

#yhyang:from interfaces.clkrst import ClkReset

from cocotbext.apb import ApbMaster
from cocotbext.apb import Apb3Bus
from cocotbext.apb import ApbMonitor
def returned_val(read_op):
    return int.from_bytes(read_op, byteorder='little')

class reg_map_c:
    def __init__(self):
        self.reg_map = {}
        self.reg_map["cache_apb"] = {}
        self.reg_map["cache_apb"][0x0000] = {"name":"VERSION", "addr":0x0000, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x0100] = {"name":"START_ADDR_L", "addr":0x0100, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x0104] = {"name":"START_ADDR_H", "addr":0x0104, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x0108] = {"name":"END_ADDR_L", "addr":0x0108, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x010c] = {"name":"END_ADDR_H", "addr":0x010c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x0200] = {"name":"CMD", "addr":0x0200, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x0204] = {"name":"STATUS", "addr":0x0204, "reset_val":0x0, "value":0x0, "mask":0xffffffff}

        self.reg_map["cache_apb"][0x1000] = {"name":"DBG_FIFO[0]", "addr":0x1000, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1004] = {"name":"DBG_FIFO[1]", "addr":0x1004, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1008] = {"name":"DBG_FIFO[2]", "addr":0x1008, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x100c] = {"name":"DBG_FIFO[3]", "addr":0x100c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1010] = {"name":"DBG_FIFO[4]", "addr":0x1010, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1014] = {"name":"DBG_FIFO[5]", "addr":0x1014, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1018] = {"name":"DBG_FIFO[6]", "addr":0x1018, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x101c] = {"name":"DBG_FIFO[7]", "addr":0x101c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}

        self.reg_map["cache_apb"][0x1400] = {"name":"DBG_NORMAL_CNT[0]", "addr":0x1400, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1404] = {"name":"DBG_NORMAL_CNT[1]", "addr":0x1404, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1408] = {"name":"DBG_NORMAL_CNT[2]", "addr":0x1408, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x140c] = {"name":"DBG_NORMAL_CNT[3]", "addr":0x140c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1410] = {"name":"DBG_NORMAL_CNT[4]", "addr":0x1410, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1414] = {"name":"DBG_NORMAL_CNT[5]", "addr":0x1414, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1418] = {"name":"DBG_NORMAL_CNT[6]", "addr":0x1418, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x141c] = {"name":"DBG_NORMAL_CNT[7]", "addr":0x141c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}

        self.reg_map["cache_apb"][0x1800] = {"name":"DBG_SATUR_CNT[0]", "addr":0x1800, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1804] = {"name":"DBG_SATUR_CNT[1]", "addr":0x1804, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1808] = {"name":"DBG_SATUR_CNT[2]", "addr":0x1808, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x180c] = {"name":"DBG_SATUR_CNT[3]", "addr":0x180c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1810] = {"name":"DBG_SATUR_CNT[4]", "addr":0x1810, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1814] = {"name":"DBG_SATUR_CNT[5]", "addr":0x1814, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x1818] = {"name":"DBG_SATUR_CNT[6]", "addr":0x1818, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
        self.reg_map["cache_apb"][0x181c] = {"name":"DBG_SATUR_CNT[7]", "addr":0x181c, "reset_val":0x0, "value":0x0, "mask":0xffffffff}
#TODO:    def __reset_reg(self, reg):
#TODO:
#TODO:    def __reset_reg_blk(self, reg_blk):
#TODO:        regs = self.reg_map[reg_blk]
#TODO:        for i in regs:
#TODO:            __reset_reg(i)

def reg_cmp(reg_blk, addr, data):
    if addr not in reg_blk:
        return True
    if (reg_blk[addr]["value"] & reg_blk[addr]["mask"]) == (data & reg_blk[addr]["mask"]):
        return True
    else:
        return False


class TB_APB:
    def __init__(self, dut):
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)
        #yhyang:self.regwidth = int(dut.REGWIDTH)
        #yhyang:self.n_regs   = int(dut.N_REGS)
        self.regwidth = 32
        self.n_regs   = 32
        self.mask = (2 ** self.regwidth) - 1
        self.incr = int(self.regwidth/8)
        #yhyang:self.cr = ClkReset(dut, period, reset_sense=reset_sense, resetname="preset")
        self.dut = dut
        cocotb.start_soon(Clock(dut.pclk, 2, units="ns").start())
        
        clk_name="pclk"

        cache_apb_prefix="cache"
        self.cache_apb_bus = Apb3Bus.from_prefix(dut, cache_apb_prefix)
        self.cache_apb_intf = ApbMaster(self.cache_apb_bus, getattr(dut, clk_name))
        self.cache_apb_mon = ApbMonitor(self.cache_apb_bus, getattr(dut, clk_name))
        self.cache_apb_mon.enable_logging()

        mem_apb_prefix="mem"
        self.mem_apb_bus = Apb3Bus.from_prefix(dut, mem_apb_prefix)
        self.mem_apb_intf = ApbMaster(self.mem_apb_bus, getattr(dut, clk_name))
        self.mem_apb_mon = ApbMonitor(self.mem_apb_bus, getattr(dut, clk_name))
        self.mem_apb_mon.enable_logging()

        cxl_apb_prefix="cxl"
        self.cxl_apb_bus = Apb3Bus.from_prefix(dut, cxl_apb_prefix)
        self.cxl_apb_intf = ApbMaster(self.cxl_apb_bus, getattr(dut, clk_name))
        self.cxl_apb_mon = ApbMonitor(self.cxl_apb_bus, getattr(dut, clk_name))
        self.cxl_apb_mon.enable_logging()

        reg_map_inst = reg_map_c()
        self.cache_apb_reg_blk = reg_map_inst.reg_map["cache_apb"]




        #from_axi:self.dut = dut

        #from_axi:self.log = logging.getLogger("cocotb.tb")
        #from_axi:self.log.setLevel(logging.DEBUG)

        #from_axi:cocotb.start_soon(Clock(dut.pclk, 2, units="ns").start())

        #from_axi:self.apb_master = apb.APBMasterDriver(dut, "APB", dut.pclk, dut.preset)

    #TODO:def set_idle_generator(self, generator=None):
    #TODO:    if generator:
    #TODO:        self.axi_master.write_if.aw_channel.set_pause_generator(generator())
    #TODO:        self.axi_master.write_if.w_channel.set_pause_generator(generator())
    #TODO:        self.axi_master.read_if.ar_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram1.write_if.b_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram1.read_if.r_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram2.write_if.b_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram2.read_if.r_channel.set_pause_generator(generator())

    #TODO:def set_backpressure_generator(self, generator=None):
    #TODO:    if generator:
    #TODO:        self.axi_master.write_if.b_channel.set_pause_generator(generator())
    #TODO:        self.axi_master.read_if.r_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram1.write_if.aw_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram1.write_if.w_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram1.read_if.ar_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram2.write_if.aw_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram2.write_if.w_channel.set_pause_generator(generator())
    #TODO:        self.axi_ram2.read_if.ar_channel.set_pause_generator(generator())

    async def cycle_reset(self):
        self.dut.preset.setimmediatevalue(0)
        await RisingEdge(self.dut.pclk)
        await RisingEdge(self.dut.pclk)
        self.dut.preset.value = 1
        await RisingEdge(self.dut.pclk)
        await RisingEdge(self.dut.pclk)
        self.dut.preset.value = 0
        await RisingEdge(self.dut.pclk)
        await RisingEdge(self.dut.pclk)

    def init(self):
        None

#axi:async def run_apb_stress_test(dut, idle_inserter=None, backpressure_inserter=None):
#axi:
#axi:    tb = TB_APB(dut)
#axi:
#axi:    await tb.cycle_reset()
#axi:
#axi:    #tb.set_idle_generator(idle_inserter)
#axi:    #tb.set_backpressure_generator(backpressure_inserter)
#axi:
#axi:    async def worker(master, offset, aperture, count=16):
#axi:        for k in range(count):
#axi:            length = random.randint(1, min(512, aperture))
#axi:            addr = offset+random.randint(0, aperture-length)
#axi:            test_data = bytearray([x % 256 for x in range(length)])
#axi:
#axi:            await Timer(random.randint(1, 100), 'ns')
#axi:
#axi:            await master.write(addr, test_data)
#axi:
#axi:            await Timer(random.randint(1, 100), 'ns')
#axi:
#axi:            data = await master.read(addr, length)
#axi:            assert data.data == test_data
#axi:
#axi:    workers = []
#axi:
#axi:    for k in range(16):
#axi:        workers.append(cocotb.start_soon(worker(tb.apb_master, k*0x1000, 0x1000, count=16)))
#axi:
#axi:    while workers:
#axi:        await workers.pop(0).join()
#axi:
#axi:    await RisingEdge(dut.pclk)
#axi:    await RisingEdge(dut.pclk)

async def test_apb_basic(dut):
    #yhyang:tb = TB_APB(dut, reset_sense=1)
    tb = TB_APB(dut)

    #yhyang:await tb.cr.wait_clkn(200)
    await tb.cycle_reset()

    addr = 0x0000
    read_op = await tb.cache_apb_intf.read(addr)
    ret = returned_val(read_op)
    #assert 0x0 == ret
    tb.log.info("cache_apb addr: 0x%08x, data: 0x08x", addr, ret)

    #TODO:addr = 0x0000
    #TODO:read_op = await tb.mem_apb_intf.read(addr)
    #TODO:ret = returned_val(read_op)
    #TODO:#assert 0x0 == ret
    #TODO:tb.log.info("mem_apb addr: 0x%08x, data: 0x08x", addr, ret)

    #TODO:addr = 0x0000
    #TODO:read_op = await tb.cxl_apb_intf.read(addr)
    #TODO:ret = returned_val(read_op)
    #TODO:#assert 0x0 == ret
    #TODO:tb.log.info("cxl_apb addr: 0x%08x, data: 0x08x", addr, ret)
    
    
    x = 0x12345678
    bytesdata = x.to_bytes(len(tb.cache_apb_bus.pwdata), 'little')
    await tb.cache_apb_intf.write(0x0000, bytesdata)

    read_op = await tb.cache_apb_intf.read(0x0000)
    ret = returned_val(read_op)
    assert x == ret
    
    await tb.cache_apb_intf.read(0x0000, bytesdata)
    await tb.cache_apb_intf.read(0x0000, x)

    x = 0x12345679
    bytesdata = x.to_bytes(len(tb.cache_apb_bus.pwdata), 'little')
    await tb.cache_apb_intf.write(0x0000, x)

    await tb.cache_apb_intf.read(0x0000, x)
    await tb.cache_apb_intf.read(0x0000, 0x12345679)

    await tb.cache_apb_intf.write(0x0000, 0x12)
    await tb.cache_apb_intf.read(0x0000, 0x12)
    
    await tb.cache_apb_intf.write(0x0000, 0x0)
    await tb.cache_apb_intf.write(0x0000, 0x87654321, 0x8)
    await tb.cache_apb_intf.read(0x0000, 0x87000000)
    await tb.cache_apb_intf.write(0x0000, 0x56346456, 0x4)
    await tb.cache_apb_intf.read(0x0000, 0x87340000)
    await tb.cache_apb_intf.write(0x0000, 0x69754233, 0x2)
    await tb.cache_apb_intf.read(0x0000, 0x87344200)
    await tb.cache_apb_intf.write(0x0000, 0x21454568, 0x1)
    await tb.cache_apb_intf.read(0x0000, 0x87344268)
    await tb.cache_apb_intf.write(0x0000, 0x0)
    await tb.cache_apb_intf.read(0x0000, 0x0)

    await tb.cache_apb_intf.write(0x0002, 0x87654321)
    await tb.cache_apb_intf.read(0x0000, 0x87654321)

    await tb.cache_apb_intf.write(0x0004, 0x97654321)
    await tb.cr.wait_clkn(2)
    await tb.cache_apb_intf.read(0x0006, 0x97654321)

    await tb.cache_apb_intf.write(0x0014, 0x77654321)
    await tb.cache_apb_intf.read(0x0016, 0x77654321)

    x = []
    for i in range(tb.n_regs):
        x.append(randint(0, (2**32)-1))
    
    for i in range(tb.n_regs):
        bytesdata = x[i].to_bytes(len(tb.cache_apb_bus.pwdata), 'little')
        await tb.cache_apb_intf.write(0x0000 + (i*tb.incr), bytesdata)
    
    for i in range(tb.n_regs):
        z = randint(0, tb.n_regs-1)
        y = x[z] & tb.mask
        read_op = await tb.cache_apb_intf.read(0x0000 + (z*tb.incr))
        ret = returned_val(read_op)
        assert y == ret
    for i in range(tb.n_regs):
        z = randint(0, tb.n_regs-1)
        y = x[z] & tb.mask
        read_op = await tb.cache_apb_intf.read(0x0000 + (z*tb.incr), y.to_bytes(len(tb.cache_apb_bus.prdata), "little"))
    for i in range(tb.n_regs):
        z = randint(0, tb.n_regs-1)
        y = x[z] & tb.mask
        tb.cache_apb_intf.read_nowait(0x0000 + (z*tb.incr), y.to_bytes(len(tb.cache_apb_bus.prdata), "little"))

#     print('break')
#     await tb.cr.wait_clkn(20)
    for i in range(tb.n_regs):
#         print(i)
        y = x[i] & tb.mask
        read_op = await tb.cache_apb_intf.read(0x0000 + (i*tb.incr))
        ret = returned_val(read_op)
        assert y == ret


    await tb.cr.end_test(200)

async def test_apb_init(dut):
    #yhyang:tb = TB_APB(dut, reset_sense=1)
    tb = TB_APB(dut)

    #yhyang:await tb.cr.wait_clkn(200)
    await tb.cycle_reset()

    addr = 0x0000
    read_op = await tb.cache_apb_intf.read(addr)
    ret = returned_val(read_op)
    #assert 0x0 == ret
    tb.log.info("cache_apb addr: 0x%08x, data: 0x08x", addr, ret)

async def test_apb_sfr_rw_test(dut):
    tb = TB_APB(dut)
    await tb.cycle_reset()

    #TODO:addr = 0x0000
    #TODO:read_op = await tb.cache_apb_intf.read(addr)
    #TODO:ret = returned_val(read_op)
    #TODO:#assert 0x0 == ret
    #TODO:tb.log.info("cache_apb addr: 0x%08x, data: 0x08x", addr, ret)

    cache_apb_reg_blk = tb.cache_apb_reg_blk
    for addr, info in cache_apb_reg_blk.items():
        rand_val = randint(0, (2**32)-1)
        if addr in cache_apb_reg_blk:
            cache_apb_reg_blk[addr]["value"] = rand_val
        await tb.cache_apb_intf.write(addr, rand_val)

    for addr, info in cache_apb_reg_blk.items():
        read_op = await tb.cache_apb_intf.read(addr)
        ret = returned_val(read_op)
        if reg_cmp(cache_apb_reg_blk, addr, ret):
            tb.log.info("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))
        else:
            tb.log.error("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))

async def test_apb_sfr_reset_test(dut):
    tb = TB_APB(dut)
    await tb.cycle_reset()

    cache_apb_reg_blk = tb.cache_apb_reg_blk
    for addr, info in cache_apb_reg_blk.items():
        read_op = await tb.cache_apb_intf.read(addr)
        ret = returned_val(read_op)
        if reg_cmp(cache_apb_reg_blk, addr, ret):
            tb.log.info("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))
        else:
            tb.log.error("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))
    await Timer(20, 'us')

#yhyang:if cocotb.SIM_NAME:
#yhyang:
#yhyang:    data_width = len(cocotb.top.axi_wdata)
#yhyang:    byte_lanes = data_width // 8
#yhyang:    max_burst_size = (byte_lanes-1).bit_length()
#yhyang:
#yhyang:    for test in [run_test_write, run_test_read]:
#yhyang:
#yhyang:        factory = TestFactory(test)
#yhyang:        factory.add_option("idle_inserter", [None, cycle_pause])
#yhyang:        factory.add_option("backpressure_inserter", [None, cycle_pause])
#yhyang:        factory.add_option("size", [None]+list(range(max_burst_size)))
#yhyang:        factory.generate_tests()
#yhyang:
#yhyang:    for test in [run_test_write_words, run_test_read_words]:
#yhyang:
#yhyang:        factory = TestFactory(test)
#yhyang:        factory.generate_tests()
#yhyang:
#yhyang:    factory = TestFactory(run_stress_test)
#yhyang:    factory.generate_tests()


# cocotb-test

#yhyang:tests_dir = os.path.dirname(__file__)
#yhyang:
#yhyang:
#yhyang:@pytest.mark.parametrize("data_width", [8, 16, 32])
#yhyang:def test_axi(request, data_width):
#yhyang:    dut = "test_axi_pcie"
#yhyang:    module = os.path.splitext(os.path.basename(__file__))[0]
#yhyang:    toplevel = dut
#yhyang:
#yhyang:    verilog_sources = [
#yhyang:        os.path.join(tests_dir, f"{dut}.v"),
#yhyang:    ]
#yhyang:
#yhyang:    parameters = {}
#yhyang:
#yhyang:    parameters['DATA_WIDTH'] = data_width
#yhyang:    parameters['ADDR_WIDTH'] = 32
#yhyang:    parameters['STRB_WIDTH'] = parameters['DATA_WIDTH'] // 8
#yhyang:    parameters['ID_WIDTH'] = 8
#yhyang:    parameters['AWUSER_WIDTH'] = 1
#yhyang:    parameters['WUSER_WIDTH'] = 1
#yhyang:    parameters['BUSER_WIDTH'] = 1
#yhyang:    parameters['ARUSER_WIDTH'] = 1
#yhyang:    parameters['RUSER_WIDTH'] = 1
#yhyang:
#yhyang:    extra_env = {f'PARAM_{k}': str(v) for k, v in parameters.items()}
#yhyang:
#yhyang:    sim_build = os.path.join(tests_dir, "sim_build",
#yhyang:        request.node.name.replace('[', '-').replace(']', ''))
#yhyang:
#yhyang:    cocotb_test.simulator.run(
#yhyang:        python_search=[tests_dir],
#yhyang:        verilog_sources=verilog_sources,
#yhyang:        toplevel=toplevel,
#yhyang:        module=module,
#yhyang:        parameters=parameters,
#yhyang:        sim_build=sim_build,
#yhyang:        extra_env=extra_env,
#yhyang:    )




# cocotb-test

#yhyang:tests_dir = os.path.dirname(__file__)
#yhyang:
#yhyang:
#yhyang:def test_pcie(request):
#yhyang:    dut = "test_axi_pcie"
#yhyang:    module = os.path.splitext(os.path.basename(__file__))[0]
#yhyang:    toplevel = dut
#yhyang:
#yhyang:    verilog_sources = [
#yhyang:        os.path.join(os.path.dirname(__file__), f"{dut}.v"),
#yhyang:    ]
#yhyang:
#yhyang:    sim_build = os.path.join(tests_dir, "sim_build",
#yhyang:        request.node.name.replace('[', '-').replace(']', ''))
#yhyang:
#yhyang:    cocotb_test.simulator.run(
#yhyang:        python_search=[tests_dir],
#yhyang:        verilog_sources=verilog_sources,
#yhyang:        toplevel=toplevel,
#yhyang:        module=module,
#yhyang:        sim_build=sim_build,
#yhyang:    )

#yhyang:if cocotb.SIM_NAME:
#yhyang:
#yhyang:    #yhyang:for test in [
#yhyang:    #yhyang:            #yhyang:run_test_rc_mem,
#yhyang:    #yhyang:            run_test_config,
#yhyang:    #yhyang:            #yhyang:run_test_enumerate,
#yhyang:    #yhyang:        ]:
#yhyang:
#yhyang:    #yhyang:    factory = TestFactory(test)
#yhyang:    #yhyang:    factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:factory = TestFactory(run_test_ep_mem)
#yhyang:    #yhyang:factory.add_option("ep_index", range(4))
#yhyang:    #yhyang:factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:factory = TestFactory(run_test_p2p_dma)
#yhyang:    #yhyang:factory.add_option("ep1_index", [0, 1])
#yhyang:    #yhyang:factory.add_option("ep2_index", [2, 3])
#yhyang:    #yhyang:factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:factory = TestFactory(run_test_dma)
#yhyang:    #yhyang:factory.add_option("ep_index", range(4))
#yhyang:    #yhyang:factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:factory = TestFactory(run_test_msi)
#yhyang:    #yhyang:factory.add_option("ep_index", range(4))
#yhyang:    #yhyang:factory.generate_tests()

#yhyang:if cocotb.SIM_NAME:
#yhyang:
#yhyang:    data_width = len(cocotb.top.axi_wdata)
#yhyang:    byte_lanes = data_width // 8
#yhyang:    max_burst_size = (byte_lanes-1).bit_length()
#yhyang:
#yhyang:    #yhyang:for test in [run_test_write, run_test_read]:
#yhyang:
#yhyang:    #yhyang:    factory = TestFactory(test)
#yhyang:    #yhyang:    factory.add_option("idle_inserter", [None, cycle_pause])
#yhyang:    #yhyang:    factory.add_option("backpressure_inserter", [None, cycle_pause])
#yhyang:    #yhyang:    factory.add_option("size", [None]+list(range(max_burst_size)))
#yhyang:    #yhyang:    factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:for test in [run_test_write_words, run_test_read_words]:
#yhyang:
#yhyang:    #yhyang:    factory = TestFactory(test)
#yhyang:    #yhyang:    factory.generate_tests()
#yhyang:
#yhyang:    #yhyang:factory = TestFactory(run_stress_test)
#yhyang:    #yhyang:factory.generate_tests()

class SimpleMemory:
    def __init__(self):
        self.mem = {}

    async def write(self, addr, data: bytes):
        print(f"[AXI SLAVE WRITE] addr=0x{addr:08X} data={data.hex()}")
        for i in range(len(data)):
            self.mem[addr + i] = data[i]

    async def read(self, addr, length: int):
        result = bytes([self.mem.get(addr + i, 0) for i in range(length)])
        print(f"[AXI SLAVE READ ] addr=0x{addr:08X} data={result.hex()}")
        return result



from cocotb.result import TestFailure
class TB_CMSS:
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        #in_test:cocotb.start_soon(self.timeout_watchdog(dut, 50, 'us'))
        #tb_axi:cocotb.start_soon(Clock(dut.aclk, 2, units="ns").start())
        #tb_axi:cocotb.start_soon(Clock(dut.cclk, 2, units="ns").start())
        #tb_apb:cocotb.start_soon(Clock(dut.pclk, 2, units="ns").start())

        self.tb_axi  = TB_AXI(dut)
        self.tb_apb  = TB_APB(dut)
        self.tb_pcie = TB_PCIE(dut)

    async def timeout_watchdog(self, dut, timeout, unit):
        await Timer(timeout, unit)
        self.log.error("Test timed out")
        raise TestFailure("Test failed due to timeout")

    async def cycle_reset(self):
        self.dut.areset.setimmediatevalue(0)
        self.dut.preset.setimmediatevalue(0)
        self.dut.creset.setimmediatevalue(0)
        await RisingEdge(self.dut.aclk)
        await RisingEdge(self.dut.aclk)
        self.dut.areset.value = 1
        self.dut.creset.value = 1
        self.dut.preset.value = 1
        await RisingEdge(self.dut.aclk)
        await RisingEdge(self.dut.aclk)
        self.dut.areset.value = 0
        self.dut.creset.value = 0
        self.dut.preset.value = 0
        for i in range(10):
            await RisingEdge(self.dut.aclk)


async def axi_random_access(dut, idle_inserter=None, backpressure_inserter=None, size=None):
    #yhyang:tb = TB_APB(dut, reset_sense=1)
    tb = TB_CMSS(dut)
    tb_apb = tb.tb_apb
    tb_axi = tb.tb_axi
    tb_pcie = tb.tb_pcie

    tb.tb_axi.init()
    tb.tb_apb.init()
    tb.tb_pcie.init()

    cocotb.start_soon(tb.timeout_watchdog(dut, 50, 'us'))

    #TODO:tb_apb = TB_APB(dut)
    #TODO:tb_axi = TB_AXI(dut)
    #TODO:tb_pcie = TB_PCIE(dut)
    #TODO:log = tb_axi.log

    cache_apb_reg_blk = tb_apb.cache_apb_reg_blk

    byte_lanes = tb_axi.axi_master.write_if.byte_lanes
    max_burst_size = tb_axi.axi_master.write_if.max_burst_size


    if size is None:
        size = max_burst_size

    await tb.cycle_reset()

    #TODO:addr = 0x0000
    #TODO:read_op = await tb_apb.cache_apb_intf.read(addr)
    #TODO:ret = returned_val(read_op)
    #TODO:#assert 0x0 == ret
    #TODO:tb_apb.log.info("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))



    #cache_apb_reg_blk = tb_apb.cache_apb_reg_blk
    #for addr, info in cache_apb_reg_blk.items():
    #    rand_val = randint(0, (2**32)-1)
    #    if addr in cache_apb_reg_blk:
    #        cache_apb_reg_blk[addr]["value"] = rand_val
    #    await cache_apb_intf.write(addr, rand_val)

    #for addr, info in cache_apb_reg_blk.items():
    #    read_op = await cache_apb_intf.read(addr)
    #    ret = returned_val(read_op)
    #    if reg_cmp(cache_apb_reg_blk, addr, ret):
    #        log.info("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))
    #    else:
    #        log.error("cache_apb addr: 0x{:08x}, data: 0x{:08x}, golden_val: 0x{:08x}".format(addr, ret, cache_apb_reg_blk[addr]["value"]))

    # apb init sequence
    #x = 0x00000001
    #bytesdata = x.to_bytes(len(tb_apb.cache_apb_bus.pwdata), 'little')
    #await tb_apb.cache_apb_intf.write(0x0200, bytesdata)
    
    #TODO:await Timer(10, 'us')

    await RisingEdge(dut.pclk)
    #check Version register
    read_op = await tb_apb.cache_apb_intf.read(0x0000)
    ret = returned_val(read_op)

    # Write START command
    await tb_apb.cache_apb_intf.write(0x0200, 0x1)
    await RisingEdge(dut.pclk)

    # Read STATUS command until 0
    ret = 1
    while(ret == 1):
        read_op = await tb_apb.cache_apb_intf.read(0x0204)
        ret = returned_val(read_op)
        await Timer(100, 'ns')

    await Timer(10, 'us')

    #TODO:#TODO_APB:read_op = await tb_apb.cache_apb_intf.read(0x0200)
    #TODO:#TODO_APB:ret = returned_val(read_op)
    #TODO:#TODO_APB:#start_is_auto_cleared:assert wdata == ret

    # sequential write to random addr/data. save data in dict
    await RisingEdge(dut.aclk)
    golden_value = {}
    addr_list = [0x1000 * i for i in range(1, 17)]  # 0x1000, 0x2000, ..., 0x10000

    for iter in range(10):
        length = 64 # fixed
        #addr = random.randint(0, 0x1000000000)
        addr = addr_list[iter]
        #TEST:addr = random.randint(0, 0)
        addr = addr >> 6
        addr = addr << 6
        test_data = bytearray([random.randint(0,255) for x in range(length)])
        tb_axi.log.info("addr = 0x%x", addr)


        golden_value[addr] = test_data
        random_awcache = random.choice(AWCACHE_VALUES)
        #await tb_axi.axi_master.write(addr, test_data, size=size, cache=random_awcache)
        await tb_axi.axi_master.write(addr, test_data, size=size, cache=AWCACHE_DEVICE_NON_BUFFERABLE)
        await Timer(30, 'ns')
    
    #await Timer(10, 'ns')
    # for iter in range(16):
    #     await RisingEdge(dut.aclk)
    #     length = 64 # fixed
    #     addr = random.randint(0, 0x1000000000)
    #     #TEST:addr = random.randint(0, 0)
    #     addr = addr >> 6
    #     addr = addr << 6
    #     #test_data = bytearray([random.randint(0,255) for x in range(length)])
    #     tb_axi.log.info("addr = 0x%x", addr)


    #     #golden_value[addr] = test_data
    #     random_arcache = random.choice(ARCACHE_VALUES)
    #     await tb_axi.axi_master.read(addr, length, size=size, cache=random_arcache)
        #await tb_axi.axi_master.read(addr, length, size=size, cache=ARCACHE_DEVICE_NON_BUFFERABLE)
        #await tb_axi.axi_master.read(addr, length, size=size, cache=ARCACHE_WRITE_BACK_READ_AND_WRITE_ALLOC)

        #await Timer(12, 'ns')
        #safe_access:try:
        #safe_access:    await with_timeout(tb_axi.axi_master.write(addr, test_data, size=size), 1, 'us')
        #safe_access:except:
        #safe_access:    log.error("[YH_DEBUG] Time-out!!!")
        #safe_access:    break
    #for addr, wdata in golden_value.items():
    #    rresp = await tb_axi.axi_master.read(addr, length, size=size)
    #    #safe_access:try:
    #    #safe_access:    rresp = await with_timeout(tb_axi.axi_master.read(addr, length, size=size), 1, 'us')
    #    #safe_access:except:
    #    #safe_access:    log.error("[YH_DEBUG] Time-out!!!")
    #    #safe_access:    break
    #    if wdata != rresp.data:
    #        print("[YH_DEBUG][UVM_ERROR] data mismatch. addr: 0x{:x}".format(addr))
    #        print("[YH_DEBUG][UVM_ERROR] wdata: 0x{}".format(wdata.hex()))
    #        print("[YH_DEBUG][UVM_ERROR] rdata: 0x{}".format(rresp.data.hex()))
    #    assert wdata == rresp.data
    await RisingEdge(dut.aclk)
    await RisingEdge(dut.aclk)
    await Timer(random.randint(1, 2), 'us')

    await Timer(100, 'ns')
    return golden_value

async def process_flit_queue(pipe_driver, flit_queue):
    """flit_queue에서 flit을 가져와서 pipe_driver로 넣는 백그라운드 코루틴"""
    while True:
        await Timer(1, "ns")  # 1ns 대기 (시뮬레이션 타이밍 고려)
        
        if not flit_queue.empty():
            flit = await flit_queue.get()
            
            if isinstance(flit, BinaryValue):
                flit_data = BinaryValue("X" * 528)
                pipe_driver.append((flit_data, 0))
            else:
                print(f"H2D Payload : {flit}")
                flit_data = apply_crc_weights(flit.pack_bytes(), CXL_CRC_COEFF)
                flit_data = int.from_bytes(flit_data, byteorder="big")
                #print(flit_data)
                pipe_driver.append((flit_data, 1))

from host_master import HostAxi, AxiWriteMasterAdapter
from cocotbext.axi.memory import Memory


@cocotb.test()
async def test_wrapper(dut):
    pipe_driver = PIPE_RX_Driver(dut, '', dut.aclk)
    d2h_req_queue  = Queue()
    d2h_rsp_queue  = Queue()
    d2h_data_queue = Queue()
    d2h_data_slot_queue = Queue()
    d2h_data_addr_queue = Queue()
    s2m_drs_queue  = Queue()
    s2m_ndr_queue  = Queue()
    h2d_rsp_queue = Queue()
    flit_input_queue = Queue()
    h2d_data_hdr_queue = Queue()
    flit_queue = Queue()
    unpacker = Unpack(flit_input_queue, d2h_req_queue, d2h_data_queue, d2h_data_slot_queue)
    rspgen = RspGen(d2h_req_queue, d2h_data_addr_queue, h2d_rsp_queue, h2d_data_hdr_queue)
    flitgen = FlitGen(h2d_rsp_queue, h2d_data_hdr_queue, flit_queue)
    monitor = PIPE_TX_Monitor(dut, "", dut.aclk)
    def monitor_callback(transaction):
        flit_input_queue.put_nowait(transaction)

    mem = Memory(size=2**20)
    host_axi = HostAxi(mem)

    adapter = AxiWriteMasterAdapter(
        d2h_data_queue=d2h_data_queue,
        d2h_data_addr_queue=d2h_data_addr_queue,
        d2h_data_slot_queue=d2h_data_slot_queue,
        host_axi=host_axi
    )



    #axi_slave = AxiSlave(
    #    bus = 
    #)
    cocotb.start_soon(adapter.process())
    monitor.add_callback(monitor_callback)
    cocotb.start_soon(unpacker.run_unpacker())
    cocotb.start_soon(rspgen.process_requests())
    cocotb.start_soon(flitgen.generate_flit())
    cocotb.start_soon(process_flit_queue(pipe_driver, flit_queue))

    await Timer(1, "ns")
    golden_value = await axi_random_access(dut)

    await Timer(300, "ns")
    for addr, expected_data in golden_value.items():
        read_data = await host_axi.read(addr, len(expected_data))
        assert read_data == expected_data, \
            f"[ERROR] Mismatch at addr=0x{addr:08X}\nExpected: {expected_data.hex()}\nRead: {read_data.hex()}"
        cocotb.log.info(f"[PASS] Addr 0x{addr:08X} ")
    
    
    #await Timer(100, "ns")
    #return

"""
if cocotb.SIM_NAME:
#yhyang:    factory = TestFactory(run_test_config)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(run_test_read_words)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(run_test_write_words)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(test_apb_basic)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(test_apb_sfr_reset_test)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(test_apb_sfr_rw_test)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(run_test_write_read)
#yhyang:    factory.generate_tests()
    
    d2h_req_queue  = Queue()
    d2h_rsp_queue  = Queue()
    d2h_data_queue = Queue()
    s2m_drs_queue  = Queue()
    s2m_ndr_queue  = Queue()
    h2d_rsp_queue = Queue()
    flit_input_queue = Queue()
    h2d_data_hdr_queue = Queue()
    flit_queue = Queue()
    unpacker = Unpack(flit_input_queue, d2h_req_queue)
    rspgen = RspGen(d2h_req_queue, h2d_rsp_queue, h2d_data_hdr_queue)
    flitgen = FlitGen(h2d_rsp_queue, h2d_data_hdr_queue, flit_queue)
    host = Host(unpacker)

    #cocotb.start_soon(unpacker.run_unpacker())
    #cocotb.start_soon(rspgen.process_requests())
    #cocotb.start_soon(flitgen.generate_flit())
    #cocotb.start_soon(process_flit_queue(pipe_driver, flit_queue))

    monitor = PIPE_TX_Monitor(dut, "rx_bus", dut.aclk, callback=handle_rx_data)
    def monitor_callback(transaction):
        flit_input_queue.put_nowait(transaction)
    
    monitor.add_callback(monitor_callback)
    
    

    factory = TestFactory(axi_random_access)
    factory.generate_tests()
    cocotb.start_soon(unpacker.run_unpacker())
    cocotb.start_soon(rspgen.process_requests())
    cocotb.start_soon(flitgen.generate_flit())
    cocotb.start_soon(process_flit_queue(pipe_driver, flit_queue))
"""

@pytest.mark.parametrize("data_width", [8, 16, 32])
def test_axi_pcie(request, data_width):
    dut = "test_axi_pcie"
    module = os.path.splitext(os.path.basename(__file__))[0]
    toplevel = dut

    verilog_sources = [
        os.path.join(tests_dir, f"{dut}.v"),
    ]

    parameters = {}

    parameters['DATA_WIDTH'] = data_width
    parameters['ADDR_WIDTH'] = 32
    parameters['STRB_WIDTH'] = parameters['DATA_WIDTH'] // 8
    parameters['ID_WIDTH'] = 8
    parameters['AWUSER_WIDTH'] = 1
    parameters['WUSER_WIDTH'] = 1
    parameters['BUSER_WIDTH'] = 1
    parameters['ARUSER_WIDTH'] = 1
    parameters['RUSER_WIDTH'] = 1

    extra_env = {f'PARAM_{k}': str(v) for k, v in parameters.items()}

    sim_build = os.path.join(tests_dir, "sim_build",
        request.node.name.replace('[', '-').replace(']', ''))

    cocotb_test.simulator.run(
        python_search=[tests_dir],
        verilog_sources=verilog_sources,
        toplevel=toplevel,
        module=module,
        parameters=parameters,
        sim_build=sim_build,
        extra_env=extra_env,
    )
