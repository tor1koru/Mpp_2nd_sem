class CreateAddFksPayments < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :payments, :customers, column: :customer_id, primary_key: :id
    add_foreign_key :payments, :carts, column: :cart_id, primary_key: :id
    add_reference :orders, :id
    add_foreign_key :payments, :orders, column: :order_id, primary_key: :id
  end
end
