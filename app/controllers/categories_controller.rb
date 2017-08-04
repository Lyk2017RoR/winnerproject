class CategoriesController < ApplicationController
  before_action :find_category, only: %i[show edit update destroy]
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to welcome_admin_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to welcome_admin_path
    else
      render "new"
    end
  end

  def destroy
    @category = Category.find(params[:slug])
    @category.destroy
    redirect_to welcome_admin_path
  end

  private
  def category_params
    params.require(:profile).permit(:name, :image)
  end
  def find_category
    @category = Category.friendly.find params[:id]
  end
end
