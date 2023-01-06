# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cpu, type: :model do
  context 'Trying to fill Cpu with' do
    it "right Test values" do
      zap = Cpu.find_by(manufact: "TestManufact", socket: "TestSocket",model: "TestModel",core_num: 6, tdp: 100, price: 14000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Cpu.create(manufact: "TestManufact", socket: "TestSocket",model: "TestModel",core_num: 6, tdp: 100, price: 14000)
      zap = Cpu.find_by(manufact: "TestManufact", socket: "TestSocket",model: "TestModel",core_num: 6, tdp: 100, price: 14000)
      expect(zap).not_to eq(nil)
      expect(zap.manufact).to eq("TestManufact")
      expect(zap.socket).to eq("TestSocket")
      expect(zap.model).to eq("TestModel")
      expect(zap.core_num).to eq(6)
      expect(zap.tdp).to eq(100)
      expect(zap.price).to eq(14000)
      zap&.destroy unless exist
    end
  end
end
