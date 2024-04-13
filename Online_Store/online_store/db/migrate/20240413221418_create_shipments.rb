class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.integer :customer_id
      t.date :data
      t.timestamps
    end
  end
end
