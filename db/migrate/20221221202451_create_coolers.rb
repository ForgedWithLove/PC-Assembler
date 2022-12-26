class CreateCoolers < ActiveRecord::Migration[7.0]
  def change
    create_table :coolers do |t|
      t.text :socket
      t.integer :tdp
      t.integer :price

      t.timestamps
    end
  end
end
