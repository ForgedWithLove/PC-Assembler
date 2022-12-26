# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Motherboard, type: :model do
  context 'Trying to fill Motherboard with' do
    it "right Test values" do
      zap = Motherboard.find_by(name: "TestName", socket: "TestSocket", chipset: "TestChipset", memory_slots: 4, price: 8000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Motherboard.create(name: "TestName", socket: "TestSocket", chipset: "TestChipset", memory_slots: 4, price: 8000)
      zap = Motherboard.find_by(name: "TestName", socket: "TestSocket", chipset: "TestChipset", memory_slots: 4, price: 8000)
      expect(zap).not_to eq(nil)
      expect(zap.name).to eq("TestName")
      expect(zap.socket).to eq("TestSocket")
      expect(zap.chipset).to eq("TestChipset")
      expect(zap.memory_slots).to eq(4)
      expect(zap.price).to eq(8000)
      zap&.destroy unless exist
    end
  end
end

