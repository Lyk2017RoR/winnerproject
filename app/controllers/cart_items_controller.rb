class CartItemsController < ApplicationController

  def add_to_cart
    @user_cart = Cart.where(user_id: current_user.id, status: nil)[0]
    @user_cart = Cart.create(user_id: current_user.id) if @user_cart.nil?
    @cart_item = CartItem.create(cart_id: @user_cart.id, product_id: params[:product_id])
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
  end
end
