class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :tags, :slug, unique: true
  end
end
