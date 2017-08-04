class CartItemsController < ApplicationController
  def create
    user_cart = Cart.find_by(user_id: current_user.id)
  end

  def destroy
    
  end
end
