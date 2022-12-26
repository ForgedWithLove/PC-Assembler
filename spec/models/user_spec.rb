# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Trying to create new User with' do
    it "email = test@email.ru, password = 123456" do
      zap = User.find_by(email: "test@mail.ru")
      if !zap.nil?
        exist = true
        zap&.destroy
      else
        exist = false
      end
      User.create(email: "test@mail.ru", password: "123456")
      zap = User.find_by(email: "test@mail.ru")
      expect(zap).not_to eq(nil)
      expect(zap.email).to eq("test@mail.ru")
      zap&.destroy unless exist
    end
  end
end
