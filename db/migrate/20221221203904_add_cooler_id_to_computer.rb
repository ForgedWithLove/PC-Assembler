class AddCoolerIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :cooler_id, :integer
  end
end
