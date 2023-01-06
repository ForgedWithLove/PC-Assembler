# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Psu, type: :model do
  context 'Trying to fill Psu with' do
    it "right Test values" do
      zap = Psu.find_by(wattage: 400, certificate: "TestCertificate", price: 3000)
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      Psu.create(wattage: 400, certificate: "TestCertificate", price: 3000)
      zap = Psu.find_by(wattage: 400, certificate: "TestCertificate", price: 3000)
      expect(zap).not_to eq(nil)
      expect(zap.wattage).to eq(400)
      expect(zap.certificate).to eq("TestCertificate")
      expect(zap.price).to eq(3000)
      zap&.destroy unless exist
    end
  end
end
