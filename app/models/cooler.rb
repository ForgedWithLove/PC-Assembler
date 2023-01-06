class Cooler < ApplicationRecord
  has_one :computer

  validates :socket, :tdp, :price, presence: true
  validates :tdp, :price, numericality: { greater_than_or_equal_to: 1}
end
