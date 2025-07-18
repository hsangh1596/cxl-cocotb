import cocotb
from cxl_pkg import *
from cocotb.queue import Queue, QueueEmpty
from cocotbext.axi.memory import Memory

class HostWriteData:
    def __init__(self, d2h_data_queue, d2h_data_addr_queue, d2h_data_slot_queue, host_interface):
        self.d2h_data_queue = d2h_data_queue  # D2H_DATA_HDR
        self.d2h_data_addr_queue = d2h_data_addr_queue
        self.d2h_data_slot_queue = d2h_data_slot_queue
        self.host_interface = host_interface
    
    async def process(self):
        while True:
            d2h_hdr = await self.d2h_data_queue.get()
            if not d2h_hdr.valid:
                self.log.warning("Invalid D2H data header.")
                return
            d2h_data = [await self.d2h_data_slot_queue.get() for _ in range(4)]
            address = await self.d2h_data_addr_queue.get()
            write_data = 0
            for slot in d2h_data:
                write_data = (write_data << 128) | (slot & ((1 << 128) - 1))
            write_data = write_data.to_bytes(64, byteorder='little')
            await self.host_interface.write(address, write_data)

class HostReadData:
    def __init__(self,h2d_data_hdr_queue, h2d_data_queue, h2d_data_addr_queue, host_interface):
        self.h2d_data_hdr_queue = h2d_data_hdr_queue
        self.h2d_data_queue = h2d_data_queue
        self.h2d_data_addr_queue = h2d_data_addr_queue
        self.host_interface = host_interface
    
    async def process(self):
        while True:
            hdr = await self.h2d_data_hdr_queue.get()
            if not hdr.valid:
                self.log.warning("Invalid H2D data header.")
                return

            address = await self.h2d_data_addr_queue.get()
            data = await self.host_interface.read(address, 64)

            await self.h2d_data_queue.put((hdr,data))

class HostMemoryInterface:
    def __init__(self, memory):
        self.memory = memory
        self.log = cocotb.logging.getLogger("HostWrite")
    
    async def write(self, addr, data: bytes):
        self.memory.write(addr, data)
        self.log.info(f"[RAM WRITE] Stored {len(data)} bytes at 0x{addr:08X}")
        print(f"[RAM WRITE] Stored {len(data)} bytes at 0x{addr:08X} = {data.hex()}")

    async def read(self, addr: int, length: int) -> bytes:
        data = self.memory.read(addr, length)
        self.log.info(f"[MEMORY READ] {length} bytes from 0x{addr:08X} = {data.hex()}")
        return data