class AddLocationToCostumeStores < ActiveRecord::Migration[5.2]
  def change
    add_column :costume_stores, :location, :string
  end
end
