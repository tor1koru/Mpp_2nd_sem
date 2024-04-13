class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :adress
      t.string :phone
      t.timestamps
    end
  end
end
