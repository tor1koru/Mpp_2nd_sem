class CreateDeleteReferenceCategories < ActiveRecord::Migration[7.1]
  def change
    remove_index :categories, name: 'index_categories_on_id_id'
  end
end
