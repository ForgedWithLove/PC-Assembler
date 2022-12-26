# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cooler, type: :model do
  context 'Trying to fill Cooler with' do
    it "right Test values" do
      zap = Cooler.find_by(socket: "TestSocket", tdp: 50, price: 4000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Cooler.create(socket: "TestSocket", tdp: 50, price: 4000)
      zap = Cooler.find_by(socket: "TestSocket", tdp: 50, price: 4000)
      expect(zap).not_to eq(nil)
      expect(zap.socket).to eq("TestSocket")
      expect(zap.tdp).to eq(50)
      expect(zap.price).to eq(4000)
      zap&.destroy unless exist
    end
  end
end
