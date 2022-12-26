class AddNameToMotherboard < ActiveRecord::Migration[7.0]
  def change
    add_column :motherboards, :name, :text
  end
end
