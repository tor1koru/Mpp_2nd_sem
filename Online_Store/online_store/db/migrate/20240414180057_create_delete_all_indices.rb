class CreateDeleteAllIndices < ActiveRecord::Migration[7.1]
  def change
    remove_index :carts, name: "index_carts_on_id_id"
    remove_index :orders, name: "index_orders_on_id_id"
    remove_index :customers, name: "index_customers_on_id_id"
    remove_index :products, name: "index_products_on_id_id"
  end
end
