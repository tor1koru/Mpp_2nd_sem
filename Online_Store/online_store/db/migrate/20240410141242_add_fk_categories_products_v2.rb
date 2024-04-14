class AddFkCategoriesProductsV2 < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :products, :categories, column: :categories_id, primary_key: :id
  end
end
