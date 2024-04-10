class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
<<<<<<< HEAD
      t.integer :categories_id
=======
>>>>>>> 76c1bad (initial commit)
      t.string :category_name
      t.string :type
      t.timestamps
    end
  end
end
