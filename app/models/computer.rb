class Computer < ApplicationRecord
  belongs_to :User

  validates :User_id, :cpu_id, :videocard_id, :psu_id, :motherboard_id, :memory_id, :disk_id, :cooler_id, :total_price, presence: true
  validates :User_id, :cpu_id, :videocard_id, :psu_id, :motherboard_id, :memory_id, :disk_id, :cooler_id, :total_price, numericality: { greater_than_or_equal_to: 1}
end
