class CreateMemories < ActiveRecord::Migration[7.0]
  def change
    create_table :memories do |t|
      t.integer :volume_one
      t.integer :max_freq
      t.integer :price

      t.timestamps
    end
  end
end
