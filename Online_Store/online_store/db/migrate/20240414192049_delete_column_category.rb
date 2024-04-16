class DeleteColumnCategory < ActiveRecord::Migration[7.1]
  def change
    remove_column :categories, :category_type
  end
end
