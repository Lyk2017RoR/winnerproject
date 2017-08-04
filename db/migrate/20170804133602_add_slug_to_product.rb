class AddSlugToProduct < ActiveRecord::Migration[5.1]
  def change
    remove_index :products, :slug
    add_index :products, :slug, unique: true
  end
end
