class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.string :image, default: 'product_placeholder.jpg'
      t.integer :price
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
