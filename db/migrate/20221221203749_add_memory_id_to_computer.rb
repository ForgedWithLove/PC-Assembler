class AddMemoryIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :memory_id, :integer
  end
end
