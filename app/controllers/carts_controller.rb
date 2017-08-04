class CartsController < ApplicationController
    before_action :get_cart, only: %i[show destroy]
    before_action :get_necessary, only: %i[show]
    
    def show;
        @cart_items = CartItem.where(cart_id: @cart.id)
        @cart_items.each { |ci| @cart.total_price += ci.product.price }
    end

    private

    def get_cart
        @cart = Cart.find(params[:id])
    end
end
