class BrandsController < ApplicationController
  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(params.require(:brand).permit(:name))

    if @brand.save
      redirect_to welcome_admin_path
    else
      render 'new'
    end
  end

  def show
    @brand = Brand.find(params[:id])    
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(params.require(:brand).permit(:title))
      redirect_to welcome_admin_path
    else
      render "new"
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to welcome_admin_path    
  end
end
