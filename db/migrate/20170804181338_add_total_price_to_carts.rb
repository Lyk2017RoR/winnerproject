class AddTotalPriceToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :total_price, :integer, default: 0
  end
end
