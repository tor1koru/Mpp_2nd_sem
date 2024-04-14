class CreateRenameColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column(:categories, :type, :category_type)
    rename_column(:customers, :adress, :address)
  end
end
