class RenameTypeInDisks < ActiveRecord::Migration[7.0]
  def change
    rename_column :disks, :type, :storage_type
  end
end
