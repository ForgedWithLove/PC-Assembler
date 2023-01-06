class Cpu < ApplicationRecord
  has_one :computer

  validates :manufact, :socket, :model, :core_num, :tdp, :price, presence: true
  validates :core_num, :tdp, :price, numericality: { greater_than_or_equal_to: 1}
end
