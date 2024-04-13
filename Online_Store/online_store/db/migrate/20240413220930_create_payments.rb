class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :customer_id
      t.integer :order_id
      t.integer :cart_id
      t.timestamps
    end
  end
end
