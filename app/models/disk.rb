class Disk < ApplicationRecord
  has_one :computer

  validates :storage_type, :volume, :price, presence: true
  validates :volume, :price, numericality: { greater_than_or_equal_to: 1}
end
