class CreateDeleteAllColumnIds < ActiveRecord::Migration[7.1]
  def change
    remove_column :carts, :id_id
    remove_column :orders, :id_id
    remove_column :customers, :id_id
    remove_column :products, :id_id
  end
end
