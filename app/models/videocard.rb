class Videocard < ApplicationRecord
  has_one :computer

  validates :manufact, :model, :gen, :price, :volume, presence: true
  validates :price, :volume, :gen, numericality: { greater_than_or_equal_to: 1}
end
