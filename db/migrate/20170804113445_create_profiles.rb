class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.date :birth_date
      t.string :province
      t.text :adress
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :profiles, :phone, unique: true
  end
end
