class CreateAddFkShipments < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :shipments, :customers, column: :customer_id, primary_key: :id
  end
end
