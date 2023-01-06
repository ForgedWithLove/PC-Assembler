class AddDiskIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :disk_id, :integer
  end
end
