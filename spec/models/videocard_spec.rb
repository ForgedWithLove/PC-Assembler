# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Videocard, type: :model do
  context 'Trying to fill Videocard with' do
    it "right Test values" do
      zap = Videocard.find_by(manufact: "TestManufact", model: "TestModel",gen: 1, volume: 2, price: 6000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Videocard.create(manufact: "TestManufact", model: "TestModel",gen: 1, volume: 2, price: 6000)
      zap = Videocard.find_by(manufact: "TestManufact", model: "TestModel",gen: 1, volume: 2, price: 6000)
      expect(zap).not_to eq(nil)
      expect(zap.manufact).to eq("TestManufact")
      expect(zap.model).to eq("TestModel")
      expect(zap.gen).to eq(1)
      expect(zap.volume).to eq(2)
      expect(zap.price).to eq(6000)
      zap&.destroy unless exist
    end
  end
end

