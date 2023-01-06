class AddPsuIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :psu_id, :integer
  end
end
