# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Memory, type: :model do
  context 'Trying to fill Memory with' do
    it "right Test values" do
      zap = Memory.find_by(volume_one: 4, max_freq: 2400, price: 2000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Memory.create(volume_one: 4, max_freq: 2400, price: 2000)
      zap = Memory.find_by(volume_one: 4, max_freq: 2400, price: 2000)
      expect(zap).not_to eq(nil)
      expect(zap.volume_one).to eq(4)
      expect(zap.max_freq).to eq(2400)
      expect(zap.price).to eq(2000)
      zap&.destroy unless exist
    end
  end
end
