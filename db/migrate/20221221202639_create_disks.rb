class CreateDisks < ActiveRecord::Migration[7.0]
  def change
    create_table :disks do |t|
      t.text :type
      t.integer :volume
      t.integer :price

      t.timestamps
    end
  end
end
