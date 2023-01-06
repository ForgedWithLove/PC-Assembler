# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Computer, type: :model do
  context 'Trying to assemble Computer with' do
    it "new TestUser and new TestValues" do
      User.create(email: "test@mail.ru", password: "123456")
      user = User.find_by(email: "test@mail.ru")
      Cpu.create(manufact: "TestManufact", socket: "TestSocket",model: "TestModel",core_num: 6, tdp: 100, price: 14000)
      cpu = Cpu.find_by(manufact: "TestManufact", socket: "TestSocket",model: "TestModel",core_num: 6, tdp: 100, price: 14000)
      Motherboard.create(name: "TestName", socket: "TestSocket", chipset: "TestChipset", memory_slots: 4, price: 8000)
      mbd = Motherboard.find_by(name: "TestName", socket: "TestSocket", chipset: "TestChipset", memory_slots: 4, price: 8000)
      Videocard.create(manufact: "TestManufact", model: "TestModel",gen: 1, volume: 2, price: 6000)
      gpu = Videocard.find_by(manufact: "TestManufact", model: "TestModel",gen: 1, volume: 2, price: 6000)
      Memory.create(volume_one: 4, max_freq: 2400, price: 2000)
      mem = Memory.find_by(volume_one: 4, max_freq: 2400, price: 2000)
      Psu.create(wattage: 400, certificate: "TestCertificate", price: 3000)
      psu = Psu.find_by(wattage: 400, certificate: "TestCertificate", price: 3000)
      Disk.create(storage_type: "TestType", volume: 4, price: 9000)
      disk = Disk.find_by(storage_type: "TestType", volume: 4, price: 9000)
      Cooler.create(socket: "TestSocket", tdp: 50, price: 4000)
      cool = Cooler.find_by(socket: "TestSocket", tdp: 50, price: 4000)
      Computer.create(User_id: user.id, cpu_id: cpu.id, motherboard_id: mbd.id, videocard_id: gpu.id, memory_id: mem.id, psu_id: psu.id, disk_id: disk.id, cooler_id: cool.id, memory_num: 2, total_price: 48000)
      zap = Computer.find_by(User_id: user.id, cpu_id: cpu.id, motherboard_id: mbd.id, videocard_id: gpu.id, memory_id: mem.id, psu_id: psu.id, disk_id: disk.id, cooler_id: cool.id, memory_num: 2, total_price: 48000)
      expect(zap).not_to eq(nil)
      zap&.destroy
    end
  end
end
