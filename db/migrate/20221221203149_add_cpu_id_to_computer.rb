class AddCpuIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :cpu_id, :integer
  end
end
