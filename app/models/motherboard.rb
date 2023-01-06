class Motherboard < ApplicationRecord
  has_one :computer

  validates :name, :socket, :chipset, :price, :memory_slots, presence: true
  validates :price, :memory_slots, numericality: { greater_than_or_equal_to: 1}
end
