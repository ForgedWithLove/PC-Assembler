class AddMotherboardIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :motherboard_id, :integer
  end
end
