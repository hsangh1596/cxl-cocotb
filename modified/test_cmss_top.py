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

import cocotb
from cocotb.regression import TestFactory

from cocotbext.pcie.core import RootComplex, MemoryEndpoint, Device, Switch
from cocotbext.pcie.core.caps import MsiCapability
from cocotbext.pcie.core.utils import PcieId


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


class TB_PCIE:
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        self.rc = RootComplex()

        self.ep = []

        ep = TestEndpoint()
        self.dev = Device(ep)
        self.dev.upstream_port.max_link_speed = 3
        self.dev.upstream_port.max_link_width = 16
        self.ep.append(ep)

        self.rc.make_port().connect(self.dev)

        self.sw = Switch()

        self.rc.make_port().connect(self.sw)

        ep = TestEndpoint()
        self.dev2 = Device(ep)
        self.dev2.upstream_port.max_link_speed = 3
        self.dev2.upstream_port.max_link_width = 16
        self.ep.append(ep)

        self.sw.make_port().connect(self.dev2)

        ep = TestEndpoint()
        self.dev3 = Device(ep)
        self.dev3.upstream_port.max_link_speed = 3
        self.dev3.upstream_port.max_link_width = 16
        self.ep.append(ep)

        self.sw.make_port().connect(self.dev3)

        ep = TestEndpoint()
        self.dev4 = Device(ep)
        self.dev4.upstream_port.max_link_speed = 3
        self.dev4.upstream_port.max_link_width = 16
        self.ep.append(ep)

        self.rc.make_port().connect(self.dev4)


