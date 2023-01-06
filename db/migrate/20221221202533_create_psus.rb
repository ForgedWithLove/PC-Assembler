class CreatePsus < ActiveRecord::Migration[7.0]
  def change
    create_table :psus do |t|
      t.integer :wattage
      t.text :certificate
      t.integer :price

      t.timestamps
    end
  end
end
