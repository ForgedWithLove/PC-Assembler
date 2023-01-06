class CreateMotherboards < ActiveRecord::Migration[7.0]
  def change
    create_table :motherboards do |t|
      t.text :socket
      t.text :chipset
      t.integer :price
      t.integer :memory_slots

      t.timestamps
    end
  end
end
