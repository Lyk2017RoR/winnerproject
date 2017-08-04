class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name, :image))

    if @category.save
      redirect_to welcome_admin_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])    
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params.require(:category).permit(:name, :image))
      redirect_to welcome_admin_path
    else
      render "new"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to welcome_admin_path    
  end
end
