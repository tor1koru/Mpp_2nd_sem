class CreateDeleteColumnCategories < ActiveRecord::Migration[7.1]
  def change
    remove_column :categories, :id_id
  end
end
