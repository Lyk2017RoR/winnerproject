class CartItemsController < ApplicationController
  def create
    @user_cart = Cart.where(:user_id => current_user.id, :status => nil)
    if @user_cart.nil?
      @user_cart = Cart.create()
    end
    @cart_item = CartItem.create(cart_id: @user_cart.id, product_id: @product.id)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy()
  end
end
