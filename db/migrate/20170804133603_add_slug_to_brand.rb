class AddSlugToBrand < ActiveRecord::Migration[5.1]
  def change
    remove_index :brands, :slug
    add_index :brands, :slug, unique: true
  end
end
