# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Disk, type: :model do
  context 'Trying to fill Disk with' do
    it "right Test values" do
      zap = Disk.find_by(storage_type: "TestType", volume: 4, price: 9000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Disk.create(storage_type: "TestType", volume: 4, price: 9000)
      zap = Disk.find_by(storage_type: "TestType", volume: 4, price: 9000)
      expect(zap).not_to eq(nil)
      expect(zap.storage_type).to eq("TestType")
      expect(zap.volume).to eq(4)
      expect(zap.price).to eq(9000)
      zap&.destroy unless exist
    end
  end
end
