class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.date :birth_date
      t.string :province
      t.text :adress
      t.string :email
      t.string :password

      t.timestamps
    end
    add_index :users, :phone, unique: true
    add_index :users, :email, unique: true
  end
end
