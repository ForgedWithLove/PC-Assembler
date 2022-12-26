class CreateComputers < ActiveRecord::Migration[7.0]
  def change
    create_table :computers do |t|
      t.integer :memory_num
      t.integer :total_price
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
