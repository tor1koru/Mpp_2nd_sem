class CreateAddFksOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :customers, :id
    add_foreign_key :orders, :customers, column: :customer_id, primary_key: :id
    add_reference :carts, :id
    add_foreign_key :orders, :carts, column: :cart_id, primary_key: :id

  end
end
