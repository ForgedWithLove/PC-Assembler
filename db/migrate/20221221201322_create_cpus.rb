class CreateCpus < ActiveRecord::Migration[7.0]
  def change
    create_table :cpus do |t|
      t.text :manufact
      t.text :socket
      t.text :model
      t.integer :core_num
      t.integer :tdp
      t.integer :price

      t.timestamps
    end
  end
end
