class CreateVideocards < ActiveRecord::Migration[7.0]
  def change
    create_table :videocards do |t|
      t.text :manufact
      t.text :model
      t.integer :gen
      t.integer :volume
      t.integer :price

      t.timestamps
    end
  end
end
