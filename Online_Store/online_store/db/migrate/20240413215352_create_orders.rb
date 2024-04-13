class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :cart_id
      t.date :date
      t.timestamps
    end
  end
end
