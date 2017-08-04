class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_brands_and_categories

  def find_brands_and_categories
    @categories = Category.all
    @brands = Brand.all
    @products = Product.paginate(page: params[:page], per_page: 8)
  end
end
