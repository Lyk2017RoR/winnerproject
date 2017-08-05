class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_brands_and_categories

  def find_brands_and_categories
    @categories = Category.all
    @brands = Brand.all
  end
  def find_all_products_paginate_by_4
    @products = Product.all.paginate(page: params[:page], per_page: 4)
  end
  def find_all_products_paginate_by_8
    @products = Product.all.paginate(page: params[:page], per_page: 8)
  end
  def after_sign_out_path_for(user)
    root_path
  end

  def is_admin
    if current_user.admin?
      # do something
    else
      redirect_to root_path
    end
  end
end
