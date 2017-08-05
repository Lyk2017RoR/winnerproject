class WelcomeController < ApplicationController
  # before_action :authenticate_user!
  before_action :init_cart, only: :index

  def index
    @products = Product.paginate(page: params[:page], per_page: 8)
  end

  private
  def init_cart
    unless current_user.nil?
      @user_cart = Cart.where(user_id: current_user.id, status: nil).take
      @user_cart = Cart.create(user_id: current_user.id) if @user_cart.nil?
    end
  end
end