async def run_test_rc_mem(dut):

    tb = TB_PCIE(dut)

    tb.rc.log.setLevel(logging.DEBUG)

    mem = tb.rc.mem_pool.alloc_region(16*1024*1024)
    mem_base = mem.get_absolute_address(0)

    io = tb.rc.io_pool.alloc_region(1024)
    io_base = io.get_absolute_address(0)

    for length in list(range(1, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation length: %d offset: %d", length, offset)
            addr = mem_base+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await tb.rc.mem_write(addr, test_data)
            assert mem[offset:offset+length] == test_data

            assert await tb.rc.mem_read(addr, length) == test_data

    for length in list(range(1, 32)):
        for offset in list(range(8)):
            tb.log.info("IO operation length: %d offset: %d", length, offset)
            addr = io_base+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await tb.rc.io_write(addr, test_data)
            assert io[offset:offset+length] == test_data

            assert await tb.rc.io_read(addr, length) == test_data


async def run_test_config(dut):

    tb = TB_PCIE(dut)

    tb.rc.log.setLevel(logging.DEBUG)

    tb.log.info("Read complete config space")
    orig = await tb.rc.config_read(PcieId(0, 1, 0), 0x000, 256, timeout=1000, timeout_unit='ns')

    tb.log.info("Read and write interrupt line register")
    await tb.rc.config_write(PcieId(0, 1, 0), 0x03c, b'\x12', timeout=1000, timeout_unit='ns')
    val = await tb.rc.config_read(PcieId(0, 1, 0), 0x03c, 1, timeout=1000, timeout_unit='ns')

    assert val == b'\x12'

    tb.log.info("Write complete config space")
    await tb.rc.config_write(PcieId(0, 1, 0), 0x000, orig, timeout=1000, timeout_unit='ns')


async def run_test_enumerate(dut):

    tb = TB_PCIE(dut)

    all_ep = tb.rc.endpoints+[tb.sw.upstream_bridge]+tb.sw.endpoints+tb.ep

    tb.rc.log.setLevel(logging.DEBUG)
    for ep in all_ep:
        ep.log.setLevel(logging.DEBUG)

    await tb.rc.enumerate()

    # check that enumerated tree matches devices
    def check_dev(dev):
        tb.log.info("Check device at %s", dev.pcie_id)

        # ensure ID was assigned to device
        assert dev.pcie_id != PcieId(0, 0, 0)

        # get device
        pdev = tb.rc.find_device(dev.pcie_id)
        assert pdev is not None

        # check informational registers
        tb.log.info("Header type: 0x%02x", pdev.header_type)
        tb.log.info("Vendor ID: 0x%04x", pdev.vendor_id)
        tb.log.info("Device ID: 0x%04x", pdev.device_id)
        tb.log.info("Revision ID: 0x%02x", pdev.revision_id)
        tb.log.info("Class code: 0x%06x", pdev.class_code)

        assert pdev.header_type == dev.header_layout | (bool(dev.multifunction_device) << 7)
        assert pdev.class_code == dev.class_code
        assert pdev.revision_id == dev.revision_id

        assert pdev.vendor_id == dev.vendor_id
        assert pdev.device_id == dev.device_id

        if pdev.header_type == 0x01:
            # bridge
            bar_cnt = 2

            # check bridge registers
            tb.log.info("Primary bus %d", pdev.subordinate.primary)
            tb.log.info("Secondary bus %d", pdev.subordinate.bus_num)
            tb.log.info("Subordinate bus %d", pdev.subordinate.last_bus_num)
            tb.log.info("IO base 0x%08x", pdev.io_base)
            tb.log.info("IO limit 0x%08x", pdev.io_limit)
            tb.log.info("Mem base 0x%08x", pdev.mem_base)
            tb.log.info("Mem limit 0x%08x", pdev.mem_limit)
            tb.log.info("Prefetchable mem base 0x%016x", pdev.prefetchable_mem_base)
            tb.log.info("Prefetchable mem limit 0x%016x", pdev.prefetchable_mem_limit)

            assert pdev.subordinate.primary == dev.pri_bus_num
            assert pdev.subordinate.bus_num == dev.sec_bus_num
            assert pdev.subordinate.last_bus_num == dev.sub_bus_num

            assert pdev.io_base == dev.io_base
            assert pdev.io_limit == dev.io_limit
            assert pdev.mem_base == dev.mem_base
            assert pdev.mem_limit == dev.mem_limit
            assert pdev.prefetchable_mem_base == dev.prefetchable_mem_base
            assert pdev.prefetchable_mem_limit == dev.prefetchable_mem_limit
        else:
            bar_cnt = 6

            tb.log.info("Subsystem vendor ID: 0x%04x", pdev.subsystem_vendor_id)
            tb.log.info("Subsystem ID: 0x%04x", pdev.subsystem_id)

            assert pdev.subsystem_vendor_id == dev.subsystem_vendor_id
            assert pdev.subsystem_id == dev.subsystem_id

        # check BARs
        bar = 0
        while bar < bar_cnt:
            if dev.bar_mask[bar] == 0:
                # unused bar
                assert pdev.bar[bar] is None
                assert pdev.bar_raw[bar] == 0
                assert pdev.bar_addr[bar] is None
                assert pdev.bar_size[bar] == 0
                bar += 1
            elif dev.bar[bar] & 1:
                # IO BAR
                tb.log.info("BAR%d: IO BAR addr 0x%08x, size %d", bar, pdev.bar_addr[bar], pdev.bar_size[bar])
                assert pdev.bar[bar] == dev.bar[bar]
                assert pdev.bar_raw[bar] == dev.bar[bar]
                assert pdev.bar_addr[bar] == dev.bar[bar] & ~0x3
                assert pdev.bar_size[bar] == (~dev.bar_mask[bar] & 0xfffffffc)+0x4
                bar += 1
            elif dev.bar[bar] & 4:
                # 64 bit BAR
                tb.log.info("BAR%d: Mem BAR (32 bit) addr 0x%08x, size %d", bar, pdev.bar_addr[bar], pdev.bar_size[bar])
                assert pdev.bar[bar] == dev.bar[bar] | dev.bar[bar+1] << 32
                assert pdev.bar_raw[bar] == dev.bar[bar]
                assert pdev.bar_raw[bar+1] == dev.bar[bar+1]
                assert pdev.bar_addr[bar] == (dev.bar[bar] | dev.bar[bar+1] << 32) & ~0xf
                assert pdev.bar_size[bar] == (~(dev.bar_mask[bar] | dev.bar_mask[bar+1] << 32) & 0xfffffffffffffff0)+0x10
                bar += 2
            else:
                # 32 bit BAR
                tb.log.info("BAR%d: Mem BAR (64 bit) addr 0x%08x, size %d", bar, pdev.bar_addr[bar], pdev.bar_size[bar])
                assert pdev.bar[bar] == dev.bar[bar]
                assert pdev.bar_raw[bar] == dev.bar[bar]
                assert pdev.bar_addr[bar] == dev.bar[bar] & ~0xf
                assert pdev.bar_size[bar] == (~dev.bar_mask[bar] & 0xfffffff0)+0x10
                bar += 1

        if dev.expansion_rom_addr_mask == 0:
            assert pdev.expansion_rom_raw == 0
            assert pdev.expansion_rom_addr is None
            assert pdev.expansion_rom_size == 0
        else:
            assert pdev.expansion_rom_raw & 0xfffff800 == dev.expansion_rom_addr
            assert pdev.expansion_rom_addr == dev.expansion_rom_addr
            assert pdev.expansion_rom_size == (~dev.expansion_rom_addr_mask & 0xfffff800)+0x800

        # TODO capabilities

    for d in all_ep:
        check_dev(d)

    # check settings in enumerated tree
    def check_bus(bus):
        bus_regions = []
        io_regions = []
        mem_regions = []
        prefetchable_mem_regions = []

        for dev in bus.devices:
            tb.log.info("Check device at %s", dev.pcie_id)

            tb.log.info("Header type: 0x%02x", dev.header_type)
            tb.log.info("Vendor ID: 0x%04x", dev.vendor_id)
            tb.log.info("Device ID: 0x%04x", dev.device_id)
            tb.log.info("Revision ID: 0x%02x", dev.revision_id)
            tb.log.info("Class code: 0x%06x", dev.class_code)

            if dev.header_type & 0x7f == 0x00:
                # type 0 header
                tb.log.info("Subsystem vendor ID: 0x%04x", dev.subsystem_vendor_id)
                tb.log.info("Subsystem ID: 0x%04x", dev.subsystem_id)

            # check that BARs are within our apertures
            for bar in range(6):
                if dev.bar[bar] is None:
                    continue
                if dev.bar[bar] & 1:
                    # IO BAR
                    tb.log.info("BAR%d: IO BAR addr 0x%08x, size %d", bar, dev.bar_addr[bar], dev.bar_size[bar])
                    assert (dev.bus.bridge.io_base <= dev.bar_addr[bar]
                        and dev.bar_addr[bar]+dev.bar_size[bar]-1 <= dev.bus.bridge.io_limit)
                    io_regions.append((dev.bar_addr[bar], dev.bar_addr[bar]+dev.bar_size[bar]-1))
                elif dev.bar[bar] > 0xffffffff:
                    # prefetchable BAR
                    tb.log.info("BAR%d: Mem BAR (prefetchable) addr 0x%08x, size %d",
                        bar, dev.bar_addr[bar], dev.bar_size[bar])
                    assert (dev.bus.bridge.prefetchable_mem_base <= dev.bar_addr[bar]
                        and dev.bar_addr[bar]+dev.bar_size[bar]-1 <= dev.bus.bridge.prefetchable_mem_limit)
                    prefetchable_mem_regions.append((dev.bar_addr[bar], dev.bar_addr[bar]+dev.bar_size[bar]-1))
                else:
                    # non-prefetchable BAR
                    tb.log.info("BAR%d: Mem BAR (non-prefetchable) addr 0x%08x, size %d",
                        bar, dev.bar_addr[bar], dev.bar_size[bar])
                    assert (dev.bus.bridge.mem_base <= dev.bar_addr[bar]
                        and dev.bar_addr[bar]+dev.bar_size[bar]-1 <= dev.bus.bridge.mem_limit)
                    mem_regions.append((dev.bar_addr[bar], dev.bar_addr[bar]+dev.bar_size[bar]-1))

            if dev.expansion_rom_addr:
                # expansion ROM BAR
                tb.log.info("Expansion ROM BAR: Mem BAR (non-prefetchable) addr 0x%08x, size %d",
                    dev.expansion_rom_addr, dev.expansion_rom_size)
                assert (dev.bus.bridge.mem_base <= dev.expansion_rom_addr and
                    dev.expansion_rom_addr+dev.expansion_rom_size-1 <= dev.bus.bridge.mem_limit)
                mem_regions.append((dev.expansion_rom_addr, dev.expansion_rom_addr+dev.expansion_rom_size-1))

            if dev.header_type & 0x7f == 0x01:
                # type 1 header

                tb.log.info("Primary bus: %d", dev.pri_bus_num)
                tb.log.info("Secondary bus: %d", dev.sec_bus_num)
                tb.log.info("Subordinate bus: %d", dev.sub_bus_num)
                tb.log.info("IO base: 0x%08x", dev.io_base)
                tb.log.info("IO limit: 0x%08x", dev.io_limit)
                tb.log.info("Mem base: 0x%08x", dev.mem_base)
                tb.log.info("Mem limit: 0x%08x", dev.mem_limit)
                tb.log.info("Prefetchable mem base: 0x%016x", dev.prefetchable_mem_base)
                tb.log.info("Prefetchable mem limit: 0x%016x", dev.prefetchable_mem_limit)

                # check that child switch apertures are within our apertures
                assert dev.bus.bridge.sec_bus_num <= dev.pri_bus_num <= dev.bus.bridge.sub_bus_num
                assert dev.bus.bridge.sec_bus_num <= dev.sec_bus_num and dev.sub_bus_num <= dev.bus.bridge.sub_bus_num
                bus_regions.append((dev.sec_bus_num, dev.sub_bus_num))
                if dev.io_base:
                    assert dev.bus.bridge.io_base <= dev.io_base and dev.io_limit <= dev.bus.bridge.io_limit
                    io_regions.append((dev.io_base, dev.io_limit))
                if dev.mem_base:
                    assert dev.bus.bridge.mem_base <= dev.mem_base and dev.mem_limit <= dev.bus.bridge.mem_limit
                    mem_regions.append((dev.mem_base, dev.mem_limit))
                if dev.prefetchable_mem_base:
                    assert (dev.bus.bridge.prefetchable_mem_base <= dev.prefetchable_mem_base and
                        dev.prefetchable_mem_limit <= dev.bus.bridge.prefetchable_mem_limit)
                    prefetchable_mem_regions.append((dev.prefetchable_mem_base, dev.prefetchable_mem_limit))

        # check for assignment overlaps
        for lst in [bus_regions, io_regions, mem_regions, prefetchable_mem_regions]:
            lst.sort()
            for m in range(1, len(lst)):
                assert lst[m-1][1] <= lst[m][0], "assigned regions overlap"

        # recurse into child nodes
        for child in bus.children:
            check_bus(child)

    check_bus(tb.rc.host_bridge.bus)


async def run_test_ep_mem(dut, ep_index=0):

    tb = TB_PCIE(dut)

    await tb.rc.enumerate()
    tb.rc.log.setLevel(logging.DEBUG)

    ep = tb.ep[ep_index]
    ep.log.setLevel(logging.DEBUG)
    dev = tb.rc.find_device(ep.pcie_id)
    await dev.enable_device()

    dev_bar0 = dev.bar_window[0]
    dev_bar1 = dev.bar_window[1]
    dev_bar3 = dev.bar_window[3]

    for length in list(range(0, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation (32-bit BAR) length: %d offset: %d", length, offset)
            test_data = bytearray([x % 256 for x in range(length)])

            await dev_bar0.write(offset, test_data, timeout=1000, timeout_unit='ns')
            # wait for write to complete
            await dev_bar0.read(offset, 0, timeout=1000, timeout_unit='ns')
            assert await ep.read_region(0, offset, length) == test_data

            assert await dev_bar0.read(offset, length, timeout=1000, timeout_unit='ns') == test_data

    for length in list(range(0, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation (64-bit BAR) length: %d offset: %d", length, offset)
            test_data = bytearray([x % 256 for x in range(length)])

            await dev_bar1.write(offset, test_data, timeout=1000, timeout_unit='ns')
            # wait for write to complete
            await dev_bar1.read(offset, 0, timeout=1000, timeout_unit='ns')
            assert await ep.read_region(1, offset, length) == test_data

            assert await dev_bar1.read(offset, length, timeout=1000, timeout_unit='ns') == test_data

    for length in list(range(0, 8)):
        for offset in list(range(8)):
            tb.log.info("IO operation length: %d offset: %d", length, offset)
            test_data = bytearray([x % 256 for x in range(length)])

            await dev_bar3.write(offset, test_data, timeout=1000, timeout_unit='ns')
            assert await ep.read_region(3, offset, length) == test_data

            assert await dev_bar3.read(offset, length, timeout=1000, timeout_unit='ns') == test_data


async def run_test_p2p_dma(dut, ep1_index=0, ep2_index=1):

    tb = TB_PCIE(dut)

    await tb.rc.enumerate()
    tb.rc.log.setLevel(logging.DEBUG)

    ep1 = tb.ep[ep1_index]
    ep1.log.setLevel(logging.DEBUG)
    dev1 = tb.rc.find_device(ep1.pcie_id)
    await dev1.enable_device()
    await dev1.set_master()
    ep2 = tb.ep[ep2_index]
    ep2.log.setLevel(logging.DEBUG)
    dev2 = tb.rc.find_device(ep2.pcie_id)
    await dev2.enable_device()

    for length in list(range(0, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation (32-bit BAR) length: %d offset: %d", length, offset)
            addr = dev2.bar_addr[0]+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await ep1.mem_write(addr, test_data, timeout=1000, timeout_unit='ns')
            # wait for write to complete
            await ep1.mem_read(addr, 0, timeout=1000, timeout_unit='ns')
            assert await ep2.read_region(0, offset, length) == test_data

            assert await ep1.mem_read(addr, length, timeout=1000, timeout_unit='ns') == test_data

    for length in list(range(0, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation (64-bit BAR) length: %d offset: %d", length, offset)
            addr = dev2.bar_addr[1]+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await ep1.mem_write(addr, test_data, timeout=1000, timeout_unit='ns')
            # wait for write to complete
            await ep1.mem_read(addr, 0, timeout=1000, timeout_unit='ns')
            assert await ep2.read_region(1, offset, length) == test_data

            assert await ep1.mem_read(addr, length, timeout=1000, timeout_unit='ns') == test_data

    for length in list(range(0, 8)):
        for offset in list(range(8)):
            tb.log.info("IO operation length: %d offset: %d", length, offset)
            addr = dev2.bar_addr[3]+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await ep1.io_write(addr, test_data, timeout=1000, timeout_unit='ns')
            assert await ep2.read_region(3, offset, length) == test_data

            assert await ep1.io_read(addr, length, timeout=1000, timeout_unit='ns') == test_data


async def run_test_dma(dut, ep_index=0):

    tb = TB_PCIE(dut)

    mem = tb.rc.mem_pool.alloc_region(16*1024*1024)
    mem_base = mem.get_absolute_address(0)

    io = tb.rc.io_pool.alloc_region(1024)
    io_base = io.get_absolute_address(0)

    await tb.rc.enumerate()
    tb.rc.log.setLevel(logging.DEBUG)

    ep = tb.ep[ep_index]
    ep.log.setLevel(logging.DEBUG)
    dev = tb.rc.find_device(ep.pcie_id)
    await dev.enable_device()
    await dev.set_master()

    for length in list(range(0, 32))+[1024]:
        for offset in list(range(8))+list(range(4096-8, 4096)):
            tb.log.info("Memory operation (DMA) length: %d offset: %d", length, offset)
            addr = mem_base+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await ep.mem_write(addr, test_data, timeout=1000, timeout_unit='ns')
            # wait for write to complete
            await ep.mem_read(addr, 0, timeout=1000, timeout_unit='ns')
            assert mem[offset:offset+length] == test_data

            assert await ep.mem_read(addr, length, timeout=1000, timeout_unit='ns') == test_data

    for length in list(range(0, 8)):
        for offset in list(range(8)):
            tb.log.info("IO operation (DMA) length: %d offset: %d", length, offset)
            addr = io_base+offset
            test_data = bytearray([x % 256 for x in range(length)])

            await ep.io_write(addr, test_data, timeout=1000, timeout_unit='ns')
            assert io[offset:offset+length] == test_data

            assert await ep.io_read(addr, length, timeout=1000, timeout_unit='ns') == test_data


async def run_test_msi(dut, ep_index=0):

    tb = TB_PCIE(dut)

    await tb.rc.enumerate()
    tb.rc.log.setLevel(logging.DEBUG)

    ep = tb.ep[ep_index]
    ep.log.setLevel(logging.DEBUG)
    dev = tb.rc.find_device(ep.pcie_id)
    await dev.enable_device()
    await dev.set_master()
    await dev.alloc_irq_vectors(32, 32)

    for k in range(32):
        tb.log.info("Send MSI %d", k)

        await ep.msi_cap.issue_msi_interrupt(k)

        event = dev.msi_vectors[k].event
        event.clear()
        await event.wait()

#yhyang:if cocotb.SIM_NAME:
#yhyang:
#yhyang:    for test in [
#yhyang:                #yhyang:run_test_rc_mem,
#yhyang:                run_test_config,
#yhyang:                #yhyang:run_test_enumerate,
#yhyang:            ]:
#yhyang:
#yhyang:        factory = TestFactory(test)
#yhyang:        factory.generate_tests()
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
#yhyang:
#yhyang:
#yhyang:# cocotb-test
#yhyang:
#yhyang:tests_dir = os.path.dirname(__file__)
#yhyang:
#yhyang:
#yhyang:def test_pcie(request):
#yhyang:    dut = "test_pcie"
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
        cocotb.start_soon(Clock(dut.pclk, 2, units="ns").start())

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
        await RisingEdge(self.dut.aclk)
        await RisingEdge(self.dut.aclk)


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
        length=96
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
    bytesdata = x.to_bytes(len(tb.bus.pwdata), 'little')
    await tb.cache_apb_intf.write(0x0000, bytesdata)

    read_op = await tb.cache_apb_intf.read(0x0000)
    ret = returned_val(read_op)
    assert x == ret
    
    await tb.cache_apb_intf.read(0x0000, bytesdata)
    await tb.cache_apb_intf.read(0x0000, x)

    x = 0x12345679
    bytesdata = x.to_bytes(len(tb.bus.pwdata), 'little')
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
        bytesdata = x[i].to_bytes(len(tb.bus.pwdata), 'little')
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
        read_op = await tb.cache_apb_intf.read(0x0000 + (z*tb.incr), y.to_bytes(len(tb.bus.prdata), "little"))
    for i in range(tb.n_regs):
        z = randint(0, tb.n_regs-1)
        y = x[z] & tb.mask
        tb.cache_apb_intf.read_nowait(0x0000 + (z*tb.incr), y.to_bytes(len(tb.bus.prdata), "little"))

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


if cocotb.SIM_NAME:
#yhyang:    factory = TestFactory(run_test_config)
#yhyang:    factory.generate_tests()

    factory = TestFactory(run_test_read_words)
    factory.generate_tests()

#yhyang:    factory = TestFactory(run_test_write_words)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(test_apb_basic)
#yhyang:    factory.generate_tests()

#yhyang:    factory = TestFactory(test_apb_sfr_reset_test)
#yhyang:    factory.generate_tests()
#yhyang:
#yhyang:    factory = TestFactory(test_apb_sfr_rw_test)
#yhyang:    factory.generate_tests()

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
