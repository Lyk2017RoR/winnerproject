class WelcomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    @products = Product.paginate(page: params[:page], per_page: 8)
  end
end
