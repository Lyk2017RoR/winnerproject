class CartItemsController < ApplicationController

  def add_to_cart
    @user_cart = Cart.where(user_id: current_user.id, status: nil)[0]
    @user_cart = Cart.create(user_id: current_user.id) if @user_cart.nil?
    @cart_item = CartItem.new(cart_id: @user_cart.id, product_id: params[:product_id])
    if @cart_item.save
      redirect_to product_path(params[:product_id]), :notice => 'ndi'
    else
      redirect_to product_path(params[:product_id]), :alert => 'nemedi'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
  end
end
