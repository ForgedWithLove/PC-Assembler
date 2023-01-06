class Psu < ApplicationRecord
  has_one :computer

  validates :wattage, :certificate, :price, presence: true
  validates :price, :wattage, numericality: { greater_than_or_equal_to: 1}
end
