class AddVideocardIdToComputer < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :videocard_id, :integer
  end
end
