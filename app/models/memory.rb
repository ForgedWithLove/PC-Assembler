class Memory < ApplicationRecord
  has_one :computer

  validates :volume_one, :max_freq, :price, presence: true
  validates :volume_one, :max_freq, :price, numericality: { greater_than_or_equal_to: 1}
end
