class CreateAddFkCartsProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :id
    add_foreign_key :carts, :products, column: :product_id, primary_key: :id
  end
  end
