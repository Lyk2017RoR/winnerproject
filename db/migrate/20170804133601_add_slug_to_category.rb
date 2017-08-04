class AddSlugToCategory < ActiveRecord::Migration[5.1]
  def change
    remove_index :categories, :slug
    add_index :categories, :slug, unique: true
  end
end
